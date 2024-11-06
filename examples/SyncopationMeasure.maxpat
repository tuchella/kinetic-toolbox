{
	"patcher" : 	{
		"fileversion" : 1,
		"appversion" : 		{
			"major" : 5,
			"minor" : 1,
			"revision" : 9
		}
,
		"rect" : [ 671.0, 122.0, 457.0, 710.0 ],
		"bgcolor" : [ 0.858824, 0.858824, 0.858824, 1.0 ],
		"bglocked" : 0,
		"defrect" : [ 671.0, 122.0, 457.0, 710.0 ],
		"openrect" : [ 0.0, 0.0, 0.0, 0.0 ],
		"openinpresentation" : 1,
		"default_fontsize" : 10.0,
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
					"maxclass" : "umenu",
					"items" : [ "Pattern", ",", "Template" ],
					"fontname" : "Arial",
					"types" : [  ],
					"id" : "obj-9",
					"presentation_rect" : [ 321.0, 255.0, 100.0, 25.0 ],
					"numinlets" : 1,
					"fontsize" : 16.0,
					"numoutlets" : 3,
					"patching_rect" : [ 204.0, 367.0, 100.0, 25.0 ],
					"presentation" : 1,
					"outlettype" : [ "int", "", "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "4",
					"fontname" : "Arial",
					"id" : "obj-6",
					"numinlets" : 2,
					"fontsize" : 10.0,
					"numoutlets" : 1,
					"patching_rect" : [ 863.0, 219.0, 32.5, 16.0 ],
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "1",
					"fontname" : "Arial",
					"id" : "obj-5",
					"numinlets" : 2,
					"fontsize" : 10.0,
					"numoutlets" : 1,
					"patching_rect" : [ 806.0, 221.0, 32.5, 16.0 ],
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "4",
					"fontname" : "Arial",
					"id" : "obj-4",
					"numinlets" : 2,
					"fontsize" : 10.0,
					"numoutlets" : 1,
					"patching_rect" : [ 748.0, 221.0, 32.5, 16.0 ],
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "loadbang",
					"fontname" : "Arial",
					"id" : "obj-2",
					"numinlets" : 1,
					"fontsize" : 10.0,
					"numoutlets" : 1,
					"patching_rect" : [ 808.0, 153.0, 55.0, 18.0 ],
					"outlettype" : [ "bang" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "relevant publications:",
					"fontname" : "Arial",
					"id" : "obj-133",
					"presentation_rect" : [ 11.0, 572.0, 150.0, 20.0 ],
					"numinlets" : 1,
					"fontsize" : 12.0,
					"numoutlets" : 0,
					"patching_rect" : [ 65.0, 852.0, 150.0, 20.0 ],
					"presentation" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "Sioros, G. & Guedes, C., 2011. \"Complexity Driven Recombination of MIDI Loops.\" In Proceedings of the 12th International Society for Music Information Retrieval Conference (ISMIR 2011). Miami,Florida (USA), pp. 381-386. \nAvailable at: http://ismir2011.ismir.net/papers/PS3-5.pdf [Accessed January 3, 2012].",
					"linecount" : 3,
					"presentation_linecount" : 6,
					"fontname" : "Arial",
					"id" : "obj-11",
					"presentation_rect" : [ 11.0, 591.0, 412.0, 89.0 ],
					"numinlets" : 1,
					"fontsize" : 12.0,
					"numoutlets" : 0,
					"patching_rect" : [ 65.0, 871.0, 704.0, 48.0 ],
					"presentation" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "multislider",
					"varname" : "Pattern",
					"contdata" : 1,
					"border_left" : 0,
					"spacing" : 4,
					"id" : "obj-7",
					"border_right" : 0,
					"presentation_rect" : [ 10.0, 218.0, 294.0, 200.0 ],
					"numinlets" : 1,
					"setstyle" : 1,
					"numoutlets" : 2,
					"patching_rect" : [ 439.0, 421.0, 85.0, 91.0 ],
					"size" : 16,
					"presentation" : 1,
					"setminmax" : [ 0.0, 1.0 ],
					"slidercolor" : [ 0.0, 1.0, 0.0, 0.768627 ],
					"outlettype" : [ "", "" ],
					"bgcolor" : [ 0.0, 0.0, 0.0, 0.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "multislider",
					"varname" : "Template",
					"candycane" : 2,
					"candicane2" : [ 0.537255, 0.537255, 0.537255, 1.0 ],
					"border_left" : 0,
					"spacing" : 14,
					"settype" : 0,
					"id" : "obj-117",
					"border_right" : 0,
					"presentation_rect" : [ 10.0, 218.0, 294.0, 200.0 ],
					"numinlets" : 1,
					"setstyle" : 1,
					"numoutlets" : 2,
					"candicane4" : [ 0.698039, 0.243137, 0.380392, 1.0 ],
					"patching_rect" : [ 748.0, 413.0, 88.0, 73.0 ],
					"size" : 16,
					"presentation" : 1,
					"setminmax" : [ -4.0, 0.0 ],
					"slidercolor" : [ 0.360784, 0.360784, 0.360784, 1.0 ],
					"outlettype" : [ "", "" ],
					"bgcolor" : [ 0.0, 0.0, 0.0, 0.0 ],
					"candicane3" : [ 0.47451, 0.231373, 0.831373, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "This syncopation measure is based on the kin.offbeatdetector external. \nThe rhythmic pattern input by the user (green) is compared against a metrical template (grey). Those amplitudes in the pattern that contradict the template are assigned with a syncopation score (red). The sum of the scores serves as a syncopation measure",
					"linecount" : 12,
					"presentation_linecount" : 4,
					"fontname" : "Arial",
					"id" : "obj-132",
					"presentation_rect" : [ 10.0, 99.0, 419.0, 52.0 ],
					"numinlets" : 1,
					"fontsize" : 10.0,
					"numoutlets" : 0,
					"patching_rect" : [ 584.0, 175.0, 150.0, 144.0 ],
					"presentation" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"varname" : "autohelp_top_description[1]",
					"text" : "Developed by George sioros as part of the Kinetic toolbox\nLicenced under the GPLv3 - Copyright 2009-2011 - INESC-Porto",
					"linecount" : 2,
					"presentation_linecount" : 2,
					"fontname" : "Arial",
					"id" : "obj-129",
					"presentation_rect" : [ 17.0, 54.0, 316.0, 33.0 ],
					"numinlets" : 1,
					"fontsize" : 11.595187,
					"numoutlets" : 0,
					"patching_rect" : [ 48.0, 93.0, 599.0, 33.0 ],
					"presentation" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "Syncopation Measure",
					"fontname" : "Arial",
					"id" : "obj-15",
					"presentation_rect" : [ 17.0, 12.0, 392.0, 41.0 ],
					"numinlets" : 1,
					"fontsize" : 30.0,
					"numoutlets" : 0,
					"patching_rect" : [ 48.0, 51.0, 348.0, 41.0 ],
					"presentation" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "panel",
					"rounded" : 15,
					"id" : "obj-130",
					"presentation_rect" : [ 8.0, 7.0, 422.0, 85.0 ],
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 39.0, 34.0, 623.0, 81.0 ],
					"presentation" : 1,
					"bgcolor" : [ 0.694118, 0.694118, 0.694118, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "multislider",
					"varname" : "SyncopationLevels",
					"ignoreclick" : 1,
					"border_left" : 0,
					"id" : "obj-8",
					"border_right" : 0,
					"presentation_rect" : [ 10.0, 218.0, 294.0, 200.0 ],
					"numinlets" : 1,
					"setstyle" : 1,
					"numoutlets" : 2,
					"patching_rect" : [ 384.0, 739.0, 48.0, 53.0 ],
					"size" : 16,
					"presentation" : 1,
					"setminmax" : [ 0.0, 1.0 ],
					"slidercolor" : [ 1.0, 0.0, 0.0, 1.0 ],
					"outlettype" : [ "", "" ],
					"bgcolor" : [ 0.0, 0.0, 0.0, 0.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "Meter",
					"fontname" : "Arial",
					"id" : "obj-128",
					"presentation_rect" : [ 13.0, 160.0, 52.0, 25.0 ],
					"numinlets" : 1,
					"fontface" : 1,
					"fontsize" : 16.0,
					"numoutlets" : 0,
					"patching_rect" : [ 47.0, 97.0, 215.0, 25.0 ],
					"presentation" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "Total Syncopation",
					"linecount" : 3,
					"fontname" : "Arial",
					"frgb" : [ 0.666667, 0.0, 0.0, 1.0 ],
					"id" : "obj-126",
					"textcolor" : [ 0.666667, 0.0, 0.0, 1.0 ],
					"presentation_rect" : [ 11.0, 436.0, 149.0, 25.0 ],
					"numinlets" : 1,
					"fontface" : 1,
					"fontsize" : 16.0,
					"numoutlets" : 0,
					"patching_rect" : [ 232.0, 814.0, 76.0, 62.0 ],
					"presentation" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "EDIT",
					"fontname" : "Arial",
					"id" : "obj-125",
					"presentation_rect" : [ 336.0, 224.0, 34.0, 18.0 ],
					"numinlets" : 1,
					"fontsize" : 10.0,
					"numoutlets" : 0,
					"patching_rect" : [ 260.0, 339.0, 34.0, 18.0 ],
					"presentation" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "click",
					"fontname" : "Arial",
					"id" : "obj-123",
					"presentation_rect" : [ 381.0, 378.0, 30.0, 18.0 ],
					"numinlets" : 1,
					"fontsize" : 10.0,
					"numoutlets" : 0,
					"patching_rect" : [ 275.0, 572.0, 30.0, 18.0 ],
					"presentation" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "play",
					"fontname" : "Arial",
					"id" : "obj-121",
					"presentation_rect" : [ 331.0, 349.0, 30.0, 18.0 ],
					"numinlets" : 1,
					"fontsize" : 10.0,
					"numoutlets" : 0,
					"patching_rect" : [ 225.0, 568.0, 30.0, 18.0 ],
					"presentation" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "p",
					"fontname" : "Arial",
					"id" : "obj-119",
					"numinlets" : 4,
					"fontsize" : 10.0,
					"numoutlets" : 1,
					"patching_rect" : [ 225.0, 634.0, 173.5, 18.0 ],
					"outlettype" : [ "" ],
					"patcher" : 					{
						"fileversion" : 1,
						"appversion" : 						{
							"major" : 5,
							"minor" : 1,
							"revision" : 9
						}
,
						"rect" : [ 33.0, 75.0, 640.0, 480.0 ],
						"bglocked" : 0,
						"defrect" : [ 33.0, 75.0, 640.0, 480.0 ],
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
									"maxclass" : "newobj",
									"text" : "gate",
									"fontname" : "Arial",
									"id" : "obj-110",
									"numinlets" : 2,
									"fontsize" : 10.0,
									"numoutlets" : 1,
									"patching_rect" : [ 50.0, 274.0, 68.0, 18.0 ],
									"outlettype" : [ "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "p",
									"fontname" : "Arial",
									"id" : "obj-66",
									"numinlets" : 2,
									"fontsize" : 10.0,
									"numoutlets" : 1,
									"patching_rect" : [ 142.0, 204.0, 200.0, 18.0 ],
									"outlettype" : [ "float" ],
									"patcher" : 									{
										"fileversion" : 1,
										"appversion" : 										{
											"major" : 5,
											"minor" : 1,
											"revision" : 9
										}
,
										"rect" : [ 1031.0, 182.0, 640.0, 480.0 ],
										"bglocked" : 0,
										"defrect" : [ 1031.0, 182.0, 640.0, 480.0 ],
										"openrect" : [ 0.0, 0.0, 0.0, 0.0 ],
										"openinpresentation" : 0,
										"default_fontsize" : 10.0,
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
										"boxes" : [ 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "vexpr pow(0.5\\,$f1)",
													"fontname" : "Arial",
													"id" : "obj-70",
													"numinlets" : 1,
													"fontsize" : 10.0,
													"numoutlets" : 1,
													"patching_rect" : [ 231.0, 87.0, 100.0, 18.0 ],
													"outlettype" : [ "" ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "flonum",
													"fontname" : "Arial",
													"id" : "obj-39",
													"numinlets" : 1,
													"fontsize" : 10.0,
													"numoutlets" : 2,
													"patching_rect" : [ 98.0, 218.0, 50.0, 18.0 ],
													"outlettype" : [ "float", "bang" ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "flonum",
													"fontname" : "Arial",
													"id" : "obj-12",
													"numinlets" : 1,
													"fontsize" : 10.0,
													"numoutlets" : 2,
													"patching_rect" : [ 131.0, 153.0, 50.0, 18.0 ],
													"outlettype" : [ "float", "bang" ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "pow 1.35",
													"fontname" : "Arial",
													"id" : "obj-14",
													"numinlets" : 2,
													"fontsize" : 10.0,
													"numoutlets" : 1,
													"patching_rect" : [ 50.0, 182.0, 100.0, 18.0 ],
													"outlettype" : [ "float" ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "* 127.",
													"fontname" : "Arial",
													"id" : "obj-31",
													"numinlets" : 2,
													"fontsize" : 10.0,
													"numoutlets" : 1,
													"patching_rect" : [ 50.0, 216.0, 38.0, 18.0 ],
													"outlettype" : [ "float" ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "zl nth",
													"fontname" : "Arial",
													"id" : "obj-35",
													"numinlets" : 2,
													"fontsize" : 10.0,
													"numoutlets" : 2,
													"patching_rect" : [ 50.0, 148.0, 76.0, 18.0 ],
													"outlettype" : [ "", "" ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "t b i",
													"fontname" : "Arial",
													"id" : "obj-36",
													"numinlets" : 1,
													"fontsize" : 10.0,
													"numoutlets" : 2,
													"patching_rect" : [ 50.0, 100.0, 76.0, 18.0 ],
													"outlettype" : [ "bang", "int" ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "zl reg",
													"fontname" : "Arial",
													"id" : "obj-37",
													"numinlets" : 2,
													"fontsize" : 10.0,
													"numoutlets" : 2,
													"patching_rect" : [ 50.0, 121.0, 199.0, 18.0 ],
													"outlettype" : [ "", "" ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "inlet",
													"id" : "obj-63",
													"numinlets" : 0,
													"numoutlets" : 1,
													"patching_rect" : [ 50.0, 40.0, 25.0, 25.0 ],
													"outlettype" : [ "int" ],
													"comment" : ""
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "inlet",
													"id" : "obj-64",
													"numinlets" : 0,
													"numoutlets" : 1,
													"patching_rect" : [ 230.0, 40.0, 25.0, 25.0 ],
													"outlettype" : [ "" ],
													"comment" : ""
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "outlet",
													"id" : "obj-65",
													"numinlets" : 1,
													"numoutlets" : 0,
													"patching_rect" : [ 50.0, 302.5, 25.0, 25.0 ],
													"comment" : ""
												}

											}
 ],
										"lines" : [ 											{
												"patchline" : 												{
													"source" : [ "obj-31", 0 ],
													"destination" : [ "obj-65", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-63", 0 ],
													"destination" : [ "obj-36", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-39", 0 ],
													"destination" : [ "obj-31", 1 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-36", 0 ],
													"destination" : [ "obj-37", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-36", 1 ],
													"destination" : [ "obj-35", 1 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-37", 0 ],
													"destination" : [ "obj-35", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-14", 0 ],
													"destination" : [ "obj-31", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-35", 0 ],
													"destination" : [ "obj-14", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-12", 0 ],
													"destination" : [ "obj-14", 1 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-64", 0 ],
													"destination" : [ "obj-70", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-70", 0 ],
													"destination" : [ "obj-37", 1 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
 ]
									}
,
									"saved_object_attributes" : 									{
										"default_fontface" : 0,
										"fontname" : "Arial",
										"default_fontname" : "Arial",
										"default_fontsize" : 10.0,
										"fontface" : 0,
										"fontsize" : 10.0,
										"globalpatchername" : ""
									}

								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "p",
									"fontname" : "Arial",
									"id" : "obj-62",
									"numinlets" : 2,
									"fontsize" : 10.0,
									"numoutlets" : 1,
									"patching_rect" : [ 127.0, 183.0, 199.0, 18.0 ],
									"outlettype" : [ "float" ],
									"patcher" : 									{
										"fileversion" : 1,
										"appversion" : 										{
											"major" : 5,
											"minor" : 1,
											"revision" : 9
										}
,
										"rect" : [ 33.0, 75.0, 640.0, 480.0 ],
										"bglocked" : 0,
										"defrect" : [ 33.0, 75.0, 640.0, 480.0 ],
										"openrect" : [ 0.0, 0.0, 0.0, 0.0 ],
										"openinpresentation" : 0,
										"default_fontsize" : 10.0,
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
										"boxes" : [ 											{
												"box" : 												{
													"maxclass" : "flonum",
													"fontname" : "Arial",
													"id" : "obj-6",
													"numinlets" : 1,
													"fontsize" : 10.0,
													"numoutlets" : 2,
													"patching_rect" : [ 131.0, 153.0, 50.0, 18.0 ],
													"outlettype" : [ "float", "bang" ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "pow 1.35",
													"fontname" : "Arial",
													"id" : "obj-9",
													"numinlets" : 2,
													"fontsize" : 10.0,
													"numoutlets" : 1,
													"patching_rect" : [ 50.0, 182.0, 100.0, 18.0 ],
													"outlettype" : [ "float" ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "* 127.",
													"fontname" : "Arial",
													"id" : "obj-26",
													"numinlets" : 2,
													"fontsize" : 10.0,
													"numoutlets" : 1,
													"patching_rect" : [ 50.0, 216.0, 38.0, 18.0 ],
													"outlettype" : [ "float" ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "zl nth",
													"fontname" : "Arial",
													"id" : "obj-24",
													"numinlets" : 2,
													"fontsize" : 10.0,
													"numoutlets" : 2,
													"patching_rect" : [ 50.0, 148.0, 76.0, 18.0 ],
													"outlettype" : [ "", "" ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "t b i",
													"fontname" : "Arial",
													"id" : "obj-23",
													"numinlets" : 1,
													"fontsize" : 10.0,
													"numoutlets" : 2,
													"patching_rect" : [ 50.0, 100.0, 76.0, 18.0 ],
													"outlettype" : [ "bang", "int" ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "zl reg",
													"fontname" : "Arial",
													"id" : "obj-21",
													"numinlets" : 2,
													"fontsize" : 10.0,
													"numoutlets" : 2,
													"patching_rect" : [ 50.0, 121.0, 199.0, 18.0 ],
													"outlettype" : [ "", "" ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "inlet",
													"id" : "obj-59",
													"numinlets" : 0,
													"numoutlets" : 1,
													"patching_rect" : [ 50.0, 40.0, 25.0, 25.0 ],
													"outlettype" : [ "int" ],
													"comment" : ""
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "inlet",
													"id" : "obj-60",
													"numinlets" : 0,
													"numoutlets" : 1,
													"patching_rect" : [ 230.0, 40.0, 25.0, 25.0 ],
													"outlettype" : [ "" ],
													"comment" : ""
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "outlet",
													"id" : "obj-61",
													"numinlets" : 1,
													"numoutlets" : 0,
													"patching_rect" : [ 50.0, 294.0, 25.0, 25.0 ],
													"comment" : ""
												}

											}
 ],
										"lines" : [ 											{
												"patchline" : 												{
													"source" : [ "obj-26", 0 ],
													"destination" : [ "obj-61", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-60", 0 ],
													"destination" : [ "obj-21", 1 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-59", 0 ],
													"destination" : [ "obj-23", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-6", 0 ],
													"destination" : [ "obj-9", 1 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-24", 0 ],
													"destination" : [ "obj-9", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-9", 0 ],
													"destination" : [ "obj-26", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-21", 0 ],
													"destination" : [ "obj-24", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-23", 1 ],
													"destination" : [ "obj-24", 1 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-23", 0 ],
													"destination" : [ "obj-21", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
 ]
									}
,
									"saved_object_attributes" : 									{
										"default_fontface" : 0,
										"fontname" : "Arial",
										"default_fontname" : "Arial",
										"default_fontsize" : 10.0,
										"fontface" : 0,
										"fontsize" : 10.0,
										"globalpatchername" : ""
									}

								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "t i 0",
									"fontname" : "Arial",
									"hidden" : 1,
									"id" : "obj-43",
									"numinlets" : 1,
									"fontsize" : 10.0,
									"numoutlets" : 2,
									"patching_rect" : [ 358.0, 208.0, 42.5, 18.0 ],
									"outlettype" : [ "int", "int" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "noteout 10",
									"fontname" : "Arial",
									"id" : "obj-17",
									"numinlets" : 3,
									"fontsize" : 10.0,
									"numoutlets" : 0,
									"patching_rect" : [ 70.0, 335.0, 129.0, 18.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "pak 32 127",
									"fontname" : "Arial",
									"id" : "obj-30",
									"numinlets" : 2,
									"fontsize" : 10.0,
									"numoutlets" : 1,
									"patching_rect" : [ 99.0, 247.0, 62.0, 18.0 ],
									"outlettype" : [ "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "makenote 127 25",
									"fontname" : "Arial",
									"id" : "obj-32",
									"numinlets" : 3,
									"fontsize" : 10.0,
									"numoutlets" : 2,
									"patching_rect" : [ 70.0, 306.0, 100.0, 18.0 ],
									"outlettype" : [ "float", "float" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "zl len",
									"fontname" : "Arial",
									"id" : "obj-10",
									"numinlets" : 2,
									"fontsize" : 10.0,
									"numoutlets" : 2,
									"patching_rect" : [ 269.0, 100.0, 36.0, 18.0 ],
									"outlettype" : [ "", "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "pak 42 127",
									"fontname" : "Arial",
									"id" : "obj-27",
									"numinlets" : 2,
									"fontsize" : 10.0,
									"numoutlets" : 1,
									"patching_rect" : [ 70.0, 225.0, 76.0, 18.0 ],
									"outlettype" : [ "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "counter 0 1 12",
									"fontname" : "Arial",
									"id" : "obj-22",
									"numinlets" : 5,
									"fontsize" : 10.0,
									"numoutlets" : 4,
									"patching_rect" : [ 127.0, 130.0, 161.0, 18.0 ],
									"outlettype" : [ "int", "", "", "int" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "metro 200",
									"fontname" : "Arial",
									"id" : "obj-18",
									"numinlets" : 2,
									"fontsize" : 10.0,
									"numoutlets" : 1,
									"patching_rect" : [ 127.0, 104.0, 100.0, 18.0 ],
									"outlettype" : [ "bang" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "set $1 1",
									"fontname" : "Arial",
									"hidden" : 1,
									"id" : "obj-44",
									"numinlets" : 2,
									"fontsize" : 10.0,
									"numoutlets" : 1,
									"patching_rect" : [ 357.5, 238.0, 50.0, 16.0 ],
									"outlettype" : [ "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "inlet",
									"id" : "obj-113",
									"numinlets" : 0,
									"numoutlets" : 1,
									"patching_rect" : [ 50.0, 40.0, 25.0, 25.0 ],
									"outlettype" : [ "int" ],
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "inlet",
									"id" : "obj-114",
									"numinlets" : 0,
									"numoutlets" : 1,
									"patching_rect" : [ 19.0, 38.0, 25.0, 25.0 ],
									"outlettype" : [ "int" ],
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "inlet",
									"id" : "obj-115",
									"numinlets" : 0,
									"numoutlets" : 1,
									"patching_rect" : [ 193.0, 40.0, 25.0, 25.0 ],
									"outlettype" : [ "" ],
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "inlet",
									"id" : "obj-116",
									"numinlets" : 0,
									"numoutlets" : 1,
									"patching_rect" : [ 323.0, 40.0, 25.0, 25.0 ],
									"outlettype" : [ "" ],
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "outlet",
									"id" : "obj-118",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 352.75, 413.0, 25.0, 25.0 ],
									"comment" : ""
								}

							}
 ],
						"lines" : [ 							{
								"patchline" : 								{
									"source" : [ "obj-10", 0 ],
									"destination" : [ "obj-22", 4 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-22", 0 ],
									"destination" : [ "obj-43", 0 ],
									"hidden" : 1,
									"midpoints" : [ 136.5, 177.5, 367.5, 177.5 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-43", 0 ],
									"destination" : [ "obj-44", 0 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-22", 0 ],
									"destination" : [ "obj-62", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-66", 0 ],
									"destination" : [ "obj-30", 1 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-22", 0 ],
									"destination" : [ "obj-66", 0 ],
									"hidden" : 0,
									"midpoints" : [ 136.5, 159.5, 151.5, 159.5 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-18", 0 ],
									"destination" : [ "obj-22", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-32", 1 ],
									"destination" : [ "obj-17", 1 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-32", 0 ],
									"destination" : [ "obj-17", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-62", 0 ],
									"destination" : [ "obj-27", 1 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-27", 0 ],
									"destination" : [ "obj-32", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-110", 0 ],
									"destination" : [ "obj-32", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-30", 0 ],
									"destination" : [ "obj-110", 1 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-113", 0 ],
									"destination" : [ "obj-110", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-114", 0 ],
									"destination" : [ "obj-18", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-115", 0 ],
									"destination" : [ "obj-10", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-115", 0 ],
									"destination" : [ "obj-62", 1 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-116", 0 ],
									"destination" : [ "obj-66", 1 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-44", 0 ],
									"destination" : [ "obj-118", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-43", 1 ],
									"destination" : [ "obj-118", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
 ]
					}
,
					"saved_object_attributes" : 					{
						"default_fontface" : 0,
						"fontname" : "Arial",
						"default_fontname" : "Arial",
						"default_fontsize" : 12.0,
						"fontface" : 0,
						"fontsize" : 12.0,
						"globalpatchername" : ""
					}

				}

			}
, 			{
				"box" : 				{
					"maxclass" : "toggle",
					"bordercolor" : [ 0.258824, 0.258824, 0.258824, 1.0 ],
					"checkedcolor" : [ 0.258824, 0.258824, 0.258824, 1.0 ],
					"id" : "obj-112",
					"presentation_rect" : [ 384.0, 395.0, 20.0, 20.0 ],
					"numinlets" : 1,
					"numoutlets" : 1,
					"patching_rect" : [ 277.0, 604.0, 20.0, 20.0 ],
					"presentation" : 1,
					"outlettype" : [ "int" ],
					"bgcolor" : [ 1.0, 1.0, 1.0, 0.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "script bringtofront SyncopationLevels",
					"linecount" : 2,
					"fontname" : "Arial Bold",
					"id" : "obj-105",
					"numinlets" : 2,
					"fontsize" : 10.0,
					"numoutlets" : 1,
					"patching_rect" : [ 245.0, 430.0, 112.0, 27.0 ],
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "t b l",
					"fontname" : "Arial",
					"id" : "obj-104",
					"numinlets" : 1,
					"fontsize" : 10.0,
					"numoutlets" : 2,
					"patching_rect" : [ 245.0, 401.0, 32.5, 18.0 ],
					"outlettype" : [ "bang", "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "bondo 2 n",
					"fontname" : "Arial",
					"id" : "obj-103",
					"numinlets" : 2,
					"fontsize" : 10.0,
					"numoutlets" : 2,
					"patching_rect" : [ 439.0, 544.0, 328.0, 18.0 ],
					"outlettype" : [ "", "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "thispatcher",
					"fontname" : "Arial Bold",
					"id" : "obj-101",
					"numinlets" : 1,
					"fontsize" : 10.0,
					"numoutlets" : 2,
					"patching_rect" : [ 245.0, 502.0, 100.0, 18.0 ],
					"outlettype" : [ "", "" ],
					"save" : [ "#N", "thispatcher", ";", "#Q", "end", ";" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "script bringtofront $1",
					"fontname" : "Arial Bold",
					"id" : "obj-53",
					"numinlets" : 2,
					"fontsize" : 10.0,
					"numoutlets" : 1,
					"patching_rect" : [ 260.0, 469.0, 112.0, 16.0 ],
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "vexpr -$i1",
					"fontname" : "Arial",
					"id" : "obj-94",
					"numinlets" : 1,
					"fontsize" : 10.0,
					"numoutlets" : 1,
					"patching_rect" : [ 748.0, 493.0, 100.0, 18.0 ],
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "vexpr -$i1",
					"fontname" : "Arial",
					"id" : "obj-93",
					"numinlets" : 1,
					"fontsize" : 10.0,
					"numoutlets" : 1,
					"patching_rect" : [ 748.0, 386.0, 100.0, 18.0 ],
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "kin.factors2levels",
					"fontname" : "Arial",
					"id" : "obj-89",
					"numinlets" : 1,
					"fontsize" : 10.0,
					"numoutlets" : 1,
					"patching_rect" : [ 748.0, 334.0, 100.0, 18.0 ],
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "number",
					"fontname" : "Arial",
					"id" : "obj-96",
					"numinlets" : 1,
					"fontsize" : 10.0,
					"numoutlets" : 2,
					"patching_rect" : [ 439.0, 361.0, 50.0, 18.0 ],
					"outlettype" : [ "int", "bang" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "coll",
					"fontname" : "Arial",
					"id" : "obj-95",
					"numinlets" : 1,
					"fontsize" : 10.0,
					"numoutlets" : 4,
					"patching_rect" : [ 439.0, 387.0, 59.5, 18.0 ],
					"outlettype" : [ "", "", "", "" ],
					"coll_data" : 					{
						"count" : 6,
						"data" : [ 							{
								"key" : 1,
								"value" : [ 1, 0, 0, 0, 1, 0, 1, 0, 0, 0, 1, 0, 1, 0, 0, 0 ]
							}
, 							{
								"key" : 2,
								"value" : [ 1, 0, 0, 1, 0, 0, 1, 0, 0, 0, 1, 0, 1, 0, 0, 0 ]
							}
, 							{
								"key" : 3,
								"value" : [ 1, 0, 0, 1, 0, 0, 1, 0, 0, 0, 1, 1, 0, 0, 0, 0 ]
							}
, 							{
								"key" : 4,
								"value" : [ 1, 0, 0, 1, 0, 0, 0, 1, 0, 0, 1, 0, 1, 0, 0, 0 ]
							}
, 							{
								"key" : 5,
								"value" : [ 1, 0, 0, 1, 0, 0, 1, 0, 0, 0, 1, 0, 0, 1, 0, 0 ]
							}
, 							{
								"key" : 6,
								"value" : [ 1, 0, 0, 1, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1, 0 ]
							}
 ]
					}
,
					"saved_object_attributes" : 					{
						"embed" : 1
					}

				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "p \"calculate maximum score\"",
					"linecount" : 2,
					"fontname" : "Arial",
					"id" : "obj-79",
					"numinlets" : 1,
					"fontsize" : 10.0,
					"numoutlets" : 1,
					"patching_rect" : [ 835.0, 621.0, 117.0, 29.0 ],
					"outlettype" : [ "" ],
					"patcher" : 					{
						"fileversion" : 1,
						"appversion" : 						{
							"major" : 5,
							"minor" : 1,
							"revision" : 9
						}
,
						"rect" : [ 33.0, 75.0, 640.0, 480.0 ],
						"bglocked" : 0,
						"defrect" : [ 33.0, 75.0, 640.0, 480.0 ],
						"openrect" : [ 0.0, 0.0, 0.0, 0.0 ],
						"openinpresentation" : 0,
						"default_fontsize" : 10.0,
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
									"text" : "clip 0. 1.",
									"fontname" : "Arial",
									"id" : "obj-80",
									"numinlets" : 3,
									"fontsize" : 10.0,
									"numoutlets" : 1,
									"patching_rect" : [ 50.0, 261.0, 51.0, 18.0 ],
									"outlettype" : [ "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "zl sum",
									"fontname" : "Arial",
									"id" : "obj-81",
									"numinlets" : 2,
									"fontsize" : 10.0,
									"numoutlets" : 2,
									"patching_rect" : [ 50.0, 282.0, 40.0, 18.0 ],
									"outlettype" : [ "", "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "vexpr $f1*(1. - pow( 0.5\\, abs($i2)))",
									"linecount" : 2,
									"fontname" : "Arial",
									"id" : "obj-78",
									"numinlets" : 2,
									"fontsize" : 10.0,
									"numoutlets" : 1,
									"patching_rect" : [ 50.0, 235.0, 163.0, 29.0 ],
									"outlettype" : [ "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "vexpr ($i1==$i2) @scalarmode 1",
									"linecount" : 2,
									"fontname" : "Arial",
									"id" : "obj-75",
									"numinlets" : 2,
									"fontsize" : 10.0,
									"numoutlets" : 1,
									"patching_rect" : [ 50.0, 135.0, 100.0, 29.0 ],
									"outlettype" : [ "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "maximum",
									"linecount" : 2,
									"fontname" : "Arial",
									"id" : "obj-74",
									"numinlets" : 2,
									"fontsize" : 10.0,
									"numoutlets" : 2,
									"patching_rect" : [ 131.0, 100.0, 54.0, 29.0 ],
									"outlettype" : [ "int", "int" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "kin.offBeatDetector",
									"fontname" : "Arial",
									"id" : "obj-35",
									"textcolor" : [ 0.470588, 0.113725, 0.545098, 1.0 ],
									"numinlets" : 3,
									"fontsize" : 12.0,
									"numoutlets" : 1,
									"patching_rect" : [ 50.0, 194.0, 227.0, 20.0 ],
									"color" : [ 0.239216, 0.643137, 0.709804, 1.0 ],
									"outlettype" : [ "" ],
									"bgcolor" : [ 0.678431, 0.819608, 0.819608, 1.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "inlet",
									"id" : "obj-76",
									"numinlets" : 0,
									"numoutlets" : 1,
									"patching_rect" : [ 141.333313, 40.0, 25.0, 25.0 ],
									"outlettype" : [ "" ],
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "outlet",
									"id" : "obj-77",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 50.0, 360.0, 25.0, 25.0 ],
									"comment" : ""
								}

							}
 ],
						"lines" : [ 							{
								"patchline" : 								{
									"source" : [ "obj-76", 0 ],
									"destination" : [ "obj-78", 1 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-76", 0 ],
									"destination" : [ "obj-35", 2 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-74", 0 ],
									"destination" : [ "obj-75", 1 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-76", 0 ],
									"destination" : [ "obj-74", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-81", 0 ],
									"destination" : [ "obj-77", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-76", 0 ],
									"destination" : [ "obj-75", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-75", 0 ],
									"destination" : [ "obj-35", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-80", 0 ],
									"destination" : [ "obj-81", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-35", 0 ],
									"destination" : [ "obj-78", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-78", 0 ],
									"destination" : [ "obj-80", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
 ]
					}
,
					"saved_object_attributes" : 					{
						"default_fontface" : 0,
						"fontname" : "Arial",
						"default_fontname" : "Arial",
						"default_fontsize" : 10.0,
						"fontface" : 0,
						"fontsize" : 10.0,
						"globalpatchername" : ""
					}

				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "syncopation should be something temporary and not constant! There should be a final weight which relates to how many pulses are conflicting the meter and how they are spaced and if they are very regular and close to each other then probably the value of syncopation should be lowered!!!!",
					"linecount" : 7,
					"fontname" : "Arial",
					"id" : "obj-92",
					"numinlets" : 1,
					"fontsize" : 10.0,
					"numoutlets" : 0,
					"patching_rect" : [ 1170.0, 873.0, 224.0, 87.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "normalized to maximum (0 ~ 1)",
					"linecount" : 2,
					"fontname" : "Arial",
					"frgb" : [ 0.666667, 0.0, 0.0, 1.0 ],
					"id" : "obj-88",
					"textcolor" : [ 0.666667, 0.0, 0.0, 1.0 ],
					"presentation_rect" : [ 11.0, 534.0, 241.0, 25.0 ],
					"numinlets" : 1,
					"fontface" : 1,
					"fontsize" : 16.0,
					"numoutlets" : 0,
					"patching_rect" : [ 581.0, 891.0, 196.0, 43.0 ],
					"presentation" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "flonum",
					"fontname" : "Arial",
					"id" : "obj-84",
					"numinlets" : 1,
					"fontsize" : 10.0,
					"numoutlets" : 2,
					"patching_rect" : [ 852.0, 681.0, 75.0, 18.0 ],
					"outlettype" : [ "float", "bang" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "flonum",
					"ignoreclick" : 1,
					"bordercolor" : [ 0.623529, 0.0, 0.0, 0.0 ],
					"fontname" : "Arial",
					"hbgcolor" : [ 0.776471, 0.0, 0.0, 0.0 ],
					"id" : "obj-83",
					"textcolor" : [ 0.72549, 0.0, 0.0, 1.0 ],
					"presentation_rect" : [ 262.0, 534.0, 59.0, 23.0 ],
					"numinlets" : 1,
					"fontface" : 1,
					"triangle" : 0,
					"fontsize" : 14.0,
					"numoutlets" : 2,
					"patching_rect" : [ 509.0, 898.0, 59.0, 23.0 ],
					"presentation" : 1,
					"outlettype" : [ "float", "bang" ],
					"bgcolor" : [ 1.0, 1.0, 1.0, 0.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "/ 1.",
					"fontname" : "Arial",
					"id" : "obj-82",
					"numinlets" : 2,
					"fontsize" : 10.0,
					"numoutlets" : 1,
					"patching_rect" : [ 509.0, 869.0, 346.0, 18.0 ],
					"outlettype" : [ "float" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "vexpr $f1*(1. - pow( 0.5\\, abs($i2)))",
					"fontname" : "Arial",
					"id" : "obj-72",
					"numinlets" : 2,
					"fontsize" : 10.0,
					"numoutlets" : 1,
					"patching_rect" : [ 439.0, 699.0, 363.0, 18.0 ],
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "clip 0. 1.",
					"fontname" : "Arial",
					"id" : "obj-71",
					"numinlets" : 3,
					"fontsize" : 10.0,
					"numoutlets" : 1,
					"patching_rect" : [ 439.0, 734.0, 51.0, 18.0 ],
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "maybe negadive difference must have less \"weight\" than positive ones. (for fade in and outs)",
					"linecount" : 4,
					"fontname" : "Arial",
					"id" : "obj-73",
					"numinlets" : 1,
					"fontsize" : 10.0,
					"numoutlets" : 0,
					"patching_rect" : [ 1184.0, 812.0, 150.0, 52.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "zl len",
					"fontname" : "Arial",
					"hidden" : 1,
					"id" : "obj-63",
					"numinlets" : 2,
					"fontsize" : 10.0,
					"numoutlets" : 2,
					"patching_rect" : [ 353.0, 567.0, 36.0, 18.0 ],
					"outlettype" : [ "", "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "preset",
					"id" : "obj-14",
					"numinlets" : 1,
					"numoutlets" : 4,
					"patching_rect" : [ 1339.0, 251.0, 42.0, 284.0 ],
					"outlettype" : [ "preset", "int", "preset", "int" ],
					"preset_data" : [ 						{
							"number" : 1,
							"data" : [ 20, "<invalid>", "multislider", "list", 0.0, -3.0, -2.0, -3.0, -0.188679, -3.0, -2.0, -3.0, 0.0, -3.0, -2.0, -3.0, 0.0, -3.0, -2.0, -3.0, 20, "obj-7", "multislider", "list", 1.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 1.0, 0.0, 0.0, 0.0 ]
						}
, 						{
							"number" : 2,
							"data" : [ 20, "<invalid>", "multislider", "list", 0.0, -3.0, -2.0, -3.0, -0.283019, -3.0, -2.0, -3.0, 0.0, -3.0, -2.0, -3.0, -0.377358, -3.0, -2.0, -3.0, 20, "obj-7", "multislider", "list", 1.0, 0.774194, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0 ]
						}
, 						{
							"number" : 3,
							"data" : [ 20, "<invalid>", "multislider", "list", 0.0, -3.0, -2.0, -3.0, -0.377358, -3.0, -2.0, -3.0, 0.0, -3.0, -2.0, -3.0, -0.188679, -3.0, -2.0, -3.0, 20, "obj-7", "multislider", "list", 1.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 1.0, 0.0, 0.806452, 0.0, 0.0, 0.0, 0.0, 0.0 ]
						}
, 						{
							"number" : 8,
							"data" : [ 20, "<invalid>", "multislider", "list", 0.0, -3.0, -2.0, -3.0, -0.09434, -3.0, -2.0, -3.0, 0.0, -3.0, -2.0, -3.0, 0.0, -3.0, -2.0, -3.0, 20, "obj-7", "multislider", "list", 0.0, 0.064516, 0.0, 0.103226, 0.0, 0.090323, 0.0, 0.116129, 0.0, 0.090323, 0.0, 0.103226, 0.0, 0.096774, 0.0, 0.135484 ]
						}
, 						{
							"number" : 9,
							"data" : [ 20, "<invalid>", "multislider", "list", 0.0, -3.0, -2.0, -3.0, -0.188679, -3.0, -2.0, -3.0, 0.0, -3.0, -2.0, -3.0, -0.283019, -3.0, -2.0, -3.0, 20, "obj-7", "multislider", "list", 1.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.309677, 0.0, 0.0, 0.0, 0.0, 0.0 ]
						}
, 						{
							"number" : 10,
							"data" : [ 20, "<invalid>", "multislider", "list", 0.0, -3.0, -2.0, -3.0, -0.188679, -3.0, -2.0, -3.0, 0.0, -3.0, -2.0, -3.0, -0.377358, -3.0, -2.0, -3.0, 20, "obj-7", "multislider", "list", 1.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.316129, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0 ]
						}
, 						{
							"number" : 11,
							"data" : [ 20, "<invalid>", "multislider", "list", 0.0, -3.0, -2.0, -3.0, -0.09434, -3.0, -2.0, -3.0, 0.0, -3.0, -2.0, -3.0, -0.09434, -3.0, -2.0, -3.0, 20, "obj-7", "multislider", "list", 1.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.832258, 0.0 ]
						}
, 						{
							"number" : 16,
							"data" : [ 20, "<invalid>", "multislider", "list", 0.0, -3.0, -2.0, -3.0, -0.188679, -3.0, -2.0, -3.0, 0.0, -3.0, -2.0, -3.0, -0.188679, -3.0, -2.0, -3.0, 20, "obj-7", "multislider", "list", 0.0, 1.0, 0.0, 0.993548, 0.0, 0.980645, 0.0, 0.993548, 0.0, 0.993548, 0.0, 0.993548, 0.0, 0.980645, 0.0, 0.980645 ]
						}
, 						{
							"number" : 17,
							"data" : [ 20, "<invalid>", "multislider", "list", 0.0, -3.0, -2.0, -3.0, -0.377358, -3.0, -2.0, -3.0, 0.0, -3.0, -2.0, -3.0, -0.09434, -3.0, -2.0, -3.0, 20, "obj-7", "multislider", "list", 1.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.283871, 0.0, 0.0, 0.0, 0.0 ]
						}
, 						{
							"number" : 18,
							"data" : [ 20, "<invalid>", "multislider", "list", 0.0, -3.0, -2.0, -3.0, -0.188679, -3.0, -2.0, -3.0, 0.0, -3.0, -2.0, -3.0, -0.377358, -3.0, -2.0, -3.0, 20, "obj-7", "multislider", "list", 1.0, 0.0, 0.0, 0.0, 0.0, 0.270968, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0 ]
						}
, 						{
							"number" : 19,
							"data" : [ 20, "<invalid>", "multislider", "list", 0.0, -3.0, -2.0, -3.0, -0.377358, -3.0, -2.0, -3.0, 0.0, -3.0, -2.0, -3.0, -0.188679, -3.0, -2.0, -3.0, 20, "obj-7", "multislider", "list", 0.0, 0.264516, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0 ]
						}
, 						{
							"number" : 67,
							"data" : [ 18, "obj-7", "multislider", "list", 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 18, "<invalid>", "multislider", "list", 0, -3, -1, -3, 0, -3, -1, -3, 0, -3, -2, -3, -1, -3 ]
						}
, 						{
							"number" : 75,
							"data" : [ 11, "<invalid>", "multislider", "list", 0.0, -1.981132, 0.0, -1.981132, 0.0, -1.981132, -1.981132, 11, "obj-7", "multislider", "list", 1.0, 0.0, 0.058065, 1.0, 0.0, 0.0, 0.0 ]
						}
 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "average (0 ~ 1)",
					"linecount" : 2,
					"fontname" : "Arial",
					"frgb" : [ 0.666667, 0.0, 0.0, 1.0 ],
					"id" : "obj-55",
					"textcolor" : [ 0.666667, 0.0, 0.0, 1.0 ],
					"presentation_rect" : [ 11.0, 503.0, 120.0, 25.0 ],
					"numinlets" : 1,
					"fontface" : 1,
					"fontsize" : 16.0,
					"numoutlets" : 0,
					"patching_rect" : [ 356.0, 860.0, 81.0, 43.0 ],
					"presentation" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "absolute",
					"fontname" : "Arial",
					"frgb" : [ 0.666667, 0.0, 0.0, 1.0 ],
					"id" : "obj-54",
					"textcolor" : [ 0.666667, 0.0, 0.0, 1.0 ],
					"presentation_rect" : [ 11.0, 469.0, 76.0, 25.0 ],
					"numinlets" : 1,
					"fontface" : 1,
					"fontsize" : 16.0,
					"numoutlets" : 0,
					"patching_rect" : [ 359.0, 804.0, 76.0, 25.0 ],
					"presentation" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "flonum",
					"ignoreclick" : 1,
					"bordercolor" : [ 0.623529, 0.0, 0.0, 0.0 ],
					"fontname" : "Arial",
					"hbgcolor" : [ 0.776471, 0.0, 0.0, 0.0 ],
					"id" : "obj-51",
					"textcolor" : [ 0.72549, 0.0, 0.0, 1.0 ],
					"presentation_rect" : [ 262.0, 503.0, 59.0, 23.0 ],
					"numinlets" : 1,
					"fontface" : 1,
					"triangle" : 0,
					"fontsize" : 14.0,
					"numoutlets" : 2,
					"patching_rect" : [ 439.0, 859.0, 59.0, 23.0 ],
					"presentation" : 1,
					"outlettype" : [ "float", "bang" ],
					"bgcolor" : [ 1.0, 1.0, 1.0, 0.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "/ 1.",
					"fontname" : "Arial",
					"id" : "obj-49",
					"numinlets" : 2,
					"fontsize" : 10.0,
					"numoutlets" : 1,
					"patching_rect" : [ 439.0, 834.0, 103.0, 18.0 ],
					"outlettype" : [ "float" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "number",
					"fontname" : "Arial",
					"id" : "obj-47",
					"numinlets" : 1,
					"fontsize" : 10.0,
					"numoutlets" : 2,
					"patching_rect" : [ 523.0, 814.0, 50.0, 18.0 ],
					"outlettype" : [ "int", "bang" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "zl sum",
					"fontname" : "Arial",
					"id" : "obj-46",
					"numinlets" : 2,
					"fontsize" : 10.0,
					"numoutlets" : 2,
					"patching_rect" : [ 523.0, 791.0, 40.0, 18.0 ],
					"outlettype" : [ "", "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "vexpr $f1!=0.",
					"fontname" : "Arial",
					"id" : "obj-45",
					"numinlets" : 1,
					"fontsize" : 10.0,
					"numoutlets" : 1,
					"patching_rect" : [ 523.0, 768.0, 100.0, 18.0 ],
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "flonum",
					"ignoreclick" : 1,
					"bordercolor" : [ 0.623529, 0.0, 0.0, 0.0 ],
					"fontname" : "Arial",
					"hbgcolor" : [ 0.776471, 0.0, 0.0, 0.0 ],
					"id" : "obj-41",
					"textcolor" : [ 0.72549, 0.0, 0.0, 1.0 ],
					"presentation_rect" : [ 262.0, 469.0, 59.0, 23.0 ],
					"numinlets" : 1,
					"fontface" : 1,
					"triangle" : 0,
					"fontsize" : 14.0,
					"numoutlets" : 2,
					"patching_rect" : [ 439.0, 806.0, 59.0, 23.0 ],
					"presentation" : 1,
					"outlettype" : [ "float", "bang" ],
					"bgcolor" : [ 1.0, 1.0, 1.0, 0.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "zl sum",
					"fontname" : "Arial",
					"id" : "obj-40",
					"numinlets" : 2,
					"fontsize" : 10.0,
					"numoutlets" : 2,
					"patching_rect" : [ 439.0, 785.0, 40.0, 18.0 ],
					"outlettype" : [ "", "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "toggle",
					"bordercolor" : [ 0.258824, 0.258824, 0.258824, 1.0 ],
					"checkedcolor" : [ 0.258824, 0.258824, 0.258824, 1.0 ],
					"id" : "obj-20",
					"presentation_rect" : [ 329.0, 370.0, 45.0, 45.0 ],
					"numinlets" : 1,
					"numoutlets" : 1,
					"patching_rect" : [ 225.0, 590.0, 33.0, 33.0 ],
					"presentation" : 1,
					"outlettype" : [ "int" ],
					"bgcolor" : [ 1.0, 1.0, 1.0, 0.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"varname" : "prime",
					"text" : "kin.stratify",
					"fontname" : "Arial",
					"id" : "obj-13",
					"numinlets" : 3,
					"fontsize" : 12.0,
					"numoutlets" : 2,
					"patching_rect" : [ 748.0, 293.0, 167.0, 20.0 ],
					"outlettype" : [ "", "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "umenu",
					"items" : [ "1n", ",", "2n", ",", "4n", ",", "8n", ",", "16n", ",", "32n", ",", "64n", ",", "128n" ],
					"fontname" : "Arial",
					"types" : [  ],
					"framecolor" : [ 0.258824, 0.258824, 0.258824, 1.0 ],
					"id" : "obj-109",
					"textcolor" : [ 0.258824, 0.258824, 0.258824, 1.0 ],
					"presentation_rect" : [ 144.0, 191.0, 82.0, 20.0 ],
					"numinlets" : 1,
					"fontsize" : 12.0,
					"numoutlets" : 3,
					"patching_rect" : [ 864.0, 258.0, 82.0, 20.0 ],
					"presentation" : 1,
					"outlettype" : [ "int", "", "" ],
					"bgcolor" : [ 1.0, 1.0, 1.0, 0.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "umenu",
					"items" : [ 2, ",", 4, ",", 8, ",", 16 ],
					"fontname" : "Arial",
					"types" : [  ],
					"framecolor" : [ 0.258824, 0.258824, 0.258824, 1.0 ],
					"id" : "obj-108",
					"textcolor" : [ 0.258824, 0.258824, 0.258824, 1.0 ],
					"presentation_rect" : [ 75.0, 191.0, 47.0, 20.0 ],
					"numinlets" : 1,
					"fontsize" : 12.0,
					"numoutlets" : 3,
					"patching_rect" : [ 806.0, 258.0, 50.0, 20.0 ],
					"presentation" : 1,
					"outlettype" : [ "int", "", "" ],
					"bgcolor" : [ 1.0, 1.0, 1.0, 0.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "number",
					"bordercolor" : [ 0.258824, 0.258824, 0.258824, 1.0 ],
					"fontname" : "Arial",
					"id" : "obj-111",
					"textcolor" : [ 0.258824, 0.258824, 0.258824, 1.0 ],
					"presentation_rect" : [ 13.0, 191.0, 51.0, 20.0 ],
					"numinlets" : 1,
					"triscale" : 0.5,
					"fontface" : 1,
					"fontsize" : 12.0,
					"numoutlets" : 2,
					"patching_rect" : [ 748.0, 258.0, 51.0, 20.0 ],
					"presentation" : 1,
					"outlettype" : [ "int", "bang" ],
					"bgcolor" : [ 1.0, 1.0, 1.0, 0.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "kin.offBeatDetector",
					"fontname" : "Arial",
					"id" : "obj-1",
					"textcolor" : [ 0.470588, 0.113725, 0.545098, 1.0 ],
					"numinlets" : 3,
					"fontsize" : 18.0,
					"numoutlets" : 1,
					"patching_rect" : [ 439.0, 642.0, 328.0, 27.0 ],
					"color" : [ 0.239216, 0.643137, 0.709804, 1.0 ],
					"outlettype" : [ "" ],
					"bgcolor" : [ 0.678431, 0.819608, 0.819608, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "clearall",
					"fontname" : "Arial",
					"id" : "obj-39",
					"numinlets" : 2,
					"fontsize" : 10.0,
					"numoutlets" : 1,
					"patching_rect" : [ 1337.0, 230.0, 50.0, 16.0 ],
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "size $1",
					"fontname" : "Arial",
					"hidden" : 1,
					"id" : "obj-68",
					"numinlets" : 2,
					"fontsize" : 10.0,
					"numoutlets" : 1,
					"patching_rect" : [ 353.0, 590.0, 43.0, 16.0 ],
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "multislider",
					"ignoreclick" : 1,
					"border_left" : 0,
					"id" : "obj-42",
					"border_right" : 0,
					"presentation_rect" : [ 10.0, 218.0, 294.0, 200.0 ],
					"numinlets" : 1,
					"setstyle" : 1,
					"numoutlets" : 2,
					"border_top" : 0,
					"patching_rect" : [ 225.0, 670.0, 53.0, 51.0 ],
					"size" : 16,
					"presentation" : 1,
					"setminmax" : [ 0.0, 1.0 ],
					"slidercolor" : [ 0.454902, 0.972549, 1.0, 0.266667 ],
					"outlettype" : [ "", "" ],
					"border_bottom" : 0,
					"bgcolor" : [ 0.0, 0.0, 0.0, 0.0 ]
				}

			}
 ],
		"lines" : [ 			{
				"patchline" : 				{
					"source" : [ "obj-9", 1 ],
					"destination" : [ "obj-104", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-2", 0 ],
					"destination" : [ "obj-6", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-2", 0 ],
					"destination" : [ "obj-5", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-2", 0 ],
					"destination" : [ "obj-4", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-6", 0 ],
					"destination" : [ "obj-109", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-5", 0 ],
					"destination" : [ "obj-108", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-4", 0 ],
					"destination" : [ "obj-111", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-112", 0 ],
					"destination" : [ "obj-119", 1 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-20", 0 ],
					"destination" : [ "obj-119", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-103", 0 ],
					"destination" : [ "obj-119", 2 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-103", 1 ],
					"destination" : [ "obj-119", 3 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-119", 0 ],
					"destination" : [ "obj-42", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-104", 0 ],
					"destination" : [ "obj-105", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-104", 1 ],
					"destination" : [ "obj-53", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-94", 0 ],
					"destination" : [ "obj-103", 1 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-103", 1 ],
					"destination" : [ "obj-72", 1 ],
					"hidden" : 0,
					"midpoints" : [ 757.5, 626.5, 792.5, 626.5 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-103", 1 ],
					"destination" : [ "obj-1", 2 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-103", 1 ],
					"destination" : [ "obj-79", 0 ],
					"hidden" : 0,
					"midpoints" : [ 757.5, 596.0, 844.5, 596.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-103", 1 ],
					"destination" : [ "obj-63", 0 ],
					"hidden" : 1,
					"midpoints" : [ 757.5, 566.0, 362.5, 566.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-7", 0 ],
					"destination" : [ "obj-103", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-103", 0 ],
					"destination" : [ "obj-1", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-103", 0 ],
					"destination" : [ "obj-45", 0 ],
					"hidden" : 0,
					"midpoints" : [ 448.5, 624.0, 532.5, 624.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-53", 0 ],
					"destination" : [ "obj-101", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-93", 0 ],
					"destination" : [ "obj-117", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-117", 0 ],
					"destination" : [ "obj-94", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-68", 0 ],
					"destination" : [ "obj-7", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-72", 0 ],
					"destination" : [ "obj-71", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-89", 0 ],
					"destination" : [ "obj-93", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-13", 0 ],
					"destination" : [ "obj-89", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-96", 0 ],
					"destination" : [ "obj-95", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-95", 0 ],
					"destination" : [ "obj-7", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-82", 0 ],
					"destination" : [ "obj-83", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-41", 0 ],
					"destination" : [ "obj-82", 0 ],
					"hidden" : 0,
					"midpoints" : [ 448.5, 833.5, 518.5, 833.5 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-63", 0 ],
					"destination" : [ "obj-68", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-68", 0 ],
					"destination" : [ "obj-42", 0 ],
					"hidden" : 1,
					"midpoints" : [ 362.5, 658.0, 234.5, 658.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-49", 0 ],
					"destination" : [ "obj-51", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-47", 0 ],
					"destination" : [ "obj-49", 1 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-41", 0 ],
					"destination" : [ "obj-49", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-46", 0 ],
					"destination" : [ "obj-47", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-45", 0 ],
					"destination" : [ "obj-46", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-40", 0 ],
					"destination" : [ "obj-41", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-111", 0 ],
					"destination" : [ "obj-13", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-109", 1 ],
					"destination" : [ "obj-13", 2 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-108", 1 ],
					"destination" : [ "obj-13", 1 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-13", 1 ],
					"destination" : [ "obj-109", 0 ],
					"hidden" : 0,
					"midpoints" : [ 905.5, 320.0, 961.5, 320.0, 961.5, 248.0, 873.5, 248.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-14", 0 ],
					"destination" : [ "obj-7", 0 ],
					"hidden" : 1,
					"color" : [ 0.0, 0.0, 0.0, 0.121569 ],
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-39", 0 ],
					"destination" : [ "obj-14", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-71", 0 ],
					"destination" : [ "obj-8", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-71", 0 ],
					"destination" : [ "obj-40", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-1", 0 ],
					"destination" : [ "obj-72", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-79", 0 ],
					"destination" : [ "obj-82", 1 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-79", 0 ],
					"destination" : [ "obj-84", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
 ]
	}

}
