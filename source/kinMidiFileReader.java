/*
 KinMidiFileReader java class for the MXJ object in MAX/MSP
Reads a midi file from the hard drive and stores the note On/Off pairs in an array of the form:
[starting time in ticks] [Note number] [Velocity] [Duration in ticks] [midi channel]
It queries notes by their starting time in bar beat units format according to the time signature and resolution in PPQ
The file is considered to have only a singe (constant) time signature 

    Copyright (C) 2010 - 2011 - George Sioros, INESC Porto

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

	Created by George Sioros (2010)

*/




import com.cycling74.max.*;
import javax.sound.midi.*;
import java.io.*;
import java.util.*;

public class kinMidiFileReader extends MaxObject
{
	//the quantization values are in ticks assuming a resolution of 480 ticks per Quarter note (8nth ellement in te arrays)
	private static final String [] QUANTIZATION_LABELS = new String [] {"1nd", "1n", "1nt", "2nd", "2n", "2nt", "4nd","4n", "4nt",
	"8nd", "8n", "8nt", "16nd", "16n", "16nt", "32nd", "32n", "32nt", "64nd", "64n", "128n"
	};
	private static final long [] QUANTIZATION_VALUES = new long [] {2280, 1920, 1280, 1440, 960, 640, 720, 480, 320, 360, 240,
	160, 180, 120, 80, 90, 60, 40, 45, 30, 15
	};

	private static final String[] INLET_ASSIST = new String[]{
		"path message to read a midi file, list to query notes by time position in BBU format, getPPQ, setPPQ, getSignature"
	};
	private static final String[] OUTLET_ASSIST = new String[]{
		"(list) time to next note in ticks, note number, velocity, duration in ticks, midi channel"
	};
	private static int EventsMaximumLength = 5;//start time, Note number, Velocity, Duration, Channel
	private static boolean KinMidiFileReaderLoaded = false;
	
	private String strPath;
	private long [][] myNotes;//array of notes in the form: [Start time][Note number][Velocity][Duration][channel] time values are in ticks and are dependent on the PPQ resolution and tempo!!!
	private long [][] myQuantizedNotes;//array of quantized notes
	private long TimeSign[][];//Time signature [ticks][Num][denum][bar duration in ticks]
	private long TPQuarter; //ticks per quarter note
	private long quantization;//quantization in ticks
	private int pos;//an index in the myNotes array . !!!! It may be outside of the range of the Array !!! It must be ALLWAYS checked
	
	
	public kinMidiFileReader(Atom[] args)
	{
		declareInlets(new int[]{DataTypes.ALL});
		declareOutlets(new int[]{DataTypes.ALL});
		
		setInletAssist(INLET_ASSIST);
		setOutletAssist(OUTLET_ASSIST);

		clearALL();
		if (!KinMidiFileReaderLoaded)
		{
			post ("kinMidiFileReader java class is part of the Kinetic toolbox");
			post ("Licenced under the GPLv3 - Copyright 2009-2011 - INESC-Porto");
		}
		KinMidiFileReaderLoaded = true;
	}
    
	public void bang()//output the note existing in the current position and advance to the next
	{
		if (this.myQuantizedNotes == null || pos<0)
			return;
		if (pos >= this.myQuantizedNotes.length)
		{
			int info_idx = getInfoIdx();
			outlet (info_idx, "EOF");//end of file message
			return;
		}
		outlet (0, this.myQuantizedNotes[pos]);//output the array with [starting time],[note number], [velocity], [duration], [channel]
		pos++;
	}
	
	public void gotoStart()
	{
		if (myNotes == null)
		{
			pos = -1;
			return;
		}
		pos = 0;
	}
    
	public void inlet(int i)
	{
		if (myNotes == null)
			return;
		list (new Atom[] {Atom.newAtom(i)});
	}
    
	public void inlet(float f)
	{
		if (myNotes == null)
			return;
		list (new Atom [] {Atom.newAtom((int)f)});	
	}
    
    
	public void list(Atom[] ls)
	{
		if (myNotes == null || this.myQuantizedNotes == null)
			return;
		long _bar;
		long _beat;
		long _unit;
		long _InitialTick;
		long _FinalTick;
		long []_InitialBBU = new long [] {-1,-1,-1}; 
		long []_FinalBBU = new long [] {-1,-1,-1};
		long [] _bbu = new long [3];
		int info_idx = getInfoIdx();
		long [] _note;
		switch (ls.length)
		{
			case 0:
				//don' do anything cause there is no input list
				break;
			case 1:
				//only one ellement in the list interpreted as _bar
				if (ls[0].isInt())//if it is an integer nulber
					_bar = ls[0].getInt();
				else if (ls[0].isFloat())
					_bar = (int)ls[0].getFloat();
				else 
					_bar = -1;
				if (_bar > 0)//if there was a proper _bar number set the limits of the search
				{
					_InitialBBU = new long [] {_bar, 1, 0};
					_FinalBBU = new long [] {_bar+1, 1, 0};
				}
				break;
			case 2:
			//two ellements in list => interpreted as _bar and _unit
				if (ls[0].isInt())
					_bar = ls[0].getInt();
				else if (ls[0].isFloat())
					_bar = (int)ls[0].getFloat();
				else _bar = -1;
				if (ls[1].isInt())
					_beat = ls[1].getInt();
				else if (ls[1].isFloat())
					_beat = (int)ls[1].getFloat();
				else _beat = -1;
				if (_bar>0 && _beat>0)
				{
					_InitialBBU = new long [] {_bar, _beat, 0};
					_FinalBBU = new long [] {_bar, _beat+1, 0};
				}
				break;
			case 3:
				if (ls[0].isInt())
					_bar = ls[0].getInt();
				else if (ls[0].isFloat())
					_bar = (int)ls[0].getFloat();
				else _bar = -1;
				if (ls[1].isInt())
					_beat = ls[1].getInt();
				else if (ls[1].isFloat())
					_beat = (int)ls[1].getFloat();
				else _beat = -1;
				if (ls[2].isInt())
					_unit = ls[2].getInt();
				else if (ls[2].isFloat())
					_unit = (int)ls[1].getFloat();
				else _unit = -1;
				if (_bar>0 && _beat>0 && _unit>=0)
				{
					_InitialBBU = new long [] {_bar, _beat, _unit};
					_FinalBBU = new long [] {_bar, _beat, _unit};
				}
				break;
			default:
				_InitialBBU = new long [] {-1,-1,-1};
				_FinalBBU = new long [] {-1,-1,-1};
		}
		outlet (info_idx, new Atom [] {Atom.newAtom("query"), Atom.newAtom("start")});
		if (_InitialBBU[0]>0 && _InitialBBU[1]>0 && _InitialBBU[2]>=0 && _FinalBBU[0]>0 && _FinalBBU[1]>0 && _FinalBBU[2]>=0)//if all values are properly initilized
		{
			_InitialTick = (long)bbu2ticks (_InitialBBU);
			_FinalTick = (long)bbu2ticks (_FinalBBU);//the final tick value is one tick less => the next beat is not included
			int _TSindex = -1;
			boolean _TSchange = false;
			gotoTicks (_InitialTick);//set the pos index to the to the 1st note that has a starting time equal or greater than initial ticks
			if (pos >= 0)
			{
				if (_FinalTick > _InitialTick)
					_FinalTick --;//if the final and initial ticks are not equal then the range of 1 beat for example does not include the last tick!!!
				while (pos<this.myQuantizedNotes.length && this.myQuantizedNotes[pos][0]<=_FinalTick)//if initial and final tick values are equal then the note at the current position  must have a starting time equal to the ticks value in order for anything to be output. It can not by defenition be less
				{
					_TSchange = false;
					while (_TSindex+1 < this.TimeSign.length && this.myQuantizedNotes[pos][0]>=this.TimeSign[_TSindex+1][0])//search for the right time singature
					{
						_TSindex++;
						_TSchange = true;
					}
					if (_TSchange)//and output new time signatures before the note events
						outlet (info_idx, new Atom [] {Atom.newAtom("query"), Atom.newAtom("TimeSignature"), Atom.newAtom(this.TimeSign[_TSindex][1]), Atom.newAtom(this.TimeSign[_TSindex][2])});
					if (ticks2bbu(this.myQuantizedNotes[pos][0], _bbu))
					{
						outlet (info_idx, new Atom[] {Atom.newAtom("query"), Atom.newAtom(_bbu[0]), Atom.newAtom(_bbu[1]),
							Atom.newAtom(_bbu[2]), Atom.newAtom(this.myQuantizedNotes[pos][0]), Atom.newAtom(this.myQuantizedNotes[pos][1]),
							Atom.newAtom(this.myQuantizedNotes[pos][2]), Atom.newAtom(this.myQuantizedNotes[pos][3]), Atom.newAtom(this.myQuantizedNotes[pos][4])});
					}else
						error("MIDI file reader ERROR: could not convert to bbu values during dump");
					_note =  new long[] {this.myQuantizedNotes[pos][0],this.myQuantizedNotes[pos][1],this.myQuantizedNotes[pos][2],this.myQuantizedNotes[pos][3],this.myQuantizedNotes[pos][4]};
					if (pos<this.myQuantizedNotes.length-1)
						_note[0] = this.myQuantizedNotes[pos+1][0]-this.myQuantizedNotes[pos][0];//time to next event
					else 
						_note[0] = 0;//there is no next event
					outlet (0, _note);//output the array with [time to next event in ticks],[note number], [velocity], [duration], [channel]
					pos++;
				}
			}
		}
		outlet (info_idx, new Atom [] {Atom.newAtom("query"), Atom.newAtom("end")});

		
	}
	
	public void dump ()
	{
		if (myNotes == null || this.myQuantizedNotes == null || this.TimeSign == null)
			return;		
		long [] _bbu = new long [3];
		int info_idx = getInfoIdx();
		int _TSindex = -1;//time signature checks are done with  _TSindex+1 which is alwasy >=0
		outlet (info_idx, new Atom[] {Atom.newAtom("dump"), Atom.newAtom("begin")});
	//	if (this.TimeSign.length > _TSindex)
	//		outlet (info_idx, new Atom [] {Atom.newAtom("dump"), Atom.newAtom("TimeSignature"), Atom.newAtom(this.TimeSign[_TSindex][1]), Atom.newAtom(this.TimeSign[_TSindex][2])});
		for (int i = 0 ; i < this.myQuantizedNotes.length ; i++)
		{
			//ceck for Time signature changes
			while (_TSindex+1 < this.TimeSign.length && this.myQuantizedNotes[i][0]>=this.TimeSign[_TSindex+1][0])
			{
				_TSindex ++;//and output new time signatures before the note events
				outlet (info_idx, new Atom [] {Atom.newAtom("dump"), Atom.newAtom("TimeSignature"), Atom.newAtom(this.TimeSign[_TSindex][1]), Atom.newAtom(this.TimeSign[_TSindex][2])});
			}
			if (ticks2bbu(this.myQuantizedNotes[i][0], _bbu))
			{
				outlet (info_idx, new Atom[] {Atom.newAtom("dump"), Atom.newAtom(_bbu[0]), Atom.newAtom(_bbu[1]),
					Atom.newAtom(_bbu[2]), Atom.newAtom(myQuantizedNotes[i][0]), Atom.newAtom(myQuantizedNotes[i][1]),
					Atom.newAtom(myQuantizedNotes[i][2]), Atom.newAtom(myQuantizedNotes[i][3]), Atom.newAtom(myQuantizedNotes[i][4])});
			}else
				error("MIDI file reader ERROR: could not convert to bbu values during dump");
		}
		outlet (info_idx, new Atom[] {Atom.newAtom("dump"), Atom.newAtom("end")});

	}
	
	public void setPPQ (float res)
	{
		if (myNotes == null)
			return;		
		double ratio;//ratio of the new resolution to the old one
		int i = 0, j=0;
		if (TPQuarter != (long)res)//if the current resolution is different from the new one do the conversion
		{
			ratio = res/TPQuarter;
			for (i=0 ; i<myNotes.length ; i++)//update the mynotes array
			{
				myNotes[i][0] *= ratio;//starting times
				myNotes[i][3] *= ratio;//durations
			}
			if (this.myQuantizedNotes != null && this.myQuantizedNotes != this.myNotes)
			{

				for (i=0 ; i<this.myQuantizedNotes.length; i++)//update the myQuantized notes array
				{
					this.myQuantizedNotes[i][0] *= ratio;
					this.myQuantizedNotes[i][3] *= ratio;
				}
			}
			TPQuarter = (long)res;//update the resolution variable
			for (i=0 ; i<TimeSign.length ; i++)//update Timesignature array (starting times and bar durations)
			{
				this.TimeSign[i][0] *= ratio;
				this.TimeSign[i][3] *= ratio;
			}
			if (this.quantization > 0)
				this.quantization *= ratio;//the quantization duration must also be rescaled!!!!
			getPPQ();
		}
	}
	public void getPPQ ()
	{
		int info_idx = getInfoIdx();
 		outlet (info_idx, new Atom[] {Atom.newAtom("PPQ"), Atom.newAtom(TPQuarter)});		
	}
	public void getSignature()
	{
		int info_idx = getInfoIdx();
		int i;
		outlet (info_idx, new Atom [] {Atom.newAtom("signature"),Atom.newAtom("begin") });
		for (i=0 ; i<this.TimeSign.length ; i++)
			outlet(info_idx, new Atom[] { Atom.newAtom(TimeSign[i][0]), Atom.newAtom(TimeSign[i][1]),Atom.newAtom(TimeSign[i][2]),Atom.newAtom(TimeSign[i][3])});
		outlet (info_idx, new Atom [] {Atom.newAtom("signature"),Atom.newAtom("end") });
	}
	
	public void getPath()
	{
		int info_idx = getInfoIdx();
		if (strPath != null  && strPath.length()>0)
			outlet (info_idx, Atom.newAtom(strPath));
		
	}
	
	public void path (Atom[] arg)
	{
		File inFile;
		String str;
		String strRel;
		if (arg.length >0 && arg[0].isString())
			strRel = arg[0].getString();
		else return;
		str = MaxSystem.locateFile(strRel);
	//	post (str);
		if (str == null)
		    return;
		
		inFile = new File (str);
		if (!inFile.exists())
		{
			error ("File Does not exists " + str);
			return;
		}
		if (!inFile.canRead())
		{
			error ("Can not read from source file " + str);
			return;
		}
		strPath = str; 
		readMidiFile (inFile);

		
	}
	
	private void readMidiFile (File inFile)//reads the MIDI file and stores the note ON/OFF pairs in the myNotes array in the form : [start time in Ticks][Note number][Velocity][duration][channel]
	{
		try
		{
			Sequence inSeq = MidiSystem.getSequence(inFile);
			Track[] inTracks;
			LinkedList unpairedNotesList = new LinkedList();
			LinkedList notesList = new LinkedList();
			LinkedList TSlist = new LinkedList();
 			ListIterator unpairedIter, notesIter, TSiter;
 			long _tracksize = 0;// the size of the track currently being read
			long _time;//in ticks (the resolution is needed to convert it to quarter notes)
 			MidiMessage _message;//midi message currently being read from file
 			MidiEvent _event;//midi event currently read from file
 			byte [] _bytes;//bytes array corresponding to the midi event currently being read from file (these are unsigned values => they need to be converted to int : (_bytes[i]& 0xFF)
 			long _statusByte; //the status byte of the message currently being read (it is converted from the unsigned value that is stored in the byes array
			String str;//just a temporary string for formating output to the max window
 			int i , j = 0;
			int TScounter = 0;
			long _TSnum, _TSdenum;
			inTracks = inSeq.getTracks();
			long _newTPQuarter = inSeq.getResolution();//read new resolution
			if (this.quantization >= 0)
				this.quantization *= ((double)_newTPQuarter)/((double)TPQuarter);//rescale the quantization duration to the new resolution
			TPQuarter = _newTPQuarter; //set the new resolution
			if (inTracks.length < 1) //if the inTrack array is not allocated then return
				return;
			//TSnum = 4;//defauls values for time signature... if a time signature message is found these are changed accordingly
			//TSdenum = 4;
			TSlist.clear();
 			for ( i = 0; i < inTracks.length ; i++)//go through each track
 			{
 				unpairedNotesList.clear(); //clear the unpairedNotes list at the beginng of each track
 				_tracksize = inTracks[i].size();//get the size of the track (ot realy usefull)
 				for (j = 0 ; j < _tracksize ; j++)//go through all events in the track
 				{
 					_event = inTracks[i].get(j);
 					_time = _event.getTick();
 					_message = _event.getMessage();
 					_bytes = _message.getMessage();
 					if (_bytes.length == 7 && (_bytes[0]& 0xFF) == 255 && (_bytes[1]& 0xFF) == 88)//time signature message
 					{
						//post ("at " + _time + " time signature = " + (_bytes[3]& 0xFF) + " / " + Math.pow(2,(_bytes[4]& 0xFF)));
						_TSnum = (_bytes[3]& 0xFF);
						_TSdenum = (long) Math.pow(2,(_bytes[4]& 0xFF));
						TSlist.add(new long [] {_time,_TSnum , _TSdenum, TPQuarter * 4 * _TSnum / _TSdenum});//add the time signature to the Time sgnalture linked list with time as the first ellement
 					}else if (_bytes.length == 3)//if message length = 3  then it Can be a note message or some other non system exclussive message
 					{
 						_statusByte = (_bytes[0] & 0xFF);
 						if ( ((_statusByte >= 128 && _statusByte <144) || (_statusByte >=144 && _statusByte <160 && (_bytes[2]==0))) && unpairedNotesList.size()>0 )
 						{//then this is a note OFF message and there might be an unpaired note ON with an equal note number
 							unpairedIter = unpairedNotesList.listIterator(0);
 							boolean endOfIteration = false;
 							long [] temparray;
							long channel;
							if (_statusByte < 144)
								channel = _statusByte -127;
							else
								channel = _statusByte -143;
 							while (unpairedIter.hasNext() && !endOfIteration)//search the unpairedNotesList for a correponding note on message
 							{
 								temparray = (long[])unpairedIter.next();
 								if (temparray.length >= 4)
 								{
 									if (temparray[0] > _time)//if the unpaired note's start time is greater to the note off message then end the iteration (it can not be a not ON/Off pair if the off precedes the on message!!!)
 										endOfIteration = true;
 									else if (temparray[1] == (long)(_bytes[1] & 0xFF) && temparray[4]==channel)
	 								{//if the note numbers and channels match then caclulate the duration in ticks and add to the notes list
										//duratiion = current event's time - note on event's time
										temparray[3] = _time - temparray[0];
										notesList.add(temparray);
										unpairedIter.remove();//remove the ellement that was paired in the unpairednotes list
										endOfIteration = true;//set the flag to true to stop searching
	 								}
 								}
 							}//if a note on message is not found the note OFF message is ignored
 							
 						}else if (_statusByte >= 144 && _statusByte < 160)//this is a note on message
 							unpairedNotesList.add(new long[] {_time, (long)(_bytes[1] & 0xFF), (long)(_bytes[2] & 0xFF), 0L, _statusByte-143});//we add to te unpaired notes the new one and wait for it to be paired. the last element is the duration which is 0 for unpaired events
 					}
 					
 				}//after finishing parsing all events in a track add the remaining unpaired notes to the notesList with a duration = 0
	 			if (unpairedNotesList.size() >0)
	 			{
		 			unpairedIter = unpairedNotesList.listIterator(0);
		 			while (unpairedIter.hasNext())
		 				notesList.add ((long[])unpairedIter.next());
		 		} 			
		 	}//finish all tracks in the file
			if (TSlist.size()<=0)//if no 
			{
				this.TimeSign = new long [1][];
				this.TimeSign[0] = new long [] {0, 4, 4, TPQuarter * 4 };//default time signature (4/4) at position 0 ticks
			}else
			{
				this.TimeSign = new long [TSlist.size()][];//create a new array to store the time signatures
				i = 0;
				TSiter = TSlist.listIterator(0);
				while (TSiter.hasNext())//go through all ellements in the Time signatures linked list
				{
					this.TimeSign [i] = (long[]) TSiter.next();//and copy them into the corresponding position in the array
					i++;
				}
			}
			//sort the time signature array 
	 		for (i = 0 ; i < TimeSign.length-1 ; i++)
	 		{
	 			for (j = i+1 ; j < TimeSign.length ; j++)
	 			{
	 				if (TimeSign[i][0] > TimeSign[j][0])
	 				{
	 					long [] temparray;
	 					temparray = TimeSign[i].clone();
	 					TimeSign[i] = TimeSign[j];
	 					TimeSign[j] = temparray;
	 				}
	 			}
	 		}
	 		if (notesList.size()>0)
	 		{//convert to array
	 			myNotes = new long [notesList.size()][EventsMaximumLength];
	 			notesIter = notesList.listIterator(0);
	 			i=0;
	 			while (notesIter.hasNext())
	 			{
	 				myNotes[i] = (long[])notesIter.next();
	 				i++;
	 			}
	 		}
	 		//sort the array according to starting times
	 		for (i = 0 ; i < myNotes.length-1 ; i++)
	 		{
	 			for (j = i+1 ; j < myNotes.length ; j++)
	 			{
	 				if (myNotes[i][0] > myNotes[j][0])
	 				{
	 					long [] temparray;
	 					temparray = myNotes[i].clone();
	 					myNotes[i] = myNotes[j];
	 					myNotes[j] = temparray;
	 				}
	 			}
	 		}
			this.quantize_with_bar_alignment();
			getPPQ();
			if (myNotes != null  && myNotes.length > 0 && this.myQuantizedNotes != null && this.myQuantizedNotes.length >0)
				pos = 0;//after succesfully reading a midi file and storing the notes set the current position to the begining of the array
		}catch (InvalidMidiDataException MDexc)
		{
		}catch (IOException IOexc)
		{
		}
	}
    
    private boolean ticks2bbu (long t, long[]bbu)//convert ticks to bars beats units and store the result in the bbu array according to resolution
    {
		int i ;
		long _bars, _nextTS, _BeatDuration;
		if (this.TimeSign == null || this.TimeSign.length <=0 || TPQuarter <= 0 || bbu.length <3 || t <0)
    		return false;
		//get the last time signature before this position
		i=1;
		_bars = 1;
		while ( i<this.TimeSign.length && this.TimeSign[i][0]<=t)//this loop is run at least once (length is at least 1)
		{
			_bars += (this.TimeSign[i][0]-this.TimeSign[i-1][0])/this.TimeSign[i-1][3];//for each time signature count how many bars it lasts
			i++;
		}
		i--;
		if (i<0 || i>=this.TimeSign.length)//return false if the index i is out of boubd
			return false;
		_BeatDuration = TPQuarter * 4/TimeSign[i][2];//caclulate the beat duration according to the resolution of the file
		t -= this.TimeSign[i][0]; //offset the tick value to the last time signature time. (this is equivalent with sying that each time signature starts a new bar or measure
		long Bars = t / this.TimeSign[i][3];//caclulate the Bars value (considering as 0 the last time signature change)
		long beats = t / _BeatDuration; //calculate how many beats exists in the whoe duration
		double remainingBeats = beats - ((int)Bars)*this.TimeSign[i][1]; //subtract from the beats value the number of beats that make  whole bars (number of beats in a bar = Nominator of Time signature
		long remainingTicks = t - ((int)beats)*_BeatDuration;//the ticks that remain are the remainder of the division that calculates the beats value
		bbu[0] = Bars + _bars;
		bbu[1] = (long)remainingBeats + 1;//offset of one for beats (there is no beat numebr 0)
		bbu[2] = remainingTicks;   	
    	return true;//return true if succesfully converted
    }
    
    private double bbu2ticks (long[]bbu)//convert the bbu value stored in the array to ticks according to resolution and time signature
    {
   		double result;
		long _bars , _nextTS = 0;
		int i;
		boolean stop = false;
		if (this.TimeSign == null || this.TimeSign.length<=0 || bbu.length <3)
			return -1;

		i = 1;
		_bars = 1;
		while ( i<this.TimeSign.length && !stop) //if the position of the current TS is greater than the position of the bbu value to be cponverted exit
		{

			_nextTS = _bars + (this.TimeSign[i][0]-this.TimeSign[i-1][0])/this.TimeSign[i-1][3]; //caclulate next TS position in bars
			if (_nextTS > bbu[0])
				stop = true;//if the next Time signature is ahead of the bbu to be converted than stop without advancing!
			else
			{
				_bars = _nextTS;//set the position of the next TS to our bars counter
				i++;//and advance the index to the next Tiems signature
			}
		}
		//when it exists _bars holds the number of bars until the previous time signature but the index is one step ahead!!
		i --; //now i holds the index of the time signature of the last ime signature before the bbu time position
    	result = (bbu[0]-_bars)*this.TimeSign[i][3] + this.TimeSign[i][0];// (#N of bars from time signature) * (Duration of Bar) + (#ticks until last ime signature)
    	result += (bbu[1]-1)*4*TPQuarter/TimeSign[i][2]; //the duration of a beat (the denum of TS) = 4/denum * resolution 
    	result += bbu[2]; //just add the rtest of the ticks
    	return result;   
    }

	private void printContents2Console(int idx)
	{
		long[]bbu = new long [3];
		if (myNotes == null || idx<0 || idx > myNotes.length)
			return;
		if (ticks2bbu(myNotes[idx][0], bbu))
			post (bbu[0] + " " + bbu[1] + " " + bbu[2] + " " + myNotes[idx][1] + " " + myNotes[idx][2] + " " + myNotes[idx][3] + " " + myNotes[idx][4]);
		else
			post ("Could not convert to bbu " + myNotes[idx][0] + " " + myNotes[idx][1] + " " + myNotes[idx][2] + " " + myNotes[idx][3] + " " + myNotes[idx][4]);
	}
	
	private void gotoTicks (long ticks)//sets the pos to the 1st note in the myNotes array which has equal or greater starting time
	{
		boolean _stop;
		if (myNotes == null)
		{
			pos = -1;
			return;
		}
		if (ticks < 0)//if the ticks time is negative then goto start
		{
			pos = 0;
			return;
		}
		if (pos <= 0)//if we are the begining or out of range set to -1 to start looking from the begining of the array
			pos = -1;
		else if (pos-1 < myNotes.length && myNotes[pos-1][0] > ticks)//if the starting time of the note at the position just before the current one is in the "past" start looking from the begining 
			pos = -1;//
		else if (pos >= myNotes.length)//if the pos index is out of range set it to 0
			pos = -1;
		else 
			while ( pos>= 0 && myNotes[pos][0]>=ticks)//in any other case move the position index backwards until it reaches a note with a starting time less to the ticks value
				pos--;
		_stop = false;
		while (!_stop && (++pos)<myNotes.length)//start moving forward to find the 1st note with a starting time greater than or equal to ticks
		{
			if (myNotes[pos][0]>=ticks)
				_stop = true;
		}
		return;//the pos might be out of range!!!! if there is no note with starting time >= ticks then pos = myNotes.length!!!
	}
	
	public void clearALL ()
	{
		strPath = null;
		TimeSign = null;
		pos = -1;
		TPQuarter = -1;
		myNotes = null;
		quantization = -1;
		myQuantizedNotes = null;
	}

	private boolean quantize_with_bar_alignment()
	{
		int i = 0, j=0, k=0;
		long _bbu1 [] = new long [3];//temporary array to store bbu times
		long _bbu2 [] = new long [3];
		long _BarInTicks, _ticks;//current bar time in ticks, differnece between current note and quantization point (previous and Current)
		boolean _failed = false;

		if (this.myNotes == null)//if no notes are stores clear any quantized notes array and return
		{
			this.myQuantizedNotes = null;
			return true;
		}else if (this.quantization <= 0)//if there is an array of notes stored bu no quantization is asked point the quantized array to the un-quantized one
		{
			this.myQuantizedNotes = this.myNotes;
			return true;
		}
		if (this.TimeSign == null || this.TimeSign.length<=0)//return false if there is no time signature information stored (this should never happen)
			return false;
		// in all other cases proceede with quantization of the stored notes in myNotes[][]
		this.myQuantizedNotes = new long [this.myNotes.length][EventsMaximumLength];//create a new array to store the quantized notes
		for (i = 0 ; i < this.myNotes.length ; i++) //go through all notes in the array
		{
			_ticks = this.myNotes[i][0];//get the time of the note in ticks
			this.ticks2bbu(_ticks, _bbu1);//get the bbu time of the current note (only the Bar is actually needed)
			_BarInTicks = (long) this.bbu2ticks(new long []{ _bbu1[0],1,0});//get the ticks time of the begining of the bar the note belongs to
			_ticks -= _BarInTicks; //set an offset to the biggening of the bar => _ticks values represent position relative to the bar now
			//we add this offset so we get the quantization point closest to the note and not just a floor function (always the previous point)
			_ticks += this.quantization*0.5 -1; //the -1 is needed so that 0.5 is rounded to 0 not to 1
			_ticks = (_ticks / this.quantization) * this.quantization;
			 _ticks += _BarInTicks;
			this.ticks2bbu(_ticks, _bbu2);
			if ( _bbu2[0]>_bbu1[0])//if the quantization point belongs to the next bar
				this.myQuantizedNotes[i][0] = (long) this.bbu2ticks(new long [] {_bbu2[0], 1, 0});//set the note to the beginging of the bar
			else
				this.myQuantizedNotes[i][0] = _ticks; //set _ticks to the quantization point and reset to the absolut tick values (relative to begining of the song
			for (k=1 ; k<this.myQuantizedNotes[i].length ; k++)//copy the rest of the events parameter from myNotes array
				this.myQuantizedNotes [i][k] = this.myNotes[i][k];
		}
		//sort the quantized notes array
		for (i = 0 ; i < this.myQuantizedNotes.length-1 ; i++)
		{
			for (j = i+1 ; j < this.myQuantizedNotes.length ; j++)
			{
				if (this.myQuantizedNotes[i][0] > this.myQuantizedNotes[j][0])
				{
					long [] temparray;
					temparray = this.myQuantizedNotes[i].clone();
					this.myQuantizedNotes[i] = this.myQuantizedNotes[j];
					this.myQuantizedNotes[j] = temparray;
				}
			}
		}
		return !_failed; //return true if all points were succesefully quantized
		//returns false only if the quantization algorithm failed to quantize one or more notes
		
	}

	public void quantize(Atom[] arg)//if the 1st argument is a string it is matched to one of the labels and converted to the current resolution
	{
		String label;
		int i=0;
		if (arg.length < 1)//if no argument to the message set the quantization to none (negative)
			this.quantization = -1;
		else if(arg[0].isString())////if the 1st argument is a string it is matched to one of the labels and converted to the current resolution
		{
				label = arg[0].getString();
			while ( i<QUANTIZATION_LABELS.length && !(QUANTIZATION_LABELS[i].equals(label)) )
				i++;
			if (i >= QUANTIZATION_LABELS.length)
				this.quantization = -1;
			else
				this.quantization = QUANTIZATION_VALUES[i] * this.TPQuarter / QUANTIZATION_VALUES[7]; //convert the quantiztion to match the current resolultion (this could lead to lack of precision but these cases don´t correspond to valid midi resolutions

		}else if (arg[0].isInt()) //if the argument is not a string treat it as the quantization in ticks (no conversion according to resolustion)
			this.quantization = arg[0].getInt(); 
		else if (arg[0].isFloat())
			this.quantization = (int)arg[0].getFloat();
		quantize_with_bar_alignment();//quantize the myNotes array according to the new quantization grid
	}

	public void length ()//get the position of the last note ON in bars and ticks
	{
		long [] _bbu = new long [3];
		int info_idx = getInfoIdx();
		long _lastTick;
		if (this.myNotes == null || this.myQuantizedNotes == null || this.myNotes.length == 0 || this.myQuantizedNotes.length == 0)
			return;
		_lastTick = this.myQuantizedNotes[this.myQuantizedNotes.length-1] [0]; //get tick position of last note
		this.ticks2bbu( _lastTick, _bbu);//get the bbu position of the last note
		outlet (info_idx, new Atom [] {Atom.newAtom("length"), Atom.newAtom(this.myQuantizedNotes.length), Atom.newAtom(_bbu[0]), Atom.newAtom(_lastTick)});//output out the info outllet the number of notes stored, the last bar position and the last tick value
	}
}






























