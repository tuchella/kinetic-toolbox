{
	"patcher" : 	{
		"fileversion" : 1,
		"appversion" : 		{
			"major" : 5,
			"minor" : 1,
			"revision" : 9
		}
,
		"rect" : [ 951.0, 131.0, 520.0, 481.0 ],
		"bglocked" : 0,
		"defrect" : [ 951.0, 131.0, 520.0, 481.0 ],
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
					"patching_rect" : [ 7.0, 453.0, 167.0, 20.0 ],
					"fontsize" : 12.0,
					"numinlets" : 1,
					"id" : "obj-5"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "the right inlet is used to control the transport. Using the name attribute one can bind the looper to any transport ",
					"linecount" : 5,
					"fontname" : "Arial",
					"numoutlets" : 0,
					"patching_rect" : [ 341.0, 350.0, 162.0, 75.0 ],
					"fontsize" : 12.0,
					"numinlets" : 1,
					"id" : "obj-27"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "Each message is prepended by its time position in BBU format.\nThe message begin clears the containts of the looper",
					"linecount" : 3,
					"fontname" : "Arial",
					"numoutlets" : 0,
					"patching_rect" : [ 182.0, 184.0, 317.0, 48.0 ],
					"fontsize" : 12.0,
					"numinlets" : 1,
					"id" : "obj-25"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "in the midle inlet the length of the loop must be specified, again in BBU format",
					"linecount" : 2,
					"fontname" : "Arial",
					"numoutlets" : 0,
					"patching_rect" : [ 90.0, 266.0, 235.0, 34.0 ],
					"fontsize" : 12.0,
					"numinlets" : 1,
					"id" : "obj-23"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "the kin.looper abstraction takes a series of time tagged messages and loops them. It is connected to the global transport object (or any other named transport). The time tags are of the form [bar, beat, units]",
					"linecount" : 3,
					"fontname" : "Arial",
					"numoutlets" : 0,
					"patching_rect" : [ 8.0, 97.0, 492.0, 48.0 ],
					"fontsize" : 12.0,
					"numinlets" : 1,
					"id" : "obj-21"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"fontname" : "Arial",
					"numoutlets" : 0,
					"patching_rect" : [ 30.0, 413.0, 259.0, 20.0 ],
					"fontsize" : 12.0,
					"numinlets" : 1,
					"id" : "obj-17"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "prepend set",
					"fontname" : "Arial",
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 30.0, 376.0, 100.0, 20.0 ],
					"fontsize" : 12.0,
					"numinlets" : 1,
					"id" : "obj-15"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "1.0.0",
					"fontname" : "Arial",
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 216.0, 302.0, 50.0, 18.0 ],
					"fontsize" : 12.0,
					"numinlets" : 2,
					"id" : "obj-12"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "begin, 1 1 0 1st beat, 1 2 0 2nd beat, 1 3 0 3rd beat, 1 4 0 4rth beat, end",
					"linecount" : 4,
					"fontname" : "Arial",
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 30.0, 181.0, 141.0, 60.0 ],
					"fontsize" : 12.0,
					"numinlets" : 2,
					"id" : "obj-10"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "toggle",
					"numoutlets" : 1,
					"outlettype" : [ "int" ],
					"patching_rect" : [ 382.0, 282.0, 20.0, 20.0 ],
					"numinlets" : 1,
					"id" : "obj-6"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "timesig 4 4",
					"fontname" : "Arial",
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 415.0, 285.0, 71.0, 18.0 ],
					"fontsize" : 12.0,
					"numinlets" : 2,
					"id" : "obj-4"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "kin.looper",
					"fontname" : "Arial",
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 30.0, 327.0, 391.0, 25.0 ],
					"fontface" : 1,
					"fontsize" : 16.0,
					"numinlets" : 3,
					"id" : "obj-1"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"varname" : "autohelp_top_description[1]",
					"text" : "Kinetic toolbox - Licenced under the GPLv3 - Copyright 2009-2011 - INESC-Porto",
					"fontname" : "Arial",
					"numoutlets" : 0,
					"patching_rect" : [ 8.0, 54.0, 486.0, 20.0 ],
					"fontsize" : 11.595187,
					"numinlets" : 1,
					"id" : "obj-20"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"varname" : "autohelp_top_title",
					"text" : "kin.looper",
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
					"text" : "plays back a series of timed messages  ",
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
					"patching_rect" : [ 3.0, 2.0, 495.0, 52.0 ],
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
					"source" : [ "obj-1", 0 ],
					"destination" : [ "obj-15", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-15", 0 ],
					"destination" : [ "obj-17", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-12", 0 ],
					"destination" : [ "obj-1", 1 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-10", 0 ],
					"destination" : [ "obj-1", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-6", 0 ],
					"destination" : [ "obj-1", 2 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-4", 0 ],
					"destination" : [ "obj-1", 2 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
 ]
	}

}
