/*
	"kin.offBeatDetector
	Max/MSP external to detect and measure syncopation
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
#include "Kinetic.h"

#define KIN_OFF_BEAT_PREVIOUS_WEIGHT	0.8
#define KIN_OFF_BEAT_LEVELS_RANGE		0.5
#define KIN_OFF_BEAT_NUMBER_OF_TYPES	4
enum kin_off_beat_type_detection {KIN_OFF_BEAT_AVRG = 0, KIN_OFF_BEAT_PEAKS, KIN_OFF_BEAT_MIN, KIN_OFF_BEAT_AVRG_WEIGHTED};

////////////////////////// object struct
typedef struct _kin_offBeatDetector 
{


	t_object		ob;											// the object itself (must be first)
	long			m_in;										// space for the inlet number used by all the proxies
    void			*p_proxyM,*p_proxyR;						// proxies for the two additional inlets		
	void			*p_outlet;									// pointer to the only outlet

	double			*pd_pattern, *pd_threshold, *pd_offBeat;	//pointers to the arrays: user pattern, list of threshold values (weights), resulting scores
	long			*pl_levels;									// hierarchy or stratification levels
	long			l_size;		// size of the arrays
	bool			b_loopMode; // loop mode flag
	double			d_ExpectedLoudness;
	double			d_PreviousWeight;

	double			d_LevelsRange;

	kin_off_beat_type_detection		m_type;		// type of caclulation 

} t_kin_offBeatDetector;

///////////////////////// function prototypes
//// standard set
void *kin_offBeatDetector_new(t_symbol *s, long argc, t_atom *argv);
void kin_offBeatDetector_free(t_kin_offBeatDetector *x);
void kin_offBeatDetector_assist(t_kin_offBeatDetector *x, void *b, long m, long a, char *s);
void kin_offBeatDetector_bang(t_kin_offBeatDetector *x);
void kin_offBeatDetector_list(t_kin_offBeatDetector *x,   t_symbol *s, short argc, t_atom *argv);
void kin_offBeatDetector_loopMode (t_kin_offBeatDetector *x, long n);
void kin_offBeatDetector_type (t_kin_offBeatDetector *x, long n);
void kin_offBeatDetector_loud (t_kin_offBeatDetector *x, double f);
void kin_offBeatDetector_PreviousWeight(t_kin_offBeatDetector *x, double f);
void kin_offBeatDetector_LevelsRange(t_kin_offBeatDetector *x, double f);

void kin_offBeatDetector_clearMemory(t_kin_offBeatDetector *x);
bool kin_offBeatDetector_setLevels(t_kin_offBeatDetector *x, long *arr, long size);
bool kin_offBeatDetector_setThreshold (t_kin_offBeatDetector *x, double *arr, long size);
bool kin_offBeatDetector_setPattern (t_kin_offBeatDetector *x, double *arr, long size);
bool kin_offBeatDetector_calculateOffBeatScores(t_kin_offBeatDetector *x);
void kin_offBeatDetector_outputScores (t_kin_offBeatDetector *x);
//////////////////////// global class pointer variable
void *kin_offBeatDetector_class;


void ext_main(void *r)
{	

	t_class *c;
	
	c = class_new("kin.offBeatDetector", (method)kin_offBeatDetector_new, (method)kin_offBeatDetector_free, (long)sizeof(t_kin_offBeatDetector), 
				  0L /* leave NULL!! */, A_GIMME, 0);
	
	/* you CAN'T call this from the patcher */
    class_addmethod(c, (method)kin_offBeatDetector_assist,			"assist",		A_CANT, 0);  
    class_addmethod(c, (method)kin_offBeatDetector_bang,			"bang",			A_NOTHING, 0); 
	class_addmethod(c, (method)kin_offBeatDetector_list,			"list",			A_GIMME, 0);
	class_addmethod(c, (method)kin_offBeatDetector_loopMode,		"loop",			A_LONG, 0);
	class_addmethod(c, (method)kin_offBeatDetector_type,			"type",			A_LONG, 0);
	class_addmethod(c, (method)kin_offBeatDetector_loud,			"loud",			A_FLOAT, 0);
	class_addmethod(c, (method)kin_offBeatDetector_PreviousWeight,	"weight",		A_FLOAT, 0);
	class_addmethod(c, (method)kin_offBeatDetector_LevelsRange,		"range",		A_FLOAT, 0);

	class_register(CLASS_BOX, c); /* CLASS_NOBOX */
	kin_offBeatDetector_class = c;
	Kinetic_Register_Symbol();
}

void kin_offBeatDetector_assist(t_kin_offBeatDetector *x, void *b, long m, long a, char *s)
{
	if (m == ASSIST_INLET) 
	{ // inlet
		switch (a)
		{
		case 0:
			sprintf(s, "(list) pattern to be tested");
			break;
		case 1:
			sprintf(s, "(list) thresholds of intensities");
			break;
		case 2:
			sprintf(s, "(list) hierarchical levels");
			break;
		}
	} 
	else {	// outlet
		sprintf(s, "(list) scores"); 			
	}
}

void kin_offBeatDetector_free(t_kin_offBeatDetector *x)
{
	freeobject ((t_object*)x->p_proxyM);
	freeobject ((t_object*)x->p_proxyR);
}


void *kin_offBeatDetector_new(t_symbol *s, long argc, t_atom *argv)
{
	t_kin_offBeatDetector *x = NULL;

	if (x = (t_kin_offBeatDetector *)object_alloc((t_class*)kin_offBeatDetector_class)) 
	{
		x->p_outlet = outlet_new(x, NULL);
		x->p_proxyM = proxy_new((t_object *)x, 2, &x->m_in);//set right proxy
		x->p_proxyR = proxy_new((t_object *)x, 1, &x->m_in);//set mid proxy

		kin_offBeatDetector_clearMemory(x);//set all pointers to NULL
		x->b_loopMode = true;
		x->m_type = KIN_OFF_BEAT_AVRG_WEIGHTED;
		x->d_ExpectedLoudness = 0.5;
		x->d_PreviousWeight = KIN_OFF_BEAT_PREVIOUS_WEIGHT;
		x->d_LevelsRange = KIN_OFF_BEAT_LEVELS_RANGE;
	}
	return (x);
}

void kin_offBeatDetector_bang(t_kin_offBeatDetector *x)
{
	if (kin_offBeatDetector_calculateOffBeatScores(x))//if succesufully calculated the new scores output them
		kin_offBeatDetector_outputScores (x);
}

void kin_offBeatDetector_list(t_kin_offBeatDetector *x,   t_symbol *s, short argc, t_atom *argv)
{
	long i=0;
	double *_d_Array = NULL;
	long *_l_Array = NULL;
	bool _NaN = false;
	long inletNum = proxy_getinlet((t_object *)x);
	if (inletNum != 2)//if the list is received in the mid or left inlet
	{
		_d_Array = new double [argc];
		while (i<argc && !_NaN)
		{
			if (atom_gettype(argv+i) == A_LONG)
				_d_Array[i] = (double) atom_getlong(argv+i);
			else if ( atom_gettype(argv+i) == A_FLOAT)
				_d_Array[i] = atom_getfloat(argv+i);
			else
				_NaN = true;
			i++;
		}
	}else
	{
		_l_Array = new long [argc];
		while (i<argc && !_NaN)
		{
			if (atom_gettype(argv+i) == A_LONG)
				_l_Array[i] = atom_getlong(argv+i);
			else if ( atom_gettype(argv+i) == A_FLOAT)
				_l_Array[i] = (long) atom_getfloat(argv+i);
			else
				_NaN = true;
			i++;
		}
	}
	if (_NaN) 
	{
		object_error( (t_object*)x, "the list must contain only numbers");
		return;//this means that not all ellements in the list were numbers
	}
	
	switch (inletNum) 
	{
	case 0: //LEFT
		if (kin_offBeatDetector_setPattern (x, _d_Array, argc))
			kin_offBeatDetector_bang(x);//caclulate the syncopation array and output it
		else
			object_error((t_object*)x, "error storing pattern");
		break;
	case 1: //MID
		if (!kin_offBeatDetector_setThreshold (x, _d_Array, argc))
			object_error((t_object*)x, "error storing thresholds");
		break;
	case 2: //RIGHT
		if (!kin_offBeatDetector_setLevels(x, _l_Array, argc))
			object_error((t_object*)x, "error storing template");
		break;
	}
}

void kin_offBeatDetector_clearMemory(t_kin_offBeatDetector *x)
{
	if (x->pd_offBeat)			delete[] x->pd_offBeat;
	if (x->pd_pattern)			delete[] x->pd_pattern;
	if (x->pd_threshold)			delete[] x->pd_threshold;
	if (x->pl_levels)			delete[] x->pl_levels;
	x->pd_offBeat = NULL;
	x->pd_pattern = NULL;
	x->pd_threshold = NULL;
	x->pl_levels = NULL;
	x->l_size = 0;
}

bool kin_offBeatDetector_setLevels(t_kin_offBeatDetector *x, long *arr, long size)
{
	if (size != x->l_size)//if the previous arrays have different sizes then clear them 
		kin_offBeatDetector_clearMemory(x);
	x->pl_levels = arr;//store the new array
	x->l_size = size;//set the new size
	return true;

}
bool kin_offBeatDetector_setThreshold (t_kin_offBeatDetector *x, double *arr, long size)
{
	if (size != x->l_size)//if the threshold list does not have the the size of the levels array then ignore it
		return false;
	if (x->pd_threshold)
		delete [] x->pd_threshold; //release previously allocated memory if any
	x->pd_threshold = arr; //store the newly allocated pointer
	return true;
}
bool kin_offBeatDetector_setPattern (t_kin_offBeatDetector *x, double *arr, long size)
{
	if (size != x->l_size)//return false if size of pattern does not match the size of level list
		return false;
	if (x->pd_pattern) // delete previously allocated memory
		delete [] x->pd_pattern;
	x->pd_pattern = arr;//store newly allocated pointer
	return true;
}

void kin_offBeatDetector_loopMode (t_kin_offBeatDetector *x, long n)
{
	if (n != 0)
		x->b_loopMode = true;
	else 
		x->b_loopMode = false;
}

bool kin_offBeatDetector_calculateOffBeatScores(t_kin_offBeatDetector *x)
{
	long _Level, i, _MinLevel, _Count, _PreviousPulse, _NextPulse, _LevelDif;
	double _AvDiff, _diff, _LevelFactor, _DifLevelFactor, _AverageDivisor;
	if (x->l_size <= 0 || !x->pd_pattern || !x->pl_levels)
	{
		object_error((t_object*)x, "Stored arrays do not match!!!");
		return false;
	}
	if (x->pd_offBeat)
		delete [] x->pd_offBeat;//delete previously allocated memory
	x->pd_offBeat = new double [x->l_size];//allocate memory to store the result
	for (i=0 ; i<x->l_size ; i++)
		x->pd_offBeat[i] = -1;//initialize the results array to negative values
	//find minimum level label (highest level)
	_MinLevel = x->pl_levels[0];
	for (i=1 ; i < x->l_size ; i++)
	{
		if (_MinLevel > x->pl_levels[i])
			_MinLevel = x->pl_levels[i];
	}
	_Count = 0;
	_Level = _MinLevel;//start from the highest level
	while ( _Count < x->l_size)//run until we reach the lowest level (in this level belong ALL the pulses -> _Count = Number of pulses
	{
		_Count = 0;
		//_LevelFactor = pow(_Level - _MinLevel + 1, 2.0) * 0.11111; 
		_LevelFactor = 1. - pow(  x->d_ExpectedLoudness, abs(_Level));// only used in KIN_OFF_BEAT_AVRG_WEIGHTED
		_LevelFactor = _LevelFactor > 1 ? 1 : _LevelFactor; // clip higher than 1 values
		//post ("Level,  Factor = %ld, %f ",_Level,  _LevelFactor);
		if (x->b_loopMode)//in loop mode the previous pulse is the last pulse which belongs to this level (or higher)
		{
			_PreviousPulse = x->l_size;//start from the last pulse and go backwards
			while (_PreviousPulse>=0 && _Level < x->pl_levels[_PreviousPulse])//if no pulse belongs to this level then _PreviousPulse = -1
				_PreviousPulse--;
		}else
			_PreviousPulse =-1;
		for (i=0 ; i<x->l_size ; i++)//go through all pulses slecting only those that belong to the current level (or higher)
		{

			if (_Level >= x->pl_levels[i])//if the pulse belongs to current level (or any higher)
			{
				_Count++; //count the number of pulses that belong to this level (or higher)
				//find the next pulse that belongs to this level (or higher)
				_NextPulse = i+1;
				while (_NextPulse<x->l_size && _Level < x->pl_levels[_NextPulse])
					_NextPulse++;
				if (_NextPulse >= x->l_size && x->b_loopMode)//if a next pulse was not found in this level (or higher) and in loop mode start from the begining
				{
					_NextPulse = 0;
					while (_NextPulse<x->l_size && _Level < x->pl_levels[_NextPulse]) 
						_NextPulse++;
				}
				switch (x->m_type) {
				case KIN_OFF_BEAT_AVRG: //caclulate intensities as averaves of differences of previous and next pulses of the same level (or hifgher)
							_AvDiff = 0;
							_AverageDivisor = 0;
							if (_PreviousPulse >= 0) //if a previous pulse exists
							{
								_AvDiff += (x->pd_pattern[i] - x->pd_pattern[_PreviousPulse]);
								_AverageDivisor ++;
							}
							if (_NextPulse < x->l_size && _NextPulse != i)
							{
								_AvDiff += (x->pd_pattern[i] - x->pd_pattern[_NextPulse])*_DifLevelFactor;
								_AverageDivisor ++;
							}
							if (_AverageDivisor >0.)
								_AvDiff /= _AverageDivisor; //average of the two differences
							else
								_AvDiff = x->pd_pattern[i];//if no previous nor next pulse exists
							if (_AvDiff < 0)
								_AvDiff = 0;
							break;
				case KIN_OFF_BEAT_AVRG_WEIGHTED:
							_AvDiff = 0;
							_AverageDivisor = 0;
							if (_PreviousPulse >= 0) //if a previous pulse exists
							{
								_LevelDif = abs(x->pl_levels[i] - x->pl_levels[_PreviousPulse]);
								_DifLevelFactor = (abs(_LevelDif) * x->d_LevelsRange / 4.+1-x->d_LevelsRange)* x->d_PreviousWeight;
								if (_DifLevelFactor > 1.) _DifLevelFactor = 1.;
								_AvDiff += (x->pd_pattern[i] - x->pd_pattern[_PreviousPulse])*_DifLevelFactor;
								//_AverageDivisor += _DifLevelFactor;
								_AverageDivisor += KIN_OFF_BEAT_PREVIOUS_WEIGHT;
								//post ("%ld - %ld , Avdiff  / weight= %f / %f ", i , _PreviousPulse , _AvDiff, _DifLevelFactor);
								
							} 
							if (_NextPulse < x->l_size && _NextPulse != i) // if a next pulse exists
							{
								_LevelDif = abs(x->pl_levels[i] - x->pl_levels[_NextPulse]);
								_DifLevelFactor = abs(_LevelDif) * x->d_LevelsRange / 4.+1-x->d_LevelsRange;
								if (_DifLevelFactor > 1.) _DifLevelFactor = 1.;
								_AvDiff += (x->pd_pattern[i] - x->pd_pattern[_NextPulse])*_DifLevelFactor;
								//_AverageDivisor += _DifLevelFactor;
								_AverageDivisor ++;
								//post ("%ld - %ld , Avdiff  / weight= %f / %f ", i , _NextPulse , _AvDiff, _DifLevelFactor);
							}
							//post ("Average = %f  ,_AverageDivisor = %f ",_AvDiff, _AverageDivisor );
							if (_AverageDivisor >0.)
								_AvDiff /= _AverageDivisor; //average of the two differences
							if (_AvDiff < 0)
								_AvDiff = 0;
							break;
				case KIN_OFF_BEAT_PEAKS: //caclulate intensities only for pulse that appear as peaks 
							_AvDiff = 0;
							if (_PreviousPulse >= 0) //if a previous pulse exists
								_AvDiff = x->pd_pattern[i] - x->pd_pattern[_PreviousPulse];
							_diff = 0;
							if (_NextPulse < x->l_size && _NextPulse != i) //if a next pulse exists
								_diff = x->pd_pattern[i] - x->pd_pattern[_NextPulse];
							if (_AvDiff >= 0 && _diff >= 0) //if both differences are positive
								_AvDiff = (_AvDiff > _diff) ? _AvDiff : _diff; //take the maximum of the two differences
							else //else it is not a syncopated pulse
								_AvDiff = 0;
							break;
				case KIN_OFF_BEAT_MIN:
							_AvDiff = 0;
							if (_PreviousPulse >= 0) //if a previous pulse exists
								_AvDiff = x->pd_pattern[i] - x->pd_pattern[_PreviousPulse];
							_diff = 0;
							if (_NextPulse < x->l_size && _NextPulse != i) //if a next pulse exists
								_diff = x->pd_pattern[i] - x->pd_pattern[_NextPulse];
							_AvDiff = (_AvDiff < _diff) ? _AvDiff : _diff; //take the minimum of the two differences
							if (_AvDiff < 0)//clip it to zero
								_AvDiff = 0;
							break;
				}

				if (x->pd_offBeat[i] < 0 || x->pd_offBeat[i] > _AvDiff)//if this is the first round for this pulse OR if the stored diff is larger than the new one
					x->pd_offBeat[i] = _AvDiff;//store the difference in the pulse;
				_PreviousPulse = i;//set previous pulse to the current one
			}
		}
		_Level++; //go to the next level
	}// finished calculating minimum average differences
	//Perform Threshold Filtering
	if (!x->pd_threshold)//if no filtering is being specified return
		return true;
	for (i=0 ; i<x->l_size ; i++)//else perform threshold filtering
	{
		x->pd_offBeat[i] -= x->pd_threshold[i];
		if (x->pd_offBeat[i] < 0 ) 
			x->pd_offBeat[i] = 0;
	}
	return true;

}

void kin_offBeatDetector_outputScores (t_kin_offBeatDetector *x)
{
	t_atom * _out;
	long i =0;
	if (!x->pd_offBeat || x->l_size <= 0)
		return;
	_out = new t_atom [x->l_size];
	for (i=0 ; i<x->l_size ; i++)
		atom_setfloat(_out+i, x->pd_offBeat[i]);
	outlet_anything(x->p_outlet, gensym("list"), x->l_size, _out);	
	
}

void kin_offBeatDetector_type (t_kin_offBeatDetector *x, long n)
{
	if ( n >= 0 && n < KIN_OFF_BEAT_NUMBER_OF_TYPES)
		x->m_type = (kin_off_beat_type_detection)n;
	post ("type : %ld", x->m_type);
}

void kin_offBeatDetector_loud (t_kin_offBeatDetector *x, double f)
{
	x->d_ExpectedLoudness = f;
}

void kin_offBeatDetector_PreviousWeight(t_kin_offBeatDetector *x, double f)
{
	if ( f>1. )
		x->d_PreviousWeight = 1.;
	else if ( f<0. )
		x->d_PreviousWeight = 0;
	else
		x->d_PreviousWeight = f;
}

void kin_offBeatDetector_LevelsRange(t_kin_offBeatDetector *x, double f)
{
	if ( f>1. )
		x->d_LevelsRange = 1.;
	else if ( f<0. )
		x->d_LevelsRange = 0;
	else
		x->d_LevelsRange = f;
}