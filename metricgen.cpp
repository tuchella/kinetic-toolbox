/*
	kin.weights
	Max/MSP external that calculates metrical weights after Clarence Barlow's Indispensability Algorithm
	part of the kin.rhythmicator Max/MSP based application
    Copyright (C) 2009 - 2011 - INESC Porto, Carlos Guedes, George Sioros

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


	Developed by Carlos Guedes & George Sioros

*/


#include "ext.h"// standard Max include, always required
#include "ext_obex.h" // required for new style Max object
//#include <malloc.h>
#include <memory.h>
#define _USE_MATH_DEFINES //needed to define mathematical constants like M_PI
#include "math.h"
#include "PsiFunctions.h" //needed for first order indispensabilities
#include "Kinetic.h"

#define _THEGOLDENRATIO		1.6180339887
//#include <ext_mess.h>
////////////////////////// object struct
typedef struct _metricgen 
{
	t_object	ob;			// the object itself (must be first)
	long		levels;		//the number of stratification levels -> the length of the array factors
	long		pulses;		//number of pulses, also the length of the arrays weights, sortedweights...
	long		*factors;	//these are the prime numbers that the number of pulses (pulses) is decomposed to
	long		*strata;	 
	double		*weights;	//these are the normalized probability weights
	long		*indisp;
	long		*M;
	long		number_of_groups;//number of hierarchy groups used when converting pulse ranking to weights
	long		*group;	//similar to factors but they don´t have to be prime numbers. used instead of the factors in converting ranking to weihgts 
	double		rangeFactor;//defines how weights are transalated into probabilities according to the groups


	void *m_out;//primiry left output
	void *m_outR;//secondary right  output
} t_metricgen;

///////////////////////// DECLARATIONS
void *metricgen_new(t_symbol *s, long argc, t_atom *argv);//constractor
void metricgen_free(t_metricgen *x);//destructor... also called to free the memory allocated for the various arrays
void metricgen_CalcIndispensabilities (t_metricgen *x);//caclulate indispaensability values for each pulse and store them in the weights/storedweights arrays
void metricgen_assist(t_metricgen *x, void *b, long m, long a, char *s);
void metricgen_bang(t_metricgen *x);//response to bang message: just calls the metricgen_triggerNote 
void metricgen_initializeStuff (long *array, long s);//fills with zeros an array of length s
void metricgen_outputWeights (t_metricgen *x);//generate the "weights" message out the right most outlet
void metricgen_list(t_metricgen *x, t_symbol *s, short ac, t_atom *av);//response to a list: either sets the meter directly or sets the weights directly depending on the length of the list
long metricgen_setMeter(t_metricgen *x, long argc, t_atom *argv);//sets the meter, initializes vectors, allocates memory, calls the CalcIndispensabilities function
void metricgen_clearPtrs(t_metricgen *x);  //clears all allocated pointers BUT the user pattern which is set and cleared through seperate functions
void metricgen_rangeRatio(t_metricgen *x, double f);
void metricgen_strataToWeights(t_metricgen *x);
void metricgen_groups(t_metricgen *x, t_symbol *s, short ac, t_atom *av);
/*
in the current version the user pattern is not compared to the barlow weights and there is no method 
that returns the syncopated inedx (similar to metricgen_SequentialSyncopation or metricgen_SwapSyncopation)
which uses the syncopationArray and syncopationStyleArray caclulated by such a comparison


*/
//////////////////////// global class pointer variable

void *metricgen_class;


int main(void)
{	



	// object initialization, NEW STYLE
	t_class *c;
	
	c = class_new("kin.weights", (method)metricgen_new, (method)metricgen_free, (long)sizeof(t_metricgen), 
				  0L /* leave NULL!! */, A_GIMME, 0);
	
	/* you CAN'T call this from the patcher */
    class_addmethod(c, (method)metricgen_assist,			"assist",	A_CANT, 0);  
	class_addmethod(c, (method)metricgen_outputWeights,		"post",		0);
	class_addmethod(c, (method)metricgen_bang,				"bang",		0);
	class_addmethod(c, (method)metricgen_rangeRatio,		"float",	A_FLOAT,0);
	class_addmethod(c, (method)metricgen_list,				"list",		A_GIMME, 0);
	class_addmethod(c, (method)metricgen_groups,			"group",	A_GIMME, 0);

	class_register(CLASS_BOX, c); /* CLASS_NOBOX */
	metricgen_class = c;
	Kinetic_Register_Symbol();
	post("Kin.weights: was created by George Sioros (2010) after Clarence Barlow's Indispensability Algorithm");
	return 0;
}


////////////////////////functions//////////////////////
void metricgen_CalcIndispensabilities (t_metricgen *x)
{
	int Qi= 1;
	int Qzr;
	int Qz=1;
	int id;
	int i,j, k;
	int calc;
	//initialize everything

	metricgen_initializeStuff(x->M, x->pulses);
	metricgen_initializeStuff(x->strata, x->pulses*x->levels);

	for (i=1; i<= x->pulses; i++)
		x->M[i-1]= (x->pulses + i-2)%x->pulses;
	for (i=0; i< x->levels; i++)
	{
		Qzr= x->factors[x->levels-i-1];
		for (k=0; k<= x->levels-i-1 ; k++)
		{
			if (k!=0)
				Qi*= x->factors [k-1];
		}
		for (k=0; k<= i; k++)
		{
			id= x->levels-k;
			if (id != x->levels) 
				Qz*=x->factors[id];
		}
		for (j=0; j< x->pulses ; j++)
		{
			calc= (1+(x->M[j]/Qz)) % Qzr;
			x->strata [i*x->pulses + j]= Qi*First_Order_Indispensability(Qzr, calc);
		}
		Qi=1;
		Qzr=1;
		Qz=1;

	}



}	

void metricgen_bang(t_metricgen *x)
{
	t_atom* A_ar = new t_atom [x->levels+1];
	int i;
	atom_setlong(A_ar, x->pulses);
	for (i=0 ; i<x->levels ; i++)
		atom_setlong(A_ar+1+i, x->factors[i]);
	if (metricgen_setMeter(x,x->levels+1,A_ar)==0)
		metricgen_outputWeights(x);
}


void metricgen_list(t_metricgen *x, t_symbol *s, short ac, t_atom *av)
{
	if (metricgen_setMeter(x,ac,av)==0)
		metricgen_outputWeights(x); // if  indespansabilities were succesfully caclulated then output the weights through rightmost outlet
	
}

void metricgen_assist(t_metricgen *x, void *b, long m, long a, char *s)
{
	if (m == ASSIST_INLET) 
	{ // inlets
		switch (a)
		{
		case 0:
			sprintf(s, "list sets meter or weights, float set ratio of the ranges of stratification levels");
			break;
		}
	} 
	else
	{	// outlets
		switch (a)
		{
		case 0:
			sprintf(s, "list of weights");
			break;
		case 1:
			sprintf(s, "list of indispensabilities");
			break;
		}
	}
}
	
void metricgen_free(t_metricgen *x)
{
	metricgen_clearPtrs (x);
}


void *metricgen_new(t_symbol *s, long argc, t_atom *argv)
{
	t_metricgen *x = NULL;
	t_atom *tmpargarray;
	long i;

	// object instantiation, NEW STYLE
	if (x = (t_metricgen *)object_alloc((t_class*)metricgen_class)) 
	{		
		x->m_outR = outlet_new((t_metricgen *) x, NULL);
		x->m_out = outlet_new((t_metricgen *) x, NULL);

        x->rangeFactor = 0.5;
		//initialize everything
		if ( metricgen_setMeter (x, argc, argv) != 0)
		{
			// if not succesufully initialized based on arguments initialize with "8 2 2 2" as arguments
			tmpargarray = (t_atom *)sysmem_newptr(4 * sizeof (t_atom));
			atom_setlong (tmpargarray, 8);
			for ( i = 1 ; i < 4; i++)
				atom_setlong (tmpargarray+i, 2);
			metricgen_setMeter (x, 4, tmpargarray);
			sysmem_freeptr(tmpargarray);
		}
		t_symbol* kintool = gensym("kinetic toolbox loaded");
		if (kintool->s_thing == NULL)
		{
			post ("Kinetic toolbox was developed in 2010 by George Sioros at INESC-Porto");
			kintool->s_thing = (object*) x;
		}
	}
	return (x);
}


long metricgen_setMeter(t_metricgen *x, long ac, t_atom *av) //clears pointers, allocates new memory, initilizes everything and calls the metricgen_CalcIndispensabilities to caclulate the new weights
{
	bool typetest = true;
	int checkpulses =1;
	int i =0;
	while (i>ac && typetest)
	{
		if ((av + i)->a_type != A_LONG)
			typetest = false;
		i++;
	}
	if (!typetest) return 1;//return 1 if the types of the arguments are not LONG
	for (i=1; i< ac; i++) 
		checkpulses*= atom_getlong(av+i);
	if (checkpulses != atom_getlong(av)) 
		return 2;//return 2 if the product of the strata does not match the number of pulses
	metricgen_clearPtrs(x); //release previous pointers
	
	x->levels = ac-1;
	x->pulses = checkpulses;
	x->factors = (long *)sysmem_newptr((x-> levels) * sizeof (long));
	x->strata = (long *)sysmem_newptr((x-> levels) * (x-> pulses) * sizeof (long));
	x->weights = (double *)sysmem_newptr((x-> pulses) * sizeof (double));
	x->indisp = (long*)sysmem_newptr((x->pulses)*sizeof(long));
	x->M =	(long *)sysmem_newptr((x->pulses) * sizeof(long));
	x->number_of_groups = x->levels;
	x->group = (long *)sysmem_newptr((x->number_of_groups) * sizeof (long));
	for (i=1; i< ac; i++) 
	{
		x->factors[i-1]= atom_getlong(av+i);
		x->group[i-1] = x->factors[i-1];//set the group factors as the stratification prime factors every time the meter is reset
	}
		
// recalculate indispensability		
	metricgen_CalcIndispensabilities(x);//caclulate new indispensabilities and store them into the weight/storedweights array
	metricgen_strataToWeights(x);
	return 0; //return 0 if it sets the meter ok!
}



void metricgen_outputWeights (t_metricgen *x) //output the weights out the left most outlet
{
	int i;
	if (x->weights == NULL)
		return;
	t_atom *tempout = new t_atom [x->pulses];//temporary atom array to hold the output message

	for (i=0; i< x->pulses; i++)
		atom_setlong(tempout + i, x->indisp[i]);//fill the output array with the values of the indisp array

	outlet_list(x->m_outR, NULL, x->pulses, tempout); //output 

	for (i=0; i< x->pulses; i++)
		atom_setfloat(tempout + i, x->weights[i]);//fill the output array with the values of the weight array

	outlet_list(x->m_out, NULL, x->pulses, tempout); //output 
	delete [] tempout;
}


void metricgen_initializeStuff (long *array, long s)//this just to simplify the initialization of arrays to  0
{
	int i;
	for (i=0; i < s; i++)
		array[i]=0;	
}


void metricgen_clearPtrs(t_metricgen *x)
{
	sysmem_freeptr(x->weights);
	sysmem_freeptr(x->factors);
	sysmem_freeptr(x->strata);
	sysmem_freeptr(x->group);
	sysmem_freeptr(x->indisp);
}

void metricgen_rangeRatio(t_metricgen *x, double f)
{
	x->rangeFactor = f;
	metricgen_strataToWeights(x);
	metricgen_outputWeights(x);
}


// WEIGHTS => PROBABILITIES TAKING INTO ACCOUNT THE STRATIFICATION LEVELS 	
void metricgen_strataToWeights(t_metricgen *x)
{
	int i, k, j, p, i_temp, i_counter, i_beats;
	double Ro, norm, range, dif;
	if (x->weights == NULL || x->factors == NULL || x->group == NULL || x->strata == NULL || x->indisp == NULL)//if the arrays have not been allocated
		return;
	for (i=0; i<x->pulses; i++)//initialize weights array
	{
		x->indisp[i]=0;
		x->weights[i]=0.0;
	}
	for (i=0; i< x->levels*x->pulses; i++)//caclulate ranking from strata values
		x->indisp [i% x->pulses]+= (x->strata[i]);
//	for (i=0; i<x->pulses; i++)
//		x->weights[i] += 2;// label all the beats starting from 2 and above. this is needed in order not to confuse the weights converted already to probalities [0,1] with the indispensabilities (integers > 1)
	k = x->pulses-1;//the highest number inside x->weights array
	i_temp = 1;
	i_counter = 0;//this counts the stratification levels that have already been converted in probabilities
	if (x->rangeFactor > 1.) //this part can be used to calculate the range of the probabilties for each stratification level based on a ratio => Ro, R1 = Ro/r, R2 = R1/r = Ro/r^2 .... Ri = Ro/r^i. The whole 0. to 1. is covered
		Ro = (x->rangeFactor-1.)/(x->rangeFactor- pow(x->rangeFactor, 1-x->number_of_groups));//this is the range of the higher stratification level. all lower ones are calculated based on this initial
	else if (x->rangeFactor < 0.)
		Ro = 1./x->number_of_groups;
//	else if (x->rangeFactor < 1.)//for constant ranges of startification levels
//		Ro = x->rangeFactor;//the first level has always a range of (1, rangeFactor)
	norm = 1.;//initialy the 1st level of stratification starts from the highest possible value 1.
	for (i=0 ; i < x->number_of_groups ; i++) //each level of stratification seperatly
	{
		i_temp *= x->group[i];//this is the product of the stratification factors
		i_beats = i_temp-i_counter;//the number of beats that belong to the current stratification level i 
		//each stratification level occupies a range of probabilities
		//inside this range lie the all the beats that belong to the same stratification level and they are positioned in equaly distant positions
		if (x->rangeFactor <=1. && x->rangeFactor >= 0.)
		{
		//DIVIDING THE PROBABILITIES RANGES with constant range for each level , independent of the total number of levels 
			//for each level of stratification the pobabilty of the most important beat is half of that of the imediate higher level (the 1st one is 1)
			range = pow(x->rangeFactor, i) - pow(x->rangeFactor, i+1);
			dif = range/(i_beats);//inside each level of stratification the different beats have a linear difference of probabilities
		}
		else if (x->rangeFactor > 1.)
		{
		//Devide ranges according to the total number of levels. for rangeFactor = 1 (the default) all pulses are distributed linearly 
			range = Ro/pow(x->rangeFactor,i);
			dif = range/i_beats;//the range of the specific level ( Ro/ (GR^i) ) is diveided into equal parts
		} else if (x->rangeFactor < 0.)
		{
		//Devide ranges according to the total number of levels. for rangeFactor = 1 (the default) all pulses are distributed linearly 
			range = Ro;
			dif = range/i_beats;//the range of the specific level ( Ro/ (GR^i) ) is diveided into equal parts
		}
		for (j = 0; j < (i_beats) ; j++)//caclulate the weight for each one of the beats inside the stratification level i
		{
			p = 0;
			while ( p < x->pulses && x->indisp[p] != k)//startification levels are converted to probabilities in order of their importance and not according to their position in the meter
				p++;	//find the corresponding beat lebeled according to its weight
			x->weights[p] = norm - dif*j;//normalize relative to beat importance inside the stratification level.
			k--;//go one level lower => finaly all level will be normalized
			i_counter++;
		}
		norm -= range;//the next level will start from this levels low limit
	}

}

void metricgen_groups(t_metricgen *x, t_symbol *s, short ac, t_atom *av)
{
	bool typetest = true;
	int checkpulses =1;
	int i =0;
	while (i>ac && typetest)
	{
		if ((av + i)->a_type != A_LONG)
			typetest = false;
		i++;
	}
	if (!typetest)
		return ;//return if the types of the arguments are not LONG
	for (i=0; i< ac; i++) 
		checkpulses*= atom_getlong(av+i);
	if (checkpulses != x->pulses) 
		return;//return 2 if the product of the groups does not match the number of pulses
	x->number_of_groups = ac;
	if (x->group)//free previously allocated memory
		sysmem_freeptr(x->group);
	x->group = (long *)sysmem_newptr((x->number_of_groups) * sizeof (long));//allocate new memory for group factors
	for (i=0 ; i<ac; i++)
		x->group[i] = atom_getlong(av+i);
	metricgen_strataToWeights(x); //recaclulate weights accodrding to new group structure
	metricgen_outputWeights(x);
}
