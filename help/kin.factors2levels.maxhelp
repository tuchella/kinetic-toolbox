{
	"patcher" : 	{
		"fileversion" : 1,
		"appversion" : 		{
			"major" : 5,
			"minor" : 1,
			"revision" : 9
		}
,
		"rect" : [ 960.0, 117.0, 523.0, 669.0 ],
		"bglocked" : 0,
		"defrect" : [ 960.0, 117.0, 523.0, 669.0 ],
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
					"patching_rect" : [ 10.0, 553.0, 167.0, 20.0 ],
					"fontsize" : 12.0,
					"numinlets" : 1,
					"id" : "obj-5"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "the input list of multiplication factors does not need to be prime factors. In this example of a meter with 16 pulses, it is divided 1st into 4, and then each one of these into 2 and then again into 2",
					"linecount" : 5,
					"fontname" : "Arial",
					"numoutlets" : 0,
					"patching_rect" : [ 278.0, 203.0, 240.0, 75.0 ],
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
					"patching_rect" : [ 26.0, 351.0, 76.0, 20.0 ],
					"fontsize" : 12.0,
					"numinlets" : 1,
					"id" : "obj-12"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "0 3 2 3 1 3 2 3 0 3 2 3 1 3 2 3",
					"fontname" : "Arial",
					"numoutlets" : 0,
					"bgcolor" : [ 0.8, 0.8, 0.8, 1.0 ],
					"patching_rect" : [ 26.0, 380.0, 470.0, 25.0 ],
					"fontface" : 1,
					"fontsize" : 16.0,
					"numinlets" : 1,
					"id" : "obj-13"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "16 4 2 2",
					"fontname" : "Arial",
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 278.0, 281.5, 54.0, 18.0 ],
					"fontsize" : 12.0,
					"numinlets" : 2,
					"id" : "obj-7"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "multislider",
					"numoutlets" : 2,
					"outlettype" : [ "", "" ],
					"patching_rect" : [ 10.0, 415.5, 487.0, 136.0 ],
					"setminmax" : [ 0.0, 5.0 ],
					"setstyle" : 1,
					"settype" : 0,
					"numinlets" : 1,
					"size" : 16,
					"id" : "obj-82"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "kin.factors2levels",
					"fontname" : "Arial",
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 10.0, 323.0, 145.0, 25.0 ],
					"fontface" : 1,
					"fontsize" : 16.0,
					"numinlets" : 1,
					"id" : "obj-2"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "relevant publications",
					"fontname" : "Arial",
					"numoutlets" : 0,
					"patching_rect" : [ 10.0, 584.0, 239.0, 20.0 ],
					"fontsize" : 12.0,
					"numinlets" : 1,
					"id" : "obj-6"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "Sioros, G. & Guedes, C., 2011. \"A formal approach for high-level automatic rhythm generation.\" In Proceedings of the BRIDGES 2011 – Mathematics, Music, Art, Architecture, Culture Conference. Coimbra, Portugal.",
					"linecount" : 3,
					"fontname" : "Arial",
					"numoutlets" : 0,
					"patching_rect" : [ 10.0, 605.0, 491.0, 48.0 ],
					"fontsize" : 12.0,
					"numinlets" : 1,
					"id" : "obj-4"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "Meter Information:",
					"fontname" : "Arial",
					"numoutlets" : 0,
					"patching_rect" : [ 50.0, 126.0, 134.0, 25.0 ],
					"fontsize" : 16.0,
					"numinlets" : 1,
					"id" : "obj-28"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "list of pirme numbers:",
					"fontname" : "Arial",
					"numoutlets" : 0,
					"patching_rect" : [ 40.0, 259.0, 130.0, 20.0 ],
					"fontsize" : 12.0,
					"numinlets" : 1,
					"id" : "obj-26"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"varname" : "autohelp_top_description[1]",
					"text" : "Kinetic toolbox - Licenced under the GPLv3 - Copyright 2009-2011 - INESC-Porto",
					"fontname" : "Arial",
					"numoutlets" : 0,
					"patching_rect" : [ 9.0, 55.0, 486.0, 20.0 ],
					"fontsize" : 11.595187,
					"numinlets" : 1,
					"id" : "obj-20"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "prepend set",
					"fontname" : "Arial",
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 29.0, 234.0, 76.0, 20.0 ],
					"fontsize" : 12.0,
					"numinlets" : 1,
					"id" : "obj-19"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "16 2 2 2 2",
					"fontname" : "Arial",
					"numoutlets" : 0,
					"bgcolor" : [ 0.8, 0.8, 0.8, 1.0 ],
					"patching_rect" : [ 29.0, 278.0, 184.0, 25.0 ],
					"fontface" : 1,
					"fontsize" : 16.0,
					"numinlets" : 1,
					"id" : "obj-18"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"varname" : "autohelp_top_title",
					"text" : "kin.factors2levels",
					"fontname" : "Arial",
					"numoutlets" : 0,
					"patching_rect" : [ 9.0, 4.0, 455.0, 30.0 ],
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
					"text" : "generates a list that  defines the metrical level each pulse in a meter belongs to",
					"fontname" : "Arial",
					"numoutlets" : 0,
					"patching_rect" : [ 9.0, 34.0, 485.0, 21.0 ],
					"frgb" : [ 0.93, 0.93, 0.97, 1.0 ],
					"fontsize" : 12.754705,
					"numinlets" : 1,
					"id" : "obj-9",
					"textcolor" : [ 0.93, 0.93, 0.97, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"varname" : "autohelp_top_description",
					"text" : "kin.factors2levels takes the result of kin.stratify or kin.primefactors and generates a list of the metrical levels of the pulses in the respective meter. ",
					"linecount" : 2,
					"fontname" : "Arial",
					"numoutlets" : 0,
					"patching_rect" : [ 9.0, 85.0, 482.0, 33.0 ],
					"fontsize" : 11.595187,
					"numinlets" : 1,
					"id" : "obj-10"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "number",
					"varname" : "number[3]",
					"fontname" : "Arial",
					"numoutlets" : 2,
					"minimum" : 1,
					"outlettype" : [ "int", "bang" ],
					"patching_rect" : [ 94.0, 163.0, 58.0, 23.0 ],
					"bordercolor" : [ 0.501961, 0.501961, 0.501961, 1.0 ],
					"fontsize" : 14.0,
					"numinlets" : 1,
					"id" : "obj-1",
					"textcolor" : [ 0.258824, 0.258824, 0.258824, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "/",
					"fontname" : "Arial",
					"numoutlets" : 0,
					"patching_rect" : [ 68.0, 163.0, 21.0, 23.0 ],
					"frgb" : [ 0.258824, 0.258824, 0.258824, 1.0 ],
					"fontsize" : 14.0,
					"numinlets" : 1,
					"id" : "obj-68",
					"textcolor" : [ 0.258824, 0.258824, 0.258824, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "number",
					"varname" : "number[1]",
					"fontname" : "Arial",
					"numoutlets" : 2,
					"minimum" : 1,
					"outlettype" : [ "int", "bang" ],
					"patching_rect" : [ 10.0, 163.0, 58.0, 23.0 ],
					"bordercolor" : [ 0.501961, 0.501961, 0.501961, 1.0 ],
					"fontsize" : 14.0,
					"numinlets" : 1,
					"id" : "obj-16",
					"textcolor" : [ 0.258824, 0.258824, 0.258824, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"varname" : "prime",
					"text" : "kin.stratify",
					"fontname" : "Arial",
					"numoutlets" : 2,
					"outlettype" : [ "", "" ],
					"patching_rect" : [ 10.0, 207.0, 187.0, 20.0 ],
					"fontsize" : 12.0,
					"numinlets" : 3,
					"color" : [ 0.803922, 0.843137, 0.709804, 1.0 ],
					"id" : "obj-3"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "umenu",
					"annotation" : "The stratification depth determines the grid on which midi notes are triggered similalry to the quantization grid of traditional sequencer",
					"varname" : "umenu",
					"fontname" : "Arial",
					"numoutlets" : 3,
					"outlettype" : [ "int", "", "" ],
					"patching_rect" : [ 161.0, 162.0, 67.0, 23.0 ],
					"fontsize" : 14.0,
					"items" : [ "1n", ",", "2n", ",", "4n", ",", "8n", ",", "16n", ",", "32n", ",", "64n", ",", "128n" ],
					"pattrmode" : 1,
					"types" : [  ],
					"framecolor" : [ 0.501961, 0.501961, 0.501961, 1.0 ],
					"numinlets" : 1,
					"id" : "obj-137"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "panel",
					"numoutlets" : 0,
					"bgcolor" : [ 0.666667, 0.666667, 0.666667, 0.0 ],
					"patching_rect" : [ 3.0, 123.0, 278.0, 78.0 ],
					"bordercolor" : [ 0.717647, 0.717647, 0.717647, 1.0 ],
					"border" : 3,
					"rounded" : 15,
					"numinlets" : 1,
					"id" : "obj-35"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "panel",
					"varname" : "autohelp_top_panel",
					"numoutlets" : 0,
					"patching_rect" : [ 4.0, 3.0, 495.0, 52.0 ],
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
					"source" : [ "obj-7", 0 ],
					"destination" : [ "obj-2", 0 ],
					"hidden" : 0,
					"midpoints" : [ 287.5, 310.75, 19.5, 310.75 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-2", 0 ],
					"destination" : [ "obj-12", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-12", 0 ],
					"destination" : [ "obj-13", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-2", 0 ],
					"destination" : [ "obj-82", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-3", 0 ],
					"destination" : [ "obj-2", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-3", 0 ],
					"destination" : [ "obj-19", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-137", 1 ],
					"destination" : [ "obj-3", 2 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-1", 0 ],
					"destination" : [ "obj-3", 1 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-16", 0 ],
					"destination" : [ "obj-3", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-3", 1 ],
					"destination" : [ "obj-137", 0 ],
					"hidden" : 0,
					"midpoints" : [ 187.5, 239.0, 237.0, 239.0, 237.0, 155.0, 170.5, 155.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-19", 0 ],
					"destination" : [ "obj-18", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
 ]
	}

}
