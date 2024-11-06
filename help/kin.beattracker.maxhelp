{
	"patcher" : 	{
		"fileversion" : 1,
		"appversion" : 		{
			"major" : 5,
			"minor" : 1,
			"revision" : 9
		}
,
		"rect" : [ 881.0, 129.0, 642.0, 659.0 ],
		"bglocked" : 0,
		"defrect" : [ 881.0, 129.0, 642.0, 659.0 ],
		"openrect" : [ 0.0, 0.0, 0.0, 0.0 ],
		"openinpresentation" : 0,
		"default_fontsize" : 12.0,
		"default_fontface" : 0,
		"default_fontname" : "Arial",
		"gridonopen" : 0,
		"gridsize" : [ 15.0, 15.0 ],
		"gridsnaponopen" : 0,
		"toolbarvisible" : 1,
		"boxanimatetime" : 200,
		"imprint" : 0,
		"enablehscroll" : 1,
		"enablevscroll" : 1,
		"devicewidth" : 0.0,
		"boxes" : [ 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "Developed by George Sioros",
					"fontname" : "Arial",
					"numoutlets" : 0,
					"patching_rect" : [ 6.0, 635.0, 167.0, 20.0 ],
					"fontsize" : 12.0,
					"numinlets" : 1,
					"id" : "obj-4"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "after a few periods of no input the beattracker stops automaticaly. After that it needs to be reinitialized with a few on beat bangs before it can again track the beat.",
					"linecount" : 5,
					"fontname" : "Arial",
					"numoutlets" : 0,
					"patching_rect" : [ 320.0, 552.0, 208.0, 75.0 ],
					"fontsize" : 12.0,
					"numinlets" : 1,
					"id" : "obj-44"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "at least 2 initial bangs on beat are needed in order for the beattracker to initialize itself",
					"linecount" : 3,
					"fontname" : "Arial",
					"numoutlets" : 0,
					"patching_rect" : [ 373.0, 447.0, 182.0, 48.0 ],
					"fontsize" : 12.0,
					"numinlets" : 1,
					"id" : "obj-42"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "mode of adaptation method:\n 1 -> Large & Kolen \n 2 ->Toivianen",
					"linecount" : 3,
					"fontname" : "Arial",
					"numoutlets" : 0,
					"patching_rect" : [ 329.0, 167.0, 252.0, 62.0 ],
					"fontsize" : 16.0,
					"numinlets" : 1,
					"id" : "obj-37"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "mode Toiviainen",
					"fontname" : "Arial",
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 444.0, 266.0, 127.0, 23.0 ],
					"fontsize" : 16.0,
					"numinlets" : 2,
					"id" : "obj-34"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "mode 2",
					"fontname" : "Arial",
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 330.0, 266.0, 79.0, 23.0 ],
					"fontsize" : 16.0,
					"numinlets" : 2,
					"id" : "obj-35"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "mode Large",
					"fontname" : "Arial",
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 444.0, 231.0, 97.0, 23.0 ],
					"fontsize" : 16.0,
					"numinlets" : 2,
					"id" : "obj-33"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "Bangs coming in faster than this threshold are ignored. The time distance is measured from the last non ignored bang, not necessary from the previous bang, so that every bang that has a distance from the last \"non-ignored\" bang smaller than this time threshold is ingored.\nThe default value is 50ms",
					"linecount" : 5,
					"fontname" : "Arial",
					"numoutlets" : 0,
					"patching_rect" : [ 141.0, 343.0, 405.0, 75.0 ],
					"fontsize" : 12.0,
					"numinlets" : 1,
					"id" : "obj-32"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "number",
					"fontname" : "Arial",
					"numoutlets" : 2,
					"outlettype" : [ "int", "bang" ],
					"patching_rect" : [ 78.0, 344.0, 50.0, 17.0 ],
					"fontsize" : 9.0,
					"numinlets" : 1,
					"id" : "obj-30"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "<---- with each input bang the period and phase of the beattracker are recaclulated",
					"linecount" : 2,
					"fontname" : "Arial",
					"numoutlets" : 0,
					"patching_rect" : [ 79.0, 446.0, 290.0, 34.0 ],
					"fontsize" : 12.0,
					"numinlets" : 1,
					"id" : "obj-27"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "<---- bangs on beat",
					"fontname" : "Arial",
					"numoutlets" : 0,
					"patching_rect" : [ 235.0, 520.0, 144.0, 25.0 ],
					"fontsize" : 16.0,
					"numinlets" : 1,
					"id" : "obj-25"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "32 90 50",
					"fontname" : "Arial",
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 214.0, 551.0, 50.0, 15.0 ],
					"fontsize" : 9.0,
					"numinlets" : 2,
					"id" : "obj-5"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "noteout 10",
					"fontname" : "Arial",
					"numoutlets" : 0,
					"patching_rect" : [ 214.0, 613.0, 100.0, 17.0 ],
					"fontsize" : 9.0,
					"numinlets" : 3,
					"id" : "obj-6"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "makenote",
					"fontname" : "Arial",
					"numoutlets" : 2,
					"outlettype" : [ "float", "float" ],
					"patching_rect" : [ 214.0, 581.0, 60.0, 17.0 ],
					"fontsize" : 9.0,
					"numinlets" : 3,
					"id" : "obj-16"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "button",
					"numoutlets" : 1,
					"outlettype" : [ "bang" ],
					"blinkcolor" : [ 1.0, 0.090196, 0.090196, 1.0 ],
					"patching_rect" : [ 214.0, 519.0, 20.0, 20.0 ],
					"numinlets" : 1,
					"id" : "obj-19"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "flonum",
					"fontname" : "Arial",
					"numoutlets" : 2,
					"outlettype" : [ "float", "bang" ],
					"patching_rect" : [ 59.0, 521.0, 50.0, 17.0 ],
					"fontsize" : 9.0,
					"numinlets" : 1,
					"id" : "obj-18"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "<----- listen to the input",
					"fontname" : "Arial",
					"numoutlets" : 0,
					"patching_rect" : [ 123.0, 262.0, 165.0, 25.0 ],
					"fontsize" : 16.0,
					"numinlets" : 1,
					"id" : "obj-17"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "<- select midi input device",
					"fontname" : "Arial",
					"numoutlets" : 0,
					"patching_rect" : [ 121.0, 175.0, 207.0, 25.0 ],
					"fontsize" : 16.0,
					"numinlets" : 1,
					"id" : "obj-15"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "loadmess -1",
					"fontname" : "Arial",
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 47.0, 125.0, 62.0, 17.0 ],
					"fontsize" : 9.0,
					"numinlets" : 1,
					"id" : "obj-13"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "umenu",
					"fontname" : "Arial",
					"numoutlets" : 3,
					"outlettype" : [ "int", "", "" ],
					"patching_rect" : [ 18.0, 173.0, 100.0, 25.0 ],
					"fontsize" : 16.0,
					"items" : "LoopBe Internal MIDI",
					"types" : [  ],
					"labelclick" : 1,
					"numinlets" : 1,
					"id" : "obj-12"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "midiinfo",
					"fontname" : "Arial",
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 18.0, 150.0, 48.0, 17.0 ],
					"fontsize" : 9.0,
					"numinlets" : 2,
					"id" : "obj-7"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "toggle",
					"numoutlets" : 1,
					"outlettype" : [ "int" ],
					"patching_rect" : [ 97.0, 261.0, 20.0, 20.0 ],
					"numinlets" : 1,
					"id" : "obj-10"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "gate",
					"fontname" : "Arial",
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 97.0, 289.0, 32.5, 17.0 ],
					"fontsize" : 9.0,
					"numinlets" : 2,
					"id" : "obj-11"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "pack i i i",
					"fontname" : "Arial",
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 111.0, 238.0, 100.0, 17.0 ],
					"fontsize" : 9.0,
					"numinlets" : 3,
					"id" : "obj-21"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "button",
					"numoutlets" : 1,
					"outlettype" : [ "bang" ],
					"patching_rect" : [ 59.0, 447.0, 20.0, 20.0 ],
					"numinlets" : 1,
					"id" : "obj-22"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "noteout",
					"fontname" : "Arial",
					"numoutlets" : 0,
					"patching_rect" : [ 97.0, 308.0, 54.0, 17.0 ],
					"fontsize" : 9.0,
					"numinlets" : 3,
					"id" : "obj-23"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "stripnote",
					"fontname" : "Arial",
					"numoutlets" : 2,
					"outlettype" : [ "int", "int" ],
					"patching_rect" : [ 59.0, 237.0, 46.0, 17.0 ],
					"fontsize" : 9.0,
					"numinlets" : 2,
					"id" : "obj-24"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "notein",
					"fontname" : "Arial",
					"numoutlets" : 3,
					"outlettype" : [ "int", "int", "int" ],
					"patching_rect" : [ 59.0, 202.0, 100.0, 17.0 ],
					"fontsize" : 9.0,
					"numinlets" : 1,
					"color" : [ 0.803922, 0.843137, 0.709804, 1.0 ],
					"id" : "obj-2"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "kin.beattracker",
					"fontname" : "Arial",
					"numoutlets" : 2,
					"outlettype" : [ "", "bang" ],
					"patching_rect" : [ 59.0, 487.0, 174.0, 25.0 ],
					"fontface" : 1,
					"fontsize" : 16.0,
					"numinlets" : 1,
					"color" : [ 0.803922, 0.843137, 0.709804, 1.0 ],
					"id" : "obj-1"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "mode 1",
					"fontname" : "Arial",
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 330.0, 231.0, 79.0, 23.0 ],
					"fontsize" : 16.0,
					"numinlets" : 2,
					"id" : "obj-28"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "threshold $1",
					"fontname" : "Arial",
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 78.0, 366.0, 59.0, 15.0 ],
					"fontsize" : 9.0,
					"numinlets" : 2,
					"id" : "obj-29"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "kin.beattracker is based on the 'Adaptive Oscilators' in Robert Rowe's Machine Musicianship\n",
					"linecount" : 2,
					"fontname" : "Arial",
					"numoutlets" : 0,
					"patching_rect" : [ 9.0, 79.0, 486.0, 34.0 ],
					"fontsize" : 12.0,
					"numinlets" : 1,
					"id" : "obj-3"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"varname" : "autohelp_top_description[1]",
					"text" : "Kinetic toolbox - Licenced under the GPLv3 - Copyright 2009-2011 - INESC-Porto",
					"fontname" : "Arial",
					"numoutlets" : 0,
					"patching_rect" : [ 8.0, 54.0, 561.0, 20.0 ],
					"fontsize" : 11.595187,
					"numinlets" : 1,
					"id" : "obj-20"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"varname" : "autohelp_top_title",
					"text" : "kin.beattracker",
					"fontname" : "Arial",
					"numoutlets" : 0,
					"patching_rect" : [ 8.0, 3.0, 455.0, 30.0 ],
					"frgb" : [ 0.93, 0.93, 0.97, 1.0 ],
					"fontface" : 3,
					"fontsize" : 20.871338,
					"numinlets" : 1,
					"id" : "obj-8",
					"textcolor" : [ 0.93, 0.93, 0.97, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"varname" : "autohelp_top_digest",
					"text" : "a bang based beattracker  ",
					"fontname" : "Arial",
					"numoutlets" : 0,
					"patching_rect" : [ 8.0, 33.0, 485.0, 21.0 ],
					"frgb" : [ 0.93, 0.93, 0.97, 1.0 ],
					"fontsize" : 12.754705,
					"numinlets" : 1,
					"id" : "obj-9",
					"textcolor" : [ 0.93, 0.93, 0.97, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "panel",
					"varname" : "autohelp_top_panel",
					"numoutlets" : 0,
					"patching_rect" : [ 3.0, 2.0, 579.0, 52.0 ],
					"mode" : 1,
					"grad1" : [ 0.101961, 0.101961, 0.101961, 1.0 ],
					"grad2" : [ 0.85, 0.85, 0.85, 1.0 ],
					"background" : 1,
					"numinlets" : 1,
					"id" : "obj-14"
				}

			}
 ],
		"lines" : [ 			{
				"patchline" : 				{
					"source" : [ "obj-2", 1 ],
					"destination" : [ "obj-24", 1 ],
					"hidden" : 0,
					"midpoints" : [ 109.0, 227.5, 95.5, 227.5 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-2", 0 ],
					"destination" : [ "obj-24", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-24", 0 ],
					"destination" : [ "obj-22", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-22", 0 ],
					"destination" : [ "obj-1", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-2", 0 ],
					"destination" : [ "obj-21", 0 ],
					"hidden" : 0,
					"midpoints" : [ 68.5, 228.0, 120.5, 228.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-2", 1 ],
					"destination" : [ "obj-21", 1 ],
					"hidden" : 0,
					"midpoints" : [ 109.0, 228.0, 161.0, 228.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-2", 2 ],
					"destination" : [ "obj-21", 2 ],
					"hidden" : 0,
					"midpoints" : [ 149.5, 228.0, 201.5, 228.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-21", 0 ],
					"destination" : [ "obj-11", 1 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-11", 0 ],
					"destination" : [ "obj-23", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-10", 0 ],
					"destination" : [ "obj-11", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-7", 0 ],
					"destination" : [ "obj-12", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-12", 1 ],
					"destination" : [ "obj-2", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-13", 0 ],
					"destination" : [ "obj-7", 1 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-1", 0 ],
					"destination" : [ "obj-18", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-1", 1 ],
					"destination" : [ "obj-19", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-5", 0 ],
					"destination" : [ "obj-16", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-16", 1 ],
					"destination" : [ "obj-6", 1 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-16", 0 ],
					"destination" : [ "obj-6", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-19", 0 ],
					"destination" : [ "obj-5", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-28", 0 ],
					"destination" : [ "obj-1", 0 ],
					"hidden" : 1,
					"midpoints" : [ 339.5, 439.5, 68.5, 439.5 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-29", 0 ],
					"destination" : [ "obj-1", 0 ],
					"hidden" : 1,
					"midpoints" : [ 87.5, 483.5, 68.5, 483.5 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-30", 0 ],
					"destination" : [ "obj-29", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-33", 0 ],
					"destination" : [ "obj-1", 0 ],
					"hidden" : 1,
					"midpoints" : [ 453.5, 438.5, 68.5, 438.5 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-35", 0 ],
					"destination" : [ "obj-1", 0 ],
					"hidden" : 1,
					"midpoints" : [ 339.5, 438.5, 68.5, 438.5 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-34", 0 ],
					"destination" : [ "obj-1", 0 ],
					"hidden" : 1,
					"midpoints" : [ 453.5, 437.5, 68.5, 437.5 ]
				}

			}
 ]
	}

}
