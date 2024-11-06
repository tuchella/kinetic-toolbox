/*
	kin.hop
	Max/MSP external to calculate the running average of the input
    Copyright (C) 2009 - 2011 - INESC Porto, Andre Baltazar, George Sioros

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

	Created by André Baltazar
	Modified by George Sioros 

*/

#include "ext.h"							// standard Max include, always required
#include "ext_obex.h"						// required for new style Max object
#include "Kinetic.h"
#define KIN_HOP_MAX_SIZE		1005		// maximum window size


typedef struct _hop		// A struct to hold data for our object
{
	struct object ob;
	
	double val;			// value input
	double compare;		// allows comparation with the 'diff' to find the zero crossings	
	double diff;		// stores the difference between consecutive samples
	void *out;			// Pointer to the outlet
	void *out1;			// Pointer to the outlet
	void *out2;			// Pointer to the outlet
	void *out3;			// Pointer to the outlet
	int hopcounter;		// allows to count the number of hops
	long hop_size;		// number of offset samples between consecutive windows
	long win_size;		// size of the window
	double win_inv;		// window size inverted (1/win_size)
	double mean_m1;
	int pos;			// pointer to the positions of vect[]
	int pos2;			// pointer to the positions of vect2[]
	double sum;			// stores the sum of all samples of corresponding window
	float vect[KIN_HOP_MAX_SIZE];	// vector that stores the input data samples
	float vect2[KIN_HOP_MAX_SIZE];	// vector that stores the window corresponding zero-crossings	
	int zerocount;		// counter for the zero-crossings	
	
} t_hop;

void *hop_class;

#pragma mark _Function Declerations
//---------------------------------
void hop_calculate(t_hop *x);		// routine that does the mean calculations
void hop_float1(t_hop *x, double f);	// setup to receive floats
void hop_in2(t_hop *x, long value);	// setup to receive the first int = window size
void hop_in3(t_hop *x, long value);	// setup to receive the second int = hop size
void *hop_new(double value);		// creates the new object
void hop_free(t_hop *x);
void hop_assist(t_hop *x, Object *b, long msg, long arg, char *s);
//void hop_assist(t_hop *x, void *b, long m, long a, char *s);

/**
 *	Setup our object
*/
int main(void)
{
	//new style
	t_class *c;

	c = class_new("kin.hop", (method)hop_new, (method)hop_free, (short)sizeof(t_hop), 0L /* leave NULL!! */,  A_DEFFLOAT, 0);
	//Set up which methods will be used to respond to which events
	class_addmethod(c, (method)hop_assist,	"assist", A_CANT, 0);	
	class_addmethod(c, (method)hop_float1,	"float", A_FLOAT, 0);		// Float inlet
	class_addmethod(c, (method)hop_in2,		"in1", A_LONG,0);		// Window size inlet
	class_addmethod(c, (method)hop_in3,		"in2", A_LONG,0);		// Hop size inlet

	class_register(CLASS_BOX, c); /* CLASS_NOBOX */
	hop_class = c;
	Kinetic_Register_Symbol();//register the kinetic symbol.....
	post ("kin.hop: Created by André Baltazar (2009), Modified by George Sioros (2011)");
}

void *hop_new(double value)
{
	t_hop *x = NULL;
	int i;

	if (x = (t_hop *)object_alloc((t_class*)hop_class))
	{
	
		// Pointers and initial values of the variables
		x->compare=1;
		x->diff=0;
		x->hop_size=5;
		x->hopcounter=0;
		x->pos=0;
		x->vect[0]=0;
		x->vect2[0]=0;
		x->sum=0;
		x->win_size=25;
		x->zerocount=0;
		x->win_inv= 1.0/x->win_size;
		x->mean_m1=0;	
		//clear the vectors		
		for(i=0; i<=x->win_size; i++)
		{
			x->vect[i]=0;
			x->vect2[i]=1;
		}
		
		//create inlets
		intin(x,2);		
		intin(x,1);		
		//create outlets
		x->out3= intout(x);
		x->out2= floatout(x); 
		x->out1= floatout(x);
		x->out= floatout(x);	

	}
	return x;
}

void hop_free(t_hop *x)
{
	;
}


void hop_calculate(t_hop *x)
{
	double res, mean, diffm;
	int i, _pos_m1;
	
	//this 3 next commands allows to keep an actualized sum of the window element
	
	x->sum-=x->vect[x->pos];					// withdraws from the sum the oldest value of the vector
	x->vect[x->pos]= x->val;					// replaces the old value with the new one, in the vector
	x->sum += x->vect[x->pos];					// sums the new value of the vector
	
	
	_pos_m1=((x->pos+x->win_size)-1)%x->win_size; // calculates the pos-1
	x->diff=x->vect[x->pos]-x->vect[_pos_m1];	// the difference between the actual value and the previous	
	outlet_float(x->out2, x->diff);				// outputs the difference
	
	res = x->diff*x->compare;					// does the comparison of the acutal diff and the previous
	x->compare=x->diff;							// stores new value in x->compare
	
	x->pos=(x->pos+1) % x->win_size;			// updates the pos (goes from 0 to win_size-1)
	
	if (res<0)									// if res<0 than there was a zero-crossing
		x->vect2[x->pos]=0;						// stores a zero to that pos
	else
		x->vect2[x->pos]=1;						// else there was no zero-crossing so stores a 1 in that position

	if(x->hopcounter % x->hop_size == 0)		// if hopcounter is equal to the hop defined by the user
	{	
		
		for (i=0; i<x->win_size; i++) //cycle that counts the zeros in the window
		{
			if (x->vect2[i]==0)			// is is a zero than increment the counter
			x->zerocount++;
		}
		outlet_int(x->out3, x->zerocount);		// sends to outlet
		x->zerocount=0;							//resets counter
		
		mean= x->sum * x->win_inv;				// calculates the mean
		
		diffm=mean-x->mean_m1;						//calculates the difference between consecutive means
		x->mean_m1=mean;
				
		outlet_float(x->out, mean);				// sends to outlet
		outlet_float(x->out1, diffm);	
	}
	x->hopcounter++;							//increments hopcounter
}


/**
 *	Float in left inlet
*/
void hop_float1(t_hop *x, double f)
{
	x->val=f;	//Store the value passed to inlet
	hop_calculate(x);
}

//second inlet
void hop_in2(t_hop *x, long value)
{
	int i;
	if (value <= 0 || value > KIN_HOP_MAX_SIZE )//check if the received value is a valid window size
	{
		object_error ((t_object*)x, "Size of the Window must be in the Range [1, %ld]",KIN_HOP_MAX_SIZE );
		return;
	}
	x->win_size= value;	// Store the value of win_size passed to inlet
	x->win_inv = 1.0/x->win_size; // invert to application on hop_calculate routine
	//set the indeces

	x->sum=0;
 	x->pos=0;  
   //clear the vectors
	for( i=0 ; i<x->win_size; i++)
	{
		x->vect[i]=0;
		x->vect2[i]=1;
	}

}

//third inlet
void hop_in3(t_hop *x, long value)
{
	x->hop_size= value;	// Store the value of hop_size passed to inlet
}

void hop_assist(t_hop *x,Object *b,long msg,long arg,char *s)
{	
	if(msg==ASSIST_INLET)
	{
		switch(arg)
		{
		case 0:	sprintf(s, "(float) stream of numbers to analyze");
				break;
		case 1:	sprintf(s, "(int) window size [1,%ld]", KIN_HOP_MAX_SIZE);
				break;
		case 2:	sprintf(s, "(int) hop size");
				break;
		}
	}
	
	if(msg==ASSIST_OUTLET)
	{
		switch(arg)
		{
			case 0: sprintf(s, "Mean");
					break;
			case 1: sprintf(s, "Difference between consecutive means");
					break;
			case 2: sprintf(s, "Difference between consecutive samples");
					break;
			case 3: sprintf(s, "Number of Zero Crossings per window");
					break;
		}
	}

}

