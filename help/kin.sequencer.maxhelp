{
	"patcher" : 	{
		"fileversion" : 1,
		"appversion" : 		{
			"major" : 5,
			"minor" : 1,
			"revision" : 9
		}
,
		"rect" : [ 322.0, 71.0, 781.0, 780.0 ],
		"bglocked" : 0,
		"defrect" : [ 322.0, 71.0, 781.0, 780.0 ],
		"openrect" : [ 0.0, 0.0, 0.0, 0.0 ],
		"openinpresentation" : 0,
		"default_fontsize" : 12.0,
		"default_fontface" : 1,
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
					"patching_rect" : [ 6.0, 631.0, 167.0, 20.0 ],
					"fontsize" : 12.0,
					"numinlets" : 1,
					"id" : "obj-5"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "p \"Paramters of the Sequencer\"",
					"fontname" : "Arial",
					"numoutlets" : 0,
					"patching_rect" : [ 385.0, 149.0, 250.0, 25.0 ],
					"fontface" : 1,
					"fontsize" : 16.0,
					"numinlets" : 0,
					"id" : "obj-10",
					"patcher" : 					{
						"fileversion" : 1,
						"appversion" : 						{
							"major" : 5,
							"minor" : 1,
							"revision" : 9
						}
,
						"rect" : [ 1180.0, 185.0, 530.0, 487.0 ],
						"bglocked" : 0,
						"defrect" : [ 1180.0, 185.0, 530.0, 487.0 ],
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
									"maxclass" : "comment",
									"text" : "stable",
									"fontname" : "Arial",
									"numoutlets" : 0,
									"patching_rect" : [ 53.0, 376.0, 52.0, 25.0 ],
									"fontsize" : 16.0,
									"numinlets" : 1,
									"id" : "obj-90"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "variations",
									"fontname" : "Arial",
									"numoutlets" : 0,
									"patching_rect" : [ 28.0, 287.0, 77.0, 25.0 ],
									"fontsize" : 16.0,
									"numinlets" : 1,
									"id" : "obj-89"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "density",
									"fontname" : "Arial",
									"numoutlets" : 0,
									"patching_rect" : [ 81.0, 213.0, 64.0, 25.0 ],
									"fontsize" : 16.0,
									"numinlets" : 1,
									"id" : "obj-88"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "syncopate",
									"fontname" : "Arial",
									"numoutlets" : 0,
									"patching_rect" : [ 80.0, 135.0, 81.0, 25.0 ],
									"fontsize" : 16.0,
									"numinlets" : 1,
									"id" : "obj-87"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "exp",
									"fontname" : "Arial",
									"numoutlets" : 0,
									"patching_rect" : [ 78.0, 55.0, 36.0, 25.0 ],
									"fontsize" : 16.0,
									"numinlets" : 1,
									"id" : "obj-86"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "s toSeq",
									"fontname" : "Arial",
									"numoutlets" : 0,
									"patching_rect" : [ 28.0, 337.0, 55.0, 20.0 ],
									"fontsize" : 12.0,
									"numinlets" : 1,
									"id" : "obj-84"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "The stable flag controls the way the perfromance varies. In stable mode (default) the variations revolve around an initial pattern. When off, the variations always lead to new patterns.\nTry Increasing the variations and then puting them back to zero in the two modes. Notice the difference?",
									"linecount" : 6,
									"fontname" : "Arial",
									"numoutlets" : 0,
									"patching_rect" : [ 129.0, 367.0, 329.0, 89.0 ],
									"fontsize" : 12.0,
									"numinlets" : 1,
									"id" : "obj-58"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "The two numbers determine the variation in the resulted perfromance. The first controls the general variation of the triggered events and the second the variation in syncopation, by anticipating different events in each cycle",
									"linecount" : 5,
									"fontname" : "Arial",
									"numoutlets" : 0,
									"patching_rect" : [ 210.0, 275.0, 250.0, 75.0 ],
									"fontsize" : 12.0,
									"numinlets" : 1,
									"id" : "obj-54"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "Controls the density of events per cycle. Zero means no events get triggered. One means maximum density, which depends on the input probabilities",
									"linecount" : 3,
									"fontname" : "Arial",
									"numoutlets" : 0,
									"patching_rect" : [ 147.0, 212.0, 302.0, 48.0 ],
									"fontsize" : 12.0,
									"numinlets" : 1,
									"id" : "obj-52"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "Parameters of the sequencer",
									"fontname" : "Arial",
									"numoutlets" : 0,
									"patching_rect" : [ 26.0, 13.0, 231.0, 25.0 ],
									"fontface" : 1,
									"fontsize" : 16.0,
									"numinlets" : 1,
									"id" : "obj-47"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "toggle",
									"numoutlets" : 1,
									"outlettype" : [ "int" ],
									"patching_rect" : [ 28.0, 376.0, 20.0, 20.0 ],
									"numinlets" : 1,
									"id" : "obj-22"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "flonum",
									"fontname" : "Arial",
									"numoutlets" : 2,
									"minimum" : -1.0,
									"triscale" : 0.5,
									"outlettype" : [ "float", "bang" ],
									"maximum" : 1.0,
									"patching_rect" : [ 28.0, 213.0, 50.0, 20.0 ],
									"bordercolor" : [ 0.0, 0.07451, 0.74902, 1.0 ],
									"fontface" : 1,
									"fontsize" : 12.0,
									"numinlets" : 1,
									"id" : "obj-20",
									"textcolor" : [ 0.0, 0.078431, 0.8, 1.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "flonum",
									"fontname" : "Arial",
									"numoutlets" : 2,
									"minimum" : 0.0,
									"triscale" : 0.5,
									"outlettype" : [ "float", "bang" ],
									"maximum" : 1.0,
									"patching_rect" : [ 159.0, 287.0, 50.0, 20.0 ],
									"bordercolor" : [ 0.0, 0.07451, 0.74902, 1.0 ],
									"fontface" : 1,
									"fontsize" : 12.0,
									"numinlets" : 1,
									"id" : "obj-69",
									"textcolor" : [ 0.0, 0.078431, 0.8, 1.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "flonum",
									"fontname" : "Arial",
									"numoutlets" : 2,
									"minimum" : 0.0,
									"triscale" : 0.5,
									"outlettype" : [ "float", "bang" ],
									"maximum" : 1.0,
									"patching_rect" : [ 107.0, 287.0, 50.0, 20.0 ],
									"bordercolor" : [ 0.0, 0.07451, 0.74902, 1.0 ],
									"fontface" : 1,
									"fontsize" : 12.0,
									"numinlets" : 1,
									"id" : "obj-74",
									"textcolor" : [ 0.0, 0.078431, 0.8, 1.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "pak variations 0. 0.",
									"fontname" : "Arial",
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 28.0, 315.0, 155.0, 20.0 ],
									"fontsize" : 12.0,
									"numinlets" : 3,
									"id" : "obj-75"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "Syncopation is generated by anticipating events. The higher this factor, the higher  the probability of anticipating an event. Ranges between 0. and  1. ",
									"linecount" : 3,
									"fontname" : "Arial",
									"numoutlets" : 0,
									"patching_rect" : [ 162.0, 133.0, 293.0, 48.0 ],
									"fontsize" : 12.0,
									"numinlets" : 1,
									"id" : "obj-62"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "flonum",
									"fontname" : "Arial",
									"numoutlets" : 2,
									"minimum" : -1.0,
									"triscale" : 0.5,
									"outlettype" : [ "float", "bang" ],
									"maximum" : 1.0,
									"patching_rect" : [ 28.0, 135.0, 50.0, 20.0 ],
									"bordercolor" : [ 0.0, 0.07451, 0.74902, 1.0 ],
									"fontface" : 1,
									"fontsize" : 12.0,
									"numinlets" : 1,
									"id" : "obj-60",
									"textcolor" : [ 0.0, 0.078431, 0.8, 1.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "An exponantial factor controls the strength of the metrical feel in the resulted perfromance. When zero, all pulses have the equal probability of triggering an event. When equals one, the probabilities are equal to the input list",
									"linecount" : 4,
									"fontname" : "Arial",
									"numoutlets" : 0,
									"patching_rect" : [ 117.0, 55.0, 327.0, 62.0 ],
									"fontsize" : 12.0,
									"numinlets" : 1,
									"id" : "obj-56"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "flonum",
									"fontname" : "Arial",
									"numoutlets" : 2,
									"minimum" : 0.0,
									"triscale" : 0.5,
									"outlettype" : [ "float", "bang" ],
									"maximum" : 1.0,
									"patching_rect" : [ 28.0, 55.0, 50.0, 20.0 ],
									"bordercolor" : [ 0.0, 0.07451, 0.74902, 1.0 ],
									"fontface" : 1,
									"fontsize" : 12.0,
									"numinlets" : 1,
									"id" : "obj-55",
									"textcolor" : [ 0.0, 0.078431, 0.8, 1.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : ";\r\ntoSeq exp $1",
									"linecount" : 2,
									"fontname" : "Arial",
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 28.0, 87.0, 81.0, 32.0 ],
									"fontsize" : 12.0,
									"numinlets" : 2,
									"id" : "obj-27"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : ";\r\ntoSeq syncopate $1",
									"linecount" : 2,
									"fontname" : "Arial",
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 28.0, 163.0, 118.0, 32.0 ],
									"fontsize" : 12.0,
									"numinlets" : 2,
									"id" : "obj-32"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : ";\r\ntoSeq density $1",
									"linecount" : 2,
									"fontname" : "Arial",
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 28.0, 244.0, 101.0, 32.0 ],
									"fontsize" : 12.0,
									"numinlets" : 2,
									"id" : "obj-18"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : ";\r\ntoSeq stable $1",
									"linecount" : 2,
									"fontname" : "Arial",
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 28.0, 406.0, 96.0, 32.0 ],
									"fontsize" : 12.0,
									"numinlets" : 2,
									"id" : "obj-21"
								}

							}
 ],
						"lines" : [ 							{
								"patchline" : 								{
									"source" : [ "obj-75", 0 ],
									"destination" : [ "obj-84", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-60", 0 ],
									"destination" : [ "obj-32", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-69", 0 ],
									"destination" : [ "obj-75", 2 ],
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
									"source" : [ "obj-55", 0 ],
									"destination" : [ "obj-27", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-20", 0 ],
									"destination" : [ "obj-18", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-22", 0 ],
									"destination" : [ "obj-21", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
 ]
					}
,
					"saved_object_attributes" : 					{
						"fontname" : "Arial",
						"default_fontface" : 0,
						"globalpatchername" : "",
						"default_fontname" : "Arial",
						"fontface" : 0,
						"fontsize" : 12.0,
						"default_fontsize" : 12.0
					}

				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "relevant publications",
					"fontname" : "Arial",
					"numoutlets" : 0,
					"patching_rect" : [ 5.0, 657.0, 123.0, 20.0 ],
					"fontsize" : 12.0,
					"numinlets" : 1,
					"id" : "obj-7"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "Sioros, G. & Guedes, C., 2011. \"A formal approach for high-level automatic rhythm generation\". In Proceedings of the BRIDGES 2011 – Mathematics, Music, Art, Architecture, Culture Conference. Coimbra, Portugal.",
					"linecount" : 2,
					"fontname" : "Arial",
					"numoutlets" : 0,
					"patching_rect" : [ 5.0, 737.0, 743.0, 34.0 ],
					"fontsize" : 12.0,
					"numinlets" : 1,
					"id" : "obj-4"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "Sioros, G. & Guedes, C., 2011. \"Automatic rhythmic performance in Max/MSP: the kin. rhythmicator\". In Proceedings of the International Conference on New Interfaces for Musical Expression. Oslo, Norway, pp. 88-91. Available at: http://www.nime2011.org/proceedings/papers/B16-Sioros.pdf [Accessed January 3, 2012].",
					"linecount" : 3,
					"fontname" : "Arial",
					"numoutlets" : 0,
					"patching_rect" : [ 4.0, 682.0, 743.0, 48.0 ],
					"fontsize" : 12.0,
					"numinlets" : 1,
					"id" : "obj-3"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "the average probability or total density is output when a new set of probabilities is input",
					"linecount" : 3,
					"fontname" : "Arial",
					"numoutlets" : 0,
					"patching_rect" : [ 583.0, 481.0, 175.0, 48.0 ],
					"fontsize" : 12.0,
					"numinlets" : 1,
					"id" : "obj-82"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "the current pulse's probability",
					"fontname" : "Arial",
					"numoutlets" : 0,
					"patching_rect" : [ 509.0, 542.0, 170.0, 20.0 ],
					"fontsize" : 12.0,
					"numinlets" : 1,
					"id" : "obj-80"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "current pulse position. can be used to control another kin.sequencer ",
					"linecount" : 3,
					"fontname" : "Arial",
					"numoutlets" : 0,
					"patching_rect" : [ 287.0, 477.0, 137.0, 48.0 ],
					"fontsize" : 12.0,
					"numinlets" : 1,
					"id" : "obj-76"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "anticipating or not  ?",
					"fontname" : "Arial",
					"numoutlets" : 0,
					"patching_rect" : [ 123.0, 476.0, 120.0, 20.0 ],
					"fontsize" : 12.0,
					"numinlets" : 1,
					"id" : "obj-68"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "bangs in the input push the perfromance forward. Integers can also be used to control the position and progress.",
					"linecount" : 3,
					"fontname" : "Arial",
					"numoutlets" : 0,
					"patching_rect" : [ 326.0, 263.0, 300.0, 48.0 ],
					"fontsize" : 12.0,
					"numinlets" : 1,
					"id" : "obj-66"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "A list of probabilities is fed directly to the external. The number of ellements defines the number of steps or pulses in the sequence.",
					"linecount" : 3,
					"fontname" : "Arial",
					"numoutlets" : 0,
					"patching_rect" : [ 279.0, 207.0, 303.0, 48.0 ],
					"fontsize" : 12.0,
					"numinlets" : 1,
					"id" : "obj-64"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "generates a new rhythmic pattern immediatly, not by generating variations",
					"linecount" : 2,
					"fontname" : "Arial",
					"numoutlets" : 0,
					"patching_rect" : [ 505.0, 376.0, 246.0, 34.0 ],
					"fontsize" : 12.0,
					"numinlets" : 1,
					"id" : "obj-61"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"varname" : "autohelp_top_description[1]",
					"text" : "Kinetic toolbox - Licenced under the GPLv3 - Copyright 2009-2011 - INESC-Porto",
					"fontname" : "Arial",
					"numoutlets" : 0,
					"patching_rect" : [ 8.0, 55.0, 546.0, 20.0 ],
					"fontsize" : 11.595187,
					"numinlets" : 1,
					"id" : "obj-48"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"varname" : "autohelp_top_title",
					"text" : "kin.sequencer",
					"fontname" : "Arial",
					"numoutlets" : 0,
					"patching_rect" : [ 8.0, 4.0, 455.0, 30.0 ],
					"frgb" : [ 0.93, 0.93, 0.97, 1.0 ],
					"fontface" : 3,
					"fontsize" : 20.871338,
					"numinlets" : 1,
					"id" : "obj-49",
					"textcolor" : [ 0.93, 0.93, 0.97, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"varname" : "autohelp_top_digest",
					"text" : "generates a stochastic rhythmic perfromance",
					"fontname" : "Arial",
					"numoutlets" : 0,
					"patching_rect" : [ 8.0, 34.0, 485.0, 21.0 ],
					"frgb" : [ 0.93, 0.93, 0.97, 1.0 ],
					"fontsize" : 12.754705,
					"numinlets" : 1,
					"id" : "obj-9",
					"textcolor" : [ 0.93, 0.93, 0.97, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "r toSeq",
					"fontname" : "Arial",
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 37.0, 374.0, 100.0, 20.0 ],
					"fontsize" : 12.0,
					"numinlets" : 0,
					"id" : "obj-45"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "or draw your own probabilities",
					"fontname" : "Arial",
					"numoutlets" : 0,
					"patching_rect" : [ 89.0, 258.0, 174.0, 20.0 ],
					"fontsize" : 12.0,
					"numinlets" : 1,
					"id" : "obj-41"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "p",
					"fontname" : "Arial",
					"numoutlets" : 2,
					"outlettype" : [ "", "" ],
					"patching_rect" : [ 12.0, 524.0, 62.5, 20.0 ],
					"fontsize" : 12.0,
					"numinlets" : 1,
					"id" : "obj-38",
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
									"maxclass" : "message",
									"text" : "42",
									"fontname" : "Arial",
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 154.0, 211.0, 50.0, 18.0 ],
									"fontsize" : 12.0,
									"numinlets" : 2,
									"id" : "obj-3"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "t b f",
									"fontname" : "Arial",
									"numoutlets" : 2,
									"outlettype" : [ "bang", "float" ],
									"patching_rect" : [ 154.0, 100.0, 63.0, 20.0 ],
									"fontsize" : 12.0,
									"numinlets" : 1,
									"id" : "obj-61"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "chose note number to be triggered",
									"fontname" : "Arial",
									"numoutlets" : 0,
									"patching_rect" : [ 208.0, 181.0, 199.0, 20.0 ],
									"fontsize" : 12.0,
									"numinlets" : 1,
									"id" : "obj-40"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "rescale probabilities to translate them into midi velocity values",
									"linecount" : 2,
									"fontname" : "Arial",
									"numoutlets" : 0,
									"patching_rect" : [ 337.0, 140.0, 187.0, 34.0 ],
									"fontsize" : 12.0,
									"numinlets" : 1,
									"id" : "obj-4"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "scale 0. 1. 30. 127.",
									"fontname" : "Arial",
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 198.0, 154.0, 133.0, 20.0 ],
									"fontsize" : 12.0,
									"numinlets" : 6,
									"id" : "obj-2"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "inlet",
									"numoutlets" : 1,
									"outlettype" : [ "float" ],
									"patching_rect" : [ 154.0, 40.0, 25.0, 25.0 ],
									"numinlets" : 0,
									"id" : "obj-34",
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "outlet",
									"numoutlets" : 0,
									"patching_rect" : [ 154.0, 267.5, 25.0, 25.0 ],
									"numinlets" : 1,
									"id" : "obj-35",
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "outlet",
									"numoutlets" : 0,
									"patching_rect" : [ 198.0, 267.5, 25.0, 25.0 ],
									"numinlets" : 1,
									"id" : "obj-36",
									"comment" : ""
								}

							}
 ],
						"lines" : [ 							{
								"patchline" : 								{
									"source" : [ "obj-2", 0 ],
									"destination" : [ "obj-36", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-34", 0 ],
									"destination" : [ "obj-61", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-61", 1 ],
									"destination" : [ "obj-2", 0 ],
									"hidden" : 0,
									"midpoints" : [ 207.5, 133.0, 207.5, 133.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-3", 0 ],
									"destination" : [ "obj-35", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-61", 0 ],
									"destination" : [ "obj-3", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
 ]
					}
,
					"saved_object_attributes" : 					{
						"fontname" : "Arial",
						"default_fontface" : 0,
						"globalpatchername" : "",
						"default_fontname" : "Arial",
						"fontface" : 0,
						"fontsize" : 12.0,
						"default_fontsize" : 12.0
					}

				}

			}
, 			{
				"box" : 				{
					"maxclass" : "flonum",
					"fontname" : "Arial",
					"numoutlets" : 2,
					"outlettype" : [ "float", "bang" ],
					"patching_rect" : [ 12.0, 501.0, 50.0, 20.0 ],
					"fontsize" : 12.0,
					"numinlets" : 1,
					"id" : "obj-33"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "button",
					"numoutlets" : 1,
					"outlettype" : [ "bang" ],
					"patching_rect" : [ 28.0, 453.0, 40.0, 40.0 ],
					"numinlets" : 1,
					"id" : "obj-31"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "flonum",
					"fontname" : "Arial",
					"numoutlets" : 2,
					"outlettype" : [ "float", "bang" ],
					"patching_rect" : [ 527.0, 481.0, 50.0, 20.0 ],
					"fontsize" : 12.0,
					"numinlets" : 1,
					"id" : "obj-30"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "flonum",
					"fontname" : "Arial",
					"numoutlets" : 2,
					"outlettype" : [ "float", "bang" ],
					"patching_rect" : [ 460.0, 542.0, 50.0, 20.0 ],
					"fontsize" : 12.0,
					"numinlets" : 1,
					"id" : "obj-29"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "route current density",
					"fontname" : "Arial",
					"numoutlets" : 3,
					"outlettype" : [ "", "", "" ],
					"patching_rect" : [ 460.0, 455.0, 153.0, 20.0 ],
					"fontsize" : 12.0,
					"numinlets" : 1,
					"id" : "obj-28"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "led",
					"numoutlets" : 1,
					"outlettype" : [ "int" ],
					"patching_rect" : [ 161.0, 450.0, 20.0, 20.0 ],
					"numinlets" : 1,
					"id" : "obj-26"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "number",
					"fontname" : "Arial",
					"numoutlets" : 2,
					"outlettype" : [ "int", "bang" ],
					"patching_rect" : [ 311.0, 451.0, 50.0, 20.0 ],
					"fontsize" : 12.0,
					"numinlets" : 1,
					"id" : "obj-25"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "kin.weights",
					"fontname" : "Arial",
					"numoutlets" : 2,
					"outlettype" : [ "", "" ],
					"patching_rect" : [ 12.0, 226.0, 100.0, 20.0 ],
					"fontsize" : 12.0,
					"numinlets" : 1,
					"id" : "obj-16"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"varname" : "autohelp_top_description",
					"text" : "A set of ptobabilities is used to trigger stochasticaly events. A density and an exponantial factor let the user control further these probabilities. The external can also syncopate in real time by anticipating events",
					"linecount" : 2,
					"fontname" : "Arial",
					"numoutlets" : 0,
					"patching_rect" : [ 7.0, 80.0, 764.0, 33.0 ],
					"fontsize" : 11.595187,
					"numinlets" : 1,
					"id" : "obj-14"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "noteout 10",
					"fontname" : "Arial",
					"numoutlets" : 0,
					"patching_rect" : [ 12.0, 592.0, 100.0, 20.0 ],
					"fontsize" : 12.0,
					"numinlets" : 3,
					"id" : "obj-12"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "makenote 42 50",
					"fontname" : "Arial",
					"numoutlets" : 2,
					"outlettype" : [ "float", "float" ],
					"patching_rect" : [ 12.0, 563.0, 106.0, 20.0 ],
					"fontsize" : 12.0,
					"numinlets" : 3,
					"id" : "obj-8"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "number",
					"fontname" : "Arial",
					"numoutlets" : 2,
					"outlettype" : [ "int", "bang" ],
					"patching_rect" : [ 406.0, 330.0, 50.0, 20.0 ],
					"fontsize" : 12.0,
					"numinlets" : 1,
					"id" : "obj-73"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "toggle",
					"numoutlets" : 1,
					"outlettype" : [ "int" ],
					"patching_rect" : [ 325.0, 317.0, 40.0, 40.0 ],
					"bordercolor" : [ 0.52549, 0.27451, 0.27451, 1.0 ],
					"checkedcolor" : [ 0.65098, 0.0, 0.0, 1.0 ],
					"numinlets" : 1,
					"id" : "obj-72"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "metro 200",
					"fontname" : "Arial",
					"numoutlets" : 1,
					"outlettype" : [ "bang" ],
					"patching_rect" : [ 325.0, 367.0, 100.0, 20.0 ],
					"fontsize" : 12.0,
					"numinlets" : 2,
					"color" : [ 0.796078, 0.831373, 0.705882, 1.0 ],
					"id" : "obj-71"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "multislider",
					"numoutlets" : 2,
					"border_left" : 0,
					"bgcolor" : [ 1.0, 1.0, 1.0, 0.0 ],
					"candicane2" : [ 0.545098, 0.545098, 0.54902, 1.0 ],
					"outlettype" : [ "", "" ],
					"border_top" : 0,
					"patching_rect" : [ 12.0, 282.0, 300.0, 79.0 ],
					"setminmax" : [ 0.0, 1.0 ],
					"border_right" : 0,
					"slidercolor" : [ 0.156863, 0.156863, 0.156863, 1.0 ],
					"setstyle" : 1,
					"candycane" : 2,
					"numinlets" : 1,
					"border_bottom" : 0,
					"size" : 16,
					"id" : "obj-39"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "kin.sequencer",
					"fontname" : "Arial",
					"numoutlets" : 4,
					"outlettype" : [ "float", "int", "int", "" ],
					"patching_rect" : [ 12.0, 423.0, 467.0, 25.0 ],
					"fontface" : 1,
					"fontsize" : 16.0,
					"numinlets" : 1,
					"color" : [ 0.796078, 0.831373, 0.705882, 1.0 ],
					"id" : "obj-24"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "select a time signature and level of stratification",
					"fontname" : "Arial",
					"numoutlets" : 0,
					"patching_rect" : [ 7.0, 129.0, 272.0, 20.0 ],
					"fontsize" : 12.0,
					"numinlets" : 1,
					"id" : "obj-15"
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
					"patching_rect" : [ 12.0, 201.0, 168.0, 20.0 ],
					"fontsize" : 12.0,
					"numinlets" : 3,
					"id" : "obj-13"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "t 4 1 4",
					"fontname" : "Arial",
					"numoutlets" : 3,
					"outlettype" : [ "int", "int", "int" ],
					"hidden" : 1,
					"patching_rect" : [ 12.0, 114.0, 138.0, 20.0 ],
					"fontsize" : 12.0,
					"numinlets" : 1,
					"id" : "obj-6"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "loadbang",
					"fontname" : "Arial",
					"numoutlets" : 1,
					"outlettype" : [ "bang" ],
					"hidden" : 1,
					"patching_rect" : [ 12.0, 86.0, 62.0, 20.0 ],
					"fontsize" : 12.0,
					"numinlets" : 1,
					"id" : "obj-1"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "umenu",
					"fontname" : "Arial",
					"numoutlets" : 3,
					"outlettype" : [ "int", "", "" ],
					"patching_rect" : [ 129.0, 166.0, 82.0, 20.0 ],
					"fontsize" : 12.0,
					"items" : [ "1n", ",", "2n", ",", "4n", ",", "8n", ",", "16n", ",", "32n", ",", "64n", ",", "128n" ],
					"types" : [  ],
					"framecolor" : [ 0.666667, 0.0, 0.0, 1.0 ],
					"numinlets" : 1,
					"id" : "obj-109",
					"textcolor" : [ 0.627451, 0.0, 0.0, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "umenu",
					"fontname" : "Arial",
					"numoutlets" : 3,
					"outlettype" : [ "int", "", "" ],
					"patching_rect" : [ 71.0, 166.0, 50.0, 20.0 ],
					"fontsize" : 12.0,
					"items" : [ 2, ",", 4, ",", 8, ",", 16 ],
					"types" : [  ],
					"framecolor" : [ 0.666667, 0.0, 0.0, 1.0 ],
					"numinlets" : 1,
					"id" : "obj-108",
					"textcolor" : [ 0.627451, 0.0, 0.0, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "number",
					"fontname" : "Arial",
					"numoutlets" : 2,
					"triscale" : 0.5,
					"outlettype" : [ "int", "bang" ],
					"patching_rect" : [ 12.0, 166.0, 51.0, 20.0 ],
					"bordercolor" : [ 0.623529, 0.0, 0.0, 1.0 ],
					"fontface" : 1,
					"fontsize" : 12.0,
					"numinlets" : 1,
					"id" : "obj-111",
					"textcolor" : [ 0.6, 0.0, 0.0, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "reset",
					"fontname" : "Arial",
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 447.0, 382.0, 50.0, 18.0 ],
					"fontsize" : 12.0,
					"numinlets" : 2,
					"id" : "obj-77"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "panel",
					"varname" : "autohelp_top_panel",
					"numoutlets" : 0,
					"patching_rect" : [ 3.0, 3.0, 773.0, 53.0 ],
					"mode" : 1,
					"grad1" : [ 0.101961, 0.101961, 0.101961, 1.0 ],
					"grad2" : [ 0.85, 0.85, 0.85, 1.0 ],
					"background" : 1,
					"numinlets" : 1,
					"id" : "obj-50"
				}

			}
 ],
		"lines" : [ 			{
				"patchline" : 				{
					"source" : [ "obj-39", 0 ],
					"destination" : [ "obj-24", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-16", 0 ],
					"destination" : [ "obj-39", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-13", 0 ],
					"destination" : [ "obj-16", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-13", 1 ],
					"destination" : [ "obj-109", 0 ],
					"hidden" : 0,
					"midpoints" : [ 170.5, 230.0, 225.5, 230.0, 225.5, 152.0, 138.5, 152.0 ]
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
					"source" : [ "obj-109", 1 ],
					"destination" : [ "obj-13", 2 ],
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
					"source" : [ "obj-71", 0 ],
					"destination" : [ "obj-24", 0 ],
					"hidden" : 0,
					"midpoints" : [ 334.5, 405.5, 21.5, 405.5 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-6", 0 ],
					"destination" : [ "obj-109", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-6", 2 ],
					"destination" : [ "obj-111", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-6", 1 ],
					"destination" : [ "obj-108", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-1", 0 ],
					"destination" : [ "obj-6", 0 ],
					"hidden" : 1,
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
					"source" : [ "obj-73", 0 ],
					"destination" : [ "obj-71", 1 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-24", 2 ],
					"destination" : [ "obj-25", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-24", 1 ],
					"destination" : [ "obj-26", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-24", 3 ],
					"destination" : [ "obj-28", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-28", 0 ],
					"destination" : [ "obj-29", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-28", 1 ],
					"destination" : [ "obj-30", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-24", 0 ],
					"destination" : [ "obj-31", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-24", 0 ],
					"destination" : [ "obj-33", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-33", 0 ],
					"destination" : [ "obj-38", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-38", 0 ],
					"destination" : [ "obj-8", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-38", 1 ],
					"destination" : [ "obj-8", 1 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-8", 0 ],
					"destination" : [ "obj-12", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-8", 1 ],
					"destination" : [ "obj-12", 1 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-45", 0 ],
					"destination" : [ "obj-24", 0 ],
					"hidden" : 0,
					"midpoints" : [ 46.5, 408.0, 21.5, 408.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-77", 0 ],
					"destination" : [ "obj-24", 0 ],
					"hidden" : 0,
					"midpoints" : [ 456.5, 407.0, 21.5, 407.0 ]
				}

			}
 ]
	}

}
