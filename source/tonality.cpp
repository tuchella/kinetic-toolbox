/*
	kin.tonality
	Max/MSP external for deducting the tonality of a group of MIDI note numbers 
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
#include "KKProfiles.h"	//it includes the K-K proifiles table
#include "Kinetic.h"
////////////////////////// object struct
typedef struct _tonality 
{
	t_object					ob;			// the object itself (must be first)
	void			*p_outlet;
	long	i_histo [KIN_HISTOGRAM_LENGTH];
	long	i_tone;
} t_tonality;

///////////////////////// function prototypes
//// standard set
void *tonality_new(t_symbol *s, long argc, t_atom *argv);
void tonality_free(t_tonality *x);
void tonality_assist(t_tonality *x, void *b, long m, long a, char *s);
//// message handlers
void tonality_int(t_tonality *x, long n);
void tonality_reset(t_tonality *x);
void tonality_bang(t_tonality *x);
//// private methods
double tonality_correlation (double *profile, long profile_length, double profile_average, long * histogram, long histogram_length);
void tonality_induction (t_tonality *x); //calculates the tonality based on the current histogram (0-11 Major, 12-23 minor scales)
//////////////////////// global class pointer variable
void *tonality_class;


void ext_main(void *r)
{	
	// object initialization, NEW STYLE
	t_class *c;
	
	c = class_new("kin.tonality", (method)tonality_new, (method)tonality_free, (long)sizeof(t_tonality), 
				  0L /* leave NULL!! */, A_GIMME, 0);
	
	/* you CAN'T call this from the patcher */
    class_addmethod(c, (method)tonality_assist,			"assist",		A_CANT, 0);  
	class_addmethod(c, (method)tonality_int,			"int",			A_LONG, 0);
	class_addmethod(c, (method)tonality_reset,			"reset",		A_NOTHING, 0);
	class_addmethod(c, (method)tonality_bang,			"bang",			A_NOTHING, 0);
	class_register(CLASS_BOX, c); /* CLASS_NOBOX */
	tonality_class = c;
	Kinetic_Register_Symbol();
}

void tonality_assist(t_tonality *x, void *b, long m, long a, char *s)
{
	if (m == ASSIST_INLET) { // inlet
		sprintf(s, "(int) note number, reset, bang", a);
	} 
	else {	// outlet
		sprintf(s, "(int) tonality [0-11 major scales, 12-23 minor scales] ", a); 			
	}
}

void tonality_free(t_tonality *x)
{
	;
}


void *tonality_new(t_symbol *s, long argc, t_atom *argv)
{
	t_tonality *x = NULL;
    
	// object instantiation, NEW STYLE
	if (x = (t_tonality *)object_alloc((t_class*)tonality_class)) 
	{
		x->p_outlet = outlet_new(x, NULL);
		tonality_reset (x);//reset the histogram and tone

	}
	return (x);
}

void tonality_int(t_tonality *x, long n)
{
	int _note = abs(n)%KIN_HISTOGRAM_LENGTH; //warp the note number to the 12 tones
	x->i_histo[_note]++; //add 1 to the position in the histogram of received notes
	tonality_induction (x);
	outlet_int(x->p_outlet, x->i_tone);
}

void tonality_reset(t_tonality *x)//resets the histogram
{
	int i;
	for (i = 0 ; i < KIN_HISTOGRAM_LENGTH ; i++)
		x->i_histo [i] = 0;
	x->i_tone = 0;

}

double tonality_correlation (double *profile, double profile_average, long * histogram)
{
	int i;
	double _HistAvrg = 0.;
	double _HistSum = 0.;
	double _ProfSum = 0.;
	double _diff1 = 0.;
	double _diff2 = 0.;
	double _finalsum = 0.;
	//average of the histogram list
	for ( i=0 ; i<KIN_HISTOGRAM_LENGTH ; i++)
		_HistAvrg += histogram[i];
	_HistAvrg /= KIN_HISTOGRAM_LENGTH;

	for ( i=0 ; i<KIN_HISTOGRAM_LENGTH ; i++)
	{	//difference 1
		_diff1 = histogram[i] - _HistAvrg;	
		//distance from the average
		_HistSum += pow( _diff1, 2);
		//difference 2
		_diff2 = profile[i] - profile_average;	
		//distancec of the profile
		_ProfSum += pow(_diff2, 2);
		_finalsum += _diff1 * _diff2;
	}
	return (_finalsum / (sqrt(_HistSum*_ProfSum))); //return the correlation result
}

void tonality_induction (t_tonality *x)
{
	int i;
	double _Max = 0.;
	double _Correlation = 0.;
	int _MaxIndex = 0;
	for (i =0 ; i < KIN_NUMBER_OF_KKPROFILES ; i++) //check correlation with all profiles
	{
		_Correlation = tonality_correlation (KKProfile[i], KKProfileAverage[i], x->i_histo);
		if (_Correlation > _Max)
		{
			_Max = _Correlation;
			_MaxIndex = i;
		}
	}
	x->i_tone = _MaxIndex;
}

void tonality_bang(t_tonality *x)
{
	outlet_int(x->p_outlet, x->i_tone);
}