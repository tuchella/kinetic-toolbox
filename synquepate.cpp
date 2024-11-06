/*
	kin.sequencer
	Max/MSP external, a stochastic sequencer
	part of the kin.rhythmicator Max/MSP based application
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



#include "ext.h"// standard Max include, always required
#include "ext_obex.h" // required for new style Max object
//#include <malloc.h>
#include <memory.h>
#define _USE_MATH_DEFINES //needed to define mathematical constants like M_PI
#include "math.h"
#include <float.h>
#include "Kinetic.h"

#define Atom t_atom

#define		SYNQUEPATE_MIN_PROB_VALUE	0.02//this controls the behaviour of the exponantialy scaled probabilities (metricality) when some of the input  weights are 0
////////////////////////// object struct
typedef struct _synquepate 
{
	t_object	ob;// the object itself (must be first)
	long		pulses;	//number of pulses, also the length of the arrays weights
	double		*weights;//these are the weights engtered by the user
	double		*rescaledWeights;//rescaled according to minimum
	double		*outputs;//this array holds the generated outputs 
	double		freeze;//this is the inversed of the probabilty of a new value to be output for each pulse (1-prob)
	double		**scores;//array of arrays of scores (one for each pulse in the pattern) to be compared with random numbers 
	long		*syncopationDirection;//0= no syncopation, +1 = forward syncopation (anticipating)
	long		previous_triggered; //just a flag indicating whether in the previous beat an note event has been triggered out the left outlet
	long		syncopatedCount; //number of successive syncopated beats .
	long		counter; //current beat/pulse position. It is output from the middle outlet at each bang
	long		stable; //stable or unstable mode flag
	double		exponent; //the probability is the weight ^ exponent : exp = 0 => prob = 1
	double		density;//ratio of the total probability per measure to the maximum total probability per measure Pm = Sum (Wrescaled ^ exp) , Pmtotal = number of non filtered beats
	double		original_TotalProbability;//the density of events as calculated from  the original, non exponantialy scaled, input weights
	double		WeightMinimum; //the weights are rescaled according to this formula: probability = (weight - min)/(1-min) {for min = 0 => prob = weight}
	double		ProbabilityFactor;// f = density * (NORM / Sum (Wrescaled ^ exp) )
	double		norm;//norm = sum of non filtered beats
	double		TotalProbability;//it corresponds to the average number of triggered notes per measure
	double		syncopation; //user input [0~1]...probability of syncopate each pulse
	double		**syncopationScore;	//array where one random number number is stored for each beat related to the decision of syncopating this beat 
	double		**syncopationStopScore; // array where one random number number is stored for each beat related to the decision of stoping successive syncopated beats 
	double		*syncopationWeightDifferences; //in this array are stored all the differences of the weights of the beats that are swaped in the swaping syncopation mode. Caclulating the sum of them is part of deciding about the syncopating or not the current beat
	double		variations[2];// holds the variation parameters in triggering (1) and in syncopating/anticipating (2)
	//pointers to the max objects outlets
	void *m_outTRIGGER;
	void *m_outBEAT;
	void *m_outSYNCOPATE;
	void *m_outINFO;
} t_synquepate;

///////////////////////// DECLARATIONS
void *synquepate_new(t_symbol *s, long argc, t_atom *argv);//constractor
void synquepate_free(t_synquepate *x);//destructor... also called to free the memory allocated for the various arrays
void synquepate_assist(t_synquepate *x, void *b, long m, long a, char *s);
void synquepate_triggerNote (t_synquepate *x);//generate an output at the left most outlet stochasticaly according to the probability weight of the current pulse/beat (counter)
void synquepate_bang(t_synquepate *x);//response to bang message: just calls the synquepate_triggerNote 
void synquepate_int (t_synquepate *x, long val);//response to int message...
void synquepate_exponent(t_synquepate *x, double exp);//sets the a mutlipplier of the normalized weights 
void synquepate_syncopate (t_synquepate *x, double syncopation);//response to a float in the right inlet: sets the syncopation variable
void synquepate_list(t_synquepate *x, t_symbol *s, short ac, t_atom *av);//response to a list: either sets the meter directly or sets the weights directly depending on the length of the list
void synquepate_float(t_synquepate *x, double f);
void synquepate_setWeights(t_synquepate *x, long length, double *in_array);//sets the meter, initializes vectors, allocates memory, calls the CalcIndispensabilities function
void synquepate_weightMinimum(t_synquepate *x, t_symbol *s, short ac, t_atom *av);//set the WeightMinimum value
double synquepate_probability(t_synquepate *x, int index);//caclulates and returns the triggering probability of the index  based on the rescaled weights and the exponantial and multiplication factor
void synquepate_density (t_synquepate *x, double dens); //sets the deinsity variable and calls the synquepate_caclulateProbabilityFactor function
void synquepate_rescaleWeights(t_synquepate *x);//  resscales the weights caclulated in the synquepate_CalcIndispensabilities functions according to the  weightMinimum Value
void synquepate_caclulateNormalizationFactor(t_synquepate *x); //the norm factor is used in the synquepate_caclulateProbabilityFactor function and equals the sum of all beats with probability >0 
void synquepate_caclulateTotalProbability(t_synquepate *x);//caclulates the total probability as the sum of all the weights of the pattern (the weights are restricted in [0,1] range)
void synquepate_caclulateProbabilityFactor(t_synquepate *x);		// caclulates the probability multiplication factor as x->density * x->norm / x->TotalProbability;
void synquepate_clearPtrs(t_synquepate *x);  //clears all allocated pointers BUT the user pattern which is set and cleared through seperate functions
int synquepate_SequentialSyncopation(t_synquepate *x); //SWAPING SYNCOPATION STYLE caclulates the index to be used for the current beat (-1, 0, +1) and sets also the values for the syncopation and syncopationdirection variables
void synquepate_randomWalk(double* var, double r, double rmin, double rmax); // it randomize the variable var using a random walk method with range r
void synquepate_freeze(t_synquepate *x, double f);//sets the freeze parameter
void synquepate_calculateOriginalTotalPropability(t_synquepate *x);//calculates the density of events of the original weights and sets the value of original_density
void synquepate_resetAllScores(t_synquepate *x);
void synquepate_variations(t_synquepate *x, t_symbol *s, short ac, t_atom *av);
double synquepate_VariationScore (double score, double range);
void synquepate_stable (t_synquepate *x, long val); //responce to the stable message -> sets the stable flag (On/OFF)

//////////////////////// global class pointer variable
void *synquepate_class;


int main(void)
{	

	
	// object initialization, NEW STYLE
	t_class *c;
	
	c = class_new("kin.sequencer", (method)synquepate_new, (method)synquepate_free, (long)sizeof(t_synquepate), 
				  0L /* leave NULL!! */, A_GIMME, 0);
	
	/* you CAN'T call this from the patcher */
    class_addmethod(c, (method)synquepate_assist,			"assist",		A_CANT,		0);  
	class_addmethod(c, (method)synquepate_bang,				"bang",						0);
	class_addmethod(c, (method)synquepate_exponent,			"exp",			A_FLOAT,	0);
	class_addmethod(c, (method)synquepate_int,				"int",			A_LONG,		0);
	class_addmethod(c, (method)synquepate_float,			"float",		A_FLOAT,	0);
	class_addmethod(c, (method)synquepate_syncopate,		"syncopate",	A_FLOAT,	0);
	class_addmethod(c, (method)synquepate_list,				"list",			A_GIMME,	0);
	class_addmethod(c, (method)synquepate_weightMinimum,	"minimum",		A_GIMME,	0);
	class_addmethod(c, (method)synquepate_density,			"density",		A_FLOAT,	0);
	class_addmethod(c, (method)synquepate_freeze,			"freeze",		A_FLOAT,	0);
	class_addmethod(c, (method)synquepate_resetAllScores,	"reset",					0);
	class_addmethod(c, (method)synquepate_variations,		"variations",	A_GIMME,	0);
	class_addmethod(c, (method)synquepate_stable,			"stable",		A_LONG,		0);
	class_register(CLASS_BOX, c); /* CLASS_NOBOX */
	synquepate_class = c;
	Kinetic_Register_Symbol();
	return 0;
}

void synquepate_bang(t_synquepate *x)
{
	if (x->pulses <= 0)
		return;
	synquepate_triggerNote(x);//with every bang the synquepate_triggerNote is called to trigger or not a note
	x->counter++;//advance the counter to the next beat
	x->counter = x->counter % x->pulses;//warp the counter
}

void synquepate_int (t_synquepate *x, long val)
{
	if (val>= 0 && x->pulses>0)
	{
		x->counter = val;//set the counter (current beat position) to the input
		x->counter %= x->pulses;//warp the counter
		synquepate_triggerNote(x);//generate a note according to the probability of the current beat
	}
}

void synquepate_float (t_synquepate *x, double f)
{
	Atom atm;
	atom_setfloat(&atm, f);
	synquepate_list (x, gensym("list"), 1, &atm);
}

void synquepate_exponent(t_synquepate *x, double exp)		//sets the user controled exponent parameter. The probability of a beat is analogus to the weight raised in the exponent. This is a measure of strong the metrical sense is!
{
	if (exp < 0)//no negative values are allowed
			exp =0;
	x->exponent = exp;
	synquepate_caclulateTotalProbability(x);	//total probability depends on the exponent 
	synquepate_caclulateProbabilityFactor(x);

}
void synquepate_syncopate (t_synquepate *x, double syncopation)//sets the probability of syncopation (between 0 - 1)
{

	if (syncopation < 0)
		syncopation = 0.;
	else if (syncopation > 1)
		syncopation = 1;
	x->syncopation = syncopation;	
}



void synquepate_list(t_synquepate *x, t_symbol *s, short ac, t_atom *av)
{
	int i;
	int typetest =0;

	double *d_array = new double [ac];
	for (i=0; i<ac; i++)
	{
		if (atom_gettype(av+i) == A_FLOAT)
		{
			d_array[i] = atom_getfloat(av+i);
			typetest ++;
		}
		else if (atom_gettype(av+i) == A_LONG)
		{
			d_array[i] = atom_getlong(av+i);
			typetest ++;
		}
	}
	if (typetest == ac)//if typechack OK then set the weights 
		synquepate_setWeights(x, ac, d_array);
	delete [] d_array;//after setting the weights delete the temporary array
}

void synquepate_assist(t_synquepate *x, void *b, long m, long a, char *s)
{
	if (m == ASSIST_INLET) 
	{ // inlets
		switch (a)
		{
		case 0:
			sprintf(s, "bang or int generates notes, list sets weights");
			break;
		case 1:
			sprintf(s, "(float) exponent");
			break;
		case 2:
			sprintf(s, "(float) syncopation factor [0-1]");
			break;
		}
	} 
	else
	{	// outlets
		switch (a)
		{
		case 0:
			sprintf(s, "(float) triggers according to probabilities");
			break;
		case 1:
			sprintf(s, "(int) 0->normal, 1 -> anticipating, ");
			break;
		case 2:
			sprintf(s, "current beat / pulse");
			break;
		case 3:
			sprintf(s, "the internal weight of the current pulse or the caclulated density per cycle of the input weights");
			break;
		}
	}
}
	
void synquepate_free(t_synquepate *x)
{
	synquepate_clearPtrs (x);
}


void *synquepate_new(t_symbol *s, long argc, t_atom *argv)
{
	t_synquepate *x = NULL;

	// object instantiation, NEW STYLE
	if (x = (t_synquepate *)object_alloc((t_class*)synquepate_class)) 
	{
		
		x->m_outINFO = outlet_new((t_synquepate *) x, NULL);
		x->m_outBEAT = intout(x);
		x->m_outSYNCOPATE = intout(x);
		x->m_outTRIGGER = floatout(x);

        
		//initialize everything
		x->syncopation = 0.0;
		x->syncopatedCount = 0;
		x->counter = 0;
		x->exponent = 1.0;
		x->WeightMinimum = 0;
		x->density = 1;
		x->previous_triggered = 0;
		x->freeze = 0;
		x->pulses = 0;
		x->stable = 1;
		x->variations[0] = 1.;//variations in scores
		x->variations[1] = 1.;//vairaitons in syncopation

	}
	return (x);
}


void synquepate_setWeights(t_synquepate *x, long length, double * in_array) //clears pointers, allocates new memory, initilizes everything and sets the new weights
{
	int i;
	float position = 0.;
	Atom tempAtom;
	if (length != x->pulses)//if the array length differs from the stored array´s then allocate new memory
	{
		if (x->pulses > 0)
			position = (float)x->counter/(float)x->pulses;//store temporary the current position as a percentage of the total length
		synquepate_clearPtrs(x); //release previous pointers
		x->pulses = length;
		x->weights = new double [x->pulses];//create a new array to hold the weights
		x->rescaledWeights = new double [x->pulses];
		x->scores = new double * [x->pulses];
		x->syncopationScore = new double * [x->pulses];
		x->syncopationStopScore = new double * [x->pulses];
		x->outputs = new double [x->pulses];
		x->syncopationDirection = new long [x->pulses];
		x->syncopationWeightDifferences = new double [x->pulses];
		for (i=0; i<x->pulses; i++)//initialize values of arrays
		{
			x->scores[i] = new double [2];
			x->syncopationScore[i] = new double [2];
			x->syncopationStopScore[i] = new double [2];
			x->outputs[i] = -5;//set a negative value for the outputs that have not been produced yet
			x->syncopationDirection[i] = 0;
		}
		synquepate_resetAllScores (x);//calculate initial values for all scores
		x->counter = (int)(position * x->pulses)+1;//set the counter to the same ralative position as the previous counter
		x->counter %= x->pulses;//warp the counter to the length of the new arrays
	}
	memcpy (x->weights, in_array, x->pulses*sizeof(double));//copy the temporary array

	synquepate_rescaleWeights(x);//rescale weights according to the WeightsMinimum
	// these are used for caclulating the probability of a specific index based on the user controls

	synquepate_calculateOriginalTotalPropability(x);
	synquepate_caclulateTotalProbability(x); // Total probability (in other words total number of expected events per cycle according to the exponantial factor)
	synquepate_caclulateProbabilityFactor(x);
	atom_setfloat(&tempAtom, x->original_TotalProbability/x->pulses);
	outlet_anything(x->m_outINFO, gensym("density"),1, &tempAtom);//output the density of the new set of weights out the info outlet
	return; //return 0 if it sets the meter ok!
}

void synquepate_triggerNote(t_synquepate *x)// folowing a bang in the input it outputs (OR not) the probability of the current beat
{

	long index;
	double scr;
	t_atom tempA;
	if (x->weights == NULL)
		return;
	if (x->freeze*RAND_MAX < rand() || x->outputs[x->counter] < 0)//if not "freezed" then recaclulate probability and scores for the current position
	{
		//RANDOMIZE
		if (x->stable)//when in stable mode the primary scores are not changed, only the secondary ones
		{
			x->scores[x->counter][1] = synquepate_VariationScore (x->scores[x->counter][0], x->variations[0]);
			x->syncopationScore[x->counter][1] = synquepate_VariationScore (x->syncopationScore[x->counter][0], x->variations[1]);
			x->syncopationStopScore[x->counter][1] = synquepate_VariationScore (x->syncopationStopScore[x->counter][0], x->variations[1]);
		}else //in unstable mode only the primary scores are changed (random walk), the secondary ones are ignored
		{
			synquepate_randomWalk( &(x->scores[x->counter][0]), x->variations[0], 0., 1.);
			synquepate_randomWalk( &(x->syncopationScore[x->counter][0]), x->variations[1], 0., 1.);
			synquepate_randomWalk( &(x->syncopationStopScore[x->counter][0]), x->variations[1], 0., 1.);		
		}
		index = synquepate_SequentialSyncopation(x);//sets syncopationDirection for current position (0 for no syncoparion, 1 for anticipating the next pulse) and returns the index of the appropriate pulse
		if (index >= 0 && index < x->pulses)
			x->outputs[x->counter] =  synquepate_probability(x, index);//caclulate probability for the specific index
		else //in the case of the index being out of bounds (it was set -1 in the synquepate_SequentialSyncopation
			x->outputs[x->counter] = 0;//the probability is forced to be zero
		if (x->outputs[x->counter] > 1)
			x->outputs[x->counter] = 1;
	}
	if (x->stable)
		scr = x->scores[x->counter][0] + x->scores[x->counter][1];//the secondary scores are a variation on the primary scores calculated during initialization (when setting new weights)
	else
		scr = x->scores[x->counter][0];//in unstable mode the primary scores follow a random walk and no secondary scores are used
	atom_setfloat(&tempA,x->outputs[x->counter]);
	outlet_anything(x->m_outINFO, gensym("current"),1, &tempA);//output the probability of the beat used to trigger a note (index might not be equal to counter because of the syncopation)
	outlet_int(x->m_outBEAT, x->counter);//output the current beat
	outlet_int(x->m_outSYNCOPATE, x->syncopationDirection[x->counter]);//output the syncopation (0 or 1) for the current beat as caclulated by the syncopation functions above
	if (x->outputs[x->counter]> scr) //if based on the scores and probability a triggering is decided
	{
		index = x->counter + x->syncopationDirection[x->counter];
		while (index>=x->pulses)//warp index to the length of the arrays
			index -= x->pulses;
		while (index<0)
			index += x->pulses;
		outlet_float (x->m_outTRIGGER, x->weights[index]);//trigger note according to index and weights
		x->previous_triggered = 1;//set triggered flag for previous beat to 1
	}else
		x->previous_triggered = 0;
}



void synquepate_weightMinimum(t_synquepate *x, t_symbol *s, short ac, t_atom *av)//set the WeightMinimum value
{
	double d_temp = 0;
	if (ac>0 && av!=NULL)
	{
		if (av[0].a_type == A_FLOAT)
			d_temp = atom_getfloat(av);
		else if (av[0].a_type == A_LONG)
			d_temp = (double)atom_getlong(av);
		else 
			return;
		if (d_temp < 0 || d_temp > 1)
			return;
		else
			x->WeightMinimum = d_temp;
	}
	synquepate_rescaleWeights(x);
	//currently no parameters are dependent on the rescaled weights. Everything is calculated based on the original weights.... so no need for extra calculations
}

double synquepate_probability(t_synquepate *x, int index)// calculates and returns the probability of specific index
{
	if (x->rescaledWeights[index]<SYNQUEPATE_MIN_PROB_VALUE && x->exponent < 1.)
		return x->ProbabilityFactor * pow(SYNQUEPATE_MIN_PROB_VALUE,x->exponent);
	else// the probability factor depends on the denisty control
		return (double) x->ProbabilityFactor * pow(x->rescaledWeights[index],x->exponent);
}

void synquepate_density (t_synquepate *x, double dens)//sets the user controlled density value
{
	if (dens < 0)
		dens = 0;
	x->density = dens;
	synquepate_caclulateProbabilityFactor(x);
}

void synquepate_rescaleWeights(t_synquepate *x)//caclulates rescaled weigths according to the formula: WR = (W-1)/(1-Wminimum) (the result is stored in the rescaledWeights array)
{
	//the rescled Weights array must be already allocated and have the right size
	int i = 0;
	double _d; 
	if (x->WeightMinimum != 1.)
	{
		_d = 1./(1.-x->WeightMinimum);
		for (i=0; i < x->pulses ; i++)
		{
			x->rescaledWeights[i] = (x->weights[i]-x->WeightMinimum)*_d;
			if (x->rescaledWeights[i]<0)
				x->rescaledWeights[i]=0;
			else if (x->rescaledWeights[i]>1)
				x->rescaledWeights[i]=1;
		}
	}else
	{
		for (i=0; i < x->pulses ; i++)
			x->rescaledWeights[i]=0;
	}
}

void synquepate_caclulateNormalizationFactor(t_synquepate *x)//caclulate normalization factor according to the rescaled weights
{
	int i;
	x->norm = 0;
	for (i = 0; i<x->pulses ; i++)
	{
		if (x->weights[i]>0.)//all weights that are >0 are counted
			x->norm++;
	}
}


void synquepate_caclulateTotalProbability(t_synquepate *x)//caclulates the total probability of triggereing a note in a whole measure
{
	int i;
	x->TotalProbability = 0;
	for (i=0 ; i<x->pulses ; i++)//the sum of all individual probabilities according to the original weights and exponential factor (the minimum rescaling is not taken into account here)
	{
		if (x->weights[i]>1.)
			x->TotalProbability ++;
		else if (x->weights[i]>=SYNQUEPATE_MIN_PROB_VALUE)
			x->TotalProbability += pow(x->weights[i],x->exponent);
		else if (x->weights[i]<SYNQUEPATE_MIN_PROB_VALUE)
			x->TotalProbability += pow(SYNQUEPATE_MIN_PROB_VALUE ,x->exponent);//in the case of weight = 0. then pow(0.,0.) gives 1 while pow (0., y) for any y as small as it can be gives 0
																// this behaviour causes a discontinuity when changing the exponent value from 0 to any non zero value!
	}
}

void synquepate_caclulateProbabilityFactor(t_synquepate *x)//caclulates the probability factor used in the triggernote method (depends on the user controled density factor)
{
	if (x->TotalProbability!=0.)
		x->ProbabilityFactor = x->density * x->original_TotalProbability  / x->TotalProbability; 
	else
		x->ProbabilityFactor = 0;
}

void synquepate_clearPtrs(t_synquepate *x)
{
	int i;
	if (x->weights)	delete [] x->weights;
	if (x->rescaledWeights) delete [] x->rescaledWeights;
	for (i = 0 ; i<x->pulses ; i++)
	{	
		if (x->scores[i]) delete [] x->scores[i];
		if (x->syncopationScore[i]) delete [] x->syncopationScore[i];
		if (x->syncopationStopScore[i]) delete [] x->syncopationStopScore[i];	
	}
	if (x->scores) delete [] x->scores;
	if (x->syncopationScore) delete [] x->syncopationScore;
	if (x->syncopationStopScore) delete [] x->syncopationStopScore;	
	if (x->syncopationWeightDifferences) delete [] x->syncopationWeightDifferences;
	if (x->outputs) delete [] x->outputs;
	if (x->syncopationDirection) delete [] x->syncopationDirection;
	x->pulses = 0;
}


//returns the index of the pulse to be played back aplying the rules for seuqntial sincopation
//if a negative is return then NO trigger is forced irelevant of index
int synquepate_SequentialSyncopation(t_synquepate *x)
{
	double syncopationStopProb;//this the probability of successively syncopated beats to stop the syncopation
	double syncScr = x->syncopationScore[x->counter][0]+x->syncopationScore[x->counter][1];
	double syncopationStopFactor = 0.;
	double syncStopScr = x->syncopationStopScore[x->counter][0]+x->syncopationStopScore[x->counter][1];

	if (syncScr > 1.)
		syncScr = 2-syncScr;
	else if (syncScr < 0.)
		syncScr = -syncScr;
	if (syncStopScr > 1.)
		syncStopScr -= (int)syncStopScr;
	else if (syncStopScr < 0.)
		syncStopScr = -syncStopScr;
	long index = x->counter;;
	long i = index-1;
	if (i<0)
		i += x->pulses;
	x->syncopatedCount = 0;
	while (x->syncopationDirection[i]!=0 && x->syncopatedCount < x->pulses)//count successive syncopated pulses (it needs to be recaluclated on every run since the x->counter variable might be jumping)
	{
		i--;
		if (i<0)
			i += x->pulses;
		x->syncopatedCount++;
	}
	syncopationStopFactor = 2 * x->syncopatedCount + 2 * x->variations[1] * x->syncopatedCount;
	//the probability of stoping the successive syncopation is greater for stressed beats and proporional to the number of already succesive syncopated beats
	//the factor of 1.5 is arbitrary and leads to a syncopation stoping at the a stressed beat after a number of successive syncopation equal to 75% of the length of the rhythmic pattern
	syncopationStopProb = syncopationStopFactor/(double)x->pulses * pow(x->weights[x->counter],.25);//after 1/2 of a measure and if we are at the strongest pulse => 100% probability to STOP syncopation 
	if (x->syncopatedCount%2 == 1 || (fabs(x->syncopation) > syncScr && syncopationStopProb < syncStopScr))//decide stochasticaly whether the current beat will be syncopated or not 
	{//taking into account the probability of stoping  successive syncopations. syncopations must always appear in pairs (never odd syncopationCount)
		x->syncopationDirection[x->counter] = 1;//set the syncopation flag for this pulse
		index ++; //advance the index to the following pulse (anticipate the next pulse)
		while (index < 0)//if the index gets out of limits it is warped to the length of the arrays
			index += x->pulses;
		while (index >= x->pulses)
			index -= x->pulses;
		x->syncopatedCount ++;//count successive syncopated notes, this is redundant since the syncopated count is recalculated each time
	}else//if it is decided not to syncopate this beat
	{
		x->syncopationDirection[x->counter] = 0;//set the syncopation flag for this pulse
		i = x->counter -1;
		if (i<0)
			i += x->pulses;
		if (x->syncopatedCount != 0 && x->syncopatedCount < 3 && x->previous_triggered != 0)//if the previous beat was syncopated and triggered skip the current beat
			index = -1;
		x->syncopatedCount = 0;//reset successive syncopated beats counter
	}
	return index;
}


void synquepate_randomWalk(double* var, double r, double rmin, double rmax)
{
	double rndm = (double) rand()/RAND_MAX;
	double newval;
	rndm -= .5;
	rndm *= 2*r;
	newval = *var + rndm;
	while (newval >= rmax)
		newval--;
	while (newval <= rmin)
		newval++;
	*var = newval;
}

void synquepate_freeze(t_synquepate *x, double f)//set the value of the freeze parameter
{
	if (f<0)
		x->freeze = 0;
	else if (f>1)
		x->freeze = 1;
	else
		x->freeze = f;//the probabiltiy of changing the output is the inverse of the "freeze"
}

void synquepate_calculateOriginalTotalPropability(t_synquepate *x)
{
	int i;
	double totProb = 0;
	if (x->pulses <= 0 ) return;
	for (i=0 ; i<x->pulses ; i++)//the sum of all individual probabilities according to the original weights and exponential factor (the minimum rescaling is not taken into account here)
	{
		if (x->weights[i]>1.)
			totProb ++;
		else if (x->weights[i]>0.)
			totProb += x->weights[i];
	}
	x->original_TotalProbability = totProb;
}


void synquepate_resetAllScores(t_synquepate *x)
{
	int i;
	if (x->pulses <= 0 || x->weights == NULL)
		return;
	for (i=0 ; i<x->pulses ; i++)
	{
		x->scores[i][0] = (double) rand()/RAND_MAX;
		x->syncopationScore[i][0] = (double) rand()/RAND_MAX;
		x->syncopationStopScore[i][0] = (double) rand()/RAND_MAX;
	}
}

void synquepate_variations(t_synquepate *x, t_symbol *s, short ac, t_atom *av)
{
	double st;
	int i = 0, _counter = 0;
	while (i<ac && _counter < 2)//look for the first two float numbers in the incoming list
	{
		if (atom_gettype(av+i) == A_FLOAT)
		{
			st = atom_getfloat(av+i);
			if (st<0)
				st = 0;
			else if (st>1)
				st =1;
			x->variations[_counter] = st;//the first  is the trigger variation amount, second is the syncopation variation amount
			_counter++;//advance to the syncopation variation
		}
		i++;//advance to the next ellement in the list
	}
	return;
}

double synquepate_VariationScore (double score, double range) //returns a random number between -0.5 range ~ 0.5 range
{
	if (score+range*0.5 >1.)//the range is clipped if when added to the score it goes higher than 1
		return 1-rand()*range/RAND_MAX-score;
	else if (score-range*0.5 <0) // or less than 0.
		return rand()*range/RAND_MAX - score;
	else
		return ((double)rand()/RAND_MAX - 0.5) * range;
}

void synquepate_stable (t_synquepate *x, long val)//responce to the stable message (sets the stable flag)
{
	if (val)
		x->stable = 1;
	else
		x->stable = 0;
}

