/*
	KKProfiles.h
	header file with the kkprofiles needed for tonality induction
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
#define KIN_HISTOGRAM_LENGTH		12
#define KIN_NUMBER_OF_KKPROFILES	24

static double KKProfile [KIN_NUMBER_OF_KKPROFILES][KIN_HISTOGRAM_LENGTH] = {
		{6.35,2.23,3.48,2.33,4.38,4.09,2.52,5.19,2.39,3.66,2.29,2.88},
		{2.88,6.35,2.23,3.48,2.33,4.38,4.09,2.52,5.19,2.39,3.66,2.29},
		{2.29,2.88,6.35,2.23,3.48,2.33,4.38,4.09,2.52,5.19,2.39,3.66},
		{3.66,2.29,2.88,6.35,2.23,3.48,2.33,4.38,4.09,2.52,5.19,2.39},
		{2.39,3.66,2.29,2.88,6.35,2.23,3.48,2.33,4.38,4.09,2.52,5.19},
		{5.19,2.39,3.66,2.29,2.88,6.35,2.23,3.48,2.33,4.38,4.09,2.52},
		{2.52,5.19,2.39,3.66,2.29,2.88,6.35,2.23,3.48,2.33,4.38,4.09},
		{4.09,2.52,5.19,2.39,3.66,2.29,2.88,6.35,2.23,3.48,2.33,4.38},
		{4.38,4.09,2.52,5.19,2.39,3.66,2.29,2.88,6.35,2.23,3.48,2.33},
		{2.33,4.38,4.09,2.52,5.19,2.39,3.66,2.29,2.88,6.35,2.23,3.48},
		{3.48,2.33,4.38,4.09,2.52,5.19,2.39,3.66,2.29,2.88,6.35,2.23},
		{2.23,3.48,2.33,4.38,4.09,2.52,5.19,2.39,3.66,2.29,2.88,6.35},
		{6.33,2.68,3.52,5.38,2.6,3.53,2.54,4.75,3.98,2.69,3.34,3.17},
		{3.17,6.33,2.68,3.52,5.38,2.6,3.53,2.54,4.75,3.98,2.69,3.3},
		{3.34,3.17,6.33,2.68,3.52,5.38,2.6,3.53,2.54,4.75,3.98,2.69},
		{2.69,3.34,3.17,6.33,2.68,3.52,5.38,2.6,3.53,2.54,4.75,3.98},
		{3.98,2.69,3.34,3.17,6.33,2.68,3.52,5.38,2.6,3.53,2.54,4.75},
		{4.75,3.98,2.69,3.34,3.17,6.33,2.68,3.52,5.38,2.6,3.53,2.54},
		{2.54,4.75,3.98,2.69,3.34,3.17,6.33,2.68,3.52,5.38,2.6,3.53},
		{3.53,2.54,4.75,3.98,2.69,3.34,3.17,6.33,2.68,3.52,5.38,2.6},
		{2.6,3.53,2.54,4.75,3.98,2.69,3.34,3.17,6.33,2.68,3.52,5.38},
		{5.38,2.6,3.53,2.54,4.75,3.98,2.69,3.34,3.17,6.33,2.68,3.52},
		{3.52,5.38,2.6,3.53,2.54,4.75,3.98,2.69,3.34,3.17,6.33,2.68},
		{2.68,3.52,5.38,2.6,3.53,2.54,4.75,3.98,2.69,3.34,3.17,6.33},
};

static double KKProfileAverage [KIN_NUMBER_OF_KKPROFILES] = 
{
	3.4825,
	3.4825,
	3.4825,
	3.4825,
	3.4825,
	3.4825,
	3.4825,
	3.4825,
	3.4825,
	3.4825,
	3.4825,
	3.4825,
	3.70917,
	3.709174,
	3.70917,
	3.70917,
	3.70917,
	3.70917,
	3.70917,
	3.70917,
	3.70917,
	3.70917,
	3.70917,
};
