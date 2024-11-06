{
	"patcher" : 	{
		"fileversion" : 1,
		"appversion" : 		{
			"major" : 5,
			"minor" : 1,
			"revision" : 9
		}
,
		"rect" : [ 589.0, 187.0, 343.0, 106.0 ],
		"bgcolor" : [ 0.431373, 0.431373, 0.431373, 1.0 ],
		"bglocked" : 0,
		"defrect" : [ 589.0, 187.0, 343.0, 106.0 ],
		"openrect" : [ 0.0, 0.0, 0.0, 0.0 ],
		"openinpresentation" : 1,
		"default_fontsize" : 12.0,
		"default_fontface" : 0,
		"default_fontname" : "Arial",
		"gridonopen" : 0,
		"gridsize" : [ 15.0, 15.0 ],
		"gridsnaponopen" : 0,
		"toolbarvisible" : 0,
		"boxanimatetime" : 200,
		"imprint" : 0,
		"enablehscroll" : 1,
		"enablevscroll" : 1,
		"devicewidth" : 0.0,
		"title" : "kin.Transport",
		"boxes" : [ 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "tosymbol",
					"numinlets" : 1,
					"fontsize" : 12.0,
					"patching_rect" : [ 691.0, 502.0, 60.0, 20.0 ],
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"fontname" : "Arial",
					"id" : "obj-37"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "5 4",
					"numinlets" : 2,
					"fontsize" : 12.0,
					"patching_rect" : [ 657.0, 334.0, 50.0, 18.0 ],
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"fontname" : "Arial",
					"id" : "obj-7"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "loadmess 1",
					"numinlets" : 1,
					"fontsize" : 12.0,
					"patching_rect" : [ 258.0, 41.0, 76.0, 20.0 ],
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"fontname" : "Arial",
					"id" : "obj-8"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "toggle",
					"numinlets" : 1,
					"patching_rect" : [ 258.0, 85.0, 20.0, 20.0 ],
					"numoutlets" : 1,
					"outlettype" : [ "int" ],
					"id" : "obj-3"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "p",
					"numinlets" : 4,
					"fontsize" : 12.0,
					"patching_rect" : [ 770.0, 672.0, 46.0, 20.0 ],
					"numoutlets" : 2,
					"outlettype" : [ "", "" ],
					"fontname" : "Arial",
					"id" : "obj-138",
					"patcher" : 					{
						"fileversion" : 1,
						"appversion" : 						{
							"major" : 5,
							"minor" : 1,
							"revision" : 9
						}
,
						"rect" : [ 1205.0, 255.0, 707.0, 659.0 ],
						"bglocked" : 0,
						"defrect" : [ 1205.0, 255.0, 707.0, 659.0 ],
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
						"boxes" : [ 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "textcolor 0.26 0.26 0.26 1.",
									"linecount" : 2,
									"numinlets" : 2,
									"fontsize" : 12.0,
									"patching_rect" : [ 51.0, 471.0, 130.0, 32.0 ],
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"fontname" : "Arial",
									"id" : "obj-41"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "textcolor 0.78 0. 0. 1.",
									"numinlets" : 2,
									"fontsize" : 12.0,
									"patching_rect" : [ 43.0, 436.0, 123.0, 18.0 ],
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"fontname" : "Arial",
									"id" : "obj-40"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "outlet",
									"numinlets" : 1,
									"patching_rect" : [ 152.0, 537.0, 25.0, 25.0 ],
									"numoutlets" : 0,
									"id" : "obj-2",
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "togedge",
									"numinlets" : 1,
									"fontsize" : 12.0,
									"patching_rect" : [ 425.0, 297.0, 55.0, 20.0 ],
									"numoutlets" : 2,
									"outlettype" : [ "bang", "bang" ],
									"fontname" : "Arial",
									"id" : "obj-38"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "b 2",
									"numinlets" : 1,
									"fontsize" : 12.0,
									"patching_rect" : [ 213.0, 376.0, 100.0, 20.0 ],
									"numoutlets" : 2,
									"outlettype" : [ "bang", "bang" ],
									"fontname" : "Arial",
									"id" : "obj-36"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "apply changes when a new bar begins",
									"linecount" : 2,
									"numinlets" : 1,
									"fontsize" : 12.0,
									"patching_rect" : [ 559.0, 300.0, 155.0, 34.0 ],
									"numoutlets" : 0,
									"fontname" : "Arial",
									"id" : "obj-35"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "*",
									"numinlets" : 2,
									"fontsize" : 12.0,
									"patching_rect" : [ 499.0, 278.0, 64.0, 20.0 ],
									"numoutlets" : 1,
									"outlettype" : [ "int" ],
									"fontname" : "Arial",
									"id" : "obj-33"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "> 0",
									"numinlets" : 2,
									"fontsize" : 12.0,
									"patching_rect" : [ 544.0, 252.0, 32.5, 20.0 ],
									"numoutlets" : 1,
									"outlettype" : [ "int" ],
									"fontname" : "Arial",
									"id" : "obj-30"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "togedge",
									"numinlets" : 1,
									"fontsize" : 12.0,
									"patching_rect" : [ 499.0, 304.0, 55.0, 20.0 ],
									"numoutlets" : 2,
									"outlettype" : [ "bang", "bang" ],
									"fontname" : "Arial",
									"id" : "obj-29"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "< 0",
									"numinlets" : 2,
									"fontsize" : 12.0,
									"patching_rect" : [ 499.0, 251.0, 32.5, 20.0 ],
									"numoutlets" : 1,
									"outlettype" : [ "int" ],
									"fontname" : "Arial",
									"id" : "obj-28"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "-",
									"numinlets" : 2,
									"fontsize" : 12.0,
									"patching_rect" : [ 544.0, 218.0, 32.5, 20.0 ],
									"numoutlets" : 1,
									"outlettype" : [ "int" ],
									"fontname" : "Arial",
									"id" : "obj-26"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "t i i",
									"numinlets" : 1,
									"fontsize" : 12.0,
									"patching_rect" : [ 545.0, 187.0, 32.5, 20.0 ],
									"numoutlets" : 2,
									"outlettype" : [ "int", "int" ],
									"fontname" : "Arial",
									"id" : "obj-27"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "-",
									"numinlets" : 2,
									"fontsize" : 12.0,
									"patching_rect" : [ 499.0, 218.0, 32.5, 20.0 ],
									"numoutlets" : 1,
									"outlettype" : [ "int" ],
									"fontname" : "Arial",
									"id" : "obj-25"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "t i i",
									"numinlets" : 1,
									"fontsize" : 12.0,
									"patching_rect" : [ 500.0, 187.0, 32.5, 20.0 ],
									"numoutlets" : 2,
									"outlettype" : [ "int", "int" ],
									"fontname" : "Arial",
									"id" : "obj-24"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "store changes instead of directly aplying them ",
									"linecount" : 2,
									"numinlets" : 1,
									"fontsize" : 12.0,
									"patching_rect" : [ 289.0, 409.0, 150.0, 34.0 ],
									"numoutlets" : 0,
									"fontname" : "Arial",
									"id" : "obj-23"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "if the input is equal to the transport time signature clear all scheduled changes",
									"linecount" : 4,
									"numinlets" : 1,
									"fontsize" : 12.0,
									"patching_rect" : [ 333.0, 202.0, 150.0, 62.0 ],
									"numoutlets" : 0,
									"fontname" : "Arial",
									"id" : "obj-21"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"varname" : "TimeSigChanges",
									"text" : "zl reg",
									"numinlets" : 2,
									"fontsize" : 12.0,
									"patching_rect" : [ 213.0, 439.0, 65.0, 20.0 ],
									"numoutlets" : 2,
									"outlettype" : [ "", "" ],
									"fontname" : "Arial",
									"id" : "obj-19"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "zlclear",
									"numinlets" : 2,
									"fontsize" : 12.0,
									"patching_rect" : [ 213.0, 409.0, 50.0, 18.0 ],
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"fontname" : "Arial",
									"id" : "obj-18"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "loadbang",
									"numinlets" : 1,
									"fontsize" : 12.0,
									"patching_rect" : [ 566.0, 50.0, 100.0, 20.0 ],
									"numoutlets" : 1,
									"outlettype" : [ "bang" ],
									"fontname" : "Arial",
									"id" : "obj-16"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "1.0.0",
									"numinlets" : 2,
									"fontsize" : 12.0,
									"patching_rect" : [ 566.25, 81.0, 50.0, 18.0 ],
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"fontname" : "Arial",
									"id" : "obj-37"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "translate @in bars.beats.units @out ticks",
									"numinlets" : 1,
									"fontsize" : 12.0,
									"patching_rect" : [ 566.25, 107.0, 235.0, 20.0 ],
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"fontname" : "Arial",
									"id" : "obj-59"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "%",
									"numinlets" : 2,
									"fontsize" : 12.0,
									"patching_rect" : [ 500.25, 138.0, 85.0, 20.0 ],
									"numoutlets" : 1,
									"outlettype" : [ "int" ],
									"fontname" : "Arial",
									"id" : "obj-44"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "inlet",
									"numinlets" : 0,
									"patching_rect" : [ 500.0, 60.0, 25.0, 25.0 ],
									"numoutlets" : 1,
									"outlettype" : [ "float" ],
									"id" : "obj-15",
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "sel 0 1",
									"numinlets" : 1,
									"fontsize" : 12.0,
									"patching_rect" : [ 258.0, 196.0, 47.0, 20.0 ],
									"numoutlets" : 3,
									"outlettype" : [ "bang", "bang", "" ],
									"fontname" : "Arial",
									"id" : "obj-14"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "t l l",
									"numinlets" : 1,
									"fontsize" : 12.0,
									"patching_rect" : [ 258.0, 133.0, 62.0, 20.0 ],
									"numoutlets" : 2,
									"outlettype" : [ "", "" ],
									"fontname" : "Arial",
									"id" : "obj-13"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "zl reg",
									"numinlets" : 2,
									"fontsize" : 12.0,
									"patching_rect" : [ 258.0, 257.0, 62.0, 20.0 ],
									"numoutlets" : 2,
									"outlettype" : [ "", "" ],
									"fontname" : "Arial",
									"id" : "obj-10"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "first check if it is changed and ignore if there are no changes ",
									"linecount" : 3,
									"numinlets" : 1,
									"fontsize" : 12.0,
									"patching_rect" : [ 323.0, 111.0, 150.0, 48.0 ],
									"numoutlets" : 0,
									"fontname" : "Arial",
									"id" : "obj-3"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "zl compare",
									"numinlets" : 2,
									"fontsize" : 12.0,
									"patching_rect" : [ 258.0, 166.0, 133.0, 20.0 ],
									"numoutlets" : 2,
									"outlettype" : [ "", "" ],
									"fontname" : "Arial",
									"id" : "obj-12"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "when the transport is inactive then make all changes like normaly",
									"linecount" : 6,
									"numinlets" : 1,
									"fontsize" : 12.0,
									"patching_rect" : [ 80.0, 140.0, 98.0, 89.0 ],
									"numoutlets" : 0,
									"fontname" : "Arial",
									"id" : "obj-11"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "+ 1",
									"numinlets" : 2,
									"fontsize" : 12.0,
									"patching_rect" : [ 427.0, 60.0, 32.5, 20.0 ],
									"numoutlets" : 1,
									"outlettype" : [ "int" ],
									"fontname" : "Arial",
									"id" : "obj-9"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "gate 2",
									"numinlets" : 2,
									"fontsize" : 12.0,
									"patching_rect" : [ 173.0, 105.0, 44.0, 20.0 ],
									"numoutlets" : 2,
									"outlettype" : [ "", "" ],
									"fontname" : "Arial",
									"id" : "obj-8"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "inlet",
									"numinlets" : 0,
									"patching_rect" : [ 427.0, 18.0, 25.0, 25.0 ],
									"numoutlets" : 1,
									"outlettype" : [ "int" ],
									"id" : "obj-6",
									"comment" : "tratsport state (active?)"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "inlet",
									"numinlets" : 0,
									"patching_rect" : [ 198.0, 56.0, 25.0, 25.0 ],
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"id" : "obj-5",
									"comment" : "UI Time Signature"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "inlet",
									"numinlets" : 0,
									"patching_rect" : [ 313.0, 57.0, 25.0, 25.0 ],
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"id" : "obj-4",
									"comment" : "Trasports Time Signature"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "outlet",
									"numinlets" : 1,
									"patching_rect" : [ 213.0, 529.0, 25.0, 25.0 ],
									"numoutlets" : 0,
									"id" : "obj-1",
									"comment" : "To Transport"
								}

							}
 ],
						"lines" : [ 							{
								"patchline" : 								{
									"source" : [ "obj-41", 0 ],
									"destination" : [ "obj-2", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-40", 0 ],
									"destination" : [ "obj-2", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-14", 0 ],
									"destination" : [ "obj-40", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-14", 1 ],
									"destination" : [ "obj-41", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-36", 0 ],
									"destination" : [ "obj-41", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-38", 1 ],
									"destination" : [ "obj-36", 0 ],
									"hidden" : 0,
									"color" : [ 1.0, 0.0, 0.0, 1.0 ],
									"midpoints" : [ 470.5, 361.0, 222.5, 361.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-6", 0 ],
									"destination" : [ "obj-38", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-19", 0 ],
									"destination" : [ "obj-1", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-29", 0 ],
									"destination" : [ "obj-36", 0 ],
									"hidden" : 0,
									"color" : [ 1.0, 0.0, 0.0, 1.0 ],
									"midpoints" : [ 508.5, 360.5, 222.5, 360.5 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-36", 1 ],
									"destination" : [ "obj-19", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-36", 0 ],
									"destination" : [ "obj-18", 0 ],
									"hidden" : 0,
									"color" : [ 1.0, 0.0, 0.0, 1.0 ],
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-33", 0 ],
									"destination" : [ "obj-29", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-30", 0 ],
									"destination" : [ "obj-33", 1 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-28", 0 ],
									"destination" : [ "obj-33", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-26", 0 ],
									"destination" : [ "obj-30", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-25", 0 ],
									"destination" : [ "obj-28", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-15", 0 ],
									"destination" : [ "obj-27", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-27", 0 ],
									"destination" : [ "obj-26", 1 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-27", 1 ],
									"destination" : [ "obj-26", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-24", 1 ],
									"destination" : [ "obj-25", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-24", 0 ],
									"destination" : [ "obj-25", 1 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-44", 0 ],
									"destination" : [ "obj-24", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-18", 0 ],
									"destination" : [ "obj-19", 0 ],
									"hidden" : 0,
									"color" : [ 1.0, 0.0, 0.0, 1.0 ],
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-10", 0 ],
									"destination" : [ "obj-19", 1 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-14", 1 ],
									"destination" : [ "obj-18", 0 ],
									"hidden" : 0,
									"color" : [ 1.0, 0.0, 0.0, 1.0 ],
									"midpoints" : [ 281.5, 401.0, 222.5, 401.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-12", 0 ],
									"destination" : [ "obj-14", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-14", 0 ],
									"destination" : [ "obj-10", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-15", 0 ],
									"destination" : [ "obj-44", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-59", 0 ],
									"destination" : [ "obj-44", 1 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-37", 0 ],
									"destination" : [ "obj-59", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-16", 0 ],
									"destination" : [ "obj-37", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-13", 1 ],
									"destination" : [ "obj-10", 1 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-13", 0 ],
									"destination" : [ "obj-12", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-8", 1 ],
									"destination" : [ "obj-13", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-4", 0 ],
									"destination" : [ "obj-12", 1 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-8", 0 ],
									"destination" : [ "obj-1", 0 ],
									"hidden" : 0,
									"midpoints" : [ 182.5, 516.0, 222.5, 516.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-5", 0 ],
									"destination" : [ "obj-8", 1 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-9", 0 ],
									"destination" : [ "obj-8", 0 ],
									"hidden" : 0,
									"midpoints" : [ 436.5, 91.0, 182.5, 91.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-6", 0 ],
									"destination" : [ "obj-9", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
 ]
					}
,
					"saved_object_attributes" : 					{
						"globalpatchername" : "",
						"fontface" : 0,
						"default_fontface" : 0,
						"fontsize" : 12.0,
						"default_fontname" : "Arial",
						"default_fontsize" : 12.0,
						"fontname" : "Arial"
					}

				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "get the state of the transport on every tick regardless if it is running or not",
					"linecount" : 4,
					"numinlets" : 1,
					"fontsize" : 12.0,
					"patching_rect" : [ 282.0, 65.0, 150.0, 62.0 ],
					"numoutlets" : 0,
					"fontname" : "Arial",
					"id" : "obj-133"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "loadmess 128n",
					"numinlets" : 1,
					"fontsize" : 12.0,
					"patching_rect" : [ 449.0, 63.0, 97.0, 20.0 ],
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"fontname" : "Arial",
					"id" : "obj-125"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "translate @in notevalues @out ms",
					"linecount" : 2,
					"numinlets" : 1,
					"fontsize" : 12.0,
					"patching_rect" : [ 449.25, 93.0, 168.0, 34.0 ],
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"fontname" : "Arial",
					"id" : "obj-130"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "metro @interval 1 ms",
					"numinlets" : 2,
					"fontsize" : 13.0,
					"patching_rect" : [ 274.25, 132.0, 194.0, 21.0 ],
					"numoutlets" : 1,
					"outlettype" : [ "bang" ],
					"fontname" : "Arial",
					"id" : "obj-131"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "round",
					"numinlets" : 2,
					"fontsize" : 9.0,
					"patching_rect" : [ 675.0, 153.0, 34.0, 17.0 ],
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"fontname" : "Arial",
					"id" : "obj-47",
					"color" : [ 0.7, 0.7, 0.7, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "button",
					"numinlets" : 1,
					"patching_rect" : [ 675.0, 57.0, 18.0, 18.0 ],
					"numoutlets" : 1,
					"outlettype" : [ "bang" ],
					"id" : "obj-77"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "textbutton",
					"hint" : "Click to set tempo",
					"numinlets" : 1,
					"fontface" : 1,
					"fontsize" : 10.0,
					"patching_rect" : [ 675.0, 33.0, 59.0, 20.0 ],
					"bgovercolor" : [ 0.568627, 0.568627, 0.690196, 0.74902 ],
					"presentation" : 1,
					"texton" : "",
					"numoutlets" : 3,
					"bgoveroncolor" : [ 1.0, 0.031373, 0.031373, 0.501961 ],
					"outlettype" : [ "", "", "int" ],
					"rounded" : 10.0,
					"bordercolor" : [ 0.788235, 0.788235, 0.858824, 0.0 ],
					"bgoncolor" : [ 0.27451, 0.258824, 0.415686, 1.0 ],
					"text" : "Tap",
					"fontname" : "Arial",
					"borderoncolor" : [ 1.0, 0.666667, 0.666667, 0.698039 ],
					"id" : "obj-69",
					"textoveroncolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"textcolor" : [ 0.258824, 0.258824, 0.258824, 1.0 ],
					"presentation_rect" : [ 145.0, 50.0, 28.0, 20.0 ],
					"outputmode" : 0,
					"bgcolor" : [ 1.0, 1.0, 1.0, 0.74902 ],
					"textovercolor" : [ 1.0, 1.0, 1.0, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "tap tempo",
					"numinlets" : 1,
					"fontsize" : 10.435669,
					"patching_rect" : [ 676.0, 11.0, 57.0, 18.0 ],
					"numoutlets" : 0,
					"fontname" : "Arial",
					"id" : "obj-86"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "if $f1>=30 then $f1",
					"numinlets" : 1,
					"fontsize" : 10.0,
					"patching_rect" : [ 675.0, 131.0, 98.0, 18.0 ],
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"fontname" : "Arial",
					"id" : "obj-78",
					"color" : [ 0.7, 0.7, 0.7, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "!/ 60000.",
					"numinlets" : 2,
					"fontsize" : 10.0,
					"patching_rect" : [ 675.0, 109.0, 50.0, 18.0 ],
					"numoutlets" : 1,
					"outlettype" : [ "float" ],
					"fontname" : "Arial",
					"id" : "obj-71",
					"color" : [ 0.7, 0.7, 0.7, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "timer",
					"numinlets" : 2,
					"fontsize" : 10.0,
					"patching_rect" : [ 675.0, 87.0, 33.0, 18.0 ],
					"numoutlets" : 2,
					"outlettype" : [ "float", "" ],
					"fontname" : "Arial",
					"id" : "obj-68",
					"color" : [ 0.7, 0.7, 0.7, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "toggle",
					"prototypename" : "Arial9",
					"numinlets" : 1,
					"patching_rect" : [ 137.0, 44.0, 18.0, 18.0 ],
					"hidden" : 1,
					"presentation" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "int" ],
					"id" : "obj-58",
					"presentation_rect" : [ 76.0, 5.0, 18.0, 18.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "NoFloat",
					"numinlets" : 1,
					"fontsize" : 12.754706,
					"patching_rect" : [ 126.0, 19.0, 56.0, 21.0 ],
					"hidden" : 1,
					"presentation" : 1,
					"numoutlets" : 0,
					"frgb" : [ 1.0, 0.501961, 0.0, 1.0 ],
					"fontname" : "Arial Bold Italic",
					"id" : "obj-61",
					"textcolor" : [ 1.0, 0.501961, 0.0, 1.0 ],
					"presentation_rect" : [ 96.0, 4.0, 56.0, 21.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "toggle",
					"prototypename" : "Arial9",
					"numinlets" : 1,
					"patching_rect" : [ 100.0, 44.0, 18.0, 18.0 ],
					"hidden" : 1,
					"presentation" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "int" ],
					"id" : "obj-117",
					"presentation_rect" : [ 15.0, 5.0, 18.0, 18.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "View",
					"numinlets" : 1,
					"fontsize" : 12.754706,
					"patching_rect" : [ 89.0, 19.0, 41.0, 21.0 ],
					"hidden" : 1,
					"presentation" : 1,
					"numoutlets" : 0,
					"frgb" : [ 1.0, 0.501961, 0.0, 1.0 ],
					"fontname" : "Arial Bold Italic",
					"id" : "obj-115",
					"textcolor" : [ 1.0, 0.501961, 0.0, 1.0 ],
					"presentation_rect" : [ 34.0, 4.0, 41.0, 21.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "onecopy",
					"numinlets" : 1,
					"fontsize" : 10.435669,
					"patching_rect" : [ 100.0, 111.0, 50.0, 18.0 ],
					"numoutlets" : 0,
					"fontname" : "Arial",
					"id" : "obj-62",
					"color" : [ 0.7, 0.7, 0.7, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "thispatcher",
					"numinlets" : 1,
					"fontsize" : 10.435669,
					"patching_rect" : [ 100.0, 90.0, 62.0, 18.0 ],
					"numoutlets" : 2,
					"outlettype" : [ "", "" ],
					"fontname" : "Arial",
					"id" : "obj-142",
					"color" : [ 0.7, 0.7, 0.7, 1.0 ],
					"save" : [ "#N", "thispatcher", ";", "#Q", "window", "flags", "nogrow", "close", "nozoom", "float", "menu", "minimize", ";", "#Q", "window", "constrain", 50, 50, 32768, 32768, ";", "#Q", "window", "size", 589, 187, 932, 293, ";", "#Q", "window", "title", ";", "#Q", "window", "exec", ";", "#Q", "savewindow", 1, ";", "#Q", "end", ";" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "p View",
					"numinlets" : 2,
					"fontsize" : 11.595187,
					"patching_rect" : [ 100.0, 66.0, 56.0, 20.0 ],
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"fontname" : "Arial",
					"id" : "obj-140",
					"color" : [ 0.7, 0.7, 0.7, 1.0 ],
					"patcher" : 					{
						"fileversion" : 1,
						"appversion" : 						{
							"major" : 5,
							"minor" : 1,
							"revision" : 9
						}
,
						"rect" : [ 99.0, 232.0, 657.0, 488.0 ],
						"bglocked" : 0,
						"defrect" : [ 99.0, 232.0, 657.0, 488.0 ],
						"openrect" : [ 0.0, 0.0, 0.0, 0.0 ],
						"openinpresentation" : 0,
						"default_fontsize" : 9.0,
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
						"boxes" : [ 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "t l",
									"numinlets" : 1,
									"fontsize" : 10.435669,
									"patching_rect" : [ 466.0, 378.0, 19.0, 18.0 ],
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"fontname" : "Arial",
									"id" : "obj-13"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "inlet",
									"prototypename" : "Arial9",
									"numinlets" : 0,
									"patching_rect" : [ 466.0, 257.0, 18.0, 18.0 ],
									"numoutlets" : 1,
									"outlettype" : [ "int" ],
									"id" : "obj-5",
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "toggle",
									"prototypename" : "Arial9",
									"numinlets" : 1,
									"patching_rect" : [ 466.0, 279.0, 18.0, 18.0 ],
									"numoutlets" : 1,
									"outlettype" : [ "int" ],
									"id" : "obj-6"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "sel 1 0",
									"numinlets" : 1,
									"fontsize" : 10.435669,
									"patching_rect" : [ 466.0, 301.0, 46.0, 18.0 ],
									"numoutlets" : 3,
									"outlettype" : [ "bang", "bang", "" ],
									"fontname" : "Arial",
									"id" : "obj-8"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "savewindow 1",
									"numinlets" : 2,
									"fontsize" : 10.435669,
									"patching_rect" : [ 362.0, 428.0, 76.0, 16.0 ],
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"fontname" : "Arial",
									"id" : "obj-1"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "qlim",
									"numinlets" : 2,
									"fontsize" : 10.435669,
									"patching_rect" : [ 43.0, 301.0, 32.5, 18.0 ],
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"fontname" : "Arial",
									"id" : "obj-63"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "qlim",
									"numinlets" : 2,
									"fontsize" : 10.435669,
									"patching_rect" : [ 283.0, 301.0, 32.5, 18.0 ],
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"fontname" : "Arial",
									"id" : "obj-62"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "t l",
									"numinlets" : 1,
									"fontsize" : 10.435669,
									"patching_rect" : [ 43.0, 378.0, 19.0, 18.0 ],
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"fontname" : "Arial",
									"id" : "obj-37"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "window flags nofloat, window exec",
									"numinlets" : 2,
									"fontsize" : 10.435669,
									"patching_rect" : [ 466.0, 323.0, 170.0, 16.0 ],
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"fontname" : "Arial",
									"id" : "obj-38"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "window exec",
									"numinlets" : 2,
									"fontsize" : 10.435669,
									"patching_rect" : [ 43.0, 323.0, 70.0, 16.0 ],
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"fontname" : "Arial",
									"id" : "obj-39"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "t b l b",
									"numinlets" : 1,
									"fontsize" : 10.435669,
									"patching_rect" : [ 43.0, 279.0, 46.0, 18.0 ],
									"numoutlets" : 3,
									"outlettype" : [ "bang", "", "bang" ],
									"fontname" : "Arial",
									"id" : "obj-40"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "window flags grow, window flags zoom",
									"linecount" : 2,
									"numinlets" : 2,
									"fontsize" : 10.435669,
									"patching_rect" : [ 70.0, 343.0, 100.0, 28.0 ],
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"fontname" : "Arial",
									"id" : "obj-42"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "prepend window size",
									"numinlets" : 1,
									"fontsize" : 10.435669,
									"patching_rect" : [ 43.0, 257.0, 108.0, 18.0 ],
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"fontname" : "Arial",
									"id" : "obj-43"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "Ymax",
									"numinlets" : 1,
									"fontsize" : 10.435669,
									"patching_rect" : [ 208.0, 186.0, 37.0, 18.0 ],
									"numoutlets" : 0,
									"fontname" : "Arial",
									"id" : "obj-45"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "Xmax",
									"numinlets" : 1,
									"fontsize" : 10.435669,
									"patching_rect" : [ 157.0, 186.0, 37.0, 18.0 ],
									"numoutlets" : 0,
									"fontname" : "Arial",
									"id" : "obj-46"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "Ymin",
									"numinlets" : 1,
									"fontsize" : 10.435669,
									"patching_rect" : [ 105.0, 186.0, 34.0, 18.0 ],
									"numoutlets" : 0,
									"fontname" : "Arial",
									"id" : "obj-47"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "Xmin",
									"numinlets" : 1,
									"fontsize" : 10.435669,
									"patching_rect" : [ 54.0, 186.0, 34.0, 18.0 ],
									"numoutlets" : 0,
									"fontname" : "Arial",
									"id" : "obj-48"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "pref.",
									"numinlets" : 1,
									"fontsize" : 10.435669,
									"patching_rect" : [ 180.0, 147.0, 31.0, 18.0 ],
									"numoutlets" : 0,
									"fontname" : "Arial",
									"id" : "obj-49"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "unpack 0 0 0 0",
									"numinlets" : 1,
									"fontsize" : 10.435669,
									"patching_rect" : [ 43.0, 167.0, 173.0, 18.0 ],
									"numoutlets" : 4,
									"outlettype" : [ "int", "int", "int", "int" ],
									"fontname" : "Arial",
									"id" : "obj-51"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "25 50 1000 600",
									"numinlets" : 2,
									"fontsize" : 10.435669,
									"patching_rect" : [ 43.0, 147.0, 83.0, 16.0 ],
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"fontname" : "Arial",
									"id" : "obj-52"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "number",
									"numinlets" : 1,
									"fontsize" : 10.435669,
									"patching_rect" : [ 197.0, 205.0, 50.0, 18.0 ],
									"numoutlets" : 2,
									"outlettype" : [ "int", "bang" ],
									"fontname" : "Arial",
									"id" : "obj-53"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "number",
									"numinlets" : 1,
									"fontsize" : 10.435669,
									"patching_rect" : [ 146.0, 205.0, 50.0, 18.0 ],
									"numoutlets" : 2,
									"outlettype" : [ "int", "bang" ],
									"fontname" : "Arial",
									"id" : "obj-54"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "pak 0 0 0 0",
									"numinlets" : 4,
									"fontsize" : 10.435669,
									"patching_rect" : [ 43.0, 227.0, 173.0, 18.0 ],
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"fontname" : "Arial",
									"id" : "obj-55"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "number",
									"numinlets" : 1,
									"fontsize" : 10.435669,
									"patching_rect" : [ 94.0, 205.0, 51.0, 18.0 ],
									"numoutlets" : 2,
									"outlettype" : [ "int", "bang" ],
									"fontname" : "Arial",
									"id" : "obj-56"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "number",
									"numinlets" : 1,
									"fontsize" : 10.435669,
									"patching_rect" : [ 43.0, 205.0, 50.0, 18.0 ],
									"numoutlets" : 2,
									"outlettype" : [ "int", "bang" ],
									"fontname" : "Arial",
									"id" : "obj-57"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "t l",
									"numinlets" : 1,
									"fontsize" : 10.435669,
									"patching_rect" : [ 283.0, 378.0, 19.0, 18.0 ],
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"fontname" : "Arial",
									"id" : "obj-35"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "window flags float, window exec",
									"numinlets" : 2,
									"fontsize" : 10.435669,
									"patching_rect" : [ 480.0, 343.0, 158.0, 16.0 ],
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"fontname" : "Arial",
									"id" : "obj-32"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "window exec",
									"numinlets" : 2,
									"fontsize" : 10.435669,
									"patching_rect" : [ 283.0, 323.0, 70.0, 16.0 ],
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"fontname" : "Arial",
									"id" : "obj-31"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "t b l b",
									"numinlets" : 1,
									"fontsize" : 10.435669,
									"patching_rect" : [ 283.0, 279.0, 46.0, 18.0 ],
									"numoutlets" : 3,
									"outlettype" : [ "bang", "", "bang" ],
									"fontname" : "Arial",
									"id" : "obj-30"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "window flags nogrow, window flags nozoom",
									"linecount" : 2,
									"numinlets" : 2,
									"fontsize" : 10.435669,
									"patching_rect" : [ 310.0, 343.0, 113.0, 28.0 ],
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"fontname" : "Arial",
									"id" : "obj-29"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "prepend window size",
									"numinlets" : 1,
									"fontsize" : 10.435669,
									"patching_rect" : [ 283.0, 257.0, 108.0, 18.0 ],
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"fontname" : "Arial",
									"id" : "obj-28"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "Ymax",
									"numinlets" : 1,
									"fontsize" : 10.435669,
									"patching_rect" : [ 448.0, 186.0, 37.0, 18.0 ],
									"numoutlets" : 0,
									"fontname" : "Arial",
									"id" : "obj-27"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "Xmax",
									"numinlets" : 1,
									"fontsize" : 10.435669,
									"patching_rect" : [ 397.0, 186.0, 37.0, 18.0 ],
									"numoutlets" : 0,
									"fontname" : "Arial",
									"id" : "obj-26"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "Ymin",
									"numinlets" : 1,
									"fontsize" : 10.435669,
									"patching_rect" : [ 345.0, 186.0, 34.0, 18.0 ],
									"numoutlets" : 0,
									"fontname" : "Arial",
									"id" : "obj-23"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "Xmin",
									"numinlets" : 1,
									"fontsize" : 10.435669,
									"patching_rect" : [ 294.0, 186.0, 34.0, 18.0 ],
									"numoutlets" : 0,
									"fontname" : "Arial",
									"id" : "obj-22"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "pref.",
									"numinlets" : 1,
									"fontsize" : 10.435669,
									"patching_rect" : [ 411.0, 147.0, 31.0, 18.0 ],
									"numoutlets" : 0,
									"fontname" : "Arial",
									"id" : "obj-20"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "unpack 0 0 0 0",
									"numinlets" : 1,
									"fontsize" : 10.435669,
									"patching_rect" : [ 283.0, 167.0, 173.0, 18.0 ],
									"numoutlets" : 4,
									"outlettype" : [ "int", "int", "int", "int" ],
									"fontname" : "Arial",
									"id" : "obj-18"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "465 50 808 156",
									"numinlets" : 2,
									"fontsize" : 10.435669,
									"patching_rect" : [ 283.0, 147.0, 127.0, 16.0 ],
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"fontname" : "Arial",
									"id" : "obj-16"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "number",
									"numinlets" : 1,
									"fontsize" : 10.435669,
									"patching_rect" : [ 437.0, 205.0, 50.0, 18.0 ],
									"numoutlets" : 2,
									"outlettype" : [ "int", "bang" ],
									"fontname" : "Arial",
									"id" : "obj-12"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "number",
									"numinlets" : 1,
									"fontsize" : 10.435669,
									"patching_rect" : [ 386.0, 205.0, 50.0, 18.0 ],
									"numoutlets" : 2,
									"outlettype" : [ "int", "bang" ],
									"fontname" : "Arial",
									"id" : "obj-15"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "pak 0 0 0 0",
									"numinlets" : 4,
									"fontsize" : 10.435669,
									"patching_rect" : [ 283.0, 227.0, 173.0, 18.0 ],
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"fontname" : "Arial",
									"id" : "obj-7"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "number",
									"numinlets" : 1,
									"fontsize" : 10.435669,
									"patching_rect" : [ 334.0, 205.0, 51.0, 18.0 ],
									"numoutlets" : 2,
									"outlettype" : [ "int", "bang" ],
									"fontname" : "Arial",
									"id" : "obj-4"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "number",
									"numinlets" : 1,
									"fontsize" : 10.435669,
									"patching_rect" : [ 283.0, 205.0, 50.0, 18.0 ],
									"numoutlets" : 2,
									"outlettype" : [ "int", "bang" ],
									"fontname" : "Arial",
									"id" : "obj-3"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "view",
									"numinlets" : 1,
									"fontsize" : 10.435669,
									"patching_rect" : [ 284.0, 69.0, 31.0, 18.0 ],
									"numoutlets" : 0,
									"fontname" : "Arial",
									"id" : "obj-11"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "presentation $1",
									"numinlets" : 2,
									"fontsize" : 10.435669,
									"patching_rect" : [ 250.0, 90.0, 82.0, 16.0 ],
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"fontname" : "Arial",
									"id" : "obj-10"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "== 0",
									"numinlets" : 2,
									"fontsize" : 10.435669,
									"patching_rect" : [ 250.0, 69.0, 32.5, 18.0 ],
									"numoutlets" : 1,
									"outlettype" : [ "int" ],
									"fontname" : "Arial",
									"id" : "obj-9"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "inlet",
									"prototypename" : "Arial9",
									"numinlets" : 0,
									"patching_rect" : [ 153.0, 17.0, 18.0, 18.0 ],
									"numoutlets" : 1,
									"outlettype" : [ "int" ],
									"id" : "obj-44",
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "toggle",
									"prototypename" : "Arial9",
									"numinlets" : 1,
									"patching_rect" : [ 153.0, 52.0, 18.0, 18.0 ],
									"numoutlets" : 1,
									"outlettype" : [ "int" ],
									"id" : "obj-41"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "sel 1 0",
									"numinlets" : 1,
									"fontsize" : 10.435669,
									"patching_rect" : [ 153.0, 74.0, 46.0, 18.0 ],
									"numoutlets" : 3,
									"outlettype" : [ "bang", "bang", "" ],
									"fontname" : "Arial",
									"id" : "obj-25"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "outlet",
									"prototypename" : "Arial9",
									"numinlets" : 1,
									"patching_rect" : [ 250.0, 443.0, 18.0, 18.0 ],
									"numoutlets" : 0,
									"id" : "obj-21",
									"comment" : ""
								}

							}
 ],
						"lines" : [ 							{
								"patchline" : 								{
									"source" : [ "obj-13", 0 ],
									"destination" : [ "obj-21", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-32", 0 ],
									"destination" : [ "obj-13", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-38", 0 ],
									"destination" : [ "obj-13", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-8", 1 ],
									"destination" : [ "obj-32", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-40", 1 ],
									"destination" : [ "obj-37", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-43", 0 ],
									"destination" : [ "obj-40", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-40", 0 ],
									"destination" : [ "obj-63", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-8", 0 ],
									"destination" : [ "obj-38", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-6", 0 ],
									"destination" : [ "obj-8", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-5", 0 ],
									"destination" : [ "obj-6", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-28", 0 ],
									"destination" : [ "obj-30", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-30", 1 ],
									"destination" : [ "obj-35", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-30", 0 ],
									"destination" : [ "obj-62", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-1", 0 ],
									"destination" : [ "obj-21", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-25", 1 ],
									"destination" : [ "obj-16", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-25", 0 ],
									"destination" : [ "obj-52", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-63", 0 ],
									"destination" : [ "obj-39", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-62", 0 ],
									"destination" : [ "obj-31", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-7", 0 ],
									"destination" : [ "obj-28", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-55", 0 ],
									"destination" : [ "obj-43", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-37", 0 ],
									"destination" : [ "obj-21", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-57", 0 ],
									"destination" : [ "obj-55", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-56", 0 ],
									"destination" : [ "obj-55", 1 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-54", 0 ],
									"destination" : [ "obj-55", 2 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-53", 0 ],
									"destination" : [ "obj-55", 3 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-51", 0 ],
									"destination" : [ "obj-57", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-51", 1 ],
									"destination" : [ "obj-56", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-51", 2 ],
									"destination" : [ "obj-54", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-51", 3 ],
									"destination" : [ "obj-53", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-52", 0 ],
									"destination" : [ "obj-51", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-55", 0 ],
									"destination" : [ "obj-52", 1 ],
									"hidden" : 0,
									"midpoints" : [ 52.5, 251.0, 34.0, 251.0, 34.0, 139.0, 116.5, 139.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-39", 0 ],
									"destination" : [ "obj-37", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-35", 0 ],
									"destination" : [ "obj-21", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-31", 0 ],
									"destination" : [ "obj-35", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-7", 0 ],
									"destination" : [ "obj-16", 1 ],
									"hidden" : 0,
									"midpoints" : [ 292.5, 251.0, 274.0, 251.0, 274.0, 139.0, 400.5, 139.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-16", 0 ],
									"destination" : [ "obj-18", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-18", 3 ],
									"destination" : [ "obj-12", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-18", 2 ],
									"destination" : [ "obj-15", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-18", 1 ],
									"destination" : [ "obj-4", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-18", 0 ],
									"destination" : [ "obj-3", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-12", 0 ],
									"destination" : [ "obj-7", 3 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-15", 0 ],
									"destination" : [ "obj-7", 2 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-4", 0 ],
									"destination" : [ "obj-7", 1 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-3", 0 ],
									"destination" : [ "obj-7", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-10", 0 ],
									"destination" : [ "obj-21", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-9", 0 ],
									"destination" : [ "obj-10", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-41", 0 ],
									"destination" : [ "obj-9", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-44", 0 ],
									"destination" : [ "obj-41", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-41", 0 ],
									"destination" : [ "obj-25", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-42", 0 ],
									"destination" : [ "obj-37", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-40", 2 ],
									"destination" : [ "obj-42", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-29", 0 ],
									"destination" : [ "obj-35", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-30", 2 ],
									"destination" : [ "obj-29", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
 ]
					}
,
					"saved_object_attributes" : 					{
						"globalpatchername" : "",
						"fontface" : 0,
						"default_fontface" : 0,
						"fontsize" : 9.0,
						"default_fontname" : "Arial",
						"default_fontsize" : 9.0,
						"fontname" : "Arial"
					}

				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "sync",
					"numinlets" : 1,
					"fontsize" : 10.435669,
					"patching_rect" : [ 437.0, 315.0, 32.0, 18.0 ],
					"numoutlets" : 0,
					"fontname" : "Arial",
					"id" : "obj-33"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "pak 0 0 0.",
					"numinlets" : 3,
					"fontsize" : 10.435669,
					"patching_rect" : [ 274.0, 315.0, 162.0, 18.0 ],
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"fontname" : "Arial",
					"id" : "obj-20",
					"color" : [ 0.7, 0.7, 0.7, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "\"location\" patcher variable",
					"numinlets" : 1,
					"fontsize" : 10.435669,
					"patching_rect" : [ 791.0, 208.0, 133.0, 18.0 ],
					"numoutlets" : 0,
					"fontname" : "Arial Italic",
					"id" : "obj-18"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "\"transport\" patcher variable >",
					"numinlets" : 1,
					"fontsize" : 10.435669,
					"patching_rect" : [ 128.0, 227.0, 145.0, 18.0 ],
					"numoutlets" : 0,
					"fontname" : "Arial Italic",
					"id" : "obj-17"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "i",
					"numinlets" : 2,
					"fontsize" : 10.435669,
					"patching_rect" : [ 489.0, 432.0, 32.5, 18.0 ],
					"numoutlets" : 1,
					"outlettype" : [ "int" ],
					"fontname" : "Arial",
					"id" : "obj-15",
					"color" : [ 0.7, 0.7, 0.7, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "round",
					"numinlets" : 2,
					"fontsize" : 10.435669,
					"patching_rect" : [ 489.0, 410.0, 37.0, 18.0 ],
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"fontname" : "Arial",
					"id" : "obj-14",
					"color" : [ 0.7, 0.7, 0.7, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "textbutton",
					"hint" : "",
					"prototypename" : "Arial9",
					"numinlets" : 1,
					"fontsize" : 11.595187,
					"patching_rect" : [ 775.0, 145.0, 60.0, 19.0 ],
					"bgovercolor" : [ 0.584314, 0.584314, 0.756863, 0.329412 ],
					"presentation" : 1,
					"texton" : "Button",
					"numoutlets" : 3,
					"bgoveroncolor" : [ 0.694118, 0.694118, 0.694118, 1.0 ],
					"outlettype" : [ "", "", "int" ],
					"rounded" : 20.0,
					"bordercolor" : [ 1.0, 1.0, 1.0, 0.0 ],
					"bgoncolor" : [ 0.368627, 0.360784, 0.501961, 0.74902 ],
					"text" : "Rewind",
					"fontname" : "Arial",
					"borderoncolor" : [ 0.694118, 0.694118, 0.694118, 0.0 ],
					"id" : "obj-59",
					"textoveroncolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"textcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"presentation_rect" : [ 189.0, 72.0, 52.600479, 18.0 ],
					"bgcolor" : [ 0.870588, 0.870588, 0.917647, 0.329412 ],
					"tosymbol" : 0,
					"textovercolor" : [ 1.0, 1.0, 1.0, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "Resolution : 480 ticks/beat",
					"numinlets" : 1,
					"fontsize" : 10.435669,
					"patching_rect" : [ 489.0, 485.0, 134.0, 18.0 ],
					"presentation" : 1,
					"numoutlets" : 0,
					"frgb" : [ 1.0, 1.0, 1.0, 1.0 ],
					"fontname" : "Arial Italic",
					"id" : "obj-120",
					"textcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"presentation_rect" : [ 25.0, 73.0, 134.0, 18.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "0 : 0 : 0 . 0",
					"numinlets" : 1,
					"fontsize" : 11.0,
					"patching_rect" : [ 819.0, 395.0, 95.0, 19.0 ],
					"presentation" : 1,
					"numoutlets" : 0,
					"frgb" : [ 1.0, 1.0, 1.0, 1.0 ],
					"fontname" : "Arial Bold",
					"id" : "obj-46",
					"textcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"presentation_rect" : [ 241.0, 72.0, 94.0, 19.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "led",
					"hint" : "Activate",
					"varname" : "state",
					"prototypename" : "Arial9-green",
					"numinlets" : 1,
					"patching_rect" : [ 736.0, 329.0, 20.253944, 20.253944 ],
					"oncolor" : [ 0.14902, 1.0, 0.0, 1.0 ],
					"presentation" : 1,
					"numoutlets" : 1,
					"offcolor" : [ 0.215686, 0.215686, 0.215686, 0.501961 ],
					"outlettype" : [ "int" ],
					"id" : "obj-45",
					"presentation_rect" : [ 182.0, 6.0, 20.253944, 20.253944 ],
					"bgcolor" : [ 1.0, 1.0, 1.0, 0.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "Click",
					"numinlets" : 1,
					"fontsize" : 10.435669,
					"patching_rect" : [ 106.0, 345.0, 34.0, 18.0 ],
					"presentation" : 1,
					"numoutlets" : 0,
					"frgb" : [ 1.0, 1.0, 1.0, 1.0 ],
					"fontname" : "Arial",
					"id" : "obj-32",
					"textcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"presentation_rect" : [ 233.0, 8.0, 34.0, 18.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "Activate",
					"numinlets" : 1,
					"fontsize" : 11.595187,
					"patching_rect" : [ 746.0, 374.0, 56.0, 20.0 ],
					"presentation" : 1,
					"numoutlets" : 0,
					"frgb" : [ 1.0, 1.0, 1.0, 1.0 ],
					"fontname" : "Arial Bold",
					"id" : "obj-31",
					"textcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"presentation_rect" : [ 127.0, 6.0, 56.0, 20.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "button",
					"hint" : "Tempo pulse",
					"varname" : "pulse",
					"ignoreclick" : 1,
					"numinlets" : 1,
					"patching_rect" : [ 211.0, 329.0, 20.253944, 20.253944 ],
					"presentation" : 1,
					"numoutlets" : 1,
					"outlinecolor" : [ 0.501961, 0.501961, 0.501961, 0.345098 ],
					"outlettype" : [ "bang" ],
					"fgcolor" : [ 0.72549, 0.72549, 0.72549, 0.352941 ],
					"id" : "obj-121",
					"presentation_rect" : [ 204.0, 6.0, 20.0, 20.0 ],
					"blinkcolor" : [ 1.0, 1.0, 0.0, 1.0 ],
					"bgcolor" : [ 0.913725, 0.913725, 0.913725, 0.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "led",
					"hint" : "Enable GM click (ch.10) ",
					"varname" : "click",
					"prototypename" : "Arial9-grey",
					"numinlets" : 1,
					"patching_rect" : [ 113.0, 366.0, 20.253944, 20.253944 ],
					"oncolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"presentation" : 1,
					"numoutlets" : 1,
					"offcolor" : [ 0.490196, 0.490196, 0.490196, 0.74902 ],
					"outlettype" : [ "int" ],
					"id" : "obj-29",
					"presentation_rect" : [ 263.0, 6.0, 20.253944, 20.253944 ],
					"bgcolor" : [ 0.0, 0.0, 0.0, 0.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "Unit",
					"numinlets" : 1,
					"fontsize" : 10.435669,
					"patching_rect" : [ 762.0, 507.0, 29.0, 18.0 ],
					"presentation" : 1,
					"numoutlets" : 0,
					"frgb" : [ 1.0, 1.0, 1.0, 1.0 ],
					"fontname" : "Arial",
					"id" : "obj-27",
					"textcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"presentation_rect" : [ 60.0, 33.0, 29.0, 18.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "umenu",
					"hint" : "Time signature (unit)",
					"varname" : "timesig-unit",
					"prototypename" : "Arial9",
					"numinlets" : 1,
					"pattrmode" : 1,
					"fontsize" : 11.595187,
					"patching_rect" : [ 691.0, 564.0, 40.939552, 20.0 ],
					"hltcolor" : [ 0.827451, 0.827451, 0.827451, 1.0 ],
					"presentation" : 1,
					"arrowlink" : 0,
					"arrowcolor" : [ 0.694118, 0.694118, 0.694118, 1.0 ],
					"numoutlets" : 3,
					"items" : [ 4, ",", 8, ",", 16 ],
					"outlettype" : [ "int", "", "" ],
					"types" : [  ],
					"fontname" : "Arial Bold",
					"id" : "obj-26",
					"arrowbgcolor" : [ 0.941176, 0.941176, 0.941176, 0.74902 ],
					"textcolor" : [ 0.26, 0.26, 0.26, 1.0 ],
					"presentation_rect" : [ 55.0, 50.0, 40.939552, 20.0 ],
					"prefix_mode" : 2,
					"arrowframe" : 0,
					"bgcolor" : [ 1.0, 1.0, 1.0, 0.74902 ],
					"framecolor" : [ 0.501961, 0.501961, 0.501961, 0.129412 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "Beats",
					"numinlets" : 1,
					"fontsize" : 10.435669,
					"patching_rect" : [ 657.0, 507.0, 37.0, 18.0 ],
					"presentation" : 1,
					"numoutlets" : 0,
					"frgb" : [ 1.0, 1.0, 1.0, 1.0 ],
					"fontname" : "Arial",
					"id" : "obj-25",
					"textcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"presentation_rect" : [ 16.0, 33.0, 37.0, 18.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "number",
					"hint" : "Time signature (beats)",
					"varname" : "timesig-beats",
					"minimum" : 1,
					"numinlets" : 1,
					"fontsize" : 11.595187,
					"patching_rect" : [ 646.0, 564.0, 41.0, 20.0 ],
					"presentation" : 1,
					"numoutlets" : 2,
					"hbgcolor" : [ 0.372549, 0.360784, 0.501961, 0.74902 ],
					"triscale" : 0.7,
					"outlettype" : [ "int", "bang" ],
					"bordercolor" : [ 0.501961, 0.501961, 0.501961, 0.129412 ],
					"fontname" : "Arial Bold",
					"id" : "obj-23",
					"textcolor" : [ 0.26, 0.26, 0.26, 1.0 ],
					"presentation_rect" : [ 13.0, 50.0, 41.0, 20.0 ],
					"bgcolor" : [ 1.0, 1.0, 1.0, 0.74902 ],
					"triangle" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "Units",
					"numinlets" : 1,
					"fontsize" : 10.435669,
					"patching_rect" : [ 426.0, 250.0, 34.0, 18.0 ],
					"presentation" : 1,
					"numoutlets" : 0,
					"frgb" : [ 1.0, 1.0, 1.0, 1.0 ],
					"fontname" : "Arial",
					"id" : "obj-22",
					"textcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"presentation_rect" : [ 286.0, 33.0, 34.0, 18.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "flonum",
					"hint" : "Location (units)",
					"varname" : "units",
					"numinlets" : 1,
					"fontsize" : 11.595187,
					"patching_rect" : [ 429.0, 291.0, 41.0, 20.0 ],
					"presentation" : 1,
					"numoutlets" : 2,
					"hbgcolor" : [ 0.372549, 0.360784, 0.501961, 0.74902 ],
					"triscale" : 0.7,
					"outlettype" : [ "float", "bang" ],
					"bordercolor" : [ 0.501961, 0.501961, 0.501961, 0.129412 ],
					"fontname" : "Arial Bold",
					"id" : "obj-21",
					"textcolor" : [ 0.258824, 0.258824, 0.258824, 1.0 ],
					"presentation_rect" : [ 283.0, 50.0, 41.0, 20.0 ],
					"bgcolor" : [ 1.0, 1.0, 1.0, 0.74902 ],
					"triangle" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "Beats",
					"numinlets" : 1,
					"fontsize" : 10.435669,
					"patching_rect" : [ 355.0, 250.0, 37.0, 18.0 ],
					"presentation" : 1,
					"numoutlets" : 0,
					"frgb" : [ 1.0, 1.0, 1.0, 1.0 ],
					"fontname" : "Arial",
					"id" : "obj-13",
					"textcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"presentation_rect" : [ 243.0, 33.0, 37.0, 18.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "number",
					"hint" : "Location (beats)",
					"varname" : "beats",
					"numinlets" : 1,
					"fontsize" : 11.595187,
					"patching_rect" : [ 358.0, 291.0, 41.0, 20.0 ],
					"presentation" : 1,
					"numoutlets" : 2,
					"hbgcolor" : [ 0.372549, 0.360784, 0.501961, 0.74902 ],
					"triscale" : 0.7,
					"outlettype" : [ "int", "bang" ],
					"bordercolor" : [ 0.501961, 0.501961, 0.501961, 0.129412 ],
					"fontname" : "Arial Bold",
					"id" : "obj-11",
					"textcolor" : [ 0.258824, 0.258824, 0.258824, 1.0 ],
					"presentation_rect" : [ 241.0, 50.0, 41.0, 20.0 ],
					"bgcolor" : [ 1.0, 1.0, 1.0, 0.74902 ],
					"triangle" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "Bars",
					"numinlets" : 1,
					"fontsize" : 10.435669,
					"patching_rect" : [ 285.0, 250.0, 32.0, 18.0 ],
					"presentation" : 1,
					"numoutlets" : 0,
					"frgb" : [ 1.0, 1.0, 1.0, 1.0 ],
					"fontname" : "Arial",
					"id" : "obj-10",
					"textcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"presentation_rect" : [ 200.0, 33.0, 32.0, 18.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "number",
					"hint" : "Location (bars)",
					"varname" : "bars",
					"numinlets" : 1,
					"fontsize" : 11.595187,
					"patching_rect" : [ 286.0, 291.0, 41.0, 20.0 ],
					"presentation" : 1,
					"numoutlets" : 2,
					"hbgcolor" : [ 0.372549, 0.360784, 0.501961, 0.74902 ],
					"triscale" : 0.7,
					"outlettype" : [ "int", "bang" ],
					"bordercolor" : [ 0.501961, 0.501961, 0.501961, 0.129412 ],
					"fontname" : "Arial Bold",
					"id" : "obj-9",
					"textcolor" : [ 0.258824, 0.258824, 0.258824, 1.0 ],
					"presentation_rect" : [ 192.0, 50.0, 48.0, 20.0 ],
					"bgcolor" : [ 1.0, 1.0, 1.0, 0.74902 ],
					"triangle" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "Tempo",
					"numinlets" : 1,
					"fontsize" : 10.435669,
					"patching_rect" : [ 560.0, 405.0, 46.0, 18.0 ],
					"presentation" : 1,
					"numoutlets" : 0,
					"frgb" : [ 1.0, 1.0, 1.0, 1.0 ],
					"fontname" : "Arial",
					"id" : "obj-5",
					"textcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"presentation_rect" : [ 113.0, 33.0, 44.0, 18.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "flonum",
					"hint" : "Beat tempo in bpm",
					"varname" : "tempo",
					"minimum" : 1.0,
					"numinlets" : 1,
					"fontsize" : 11.595187,
					"patching_rect" : [ 560.0, 329.0, 41.0, 20.0 ],
					"presentation" : 1,
					"numoutlets" : 2,
					"hbgcolor" : [ 0.372549, 0.360784, 0.501961, 0.74902 ],
					"triscale" : 0.7,
					"outlettype" : [ "float", "bang" ],
					"bordercolor" : [ 0.501961, 0.501961, 0.501961, 0.129412 ],
					"fontname" : "Arial Bold",
					"id" : "obj-4",
					"textcolor" : [ 0.258824, 0.258824, 0.258824, 1.0 ],
					"presentation_rect" : [ 99.0, 50.0, 45.0, 20.0 ],
					"bgcolor" : [ 1.0, 1.0, 1.0, 0.74902 ],
					"triangle" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"hint" : "Control a master clock and report time values",
					"text" : "kin.Transport",
					"numinlets" : 1,
					"fontsize" : 16.233263,
					"patching_rect" : [ 822.0, 38.0, 111.0, 25.0 ],
					"presentation" : 1,
					"numoutlets" : 0,
					"frgb" : [ 1.0, 1.0, 1.0, 1.0 ],
					"fontname" : "Arial Bold Italic",
					"id" : "obj-108",
					"textcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"presentation_rect" : [ 9.0, 2.0, 111.0, 25.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "Time signature",
					"numinlets" : 1,
					"fontsize" : 13.914225,
					"patching_rect" : [ 798.0, 801.0, 110.0, 22.0 ],
					"numoutlets" : 0,
					"frgb" : [ 1.0, 1.0, 1.0, 1.0 ],
					"fontname" : "Arial Bold Italic",
					"id" : "obj-76",
					"textcolor" : [ 1.0, 1.0, 1.0, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "Location",
					"numinlets" : 1,
					"fontsize" : 13.914225,
					"patching_rect" : [ 405.0, 398.0, 68.0, 22.0 ],
					"numoutlets" : 0,
					"frgb" : [ 1.0, 1.0, 1.0, 1.0 ],
					"fontname" : "Arial Bold Italic",
					"id" : "obj-74",
					"textcolor" : [ 1.0, 1.0, 1.0, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "t b 0.",
					"numinlets" : 1,
					"fontsize" : 10.435669,
					"patching_rect" : [ 775.0, 167.0, 34.0, 18.0 ],
					"numoutlets" : 2,
					"outlettype" : [ "bang", "float" ],
					"fontname" : "Arial",
					"id" : "obj-60",
					"color" : [ 0.7, 0.7, 0.7, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "format h:m:s:ms message",
					"linecount" : 3,
					"numinlets" : 1,
					"fontsize" : 10.435669,
					"patching_rect" : [ 926.0, 376.0, 54.0, 42.0 ],
					"numoutlets" : 0,
					"fontname" : "Arial",
					"id" : "obj-56"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "location in ticks",
					"numinlets" : 1,
					"fontsize" : 10.435669,
					"patching_rect" : [ 823.0, 311.0, 81.0, 18.0 ],
					"numoutlets" : 0,
					"fontname" : "Arial",
					"id" : "obj-55"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "set Resolution : $1 ticks/beat",
					"linecount" : 2,
					"numinlets" : 2,
					"fontsize" : 10.435669,
					"patching_rect" : [ 489.0, 454.0, 84.0, 28.0 ],
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"fontname" : "Arial",
					"id" : "obj-52"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "set $1 : $2 : $3 . $4",
					"numinlets" : 2,
					"fontsize" : 10.435669,
					"patching_rect" : [ 819.0, 375.0, 100.0, 16.0 ],
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"fontname" : "Arial",
					"id" : "obj-44"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "convert raw ticks to  hours-minutes-seconds",
					"linecount" : 2,
					"numinlets" : 1,
					"fontsize" : 10.435669,
					"patching_rect" : [ 894.0, 322.0, 117.0, 30.0 ],
					"numoutlets" : 0,
					"fontname" : "Arial",
					"id" : "obj-43"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "translate ticks hh:mm:ss @mode position",
					"numinlets" : 1,
					"fontsize" : 10.435669,
					"patching_rect" : [ 819.0, 352.0, 201.0, 18.0 ],
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"fontname" : "Arial",
					"id" : "obj-35",
					"color" : [ 0.7, 0.7, 0.7, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "flonum",
					"numinlets" : 1,
					"fontsize" : 10.435669,
					"patching_rect" : [ 819.0, 330.0, 67.0, 18.0 ],
					"numoutlets" : 2,
					"outlettype" : [ "float", "bang" ],
					"fontname" : "Arial",
					"id" : "obj-19"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "rewind",
					"numinlets" : 1,
					"fontsize" : 10.435669,
					"patching_rect" : [ 831.0, 718.0, 41.0, 18.0 ],
					"numoutlets" : 0,
					"fontname" : "Arial",
					"id" : "obj-16"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "pvar location",
					"numinlets" : 1,
					"fontsize" : 10.435669,
					"patching_rect" : [ 811.0, 740.0, 70.0, 18.0 ],
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"fontname" : "Arial",
					"id" : "obj-2",
					"color" : [ 0.54902, 0.85098, 0.6, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "t l 0",
					"numinlets" : 1,
					"fontsize" : 10.435669,
					"patching_rect" : [ 797.0, 718.0, 32.5, 18.0 ],
					"numoutlets" : 2,
					"outlettype" : [ "", "int" ],
					"fontname" : "Arial",
					"id" : "obj-51",
					"color" : [ 0.7, 0.7, 0.7, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "timesig $1 $2",
					"numinlets" : 2,
					"fontsize" : 10.435669,
					"patching_rect" : [ 797.0, 762.0, 73.0, 16.0 ],
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"fontname" : "Arial",
					"id" : "obj-141"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "pak 4 4",
					"numinlets" : 2,
					"fontsize" : 10.435669,
					"patching_rect" : [ 646.0, 618.0, 75.0, 18.0 ],
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"fontname" : "Arial",
					"id" : "obj-1",
					"color" : [ 0.7, 0.7, 0.7, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "pvar transport",
					"numinlets" : 1,
					"fontsize" : 10.435669,
					"patching_rect" : [ 797.0, 782.0, 75.0, 18.0 ],
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"fontname" : "Arial",
					"id" : "obj-70",
					"color" : [ 0.945098, 0.913725, 0.407843, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "GM clicktrack",
					"numinlets" : 1,
					"fontsize" : 13.914225,
					"patching_rect" : [ 108.0, 453.0, 101.0, 22.0 ],
					"numoutlets" : 0,
					"frgb" : [ 1.0, 1.0, 1.0, 1.0 ],
					"fontname" : "Arial Bold Italic",
					"id" : "obj-139",
					"textcolor" : [ 1.0, 1.0, 1.0, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "gate",
					"numinlets" : 2,
					"fontsize" : 10.435669,
					"patching_rect" : [ 113.0, 390.0, 51.5, 18.0 ],
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"fontname" : "Arial",
					"id" : "obj-134",
					"color" : [ 0.7, 0.7, 0.7, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "change",
					"numinlets" : 1,
					"fontsize" : 10.435669,
					"patching_rect" : [ 146.0, 307.0, 46.0, 18.0 ],
					"numoutlets" : 3,
					"outlettype" : [ "", "int", "int" ],
					"fontname" : "Arial",
					"id" : "obj-65",
					"color" : [ 0.7, 0.7, 0.7, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "button",
					"numinlets" : 1,
					"patching_rect" : [ 146.0, 329.0, 18.0, 18.0 ],
					"numoutlets" : 1,
					"outlettype" : [ "bang" ],
					"id" : "obj-63"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "80",
					"numinlets" : 2,
					"fontsize" : 10.435669,
					"patching_rect" : [ 211.0, 351.0, 32.5, 16.0 ],
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"fontname" : "Arial",
					"id" : "obj-42"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "change",
					"numinlets" : 1,
					"fontsize" : 10.435669,
					"patching_rect" : [ 211.0, 307.0, 46.0, 18.0 ],
					"numoutlets" : 3,
					"outlettype" : [ "", "int", "int" ],
					"fontname" : "Arial",
					"id" : "obj-135",
					"color" : [ 0.7, 0.7, 0.7, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "81",
					"numinlets" : 2,
					"fontsize" : 10.435669,
					"patching_rect" : [ 146.0, 351.0, 32.5, 16.0 ],
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"fontname" : "Arial",
					"id" : "obj-24"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "makenote 127 128n",
					"numinlets" : 3,
					"fontsize" : 10.435669,
					"patching_rect" : [ 113.0, 412.0, 103.0, 18.0 ],
					"numoutlets" : 2,
					"outlettype" : [ "float", "float" ],
					"fontname" : "Arial",
					"id" : "obj-136",
					"color" : [ 0.7, 0.7, 0.7, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "noteout 10",
					"numinlets" : 3,
					"fontsize" : 10.435669,
					"patching_rect" : [ 113.0, 434.0, 60.0, 18.0 ],
					"numoutlets" : 0,
					"fontname" : "Arial",
					"id" : "obj-137",
					"color" : [ 0.7, 0.7, 0.7, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "pvar transport",
					"linecount" : 2,
					"numinlets" : 1,
					"fontsize" : 10.435669,
					"patching_rect" : [ 560.0, 373.0, 53.0, 30.0 ],
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"fontname" : "Arial",
					"id" : "obj-128",
					"color" : [ 0.945098, 0.913725, 0.407843, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "tempo $1",
					"numinlets" : 2,
					"fontsize" : 10.435669,
					"patching_rect" : [ 560.0, 353.0, 54.0, 16.0 ],
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"fontname" : "Arial",
					"id" : "obj-127"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "pvar transport",
					"numinlets" : 1,
					"fontsize" : 10.435669,
					"patching_rect" : [ 736.0, 353.0, 75.0, 18.0 ],
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"fontname" : "Arial",
					"id" : "obj-126",
					"color" : [ 0.945098, 0.913725, 0.407843, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "set location in ticks",
					"numinlets" : 1,
					"fontsize" : 10.435669,
					"patching_rect" : [ 344.0, 479.0, 98.0, 18.0 ],
					"numoutlets" : 0,
					"fontname" : "Arial",
					"id" : "obj-113"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "flonum",
					"numinlets" : 1,
					"fontsize" : 10.435669,
					"patching_rect" : [ 274.0, 479.0, 69.0, 18.0 ],
					"numoutlets" : 2,
					"outlettype" : [ "float", "bang" ],
					"fontname" : "Arial",
					"id" : "obj-112"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "pvar location",
					"numinlets" : 1,
					"fontsize" : 10.435669,
					"patching_rect" : [ 274.0, 501.0, 70.0, 18.0 ],
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"fontname" : "Arial",
					"id" : "obj-111",
					"color" : [ 0.54902, 0.85098, 0.6, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "convert bar.beat.unit to tick as position",
					"linecount" : 3,
					"numinlets" : 1,
					"fontsize" : 10.435669,
					"patching_rect" : [ 404.0, 440.0, 83.0, 42.0 ],
					"numoutlets" : 0,
					"fontname" : "Arial",
					"id" : "obj-101"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "bar.beat.unit ",
					"numinlets" : 1,
					"fontsize" : 10.435669,
					"patching_rect" : [ 404.0, 425.0, 71.0, 18.0 ],
					"numoutlets" : 0,
					"fontname" : "Arial",
					"id" : "obj-6"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "speedlim",
					"numinlets" : 1,
					"fontsize" : 10.435669,
					"patching_rect" : [ 308.0, 403.0, 52.0, 18.0 ],
					"numoutlets" : 0,
					"fontname" : "Arial",
					"id" : "obj-102"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "convert ints to bar.beat.unit ",
					"linecount" : 2,
					"numinlets" : 1,
					"fontsize" : 10.435669,
					"patching_rect" : [ 420.0, 353.0, 76.0, 30.0 ],
					"numoutlets" : 0,
					"fontname" : "Arial",
					"id" : "obj-103"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "t b l",
					"numinlets" : 1,
					"fontsize" : 10.435669,
					"patching_rect" : [ 274.0, 381.0, 128.5, 18.0 ],
					"numoutlets" : 2,
					"outlettype" : [ "bang", "" ],
					"fontname" : "Arial",
					"id" : "obj-104",
					"color" : [ 0.7, 0.7, 0.7, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "22664 3 20.",
					"numinlets" : 2,
					"fontsize" : 10.435669,
					"patching_rect" : [ 274.0, 425.0, 129.0, 16.0 ],
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"fontname" : "Arial",
					"id" : "obj-105"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "translate bars.beats.units ticks @mode position",
					"linecount" : 2,
					"numinlets" : 1,
					"fontsize" : 10.435669,
					"patching_rect" : [ 274.0, 445.0, 129.0, 30.0 ],
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"fontname" : "Arial",
					"id" : "obj-106",
					"color" : [ 0.7, 0.7, 0.7, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "qlim",
					"numinlets" : 2,
					"fontsize" : 10.435669,
					"patching_rect" : [ 274.0, 403.0, 32.5, 18.0 ],
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"fontname" : "Arial",
					"id" : "obj-107",
					"color" : [ 0.7, 0.7, 0.7, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "set $1",
					"numinlets" : 2,
					"fontsize" : 10.435669,
					"patching_rect" : [ 691.0, 529.0, 39.0, 16.0 ],
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"fontname" : "Arial",
					"id" : "obj-92"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "set $1",
					"numinlets" : 2,
					"fontsize" : 10.435669,
					"patching_rect" : [ 734.0, 303.0, 39.0, 16.0 ],
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"fontname" : "Arial",
					"id" : "obj-90"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "unpack",
					"numinlets" : 1,
					"fontsize" : 10.435669,
					"patching_rect" : [ 646.0, 472.0, 64.0, 18.0 ],
					"numoutlets" : 2,
					"outlettype" : [ "int", "int" ],
					"fontname" : "Arial",
					"id" : "obj-88",
					"color" : [ 0.7, 0.7, 0.7, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "set $1",
					"numinlets" : 2,
					"fontsize" : 10.435669,
					"patching_rect" : [ 560.0, 309.0, 39.0, 16.0 ],
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"fontname" : "Arial",
					"id" : "obj-87"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "set $1",
					"numinlets" : 2,
					"fontsize" : 10.435669,
					"patching_rect" : [ 417.0, 271.0, 39.0, 16.0 ],
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"fontname" : "Arial",
					"id" : "obj-84"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "set $1",
					"numinlets" : 2,
					"fontsize" : 10.435669,
					"patching_rect" : [ 346.0, 271.0, 39.0, 16.0 ],
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"fontname" : "Arial",
					"id" : "obj-80"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "set $1",
					"numinlets" : 2,
					"fontsize" : 10.435669,
					"patching_rect" : [ 646.0, 529.0, 39.0, 16.0 ],
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"fontname" : "Arial",
					"id" : "obj-79"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "set $1",
					"numinlets" : 2,
					"fontsize" : 10.435669,
					"patching_rect" : [ 274.0, 271.0, 39.0, 16.0 ],
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"fontname" : "Arial",
					"id" : "obj-50"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "Control a master clock and report time values.",
					"numinlets" : 1,
					"fontsize" : 13.914225,
					"patching_rect" : [ 380.0, 199.0, 317.0, 22.0 ],
					"numoutlets" : 0,
					"frgb" : [ 1.0, 1.0, 1.0, 1.0 ],
					"fontname" : "Arial Bold Italic",
					"id" : "obj-122",
					"textcolor" : [ 1.0, 1.0, 1.0, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "location in ticks",
					"numinlets" : 1,
					"fontsize" : 10.435669,
					"patching_rect" : [ 857.0, 190.0, 81.0, 18.0 ],
					"numoutlets" : 0,
					"fontname" : "Arial",
					"id" : "obj-34"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "flonum",
					"varname" : "location",
					"numinlets" : 1,
					"fontface" : 1,
					"fontsize" : 10.435669,
					"patching_rect" : [ 790.0, 189.0, 67.0, 18.0 ],
					"numoutlets" : 2,
					"outlettype" : [ "float", "bang" ],
					"bordercolor" : [ 0.592157, 0.733333, 0.615686, 1.0 ],
					"fontname" : "Arial",
					"id" : "obj-38",
					"textcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"bgcolor" : [ 0.54902, 0.85098, 0.6, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"varname" : "transport",
					"text" : "transport",
					"numinlets" : 2,
					"fontsize" : 13.914225,
					"patching_rect" : [ 274.0, 224.0, 519.5, 22.0 ],
					"numoutlets" : 9,
					"outlettype" : [ "int", "int", "float", "float", "float", "", "int", "float", "" ],
					"fontname" : "Arial",
					"id" : "obj-41",
					"color" : [ 0.945098, 0.913725, 0.407843, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "panel",
					"hint" : "",
					"prototypename" : "Arial9",
					"numinlets" : 1,
					"patching_rect" : [ 982.0, 41.0, 20.0, 21.0 ],
					"grad1" : [ 0.847059, 0.847059, 0.847059, 1.0 ],
					"presentation" : 1,
					"numoutlets" : 0,
					"shadow" : -1,
					"grad2" : [ 0.741176, 0.741176, 0.803922, 1.0 ],
					"rounded" : 20,
					"bordercolor" : [ 0.360784, 0.360784, 0.360784, 1.0 ],
					"id" : "obj-73",
					"background" : 1,
					"presentation_rect" : [ 184.0, 31.0, 149.0, 63.0 ],
					"bgcolor" : [ 0.458824, 0.458824, 0.458824, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "panel",
					"hint" : "",
					"prototypename" : "Arial9",
					"numinlets" : 1,
					"patching_rect" : [ 957.0, 41.0, 20.0, 21.0 ],
					"grad1" : [ 0.847059, 0.847059, 0.847059, 1.0 ],
					"presentation" : 1,
					"numoutlets" : 0,
					"shadow" : -1,
					"grad2" : [ 0.741176, 0.741176, 0.803922, 1.0 ],
					"rounded" : 20,
					"bordercolor" : [ 0.360784, 0.360784, 0.360784, 1.0 ],
					"id" : "obj-72",
					"background" : 1,
					"presentation_rect" : [ 8.0, 31.0, 170.0, 63.0 ],
					"bgcolor" : [ 0.458824, 0.458824, 0.458824, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "panel",
					"hint" : "",
					"prototypename" : "Arial9",
					"numinlets" : 1,
					"patching_rect" : [ 930.0, 41.0, 20.0, 20.0 ],
					"grad1" : [ 0.847059, 0.847059, 0.847059, 1.0 ],
					"presentation" : 1,
					"numoutlets" : 0,
					"shadow" : 1,
					"grad2" : [ 0.741176, 0.741176, 0.803922, 1.0 ],
					"rounded" : 0,
					"bordercolor" : [ 0.360784, 0.360784, 0.360784, 1.0 ],
					"id" : "obj-75",
					"background" : 1,
					"presentation_rect" : [ -1.0, -1.0, 352.0, 110.0 ],
					"bgcolor" : [ 0.6, 0.6, 0.6, 1.0 ]
				}

			}
 ],
		"lines" : [ 			{
				"patchline" : 				{
					"source" : [ "obj-37", 0 ],
					"destination" : [ "obj-92", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-88", 1 ],
					"destination" : [ "obj-37", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-41", 5 ],
					"destination" : [ "obj-7", 1 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-41", 5 ],
					"destination" : [ "obj-88", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-138", 0 ],
					"destination" : [ "obj-26", 0 ],
					"hidden" : 0,
					"midpoints" : [ 779.5, 701.0, 760.0, 701.0, 760.0, 554.0, 700.5, 554.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-138", 0 ],
					"destination" : [ "obj-23", 0 ],
					"hidden" : 0,
					"midpoints" : [ 779.5, 701.0, 760.5, 701.0, 760.5, 554.0, 655.5, 554.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-41", 7 ],
					"destination" : [ "obj-138", 3 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-3", 0 ],
					"destination" : [ "obj-131", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-131", 0 ],
					"destination" : [ "obj-41", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-1", 0 ],
					"destination" : [ "obj-138", 0 ],
					"hidden" : 0,
					"midpoints" : [ 655.5, 653.5, 779.5, 653.5 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-138", 1 ],
					"destination" : [ "obj-51", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-41", 5 ],
					"destination" : [ "obj-138", 1 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-41", 6 ],
					"destination" : [ "obj-138", 2 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-71", 0 ],
					"destination" : [ "obj-78", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-78", 0 ],
					"destination" : [ "obj-47", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-47", 0 ],
					"destination" : [ "obj-4", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-69", 0 ],
					"destination" : [ "obj-77", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-77", 0 ],
					"destination" : [ "obj-68", 1 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-77", 0 ],
					"destination" : [ "obj-68", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-68", 0 ],
					"destination" : [ "obj-71", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-60", 0 ],
					"destination" : [ "obj-41", 1 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-60", 1 ],
					"destination" : [ "obj-38", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-59", 0 ],
					"destination" : [ "obj-60", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-15", 0 ],
					"destination" : [ "obj-52", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-14", 0 ],
					"destination" : [ "obj-15", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-41", 3 ],
					"destination" : [ "obj-14", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-26", 1 ],
					"destination" : [ "obj-1", 1 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-23", 0 ],
					"destination" : [ "obj-1", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-121", 0 ],
					"destination" : [ "obj-42", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-135", 0 ],
					"destination" : [ "obj-121", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-29", 0 ],
					"destination" : [ "obj-134", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-136", 1 ],
					"destination" : [ "obj-137", 1 ],
					"hidden" : 0,
					"midpoints" : [ 206.5, 431.0, 143.0, 431.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-136", 0 ],
					"destination" : [ "obj-137", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-65", 0 ],
					"destination" : [ "obj-63", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-63", 0 ],
					"destination" : [ "obj-24", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-134", 0 ],
					"destination" : [ "obj-136", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-42", 0 ],
					"destination" : [ "obj-134", 1 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-24", 0 ],
					"destination" : [ "obj-134", 1 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-127", 0 ],
					"destination" : [ "obj-128", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-4", 0 ],
					"destination" : [ "obj-127", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-45", 0 ],
					"destination" : [ "obj-126", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-112", 0 ],
					"destination" : [ "obj-111", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-106", 0 ],
					"destination" : [ "obj-112", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-38", 0 ],
					"destination" : [ "obj-41", 1 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-105", 0 ],
					"destination" : [ "obj-106", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-104", 1 ],
					"destination" : [ "obj-105", 1 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-107", 0 ],
					"destination" : [ "obj-105", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-104", 0 ],
					"destination" : [ "obj-107", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-88", 0 ],
					"destination" : [ "obj-79", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-41", 6 ],
					"destination" : [ "obj-90", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-41", 4 ],
					"destination" : [ "obj-87", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-41", 2 ],
					"destination" : [ "obj-84", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-41", 1 ],
					"destination" : [ "obj-80", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-41", 0 ],
					"destination" : [ "obj-50", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-51", 0 ],
					"destination" : [ "obj-141", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-51", 1 ],
					"destination" : [ "obj-2", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-141", 0 ],
					"destination" : [ "obj-70", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-50", 0 ],
					"destination" : [ "obj-9", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-80", 0 ],
					"destination" : [ "obj-11", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-84", 0 ],
					"destination" : [ "obj-21", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-87", 0 ],
					"destination" : [ "obj-4", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-79", 0 ],
					"destination" : [ "obj-23", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-92", 0 ],
					"destination" : [ "obj-26", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-90", 0 ],
					"destination" : [ "obj-45", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-41", 0 ],
					"destination" : [ "obj-65", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-41", 1 ],
					"destination" : [ "obj-135", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-41", 7 ],
					"destination" : [ "obj-19", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-19", 0 ],
					"destination" : [ "obj-35", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-44", 0 ],
					"destination" : [ "obj-46", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-52", 0 ],
					"destination" : [ "obj-120", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-9", 0 ],
					"destination" : [ "obj-20", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-11", 0 ],
					"destination" : [ "obj-20", 1 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-21", 0 ],
					"destination" : [ "obj-20", 2 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-80", 0 ],
					"destination" : [ "obj-20", 1 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-50", 0 ],
					"destination" : [ "obj-20", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-84", 0 ],
					"destination" : [ "obj-20", 2 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-58", 0 ],
					"destination" : [ "obj-140", 1 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-117", 0 ],
					"destination" : [ "obj-140", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-140", 0 ],
					"destination" : [ "obj-142", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-20", 0 ],
					"destination" : [ "obj-104", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-35", 0 ],
					"destination" : [ "obj-44", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-125", 0 ],
					"destination" : [ "obj-130", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-130", 0 ],
					"destination" : [ "obj-131", 1 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-8", 0 ],
					"destination" : [ "obj-3", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
 ]
	}

}
