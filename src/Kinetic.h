/*
	Kinetic.h
	header file to be included in all source code files of the Kinetc Toolbox
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

bool Kinetic_Register_Symbol ()
{
	t_symbol* kintool = gensym("kinetic toolbox loaded");
	t_atom* p_atom;
	if (kintool->s_thing == NULL) //if this is the first external that is loaded
	{
		post ("Kinetic toolbox");
		post ("Licenced under the GPLv3 - Copyright 2009-2011 - INESC-Porto");
		p_atom = new t_atom();
		//SETSYMBOL(p_atom, gensym("Kinetic_symbol"));
		atom_setsym(p_atom, gensym("Kinetic_symbol"));
		kintool->s_thing =  (t_object*)p_atom;
		return false;
	}
	return true;//if already one external from the library was loaded

};