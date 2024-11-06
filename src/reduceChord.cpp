/*
	kin.reduceChord
	Max/MSP external that reduces a chord consisting of more than 3 midi notes into a set of 3 pitch classes (0-11)
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
#include "Kinetic.h"						// to include copyright notice for the toolbox
#include <string>
#include <iostream>

static double	sd_standard_salience	[12]	= {1, 0, 0.1, 0.2, 0.4, 0, 0.33, 0.4, 0, 0, 0.33, 0.1};
static long		sl_chord_identifiers	[55]	= {257, 385, 513, 641, 769, 897, 1025, 1153, 1281, 1409, 386, 514, 642, 770, 898, 1026, 1154, 1282, 1410, 515, 643, 771, 899, 1027, 1155, 1283, 1411, 644, 772, 900, 1028, 1156, 1284, 1412, 773, 901, 1029, 1157, 1285, 1413, 902, 1030, 1158, 1286, 1414, 1031, 1159, 1287, 1415, 1160, 1288, 1416, 1289, 1417, 1418};
static char*	sc_chord_types1			[55]	= {"maj", "maj", "min/maj", "maj", "dom", "dom", "maj", "maj", "min", "maj", "min", "dom", "min", "dom", "dom", "half-dim", "dom", "dom", "maj", "maj", "dom", "dim", "minor", "major", "dim", "min", "min/maj", "maj", "half-dim", "maj", "aug", "min", "dom", "maj", "dom", "dom", "min", "maj", "dom", "dom", "dom", "dom", "dim", "half-dim", "dom", "maj", "min", "dom", "maj", "min/maj", "dom", "maj", "maj", "min", "maj"};
static char*	sc_chord_types2			[55]	= {"7b9", "9", "7", "7", "#11", "b9", "7", "7#5", "9", "7b9", "9", "9", "7", "7", "9", "7", "7", "9", "9", "7#5", "7", "5", "5", "5", "5", "7", "7", "7", "7", "5", "5", "5", "7", "7", "b9", "9", "5", "5", "9", "#11", "#11", "7", "5", "7", "b9", "7", "7", "7", "7", "7", "9", "7#5", "9", "9", "7b9"};
////////////////////////// object struct
typedef struct _reduceChord 
{
	t_object					ob;			// the object itself (must be first)
	void *outL;			// Pointer to the outlet
	void *outR;
	long	*p_input;
	long	*p_pitch_class; //array that stores the input chord after converted to pitch classes and the duplicates have been removed. (maximum ellements 12!!)
	long	l_root;
	long	l_type;
	long	l_classes_length;
	long	l_input_length;
	t_atom	a_outputlist [128];
} t_reduceChord;



///////////////////////// function prototypes
//// standard set
void *reduceChord_new(t_symbol *s, long argc, t_atom *argv);
void reduceChord_free(t_reduceChord *x);
void reduceChord_assist(t_reduceChord *x, void *b, long m, long a, char *s);
//// message handlers
void reduceChord_list(t_reduceChord *x, t_symbol *s, short ac, t_atom *av);
void reduceChord_bang(t_reduceChord *x);
//// private methods
bool reduceChord_reduceToPitchClasses(t_reduceChord *x);//reduce to a set of unique pitch classes
void reduceChord_sortInterDistances(t_reduceChord *x);//sorts the x->p_pitch_classes array according to the distances between its ellements (max->min)
void reduceChord_findRoot(t_reduceChord *x); //find the root of the chord acording to the calulcated pitch classes and store it in the l_root variable
void reduceChord_determineType (t_reduceChord *x);
void reduceChord_output(t_reduceChord *x);
//////////////////////// global class pointer variable
void *reduceChord_class;


void ext_main(void *r)
{	
	// object initialization, NEW STYLE
	t_class *c;
	
	c = class_new("kin.reduceChord", (method)reduceChord_new, (method)reduceChord_free, (long)sizeof(t_reduceChord), 
				  0L /* leave NULL!! */, A_GIMME, 0);
	
	/* you CAN'T call this from the patcher */
    class_addmethod(c, (method)reduceChord_assist,			"assist",		A_CANT, 0L); 
    class_addmethod(c, (method)reduceChord_list,			"list",			A_GIMME, 0L); 
	class_addmethod(c, (method)reduceChord_bang,			"bang",			A_NOTHING, 0L); 
	
	class_register(CLASS_BOX, c); /* CLASS_NOBOX */
	reduceChord_class = c;
	Kinetic_Register_Symbol();
}

void reduceChord_assist(t_reduceChord *x, void *b, long m, long a, char *s)
{
	if (m == ASSIST_INLET) { // inlet
		sprintf(s, "list of note numbers");
	} 
	else {	// outlet
		sprintf(s, "list of pitch classes sorted according to their interdistance"); 			
	}
}

void reduceChord_free(t_reduceChord *x)
{
	if (x->p_pitch_class) delete [] x->p_pitch_class;
	if (x->p_input) delete[] x->p_input;
}


void *reduceChord_new(t_symbol *s, long argc, t_atom *argv)
{
	t_reduceChord *x = NULL;
    
	// object instantiation, NEW STYLE
	if (x = (t_reduceChord *)object_alloc((t_class*)reduceChord_class)) 
	{
		x->p_pitch_class = NULL;
		x->p_input = NULL;
		x->l_root = -1;
		x->l_type = -1;
		//create the outlet and store its pointer
		x->outR= outlet_new(x,NULL);
		x->outL= outlet_new(x,NULL);
	}
	return (x);
}


void reduceChord_list(t_reduceChord *x, t_symbol *s, short ac, t_atom *av)//responds to the list message
{
	int i;
	bool _NaN;
	long *_in;

	if (ac<3)
		return;
	_in = new long [ac];
	_NaN = false;
	i = 0;
	//type check the input 
	while (!_NaN && i<ac)
	{
		if (atom_gettype(av+i)==A_FLOAT)
			_in[i]=(int)atom_getfloat(av+i);
		else if (atom_gettype(av+i)==A_LONG)
			_in[i]=atom_getlong(av+i);
		else
			_NaN = true;
		i++;
	}
	if (!_NaN)//if all input was numbers then
	{
		x->p_input = _in;
		x->l_input_length = ac;
		reduceChord_reduceToPitchClasses(x);//reduce to unique pitch  classes
		reduceChord_sortInterDistances(x);//sort the pitch classes
		reduceChord_findRoot(x); //find the root of the chord acording to the calulcated pitch classes and store it in the l_root variable
		reduceChord_determineType (x); //and determine the type
		reduceChord_output(x);//then output the result
	}
	else
		delete [] _in;//delete temporary memory
	return;
}

//reduce the input array into unique pitch classes and allocates and stores the aray x->p_pitch_classes
//and sets the x->l_length value
bool reduceChord_reduceToPitchClasses(t_reduceChord *x)
{
	int i, j, _counter;
	bool _unique;
	long *_in = new long [x->l_input_length];
	int _classes [12];//the maximum possible number of different classes is 12
	for (i=0 ; i < x->l_input_length ; i++)//convert to picth class
		_in[i] = x->p_input[i]%12;
	//remove duplicates
	_counter = 0;
	for (i=0 ; i < x->l_input_length ; i++)
	{
		j = 0;
		_unique = true;
		while (_unique && j<_counter)
		{
			if (_in[i]==_classes[j])//compare to the already stored values and if found one that is the same then set the unique flag to false
				_unique = false;
			j++;
		}
		if (_unique)//if the input i is unique
		{
			_classes[_counter] = _in[i];//then store it in the array of input classes
			_counter++;//and advance the counter to the next position (maximum 12, this is assured by the % operator a few lines up)
		}
	}
	if (_counter<3)//if the chord has less than 3 classes then return false and ignore the incoming message
		return false;
	//if the chord has more than 3 classes then
	x->l_classes_length = _counter;//set the l_length of the new input clases array
	if (x->p_pitch_class) delete [] x->p_pitch_class;//delete previously allocated memory
	x->p_pitch_class = new long [x->l_classes_length];//allocate new memory
	for (i=0 ; i<x->l_classes_length ; i++)//copy the found classes
		x->p_pitch_class[i] = _classes[i];
	delete [] _in;
	return true;
}

void reduceChord_sortInterDistances(t_reduceChord *x)
{
	int i,j, _diff, _tmpint;
	int *_sum = new int [x->l_classes_length];//allocate temporary memory for storing the sums of the distances
	for (i=0 ; i< x->l_classes_length ; i++)
	{
		_sum[i] = 0;//initilize _sum for this pitch class to 0
		for (j=0 ; j<x->l_classes_length ; j++)//calculate the differences from all other classes
		{
			_diff = abs(x->p_pitch_class[i]-x->p_pitch_class[j]);
			if (_diff > 6)
				_diff = 12-_diff;
			_sum[i] += _diff;//and sum them 
		}
	}
	//sort the sums and the corresponding pitch classes form max sum -> to min sum
	for (i=0 ; i<x->l_classes_length ; i++)//scan from begining to end
	{
		for (j=i ; j<x->l_classes_length ; j++)//compare with all ellements after the current
		{
			if (_sum[i]<_sum[j])//if one is larger than this one switch places
			{
				_tmpint = _sum[j];//in the sum array
				_sum[j] = _sum[i];
				_sum[i] = _tmpint;
				_tmpint = x->p_pitch_class[j];//and in the classes array
				x->p_pitch_class[j] = x->p_pitch_class[i];
				x->p_pitch_class[i] = _tmpint;
			}
		}
	}

	if (_sum) delete [] _sum;//delete temporary allocated memory
}



void reduceChord_findRoot(t_reduceChord *x)
{
	int i,j,_maxIndex = 0, _sindex;
	double _sum [12];
	double _totalSum = 0;
	double _maxValue = 0;
	if (!x->p_pitch_class )
		return;
	for (i=0 ; i<12 ; i++) //go through all rotations of the salience vector
	{
		_sum[i] = 0;
		j=0;
		while  (j<3 && j< x->l_classes_length)//for the first 3 classes calculate the sum of all saliences
		{
			_sindex = x->p_pitch_class[j]-i;
			if (_sindex<0)
				_sindex += 12;
			_sum[i] += sd_standard_salience[_sindex];
			j++;
		}
		_totalSum += _sum[i];
	}
	_totalSum /= 120.;
	for (i=0 ; i<12 ; i++)
	{
		_sum[i] /= _totalSum; //Rowe's normalization
		if (_maxValue<_sum[i])
		{
			_maxValue = _sum[i];
			_maxIndex = i;
		}
	}
	x->l_root = _maxIndex;
}

void reduceChord_determineType (t_reduceChord *x)
{
	int i=0, j=0, _counter =0, _res, _identifier; 
	long _vector [3];
	while (j<3 && j<x->l_classes_length)//calculate differences from root 
	{
		_res = x->p_pitch_class[j] - x->l_root;
		if (_res < 0) _res += 12;
		if (_res > 0)
		{
			_vector [_counter] = _res;
			_counter++;
		}
		j++;
	}
	if (_counter < 2)
		return;
	for (j=0 ; j<_counter ; j++)//sort the array of differences
	{
		for (i=j+1 ; j<_counter ; j++)
		{
			if (_vector[j]>_vector[i])
			{
				_res = _vector[i];
				_vector[i] = _vector[j];
				_vector[j] = _res;
			}
		}
	}
	
	_identifier = _vector[0] + (_vector[1]<<7);
	x->l_type = _identifier;
}


void reduceChord_bang(t_reduceChord *x)
{
	reduceChord_output(x);
}

void reduceChord_output(t_reduceChord *x)
{
	int i;
	char* _type1, *_type2;
	if (x->l_classes_length <= 0 || !x->p_pitch_class)
		return;
	for (i=0 ; i<x->l_classes_length ; i++)
		atom_setlong(x->a_outputlist+i, x->p_pitch_class[i]);//copy the values of the pitch classes
	outlet_list(x->outR, 0L, x->l_classes_length, x->a_outputlist);//output them

	i=-1;
	bool _notFound = true;
	while (_notFound && ++i < 55)
	{
		if (sl_chord_identifiers[i] == x->l_type)
			_notFound = false;
	}
	if (_notFound)
	{	
		_type1 = "NotFound";
		_type2 = "NotFound";
	}
	else
	{
		_type1 = sc_chord_types1[i];
		_type2 = sc_chord_types2[i];
	}
	atom_setlong(x->a_outputlist, x->l_root);
	atom_setsym(x->a_outputlist+1, gensym(_type1));
	atom_setsym(x->a_outputlist+2, gensym(_type2));
	outlet_list(x->outL, 0L, 3,x->a_outputlist);//output them

}