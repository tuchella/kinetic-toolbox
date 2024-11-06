/*
	kin.dtw
	Max/MSP external that calculates the dynamic time warp score between two lists of integers
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
#include <math.h>
#include "Kinetic.h"
////////////////////////// object struct
typedef struct _kin_dtw 
{
	t_object	ob;			// the object itself (must be first)
	long m_in;          // space for the inlet number used by all the proxies
    void *m_proxy;
    void *m_outletL;
	void *m_outletR;

	long	l_LeftSize; //size of left list
	long	l_RightSize; //size of right list

	long*	p_LeftArray;
	long*	p_RightArray;

	long*	p_matrix; //pointer to cost matrix. the size of the matrix will be (l_LeftSize+1) * (l_RightSize+1)
	// RESTRICTIONS on the DTW path
	long	l_radius; //distance in steps from the diagonal 

} t_kin_dtw;

///////////////////////// function prototypes
//// standard set
void *kin_dtw_new(t_symbol *s, long argc, t_atom *argv);
void kin_dtw_free(t_kin_dtw *x);
void kin_dtw_assist(t_kin_dtw *x, void *b, long m, long a, char *s);

///////////////////////////////////////////////////////////
//// additional functions
void kin_dtw_list(t_kin_dtw *x,  t_symbol *s, short argc, t_atom *argv);
long kin_dtw_cost_matrix (t_kin_dtw *x);
void kin_dtw_append(t_kin_dtw *x,  t_symbol *s, short argc, t_atom *argv);
void kin_dtw_clear(t_kin_dtw *x );
void kin_dtw_bang(t_kin_dtw *x );
void kin_dtw_radius(t_kin_dtw *x, t_symbol *s, short argc, t_atom *argv);
long kin_dtw_positive_minimum(long a, long b);
void kin_dtw_output_matrix (t_kin_dtw *x);
//////////////////////// global class pointer variable
void *kin_dtw_class;


int main(void)
{	
	// object initialization, NEW STYLE
	t_class *c;
	
	c = class_new("kin.dtw", (method)kin_dtw_new, (method)kin_dtw_free, (long)sizeof(t_kin_dtw), 
				  0L /* leave NULL!! */, A_GIMME, 0);
	
	/* you CAN'T call this from the patcher */
    class_addmethod(c, (method)kin_dtw_assist,			"assist",		A_CANT, 0);  
	class_addmethod(c, (method)kin_dtw_list,			"list",			A_GIMME, 0);
	class_addmethod(c, (method)kin_dtw_bang,			"bang",			A_NOTHING,0);
	class_addmethod(c, (method)kin_dtw_clear,			"clear",		A_NOTHING,0);
	class_addmethod(c, (method)kin_dtw_append,			"append",		A_GIMME,0);
	class_addmethod(c, (method)kin_dtw_radius,			"radius",		A_GIMME,0);

	class_register(CLASS_BOX, c); /* CLASS_NOBOX */
	kin_dtw_class = c;
	Kinetic_Register_Symbol();
	return 0;
}

void kin_dtw_assist(t_kin_dtw *x, void *b, long m, long a, char *s)
{
	if (m == ASSIST_INLET)// inlet 
	{
		sprintf(s, "list of integers or 'radius [int]' of the DTW", a);	
	} 
	else // outlet
	{
		switch(a)
		{
		case 0:
			sprintf(s, "the score of the DTW", a);	
			break;
		case 1:
			sprintf(s, "the cost matrix", a);
			break;
		}			
	}
}

void kin_dtw_free(t_kin_dtw *x)
{
	kin_dtw_clear(x);//clear allocated memory
	freeobject ((t_object*)x->m_proxy);//free the proxy associated with the second inlet
}

/*
 A_GIMME signature =
	t_symbol	*s		objectname
	long		argc	num additonal args
	t_atom		*argv	array of t_atom structs
		 type = argv->a_type
		 if (type == A_LONG) ;
		 else if (type == A_FLOAT) ;
		 else if (type == A_SYM) ;
*/
/*
	t_symbol {
		char *s_name;
		t_object *s_thing;
	}
*/
void *kin_dtw_new(t_symbol *s, long argc, t_atom *argv)
{
	t_kin_dtw *x = NULL;
    long i;
    
	// object instantiation, OLD STYLE
	// if (x = (t_kin_dtw *)newobject(kin_dtw_class)) {
	// 	;
	// }
	
	// object instantiation, NEW STYLE
	if (x = (t_kin_dtw *)object_alloc((t_class*)kin_dtw_class)) 
	{
		x->l_LeftSize = 0;
		x->l_RightSize = 0;
		x->p_LeftArray = NULL;
		x->p_RightArray = NULL;
		x->p_matrix = NULL;
		//read arguments
		if (argc > 0 && argv->a_type == A_LONG) //1st argument is the R (radius) distance from the diagonal to restrict the path
			x->l_radius = atom_getlong(argv);
		else 
			x->l_radius = 0; //negative values or zero means no restriction
		x->m_outletR = outlet_new(x, NULL);
		x->m_outletL = outlet_new(x, NULL);
		x->m_proxy = proxy_new((t_object *)x, 1, &x->m_in);//set the proxy
	}
	return (x);
}

void kin_dtw_list(t_kin_dtw *x,  t_symbol *s, short argc, t_atom *argv)
{
	int i = -1;
	long _score;
//	t_atom _at;
	long* _array = new long [argc];
	while ( (++i) < argc && argv[i].a_type == A_LONG)
		_array [i] = atom_getlong(argv+i);
	if (i<argc)//that means that not ALL ellements were integers
	{
		object_post ((t_object*)x, "a list of integers is required"); 
		if (_array)	delete [] _array;
		return;
	}
	switch (proxy_getinlet((t_object *)x)) 
	{
	case 0:
		if (x->p_LeftArray)	delete [] x->p_LeftArray;
		x->p_LeftArray = _array;
		x->l_LeftSize = argc;
		_score = kin_dtw_cost_matrix(x);//calculate cost matrix
		kin_dtw_output_matrix(x);//output matrix
		outlet_int(x->m_outletL, _score);//output score
		break;
	case 1:
		if (x->p_RightArray)	delete [] x->p_RightArray;
		x->p_RightArray = _array;
		x->l_RightSize = argc;
		break;
	}

}

long kin_dtw_cost_matrix (t_kin_dtw *x)//calculate the cost matrix (could be in a secondary thread)
{
	long i;
	long _row;
	long _col;
	long _rows = x->l_RightSize;
	long _cols = x->l_LeftSize;
	long _size = _rows * _cols;
	double _slope = (double) (_rows-1) / (double) (_cols-1); //diagonal: (row-1) = slope * (col-1) +  offset => | (row-1) - slope*(col-1)  | <= offset
	double _denum = cos(atan2((double) (_rows-1),(double) (_cols-1)));
	double _radius;
	if (_denum != 0)//this can never happen!!!
		_radius = (double)x->l_radius/_denum;
	else 
		_radius = x->l_radius;
	long _min;
	if (x->l_LeftSize < 2 || x->l_RightSize < 2)
		return -1;
	if (x->p_matrix)
		delete [] x->p_matrix;
	x->p_matrix = new long [_size];//memory allocation for matrix cost   ellement (i,j) = (col , row) is found at index  [j*_cols+i]=[row*_cols + col]
	///// ****************** CACLULATE COST MATRIX ********************
	x->p_matrix[0] = abs(x->p_LeftArray[0]-x->p_RightArray[0]);// ellement 0,0
	for ( _col = 1 ; _col < _cols ; _col++)//calculate 1st row
		x->p_matrix[_col] = x->p_matrix[_col-1] + abs(x->p_LeftArray[_col]-x->p_RightArray[0]) ;
	for (_row = 1 ; _row < _rows ; _row++)//calculate 1st col
		x->p_matrix[ _row*_cols ] = x->p_matrix[ (_row-1)*_cols ] + abs(x->p_LeftArray[0]-x->p_RightArray[_row]);
	for ( _col = 1 ; _col < _cols ; _col++) // COL --> is the left list
	{
		for ( _row = 1 ; _row < _rows ; _row++) //ROW --> is the right list
		{

			if ( x->l_radius <= 0 || (x->l_radius>0 && fabs((double)(_col) * _slope -(_row))<(double)_radius) )//if within raidus limits or if no limits 
			{
				//retreive minimum of neighbours
				_min = kin_dtw_positive_minimum ( x->p_matrix[(_row)*_cols + (_col-1)],x->p_matrix[(_row-1)*_cols + (_col)] );
				_min = kin_dtw_positive_minimum( x->p_matrix[(_row-1)*_cols + (_col-1)], _min);
				//set value
				if (_min >= 0)
					x->p_matrix[ _row*_cols + _col ] = _min + abs(x->p_LeftArray[_col]-x->p_RightArray[_row]);//the arrays are 0 index based and here everything is 1 index baased
				else 
					x->p_matrix[ _row*_cols + _col ] = -1;
			}else
				x->p_matrix[ _row*_cols + _col ] = -1;//mark the cell as out of limits
		}
	}
	/////***************************************************************
	return x->p_matrix[ _size-1 ];
}

void kin_dtw_append(t_kin_dtw *x,  t_symbol *s, short argc, t_atom *argv)//no calculations are done here, no call to the kin_dtw_cost_matrix 
{
	int i = -1;
	long* _INarray = new long [argc];
	long* _CONCarray;
	while ( (++i) < argc && argv[i].a_type == A_LONG)
		_INarray [i] = atom_getlong(argv+i);
	if (i<argc)//that means that not ALL ellements were integers
	{
		object_post ((t_object*)x, "a list of integers is required"); 
		if (_INarray)	delete [] _INarray;
		return;
	}
	switch (proxy_getinlet((t_object *)x)) 
	{
	case 0:
		_CONCarray = new long [x->l_LeftSize+argc];
		if (x->p_LeftArray)
			memcpy(_CONCarray, x->p_LeftArray, sizeof(long)*x->l_LeftSize);//copy the already existing array into the newly allocated memory
		memcpy(_CONCarray+x->l_LeftSize , _INarray , sizeof(long)*argc);//copy the input array to the "end" of the newly allocated memory
		if (x->p_LeftArray)
			delete [] x->p_LeftArray;//delete memory allocated previously
		x->p_LeftArray = _CONCarray; //set pointer to the new position
		x->l_LeftSize += argc;//set size of the new array
		break;
	case 1:
		_CONCarray = new long [x->l_RightSize+argc];
		if (x->p_RightArray)
			memcpy(_CONCarray, x->p_RightArray, sizeof(long)*x->l_RightSize);//copy the already existing array into the newly allocated memory
		memcpy(_CONCarray+x->l_RightSize , _INarray , sizeof(long)*argc);//copy the input array to the "end" of the newly allocated memory
		if (x->p_RightArray)
			delete [] x->p_RightArray;//delete memory allocated previously
		x->p_RightArray = _CONCarray; //set pointer to the new position
		x->l_RightSize += argc;//set size of the new array
		break;
	}
}

void kin_dtw_clear(t_kin_dtw *x )
{
	if (x->p_LeftArray)
		delete [] x->p_LeftArray;
	x->l_LeftSize = 0;
	if (x->p_RightArray)
		delete [] x->p_RightArray;
	x->l_RightSize = 0;
	if (x->p_matrix)
		delete [] x->p_matrix;
}
void kin_dtw_bang(t_kin_dtw *x )
{
	long _score = kin_dtw_cost_matrix(x);
	kin_dtw_output_matrix(x);
	outlet_int(x->m_outletL, _score);//recalculate everything and output score
}

void kin_dtw_radius(t_kin_dtw *x, t_symbol *s, short argc, t_atom *argv)
{
	if (argc>0)
	{
		if (argv->a_type==A_LONG)
			x->l_radius = atom_getlong(argv);
		else if (argv->a_type == A_FLOAT)
			x->l_radius = (long)atom_getfloat(argv);
	}
}

long kin_dtw_positive_minimum(long a, long b)//return -1 if none is positive
{
	if ( a>=0 &&  b>=0)
		return  (a<b) ? a : b;
	else if ( a >= 0)
		return  a;
	else if (b >= 0)
		return b;
	else
		return -1;
}

void kin_dtw_output_matrix (t_kin_dtw *x)
{
	int _row,_col;
	t_atom * _out;
	if ( !(x->p_matrix))
		return;
	_out = new t_atom [x->l_LeftSize];//
	long _Nrows = x->l_RightSize;
	long _Ncols = x->l_LeftSize;
	for ( _row = 0 ; _row < _Nrows ; _row++) //ROW --> is the right list
	{//for all rows
		for ( _col = 0 ; _col < _Ncols ; _col++) // COL --> is the left list
			atom_setlong(_out+_col, x->p_matrix[ _row*_Ncols + _col] );// fill in an array of atoms
		outlet_anything(x->m_outletR, gensym("list"), x->l_LeftSize, _out);
	}			

}
