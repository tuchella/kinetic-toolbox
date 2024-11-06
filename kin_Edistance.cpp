/*
	kin.Edistance
	Max/MSP external to the "Edit" distance between two lists
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
typedef struct _kin_Edistance 
{
	t_object	ob;			// the object itself (must be first)
	long m_in;          // space for the inlet number used by all the proxies
    void *m_proxy;
    void *m_outletL;
	void *m_outletR;

	long	l_LeftSize; //size of left list
	long	l_RightSize; //size of right list

	t_atom*	p_LeftAtoms; //the last left input
	t_atom* p_RightAtoms;//the last right input

	long*	p_matrix; //pointer to cost matrix. the size of the matrix will be (l_LeftSize+1) * (l_RightSize+1)

} t_kin_Edistance;

///////////////////////// function prototypes
//// standard set
void *kin_Edistance_new(t_symbol *s, long argc, t_atom *argv);
void kin_Edistance_free(t_kin_Edistance *x);
void kin_Edistance_assist(t_kin_Edistance *x, void *b, long m, long a, char *s);

///////////////////////////////////////////////////////////
//// additional functions
void kin_Edistance_list(t_kin_Edistance *x,  t_symbol *s, short argc, t_atom *argv);
long kin_Edistance_cost_matrix (t_kin_Edistance *x);

void kin_Edistance_clear(t_kin_Edistance *x );
void kin_Edistance_bang(t_kin_Edistance *x );
long kin_Edistance_positive_minimum(long a, long b);
void kin_Edistance_output_matrix (t_kin_Edistance *x);
long kin_Edistance_compareAtoms(t_atom* p_a, t_atom* p_b);
void kin_Edistance_anything(t_kin_Edistance *x, t_symbol *s, short argc, t_atom *argv);
//////////////////////// global class pointer variable
void *kin_Edistance_class;


void ext_main(void *r)
{	
	// object initialization, OLD STYLE
	// setup((t_messlist **)&kin_Edistance_class, (method)kin_Edistance_new, (method)kin_Edistance_free, (short)sizeof(t_kin_Edistance), 
	//		0L, A_GIMME, 0);
    // addmess((method)kin_Edistance_assist,			"assist",		A_CANT, 0);  
	
	// object initialization, NEW STYLE
	t_class *c;
	
	c = class_new("kin.Edistance", (method)kin_Edistance_new, (method)kin_Edistance_free, (long)sizeof(t_kin_Edistance), 
				  0L /* leave NULL!! */, A_GIMME, 0);
	
	/* you CAN'T call this from the patcher */
    class_addmethod(c, (method)kin_Edistance_assist,		"assist",		A_CANT, 0);  
	class_addmethod(c, (method)kin_Edistance_list,			"list",			A_GIMME, 0);
	class_addmethod(c, (method)kin_Edistance_bang,			"bang",			A_NOTHING,0);
	class_addmethod(c, (method)kin_Edistance_clear,			"clear",		A_NOTHING,0);
	class_addmethod(c, (method)kin_Edistance_anything,		"anything",		A_GIMME, 0);


	class_register(CLASS_BOX, c); /* CLASS_NOBOX */
	kin_Edistance_class = c;
	Kinetic_Register_Symbol();
	post ("kin.Edistance: Created by George Sioros (2011)");
}

void kin_Edistance_assist(t_kin_Edistance *x, void *b, long m, long a, char *s)
{
	if (m == ASSIST_INLET)// inlet 
	{
		sprintf(s, "list of integers or 'radius [int]' of the Edistance", a);	
	} 
	else // outlet
	{
		switch(a)
		{
		case 0:
			sprintf(s, "the score of the Edistance", a);	
			break;
		case 1:
			sprintf(s, "the cost matrix", a);
			break;
		}			
	}
}

void kin_Edistance_free(t_kin_Edistance *x)
{
	kin_Edistance_clear(x);//clear allocated memory
	freeobject ((t_object*)x->m_proxy);//free the proxy associated with the second inlet
}


void *kin_Edistance_new(t_symbol *s, long argc, t_atom *argv)
{
	t_kin_Edistance *x = NULL;
    
	// object instantiation, NEW STYLE
	if (x = (t_kin_Edistance *)object_alloc((t_class*)kin_Edistance_class)) 
	{
		x->l_LeftSize = 0;
		x->l_RightSize = 0;
		x->p_RightAtoms = NULL;
		x->p_LeftAtoms = NULL;
		x->p_matrix = NULL;
		x->m_outletR = outlet_new(x, NULL);
		x->m_outletL = outlet_new(x, NULL);
		x->m_proxy = proxy_new((t_object *)x, 1, &x->m_in);//set the proxy
	}
	return (x);
}

void kin_Edistance_list(t_kin_Edistance *x,  t_symbol *s, short argc, t_atom *argv)
{
	long _score;
	t_atom* _inarray = new t_atom [argc];
	memcpy(_inarray,argv, sizeof(t_atom)* argc);//copy the input array into a new memory 
	switch (proxy_getinlet((t_object *)x)) 
	{
		case 0:
			if (x->p_LeftAtoms)	delete [] x->p_LeftAtoms;
			x->p_LeftAtoms = _inarray;
			x->l_LeftSize = argc;
			_score = kin_Edistance_cost_matrix(x);//calculate cost matrix
			kin_Edistance_output_matrix(x);//output matrix
			outlet_int(x->m_outletL, _score);//output score
			break;
		case 1:
			if (x->p_RightAtoms)	delete [] x->p_RightAtoms;
			x->p_RightAtoms = _inarray;
			x->l_RightSize = argc;
			break;
	}

}

void kin_Edistance_anything(t_kin_Edistance *x, t_symbol *s, short argc, t_atom *argv)//create an array of atoms including the symbol of the message and send it to the kin_Edistance_list
{
	t_atom* _inarray = new t_atom [argc+1];
	atom_setsym(_inarray, s);//set the first ellement as the message symbol
	if (argc>0 && argv)//copy the rest to the new memory
		memcpy(_inarray+1,argv, sizeof(t_atom)* argc);
	kin_Edistance_list(x,  s,  argc+1, _inarray);
}

long kin_Edistance_cost_matrix (t_kin_Edistance *x)//calculate the cost matrix (could be in a secondary thread)
{
	long i,j;
	long _rows = x->l_RightSize+1;
	long _cols = x->l_LeftSize+1;
	long _size = _rows * _cols;	
	long _min;


	if (x->l_LeftSize < 2 || x->l_RightSize < 2)
		return -1;
	if (x->p_matrix)
		delete [] x->p_matrix;
	x->p_matrix = new long [_size];//memory allocation for matrix cost   ellement (i,j) = (col , row) is found at index  [j*_cols+i]=[row*_cols + col]
	///// ****************** CACLULATE COST MATRIX ********************
	for (i=0 ; i<_cols ; i++)//1sta row
		x->p_matrix[i] = i;
	for (j=0 ; j<_rows ; j++)//1st clloumn
		x->p_matrix[j*_cols]=j;
	for (j=1 ; j <_rows ; j++)
	{
		for (i=1 ; i<_cols ; i++)
		{

			
			if (kin_Edistance_compareAtoms(x->p_LeftAtoms + i-1 , x->p_RightAtoms +j-1) >0)
			{
				x->p_matrix[j*_cols+i] = x->p_matrix[(j-1)*_cols+(i-1)];
			}
			else
			{
				_min = kin_Edistance_positive_minimum(x->p_matrix[j*_cols+i-1] + 1 , x->p_matrix[(j-1)*_cols+i] + 1 ); //(i-1, j)+1 ? (i, j-1)+1 ? (i-1,j-1) + 1
				x->p_matrix[j*_cols+i] = kin_Edistance_positive_minimum(_min,x->p_matrix[(j-1)*_cols+(i-1)] +1);
			}

		}
   }
	/////***************************************************************
	return x->p_matrix[ _size-1 ];
}


void kin_Edistance_clear(t_kin_Edistance *x )
{
	if (x->p_LeftAtoms)
		delete [] x->p_LeftAtoms;
	x->l_LeftSize = 0;
	if (x->p_RightAtoms)
		delete [] x->p_RightAtoms;
	x->l_RightSize = 0;
	if (x->p_matrix)
		delete [] x->p_matrix;
}
void kin_Edistance_bang(t_kin_Edistance *x )
{
	long _score = kin_Edistance_cost_matrix(x);
	kin_Edistance_output_matrix(x);
	outlet_int(x->m_outletL, _score);//recalculate everything and output score
}



long kin_Edistance_positive_minimum(long a, long b)//return -1 if none is positive
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

void kin_Edistance_output_matrix (t_kin_Edistance *x)
{
	int _row,_col;
	t_atom * _out;
	if ( !(x->p_matrix))
		return;
	//
	
	long _Nrows = x->l_RightSize+1;
	long _Ncols = x->l_LeftSize+1;
	_out = new t_atom [_Ncols];
	for ( _row = 0 ; _row < _Nrows ; _row++) //ROW --> is the right list
	{//for all rows
		for ( _col = 0 ; _col < _Ncols ; _col++) // COL --> is the left list
			atom_setlong(_out+_col, x->p_matrix[ _row*_Ncols + _col] );// fill in an array of atoms

		outlet_anything(x->m_outletR, gensym("list"), _Ncols, _out);
	}			

}

long kin_Edistance_compareAtoms(t_atom* p_a, t_atom* p_b) //return: -2 if NULLL pointers, -1 if type missmatch, 0,1 comparison result
{
	int _typeA, _typeB;

	if ( !p_a || !p_b)
		return -2;
	_typeA = atom_gettype(p_a);
	_typeB = atom_gettype(p_b);
	if ( _typeA != _typeB)
		return -1;
	if (_typeA == A_LONG)  //integers
	{
		if ( atom_getlong(p_a) == atom_getlong(p_b))
			return 1;
		else
			return 0;
	}
	else if (_typeA == A_FLOAT)
	{
		if ( atom_getfloat(p_a) == atom_getfloat(p_b))
			return 1;
		else
			return 0;
	}
	else // symbol
	{
		if (atom_getsym(p_a) == atom_getsym(p_b))
			return 1;
		else 
			return 0;
	}
		
}
