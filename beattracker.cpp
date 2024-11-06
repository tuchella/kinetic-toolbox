/*
	kin.beattracker
	Max/MSP external version of the LARGE and the TOIVIAINEN beattrackers
    Copyright (C) 2009 - 2011 - INESC Porto, George Sioros

    This program is free software: you can redistribute it and/or modify
    it under the terms of the GNU General Public License as published by
    the Free Software Foundation, either version 3 of the License, or
	any later version.

    This program is distributed in the hope that it will be useful,
    but WITHOUT ANY WARRANTY; without even the implied warranty of
    MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
    GNU General Public License for more details.

    You should have received a copy of the GNU General Public License
    along with this program.  If not, see <http://www.gnu.org/licenses/>./**

	Created by George Sioros
*/

#include "ext.h"							// standard Max include, always required
#include "ext_obex.h"						// required for new style Max object
#include "ext_time.h"
#define BT_RESET_THRESHOLD		5000	//if two input bangs have distance greater than 5sec then stop the "internal metronom" and at the next in bang reset all values
#define BT_ADAPT_ARRAY_SIZE		1000
#define BT_LARGE_FUNCTION		1
#define BT_TOIVIAINEN_FUNCTION	2
#define BT_ALPHA				10
#define BT_GAMMA				0.9
#define _USE_MATH_DEFINES //needed to define mathematical constants like M_PI
#define BT_MIN_TIME				50 //in ms
#include "math.h" //this is where the mathematical constants are defined
#include "Kinetic.h"
////////////////////////// object struct
typedef struct _beattracker 
{
	t_object					ob;			// the object itself (must be first)
	

	float	longTerm [BT_ADAPT_ARRAY_SIZE];
	float	shortTerm[BT_ADAPT_ARRAY_SIZE];
	float	phi_at_pulse;		// phase at latest pulse 
	float	phiVel_at_pulse;	// phase velocity 

	float	adapt;
	float	errFunc;			// error function 
	float	etaLong;			// strength of long-term adaptation 
	float	etaShort;			// strength of short-term adaptation 
	float	gamma;				// gain parameter
	long	lastIoi;			// last inter-onset interval
	long	lastPulseTime;		// time of last pulse
	float	output;				// current output value of the oscillator
	float	phi;				// phase
	long	expected;			// estimated time of arrival
	float	period;
	float	periodStrength;
	float	phaseStrength;
	long	startTime;
	long	adaptationFunction;	//selector of BT_LARGE_FUNCTION or BT_TOIVIAINEN_FUNCTION
	long	clock_running;
	float	timeThreshold;
	float	previousBoing;
	float	nextBoing;
	void*	m_clock;
	void*	m_outletL;
	void*	m_outletR;
} t_beattracker;

///////////////////////// function prototypes
//// standard set
void *beattracker_new(t_symbol *s, long argc, t_atom *argv);
void beattracker_free(t_beattracker *x);
void beattracker_assist(t_beattracker *x, void *b, long m, long a, char *s);
void beattracker_calculate(t_beattracker *x, double time);
void beattracker_CalculateAdaptations(t_beattracker *x);
double beattracker_GetAdaptShort(t_beattracker *x, double arg);
double beattracker_GetAdaptLong(t_beattracker *x, double arg);
void beattracker_Large(t_beattracker *x, long pulse, long time);
void beattracker_Toiviainen(t_beattracker *x, long pulse, long time);
void beattracker_Boing(t_beattracker *x);
void beattracker_bang(t_beattracker *x);
void beattraker_Move(t_beattracker *x, long pulse, long time);
void beattracker_mode(t_beattracker *x, t_symbol* s, long argc, t_atom *argv);
void beattracker_threshold(t_beattracker *x, t_symbol* s, long argc, t_atom *argv);
void beattracker_resetOscilator (t_beattracker *x);


//////////////////////// global class pointer variable
void *beattracker_class;


void ext_main(void *r)
{	

	t_class *c;
	
	c = class_new("kin.beattracker", (method)beattracker_new, (method)beattracker_free, (long)sizeof(t_beattracker), 
				  0L /* leave NULL!! */, A_GIMME, 0);
	
	/* you CAN'T call this from the patcher */
    class_addmethod(c, (method)beattracker_assist,			"assist",		A_CANT, 0);  
	class_addmethod(c, (method)beattracker_bang,			"bang",			0);
	class_addmethod(c, (method)beattracker_mode,			"mode",			A_GIMME, 0L);
	class_addmethod(c, (method)beattracker_threshold,		"threshold",	A_GIMME, 0L);
	class_register(CLASS_BOX, c); /* CLASS_NOBOX */
	beattracker_class = c;

	Kinetic_Register_Symbol();
	post("kin.beattracker is based on the 'Adaptive Oscilators' in Robert Rowe's Machine Musicianship");
}

void beattracker_assist(t_beattracker *x, void *b, long m, long a, char *s)
{
	if (m == ASSIST_INLET) { // inlet
		sprintf(s, "bang, mode [Large, Toiviainen], threshold [int(msec)]", a);
	} 
	else {	
		//sprintf(s, "%ld", a);// outlet
		switch (a)
		{
		case 0:
			sprintf(s, "period of beat in msec");
			break;
		case 1:
			sprintf(s, "bangs the beat");
			break;
		}
	}
}

void beattracker_free(t_beattracker *x)
{
	object_free(x->m_clock);
}


void *beattracker_new(t_symbol *s, long argc, t_atom *argv)
{
	t_beattracker *x = NULL;
	
	// object instantiation, NEW STYLE
	if (x = (t_beattracker *)object_alloc((t_class*) beattracker_class)) 
	{

		x->m_outletR = bangout(x);//outletforticks
		x->m_outletL = outlet_new(x, NULL);
		x->gamma           = BT_GAMMA;	// default value for gain parameter
		beattracker_resetOscilator(x); //reset all parameters related to the state of the oscillator
		x->startTime		= 0;
		x->m_clock = clock_new ((t_object *)x,(method)beattracker_Boing);
		x->adaptationFunction = BT_LARGE_FUNCTION;
		x->clock_running = 0;
		x->timeThreshold = 50;
		beattracker_CalculateAdaptations(x);
	}
	return (x);
}

void beattracker_calculate(t_beattracker* x, double time)
{
	float _relPhase, _relNext, _next; 
	if ( x->lastPulseTime > 0 && time-x->lastPulseTime < x->timeThreshold) //ignore very fast notes
		return;

	if (x->lastPulseTime > 0 && time-x->lastPulseTime > BT_RESET_THRESHOLD)
	{
		beattracker_resetOscilator (x);
		x->startTime = time;
		return;
	}
	if (x->startTime == 0) {
		x->startTime = time;
		return;
	}
	
	if (x->period < 2.0) {
		x->period = (float)(time - x->startTime);
		x->phiVel_at_pulse = 1000.0 / x->period;
	}

	beattraker_Move(x, true, time);
	if (x->lastPulseTime >= 0)
		x->lastIoi = time - x->lastPulseTime;
	x->lastPulseTime = time;
	_relPhase = x->phi - (int)x->phi;
	_relNext = (1-_relPhase)*x->period;
	_next = time + _relNext;
	//3 seperate "if statements" are needed with the specific order, otherwise they overlap and the second does not happen
	if (x->nextBoing < 0 )//if this is the first run of the oscillator after being reset...
	{
		x->nextBoing = _next;
		clock_fdelay(x->m_clock, _relNext);//schedule the next boing at the next peak of the oscilator
	}else if (time+_relNext - x->previousBoing > 1.5*x->period)//if the next scheduled boing is about to happen in more than 1.5 periods from the previous boing 
	{
		outlet_bang(x->m_outletR);//then bang now
		x->previousBoing = time;//set the previous bang time to now
		x->nextBoing = _next;
		clock_fdelay(x->m_clock, _relNext);//schedule the next boing at the next peak of the oscilator
	}else if (time + _relNext - x->previousBoing > .5*x->period)//if the next event is will be rescheduled to occur NO sooner than half a period from the previous one then reschedule it
	{
		x->nextBoing = _next;
		clock_fdelay(x->m_clock, _relNext);//schedule the next boing at the next peak of the oscilator
	}

	outlet_float(x->m_outletL, x->period);
}

void beattracker_CalculateAdaptations(t_beattracker* x)
{
	double f;
	int i;
	for (i=0; i<BT_ADAPT_ARRAY_SIZE; i++) 
	{
		f = (double)i/(double)BT_ADAPT_ARRAY_SIZE;
		x->longTerm [i] = f+(BT_ALPHA*f*f/2.0+2.0*f+3.0/BT_ALPHA)*exp(-BT_ALPHA*f)-3.0/BT_ALPHA;
		x->shortTerm[i] = 1.0-(BT_ALPHA*BT_ALPHA*f*f/2.0+BT_ALPHA*f+1.0)*exp(-BT_ALPHA*f);
	}
}


double beattracker_GetAdaptLong(t_beattracker* x, double arg)
{
	int address;
	if (arg > 1.0)
		address = BT_ADAPT_ARRAY_SIZE-1;
	else if (arg <0)
		address = 0;
	else
		address = (int)(arg*(BT_ADAPT_ARRAY_SIZE-1));
	return x->longTerm[address];
}

double beattracker_GetAdaptShort(t_beattracker* x, double arg)
{
	int address;
	if (arg > 1.0)
		address = BT_ADAPT_ARRAY_SIZE-1;
	else if (arg <0)
		address = 0;
	else
		address = (int)(arg*(BT_ADAPT_ARRAY_SIZE-1));
	return x->shortTerm[address];
}

void beattracker_Large(t_beattracker* x, long pulse, long time)
{
	while (time > (x->expected+(x->period/2)))		// move the expectation point
		x->expected += x->period;						// to be within one period of onset
	x->phi = (double)(time-x->expected) / x->period;		// calculate phi

	if (pulse)
	{								// if this was an onset
		x->adapt     = x->gamma * (cos(2*M_PI*x->phi)-1.0);
		x->adapt     = 1.0 / cosh(x->adapt);
		x->adapt    *= x->adapt;
		x->adapt    *= sin(2*M_PI*x->phi);
		x->adapt    *= (x->period / M_PI / 2);
		x->period   += (x->periodStrength*x->adapt);		// update period
		x->expected += (x->phaseStrength *x->adapt);		// and phase
		x->phi       = (double)(time-x->expected) / x->period;
	}

	x->output = 1+tanh(x->gamma*(cos(2*M_PI*x->phi)-1.0)); // oscillator output
}

void beattracker_Toiviainen(t_beattracker *x, long pulse, long time)
{
	/* if just starting, initialize phi */
	if (x->lastPulseTime < 0) 
	{
		x->phi = x->phi_at_pulse + x->phiVel_at_pulse * ((double)(time-x->startTime) / 1000.0);
	} else 
	{
		double deltaTime  = time - x->lastPulseTime;
		double varPhi     = (deltaTime/1000.0) * x->phiVel_at_pulse;
		double adaptLong  = beattracker_GetAdaptLong(x, varPhi);	// get long adaptation from table
		double adaptShort = beattracker_GetAdaptShort(x, varPhi);	// get short adaptation from table
		x->phi = x->phi_at_pulse + varPhi + x->errFunc * (x->etaLong*adaptLong + x->etaShort*adaptShort);
		if (pulse)									// change tempo if on pulse
			x->phiVel_at_pulse = x->phiVel_at_pulse * (1 + x->etaLong * x->errFunc * adaptShort);
	}

	if (pulse) {
		x->output        = 1+tanh(x->gamma*(cos(2*M_PI*x->phi)-1.0));
		x->errFunc       = x->output * (x->output-2.0) * sin(2*M_PI*x->phi);
		x->phi_at_pulse  = x->phi;
	}

	x->period = 1000.0 / x->phiVel_at_pulse;		// update period
}

void beattraker_Move(t_beattracker *x, long pulse, long time)
{
	if  (x->adaptationFunction == BT_LARGE_FUNCTION)
		beattracker_Large(x, pulse, time);
	else
		beattracker_Toiviainen(x, pulse, time);



}

void beattracker_Boing(t_beattracker *x)
{
	double time;
	float _relPhase, _relNext, _next; 
	clock_getftime(&time);
	if ( x->lastPulseTime > 0 && time - x->lastPulseTime > BT_RESET_THRESHOLD)
		return;//if there is no input for time greater than a threshold stop banging
	outlet_bang(x->m_outletR);
	beattraker_Move(x, false, time);//caclulate phase
	_relPhase = x->phi - (int)x->phi;
	_relNext = (1-_relPhase)*x->period;//caclulate time to next boing to be at the peak of the oscilator
	if (_relNext < x->period*0.5)
		_relNext += x->period;
	_next = time + _relNext;
	x->nextBoing = _relNext + time;
	clock_fdelay(x->m_clock,x->period);//schedule the next boing in one period from now
	x->previousBoing = time;//set the previous boing time to Now

}

void beattracker_bang(t_beattracker *x)
{
	double time;
	clock_getftime(&time);
	beattracker_calculate(x, time);

}

void beattracker_mode(t_beattracker *x, t_symbol* s, long argc, t_atom *argv)
{
	if (argc<1)
		return;
	if (argv->a_type == A_SYM)
	{
		if (atom_getsym(argv)->s_name == "Large")
			x->adaptationFunction = BT_LARGE_FUNCTION;
		else if (atom_getsym(argv)->s_name == "Toiviainen")
			x->adaptationFunction = BT_TOIVIAINEN_FUNCTION;
	}else if (argv->a_type == A_LONG)
	{
		x->adaptationFunction = atom_getlong (argv);
	}
}

void beattracker_threshold(t_beattracker *x, t_symbol* s, long argc, t_atom *argv)
{
	float f = -1;
	if (argc>0 && argv != NULL)
	{
		if (argv->a_type == A_LONG)
		{
			f = atom_getlong(argv);
		}else if (argv->a_type == A_FLOAT)
		{
			f = atom_getfloat(argv);
		}
		if ( f>=0)
			x->timeThreshold = f;
	}
}

void beattracker_resetOscilator (t_beattracker *x)
{
	x->gamma           = BT_GAMMA;	// default value for gain parameter
	x->phi             = 0.0;
	x->output          = 1+tanh(x->gamma*(cos(2*M_PI*x->phi)-1.0));
	x->expected        = 0;
	x->lastIoi			= 0;
	x->lastPulseTime   = -1;
	x->period          = 1.0;
	x->periodStrength	= 0.2;
	x->phaseStrength	= 0.2;
	x->errFunc         = 0.0;
	x->etaLong			= 0.2;
	x->etaShort		= 0.2;
	x->phi_at_pulse    = 0.0;
	x->phiVel_at_pulse = 0.9;
	x->previousBoing = -1;
	x->nextBoing = -1;
}