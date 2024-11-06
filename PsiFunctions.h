/*
	PsiFunctions.h
	header file with first order indispensability values
    Copyright (C) 2009 - 2011 - INESC Porto, Carlos Guedes

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

	Created by Carlos Guedes 
*/


long psi_fun[160]= {	1, 0, 
						2, 0, 1, 
						4, 0, 1, 3, 2, 
						6, 0, 4, 1, 5, 2, 3, 
						10, 0, 6, 3, 9, 1, 7, 2, 8, 4, 5, 
						12, 0, 7, 3, 10, 1, 8, 4, 11, 2, 9, 5, 6,
						16, 0, 9, 4, 13, 2, 11, 6, 15, 1, 10, 5, 14, 3, 12, 7, 8,
						18, 0, 10, 3, 13, 6, 16, 1, 11, 4, 14, 7, 17, 2, 12, 5, 15, 8, 9,
						22, 0, 12, 6, 18, 3, 15, 9, 21, 1, 13, 7, 19, 2, 14, 8, 20, 4, 16, 5, 17, 10, 11,
						28, 0, 15, 7, 22, 4, 19, 11, 26, 1, 16, 8, 23, 5, 20, 12, 27, 2, 17, 9, 24, 3, 18, 10, 25, 6, 21, 13, 14,
						30, 0, 16, 5, 21, 10, 26, 3, 19, 8, 24, 13, 29, 1, 17, 6, 22, 11, 27, 2, 18, 7, 23, 12, 28, 4, 20, 9, 25, 14, 15,
					};

long primes[11]	= {2, 3, 5, 7, 11, 13, 17, 19, 23, 29, 31};

long First_Order_Indispensability (long p, long n) // returns the first order indispensability value according to the primes psi_fun arrays 
{
	int i, j;
	int index = 0;
	for (i=0; i< 10; i++)
	{
		if (primes[i]== p)
		{
			for (j=0; j< i; j++) 
				index+=primes[j];
			break;
		}
		
	}
	return psi_fun[index+n];
}	



