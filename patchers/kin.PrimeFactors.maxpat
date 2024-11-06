{
	"patcher" : 	{
		"fileversion" : 1,
		"appversion" : 		{
			"major" : 5,
			"minor" : 1,
			"revision" : 9
		}
,
		"rect" : [ 264.0, 111.0, 498.0, 600.0 ],
		"bglocked" : 0,
		"defrect" : [ 264.0, 111.0, 498.0, 600.0 ],
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
					"maxclass" : "newobj",
					"text" : "zl join",
					"patching_rect" : [ 67.0, 274.0, 107.0, 20.0 ],
					"fontname" : "Arial",
					"numinlets" : 2,
					"id" : "obj-1",
					"numoutlets" : 2,
					"fontsize" : 12.0,
					"outlettype" : [ "", "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "p \"pirme factors\"",
					"patching_rect" : [ 67.0, 169.0, 106.5, 20.0 ],
					"fontname" : "Arial",
					"numinlets" : 3,
					"id" : "obj-70",
					"numoutlets" : 2,
					"fontsize" : 12.0,
					"outlettype" : [ "int", "" ],
					"patcher" : 					{
						"fileversion" : 1,
						"appversion" : 						{
							"major" : 5,
							"minor" : 1,
							"revision" : 9
						}
,
						"rect" : [ 764.0, 137.0, 811.0, 865.0 ],
						"bglocked" : 0,
						"defrect" : [ 764.0, 137.0, 811.0, 865.0 ],
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
									"maxclass" : "outlet",
									"patching_rect" : [ 82.0, 495.0, 25.0, 25.0 ],
									"numinlets" : 1,
									"id" : "obj-4",
									"numoutlets" : 0,
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "== 0.",
									"patching_rect" : [ 159.0, 328.0, 37.0, 20.0 ],
									"fontname" : "Arial",
									"numinlets" : 2,
									"id" : "obj-25",
									"numoutlets" : 1,
									"fontsize" : 12.0,
									"outlettype" : [ "int" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "int",
									"patching_rect" : [ 177.0, 300.0, 32.5, 20.0 ],
									"fontname" : "Arial",
									"numinlets" : 2,
									"id" : "obj-23",
									"numoutlets" : 1,
									"fontsize" : 12.0,
									"outlettype" : [ "int" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "if the number of pulses is an integer",
									"linecount" : 2,
									"patching_rect" : [ 224.0, 308.0, 150.0, 34.0 ],
									"fontname" : "Arial",
									"numinlets" : 1,
									"id" : "obj-14",
									"numoutlets" : 0,
									"fontsize" : 12.0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "t l b",
									"patching_rect" : [ 221.0, 100.0, 94.0, 20.0 ],
									"fontname" : "Arial",
									"numinlets" : 1,
									"id" : "obj-12",
									"numoutlets" : 2,
									"fontsize" : 12.0,
									"outlettype" : [ "", "bang" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "loadmess 1n",
									"patching_rect" : [ 296.0, 153.0, 69.0, 18.0 ],
									"fontname" : "Arial",
									"numinlets" : 1,
									"id" : "obj-31",
									"numoutlets" : 1,
									"fontsize" : 10.0,
									"outlettype" : [ "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "translate @in notevalues @out ticks",
									"patching_rect" : [ 295.5, 179.0, 206.0, 20.0 ],
									"fontname" : "Arial",
									"numinlets" : 1,
									"id" : "obj-3",
									"numoutlets" : 1,
									"fontsize" : 12.0,
									"outlettype" : [ "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "translate @in notevalues @out ticks",
									"patching_rect" : [ 220.5, 125.0, 206.0, 20.0 ],
									"fontname" : "Arial",
									"numinlets" : 1,
									"id" : "obj-11",
									"numoutlets" : 1,
									"fontsize" : 12.0,
									"outlettype" : [ "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "read prime factors corresponding to the number of pulses",
									"linecount" : 3,
									"patching_rect" : [ 242.0, 383.0, 150.0, 48.0 ],
									"fontname" : "Arial",
									"numinlets" : 1,
									"id" : "obj-40",
									"numoutlets" : 0,
									"fontsize" : 12.0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "caclulate number of pulses",
									"linecount" : 2,
									"patching_rect" : [ 211.0, 263.0, 150.0, 34.0 ],
									"fontname" : "Arial",
									"numinlets" : 1,
									"id" : "obj-38",
									"numoutlets" : 0,
									"fontsize" : 12.0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "gate",
									"patching_rect" : [ 125.0, 357.0, 34.0, 20.0 ],
									"fontname" : "Arial",
									"numinlets" : 2,
									"id" : "obj-36",
									"numoutlets" : 1,
									"fontsize" : 12.0,
									"outlettype" : [ "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "int",
									"patching_rect" : [ 125.0, 388.0, 32.5, 20.0 ],
									"fontname" : "Arial",
									"numinlets" : 2,
									"id" : "obj-9",
									"numoutlets" : 1,
									"fontsize" : 12.0,
									"outlettype" : [ "int" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "* 1.",
									"patching_rect" : [ 140.0, 270.0, 60.0, 20.0 ],
									"fontname" : "Arial",
									"numinlets" : 2,
									"id" : "obj-7",
									"numoutlets" : 1,
									"fontsize" : 12.0,
									"outlettype" : [ "float" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "!/ 1920.",
									"patching_rect" : [ 181.0, 212.0, 134.0, 20.0 ],
									"fontname" : "Arial",
									"numinlets" : 2,
									"id" : "obj-6",
									"numoutlets" : 1,
									"fontsize" : 12.0,
									"outlettype" : [ "float" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "* 1",
									"patching_rect" : [ 181.0, 175.0, 59.0, 20.0 ],
									"fontname" : "Arial",
									"numinlets" : 2,
									"id" : "obj-5",
									"numoutlets" : 1,
									"fontsize" : 12.0,
									"outlettype" : [ "int" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "coll",
									"patching_rect" : [ 125.0, 415.0, 100.0, 20.0 ],
									"fontname" : "Arial",
									"numinlets" : 1,
									"id" : "obj-1",
									"numoutlets" : 4,
									"fontsize" : 12.0,
									"outlettype" : [ "", "", "", "" ],
									"coll_data" : 									{
										"count" : 65,
										"data" : [ 											{
												"key" : 1,
												"value" : [ 1 ]
											}
, 											{
												"key" : 2,
												"value" : [ 2 ]
											}
, 											{
												"key" : 3,
												"value" : [ 3 ]
											}
, 											{
												"key" : 4,
												"value" : [ 2, 2 ]
											}
, 											{
												"key" : 5,
												"value" : [ 5 ]
											}
, 											{
												"key" : 6,
												"value" : [ 3, 2 ]
											}
, 											{
												"key" : 7,
												"value" : [ 7 ]
											}
, 											{
												"key" : 8,
												"value" : [ 2, 2, 2 ]
											}
, 											{
												"key" : 9,
												"value" : [ 3, 3 ]
											}
, 											{
												"key" : 10,
												"value" : [ 5, 2 ]
											}
, 											{
												"key" : 11,
												"value" : [ 11 ]
											}
, 											{
												"key" : 12,
												"value" : [ 3, 2, 2 ]
											}
, 											{
												"key" : 13,
												"value" : [ 13 ]
											}
, 											{
												"key" : 14,
												"value" : [ 7, 2 ]
											}
, 											{
												"key" : 15,
												"value" : [ 5, 3 ]
											}
, 											{
												"key" : 16,
												"value" : [ 2, 2, 2, 2 ]
											}
, 											{
												"key" : 17,
												"value" : [ 17 ]
											}
, 											{
												"key" : 18,
												"value" : [ 3, 3, 2 ]
											}
, 											{
												"key" : 19,
												"value" : [ 18 ]
											}
, 											{
												"key" : 20,
												"value" : [ 5, 2, 2 ]
											}
, 											{
												"key" : 21,
												"value" : [ 7, 3 ]
											}
, 											{
												"key" : 22,
												"value" : [ 11, 2 ]
											}
, 											{
												"key" : 23,
												"value" : [ 23 ]
											}
, 											{
												"key" : 24,
												"value" : [ 3, 2, 2, 2 ]
											}
, 											{
												"key" : 25,
												"value" : [ 5, 5 ]
											}
, 											{
												"key" : 26,
												"value" : [ 13, 2 ]
											}
, 											{
												"key" : 27,
												"value" : [ 3, 3, 3 ]
											}
, 											{
												"key" : 28,
												"value" : [ 7, 2, 2 ]
											}
, 											{
												"key" : 29,
												"value" : [ 29 ]
											}
, 											{
												"key" : 30,
												"value" : [ 5, 3, 2 ]
											}
, 											{
												"key" : 31,
												"value" : [ 31 ]
											}
, 											{
												"key" : 32,
												"value" : [ 2, 2, 2, 2, 2 ]
											}
, 											{
												"key" : 33,
												"value" : [ 11, 3 ]
											}
, 											{
												"key" : 34,
												"value" : [ 17, 2 ]
											}
, 											{
												"key" : 35,
												"value" : [ 7, 5 ]
											}
, 											{
												"key" : 36,
												"value" : [ 3, 3, 2, 2 ]
											}
, 											{
												"key" : 37,
												"value" : [ 37 ]
											}
, 											{
												"key" : 38,
												"value" : [ 19, 2 ]
											}
, 											{
												"key" : 39,
												"value" : [ 13, 3 ]
											}
, 											{
												"key" : 40,
												"value" : [ 5, 2, 2, 2 ]
											}
, 											{
												"key" : 41,
												"value" : [ 41 ]
											}
, 											{
												"key" : 42,
												"value" : [ 7, 3, 2 ]
											}
, 											{
												"key" : 43,
												"value" : [ 43 ]
											}
, 											{
												"key" : 44,
												"value" : [ 11, 2, 2 ]
											}
, 											{
												"key" : 45,
												"value" : [ 5, 3, 3 ]
											}
, 											{
												"key" : 46,
												"value" : [ 32, 2 ]
											}
, 											{
												"key" : 47,
												"value" : [ 47 ]
											}
, 											{
												"key" : 48,
												"value" : [ 3, 2, 2, 2, 2 ]
											}
, 											{
												"key" : 49,
												"value" : [ 7, 7 ]
											}
, 											{
												"key" : 50,
												"value" : [ 5, 5, 2 ]
											}
, 											{
												"key" : 51,
												"value" : [ 17, 3 ]
											}
, 											{
												"key" : 52,
												"value" : [ 13, 2, 2 ]
											}
, 											{
												"key" : 53,
												"value" : [ 53 ]
											}
, 											{
												"key" : 54,
												"value" : [ 3, 3, 2 ]
											}
, 											{
												"key" : 55,
												"value" : [ 11, 5 ]
											}
, 											{
												"key" : 56,
												"value" : [ 7, 2, 2, 2 ]
											}
, 											{
												"key" : 57,
												"value" : [ 19, 3 ]
											}
, 											{
												"key" : 58,
												"value" : [ 29, 2 ]
											}
, 											{
												"key" : 59,
												"value" : [ 59 ]
											}
, 											{
												"key" : 60,
												"value" : [ 5, 3, 2, 2 ]
											}
, 											{
												"key" : 61,
												"value" : [ 61 ]
											}
, 											{
												"key" : 62,
												"value" : [ 31, 2 ]
											}
, 											{
												"key" : 63,
												"value" : [ 7, 3, 3 ]
											}
, 											{
												"key" : 64,
												"value" : [ 2, 2, 2, 2, 2, 2 ]
											}
, 											{
												"key" : 128,
												"value" : [ 2, 2, 2, 2, 2, 2, 2 ]
											}
 ]
									}
,
									"saved_object_attributes" : 									{
										"embed" : 1
									}

								}

							}
, 							{
								"box" : 								{
									"maxclass" : "inlet",
									"patching_rect" : [ 140.0, 40.0, 25.0, 25.0 ],
									"numinlets" : 0,
									"id" : "obj-66",
									"numoutlets" : 1,
									"outlettype" : [ "int" ],
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "inlet",
									"patching_rect" : [ 181.0, 40.0, 25.0, 25.0 ],
									"numinlets" : 0,
									"id" : "obj-67",
									"numoutlets" : 1,
									"outlettype" : [ "int" ],
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "inlet",
									"patching_rect" : [ 221.0, 40.0, 25.0, 25.0 ],
									"numinlets" : 0,
									"id" : "obj-68",
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "outlet",
									"patching_rect" : [ 125.0, 495.0, 25.0, 25.0 ],
									"numinlets" : 1,
									"id" : "obj-69",
									"numoutlets" : 0,
									"comment" : ""
								}

							}
 ],
						"lines" : [ 							{
								"patchline" : 								{
									"source" : [ "obj-12", 1 ],
									"destination" : [ "obj-31", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-12", 0 ],
									"destination" : [ "obj-11", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-36", 0 ],
									"destination" : [ "obj-9", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-7", 0 ],
									"destination" : [ "obj-36", 1 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-9", 0 ],
									"destination" : [ "obj-1", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-31", 0 ],
									"destination" : [ "obj-3", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-11", 0 ],
									"destination" : [ "obj-5", 1 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-3", 0 ],
									"destination" : [ "obj-6", 1 ],
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
									"source" : [ "obj-6", 0 ],
									"destination" : [ "obj-7", 1 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-23", 0 ],
									"destination" : [ "obj-25", 1 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-25", 0 ],
									"destination" : [ "obj-36", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-7", 0 ],
									"destination" : [ "obj-23", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-7", 0 ],
									"destination" : [ "obj-25", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-66", 0 ],
									"destination" : [ "obj-7", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-67", 0 ],
									"destination" : [ "obj-5", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-68", 0 ],
									"destination" : [ "obj-12", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-1", 0 ],
									"destination" : [ "obj-69", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-9", 0 ],
									"destination" : [ "obj-4", 0 ],
									"hidden" : 0,
									"midpoints" : [ 134.5, 407.0, 91.5, 407.0 ]
								}

							}
 ]
					}
,
					"saved_object_attributes" : 					{
						"default_fontface" : 0,
						"default_fontname" : "Arial",
						"fontname" : "Arial",
						"default_fontsize" : 10.0,
						"fontface" : 0,
						"fontsize" : 10.0,
						"globalpatchername" : ""
					}

				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "p \"rearrange 3s\"",
					"patching_rect" : [ 155.0, 216.0, 178.0, 20.0 ],
					"fontname" : "Arial",
					"numinlets" : 3,
					"id" : "obj-65",
					"numoutlets" : 1,
					"fontsize" : 12.0,
					"outlettype" : [ "" ],
					"patcher" : 					{
						"fileversion" : 1,
						"appversion" : 						{
							"major" : 5,
							"minor" : 1,
							"revision" : 9
						}
,
						"rect" : [ 644.0, 83.0, 555.0, 875.0 ],
						"bglocked" : 0,
						"defrect" : [ 644.0, 83.0, 555.0, 875.0 ],
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
									"text" : "if $i1>$i2 then $i1",
									"patching_rect" : [ 218.0, 813.0, 97.0, 18.0 ],
									"fontname" : "Arial",
									"numinlets" : 2,
									"id" : "obj-68",
									"numoutlets" : 1,
									"fontsize" : 10.0,
									"outlettype" : [ "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "0",
									"patching_rect" : [ 181.0, 848.0, 32.5, 18.0 ],
									"fontname" : "Arial",
									"numinlets" : 2,
									"id" : "obj-65",
									"numoutlets" : 1,
									"fontsize" : 10.0,
									"outlettype" : [ "int" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "zl reg",
									"patching_rect" : [ 63.0, 975.0, 100.0, 18.0 ],
									"fontname" : "Arial",
									"numinlets" : 2,
									"id" : "obj-63",
									"numoutlets" : 2,
									"fontsize" : 10.0,
									"outlettype" : [ "", "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "zl reg",
									"patching_rect" : [ 144.0, 666.0, 100.0, 18.0 ],
									"fontname" : "Arial",
									"numinlets" : 2,
									"id" : "obj-61",
									"numoutlets" : 2,
									"fontsize" : 10.0,
									"outlettype" : [ "", "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "t b l",
									"patching_rect" : [ 144.0, 609.0, 100.0, 18.0 ],
									"fontname" : "Arial",
									"numinlets" : 1,
									"id" : "obj-58",
									"numoutlets" : 2,
									"fontsize" : 10.0,
									"outlettype" : [ "bang", "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "uzi 1 0",
									"patching_rect" : [ 144.0, 638.0, 70.0, 18.0 ],
									"fontname" : "Arial",
									"numinlets" : 2,
									"id" : "obj-51",
									"numoutlets" : 3,
									"fontsize" : 10.0,
									"outlettype" : [ "bang", "bang", "int" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "!= 0",
									"patching_rect" : [ 257.0, 148.0, 32.5, 18.0 ],
									"fontname" : "Arial",
									"numinlets" : 2,
									"id" : "obj-45",
									"numoutlets" : 1,
									"fontsize" : 10.0,
									"outlettype" : [ "int" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "p \"count 2s and 3s\"",
									"patching_rect" : [ 257.0, 121.0, 116.0, 20.0 ],
									"fontname" : "Arial",
									"numinlets" : 1,
									"id" : "obj-38",
									"numoutlets" : 3,
									"fontsize" : 12.0,
									"outlettype" : [ "int", "int", "int" ],
									"patcher" : 									{
										"fileversion" : 1,
										"appversion" : 										{
											"major" : 5,
											"minor" : 1,
											"revision" : 9
										}
,
										"rect" : [ 33.0, 75.0, 698.0, 623.0 ],
										"bglocked" : 0,
										"defrect" : [ 33.0, 75.0, 698.0, 623.0 ],
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
										"boxes" : [ 											{
												"box" : 												{
													"maxclass" : "outlet",
													"patching_rect" : [ 306.0, 452.0, 25.0, 25.0 ],
													"numinlets" : 1,
													"id" : "obj-21",
													"numoutlets" : 0,
													"comment" : ""
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "outlet",
													"patching_rect" : [ 262.0, 456.0, 25.0, 25.0 ],
													"numinlets" : 1,
													"id" : "obj-20",
													"numoutlets" : 0,
													"comment" : ""
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "unpack i i i",
													"patching_rect" : [ 230.0, 397.0, 100.0, 20.0 ],
													"fontname" : "Arial",
													"numinlets" : 1,
													"id" : "obj-19",
													"numoutlets" : 3,
													"fontsize" : 12.0,
													"outlettype" : [ "int", "int", "int" ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "comment",
													"text" : "# of 2s, # of 3s, # of anything else",
													"patching_rect" : [ 352.0, 355.0, 192.0, 20.0 ],
													"fontname" : "Arial",
													"numinlets" : 1,
													"id" : "obj-10",
													"numoutlets" : 0,
													"fontsize" : 12.0
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "comment",
													"text" : "cout the \"2\"s and \"3\"s and the rest",
													"linecount" : 2,
													"patching_rect" : [ 466.0, 238.0, 158.0, 34.0 ],
													"fontname" : "Arial",
													"numinlets" : 1,
													"id" : "obj-4",
													"numoutlets" : 0,
													"fontsize" : 12.0
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "zl reg",
													"patching_rect" : [ 229.0, 357.0, 109.0, 20.0 ],
													"fontname" : "Arial",
													"numinlets" : 2,
													"id" : "obj-18",
													"numoutlets" : 2,
													"fontsize" : 12.0,
													"outlettype" : [ "", "" ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "pack i i i",
													"patching_rect" : [ 319.0, 327.0, 123.0, 20.0 ],
													"fontname" : "Arial",
													"numinlets" : 3,
													"id" : "obj-17",
													"numoutlets" : 1,
													"fontsize" : 12.0,
													"outlettype" : [ "" ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "+ 1",
													"patching_rect" : [ 423.0, 298.0, 32.5, 20.0 ],
													"fontname" : "Arial",
													"numinlets" : 2,
													"id" : "obj-15",
													"numoutlets" : 1,
													"fontsize" : 12.0,
													"outlettype" : [ "int" ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "0",
													"patching_rect" : [ 409.0, 270.0, 32.5, 20.0 ],
													"fontname" : "Arial",
													"numinlets" : 2,
													"id" : "obj-16",
													"numoutlets" : 1,
													"fontsize" : 12.0,
													"outlettype" : [ "int" ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "+ 1",
													"patching_rect" : [ 371.0, 298.0, 32.5, 20.0 ],
													"fontname" : "Arial",
													"numinlets" : 2,
													"id" : "obj-13",
													"numoutlets" : 1,
													"fontsize" : 12.0,
													"outlettype" : [ "int" ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "0",
													"patching_rect" : [ 357.0, 253.0, 32.5, 20.0 ],
													"fontname" : "Arial",
													"numinlets" : 2,
													"id" : "obj-14",
													"numoutlets" : 1,
													"fontsize" : 12.0,
													"outlettype" : [ "int" ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "+ 1",
													"patching_rect" : [ 319.0, 298.0, 32.5, 20.0 ],
													"fontname" : "Arial",
													"numinlets" : 2,
													"id" : "obj-12",
													"numoutlets" : 1,
													"fontsize" : 12.0,
													"outlettype" : [ "int" ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "b 1",
													"patching_rect" : [ 409.0, 243.0, 27.0, 20.0 ],
													"fontname" : "Arial",
													"numinlets" : 1,
													"id" : "obj-11",
													"numoutlets" : 1,
													"fontsize" : 12.0,
													"outlettype" : [ "bang" ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "0",
													"patching_rect" : [ 305.0, 251.0, 32.5, 20.0 ],
													"fontname" : "Arial",
													"numinlets" : 2,
													"id" : "obj-8",
													"numoutlets" : 1,
													"fontsize" : 12.0,
													"outlettype" : [ "int" ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "t b l -1",
													"patching_rect" : [ 229.0, 149.0, 171.0, 20.0 ],
													"fontname" : "Arial",
													"numinlets" : 1,
													"id" : "obj-7",
													"numoutlets" : 3,
													"fontsize" : 12.0,
													"outlettype" : [ "bang", "", "int" ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "iter",
													"patching_rect" : [ 305.0, 181.0, 27.0, 20.0 ],
													"fontname" : "Arial",
													"numinlets" : 1,
													"id" : "obj-6",
													"numoutlets" : 1,
													"fontsize" : 12.0,
													"outlettype" : [ "" ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "sel 2 3",
													"patching_rect" : [ 305.0, 213.0, 123.0, 20.0 ],
													"fontname" : "Arial",
													"numinlets" : 1,
													"id" : "obj-5",
													"numoutlets" : 3,
													"fontsize" : 12.0,
													"outlettype" : [ "bang", "bang", "" ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "outlet",
													"patching_rect" : [ 229.0, 451.0, 25.0, 25.0 ],
													"numinlets" : 1,
													"id" : "obj-2",
													"numoutlets" : 0,
													"comment" : ""
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "inlet",
													"patching_rect" : [ 229.0, 114.0, 25.0, 25.0 ],
													"numinlets" : 0,
													"id" : "obj-1",
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"comment" : ""
												}

											}
 ],
										"lines" : [ 											{
												"patchline" : 												{
													"source" : [ "obj-6", 0 ],
													"destination" : [ "obj-5", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-5", 0 ],
													"destination" : [ "obj-8", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-5", 2 ],
													"destination" : [ "obj-11", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-8", 0 ],
													"destination" : [ "obj-12", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-12", 0 ],
													"destination" : [ "obj-8", 1 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-13", 0 ],
													"destination" : [ "obj-14", 1 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-14", 0 ],
													"destination" : [ "obj-13", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-5", 1 ],
													"destination" : [ "obj-14", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-16", 0 ],
													"destination" : [ "obj-15", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-15", 0 ],
													"destination" : [ "obj-16", 1 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-11", 0 ],
													"destination" : [ "obj-16", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-17", 0 ],
													"destination" : [ "obj-18", 1 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-12", 0 ],
													"destination" : [ "obj-17", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-13", 0 ],
													"destination" : [ "obj-17", 1 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-15", 0 ],
													"destination" : [ "obj-17", 2 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-7", 2 ],
													"destination" : [ "obj-16", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-7", 2 ],
													"destination" : [ "obj-14", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-7", 2 ],
													"destination" : [ "obj-8", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-7", 0 ],
													"destination" : [ "obj-18", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-1", 0 ],
													"destination" : [ "obj-7", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-7", 1 ],
													"destination" : [ "obj-6", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-18", 0 ],
													"destination" : [ "obj-19", 0 ],
													"hidden" : 0,
													"midpoints" : [ 239.0, 376.0 ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-19", 0 ],
													"destination" : [ "obj-2", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-19", 1 ],
													"destination" : [ "obj-20", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-19", 2 ],
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
										"default_fontname" : "Arial",
										"fontname" : "Arial",
										"default_fontsize" : 12.0,
										"fontface" : 0,
										"fontsize" : 12.0,
										"globalpatchername" : ""
									}

								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "coll",
									"patching_rect" : [ 257.0, 86.0, 59.5, 20.0 ],
									"fontname" : "Arial",
									"numinlets" : 1,
									"id" : "obj-40",
									"numoutlets" : 4,
									"fontsize" : 12.0,
									"outlettype" : [ "", "", "", "" ],
									"coll_data" : 									{
										"count" : 64,
										"data" : [ 											{
												"key" : 1,
												"value" : [ 1 ]
											}
, 											{
												"key" : 2,
												"value" : [ 2 ]
											}
, 											{
												"key" : 3,
												"value" : [ 3 ]
											}
, 											{
												"key" : 4,
												"value" : [ 2, 2 ]
											}
, 											{
												"key" : 5,
												"value" : [ 5 ]
											}
, 											{
												"key" : 6,
												"value" : [ 3, 2 ]
											}
, 											{
												"key" : 7,
												"value" : [ 7 ]
											}
, 											{
												"key" : 8,
												"value" : [ 2, 2, 2 ]
											}
, 											{
												"key" : 9,
												"value" : [ 3, 3 ]
											}
, 											{
												"key" : 10,
												"value" : [ 5, 2 ]
											}
, 											{
												"key" : 11,
												"value" : [ 11 ]
											}
, 											{
												"key" : 12,
												"value" : [ 3, 2, 2 ]
											}
, 											{
												"key" : 13,
												"value" : [ 13 ]
											}
, 											{
												"key" : 14,
												"value" : [ 7, 2 ]
											}
, 											{
												"key" : 15,
												"value" : [ 5, 3 ]
											}
, 											{
												"key" : 16,
												"value" : [ 2, 2, 2, 2 ]
											}
, 											{
												"key" : 17,
												"value" : [ 17 ]
											}
, 											{
												"key" : 18,
												"value" : [ 3, 3, 2 ]
											}
, 											{
												"key" : 19,
												"value" : [ 18 ]
											}
, 											{
												"key" : 20,
												"value" : [ 5, 2, 2 ]
											}
, 											{
												"key" : 21,
												"value" : [ 7, 3 ]
											}
, 											{
												"key" : 22,
												"value" : [ 11, 2 ]
											}
, 											{
												"key" : 23,
												"value" : [ 23 ]
											}
, 											{
												"key" : 24,
												"value" : [ 3, 2, 2, 2 ]
											}
, 											{
												"key" : 25,
												"value" : [ 5, 5 ]
											}
, 											{
												"key" : 26,
												"value" : [ 13, 2 ]
											}
, 											{
												"key" : 27,
												"value" : [ 3, 3, 3 ]
											}
, 											{
												"key" : 28,
												"value" : [ 7, 2, 2 ]
											}
, 											{
												"key" : 29,
												"value" : [ 29 ]
											}
, 											{
												"key" : 30,
												"value" : [ 5, 3, 2 ]
											}
, 											{
												"key" : 31,
												"value" : [ 31 ]
											}
, 											{
												"key" : 32,
												"value" : [ 2, 2, 2, 2, 2 ]
											}
, 											{
												"key" : 33,
												"value" : [ 11, 3 ]
											}
, 											{
												"key" : 34,
												"value" : [ 17, 2 ]
											}
, 											{
												"key" : 35,
												"value" : [ 7, 5 ]
											}
, 											{
												"key" : 36,
												"value" : [ 3, 3, 2, 2 ]
											}
, 											{
												"key" : 37,
												"value" : [ 37 ]
											}
, 											{
												"key" : 38,
												"value" : [ 19, 2 ]
											}
, 											{
												"key" : 39,
												"value" : [ 13, 3 ]
											}
, 											{
												"key" : 40,
												"value" : [ 5, 2, 2, 2 ]
											}
, 											{
												"key" : 41,
												"value" : [ 41 ]
											}
, 											{
												"key" : 42,
												"value" : [ 7, 3, 2 ]
											}
, 											{
												"key" : 43,
												"value" : [ 43 ]
											}
, 											{
												"key" : 44,
												"value" : [ 11, 2, 2 ]
											}
, 											{
												"key" : 45,
												"value" : [ 5, 3, 3 ]
											}
, 											{
												"key" : 46,
												"value" : [ 32, 2 ]
											}
, 											{
												"key" : 47,
												"value" : [ 47 ]
											}
, 											{
												"key" : 48,
												"value" : [ 3, 2, 2, 2, 2 ]
											}
, 											{
												"key" : 49,
												"value" : [ 7, 7 ]
											}
, 											{
												"key" : 50,
												"value" : [ 5, 5, 2 ]
											}
, 											{
												"key" : 51,
												"value" : [ 17, 3 ]
											}
, 											{
												"key" : 52,
												"value" : [ 13, 2, 2 ]
											}
, 											{
												"key" : 53,
												"value" : [ 53 ]
											}
, 											{
												"key" : 54,
												"value" : [ 3, 3, 2 ]
											}
, 											{
												"key" : 55,
												"value" : [ 11, 5 ]
											}
, 											{
												"key" : 56,
												"value" : [ 7, 2, 2, 2 ]
											}
, 											{
												"key" : 57,
												"value" : [ 19, 3 ]
											}
, 											{
												"key" : 58,
												"value" : [ 29, 2 ]
											}
, 											{
												"key" : 59,
												"value" : [ 59 ]
											}
, 											{
												"key" : 60,
												"value" : [ 5, 3, 2, 2 ]
											}
, 											{
												"key" : 61,
												"value" : [ 61 ]
											}
, 											{
												"key" : 62,
												"value" : [ 31, 2 ]
											}
, 											{
												"key" : 63,
												"value" : [ 7, 3, 3 ]
											}
, 											{
												"key" : 64,
												"value" : [ 2, 2, 2, 2, 2, 2 ]
											}
 ]
									}
,
									"saved_object_attributes" : 									{
										"embed" : 1
									}

								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "0",
									"patching_rect" : [ 359.0, 848.0, 32.5, 16.0 ],
									"fontname" : "Arial",
									"numinlets" : 2,
									"id" : "obj-57",
									"numoutlets" : 1,
									"fontsize" : 10.0,
									"outlettype" : [ "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "Find the 1st 2 and put it in the first, second.... place\n",
									"linecount" : 2,
									"patching_rect" : [ 170.0, 556.0, 159.0, 29.0 ],
									"fontname" : "Arial",
									"numinlets" : 1,
									"id" : "obj-37",
									"numoutlets" : 0,
									"fontsize" : 10.0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "- 1",
									"patching_rect" : [ 218.0, 779.0, 32.5, 18.0 ],
									"fontname" : "Arial",
									"numinlets" : 2,
									"id" : "obj-20",
									"numoutlets" : 1,
									"fontsize" : 10.0,
									"outlettype" : [ "int" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "vexpr $i1-1 @scalarmode 1",
									"patching_rect" : [ 193.0, 475.0, 138.0, 18.0 ],
									"fontname" : "Arial",
									"numinlets" : 1,
									"id" : "obj-14",
									"numoutlets" : 1,
									"fontsize" : 10.0,
									"outlettype" : [ "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "+ 1",
									"patching_rect" : [ 257.0, 181.0, 32.5, 18.0 ],
									"fontname" : "Arial",
									"numinlets" : 2,
									"id" : "obj-55",
									"numoutlets" : 1,
									"fontsize" : 10.0,
									"outlettype" : [ "int" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "pack",
									"patching_rect" : [ 193.0, 893.0, 44.0, 18.0 ],
									"fontname" : "Arial",
									"numinlets" : 2,
									"id" : "obj-42",
									"numoutlets" : 1,
									"fontsize" : 10.0,
									"outlettype" : [ "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "zl slice 1",
									"patching_rect" : [ 218.0, 867.0, 51.0, 18.0 ],
									"fontname" : "Arial",
									"numinlets" : 2,
									"id" : "obj-44",
									"numoutlets" : 2,
									"fontsize" : 10.0,
									"outlettype" : [ "", "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "sel 0",
									"patching_rect" : [ 359.0, 821.0, 32.5, 18.0 ],
									"fontname" : "Arial",
									"numinlets" : 2,
									"id" : "obj-47",
									"numoutlets" : 2,
									"fontsize" : 10.0,
									"outlettype" : [ "bang", "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "t l b l zlclear",
									"patching_rect" : [ 144.0, 705.0, 130.0, 18.0 ],
									"fontname" : "Arial",
									"numinlets" : 1,
									"id" : "obj-48",
									"numoutlets" : 4,
									"fontsize" : 10.0,
									"outlettype" : [ "", "bang", "", "zlclear" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "zl group 100",
									"patching_rect" : [ 218.0, 837.0, 100.0, 18.0 ],
									"fontname" : "Arial",
									"numinlets" : 2,
									"id" : "obj-49",
									"numoutlets" : 2,
									"fontsize" : 10.0,
									"outlettype" : [ "", "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "zl sub 2",
									"patching_rect" : [ 218.0, 745.0, 160.0, 18.0 ],
									"fontname" : "Arial",
									"numinlets" : 2,
									"id" : "obj-50",
									"numoutlets" : 2,
									"fontsize" : 10.0,
									"outlettype" : [ "", "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "nominator is devided by 2",
									"patching_rect" : [ 159.0, 569.0, 142.0, 18.0 ],
									"fontname" : "Arial",
									"numinlets" : 1,
									"id" : "obj-52",
									"numoutlets" : 0,
									"fontsize" : 10.0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "gate 2",
									"patching_rect" : [ 47.0, 554.0, 116.0, 18.0 ],
									"fontname" : "Arial",
									"numinlets" : 2,
									"id" : "obj-53",
									"numoutlets" : 2,
									"fontsize" : 10.0,
									"outlettype" : [ "", "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "list.swapellements",
									"patching_rect" : [ 144.0, 925.0, 114.0, 20.0 ],
									"fontname" : "Arial",
									"numinlets" : 2,
									"id" : "obj-54",
									"numoutlets" : 1,
									"fontsize" : 12.0,
									"outlettype" : [ "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "pack",
									"patching_rect" : [ 193.0, 453.0, 44.0, 18.0 ],
									"fontname" : "Arial",
									"numinlets" : 2,
									"id" : "obj-41",
									"numoutlets" : 1,
									"fontsize" : 10.0,
									"outlettype" : [ "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "get the last 3",
									"patching_rect" : [ 272.0, 423.0, 71.0, 18.0 ],
									"fontname" : "Arial",
									"numinlets" : 1,
									"id" : "obj-36",
									"numoutlets" : 0,
									"fontsize" : 10.0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "zl ecils 1",
									"patching_rect" : [ 218.0, 426.0, 51.0, 18.0 ],
									"fontname" : "Arial",
									"numinlets" : 2,
									"id" : "obj-34",
									"numoutlets" : 2,
									"fontsize" : 10.0,
									"outlettype" : [ "", "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "if the metrical level is a triplet one 3 must go to the end of the list",
									"linecount" : 3,
									"patching_rect" : [ 226.0, 258.0, 165.0, 41.0 ],
									"fontname" : "Arial",
									"numinlets" : 1,
									"id" : "obj-32",
									"numoutlets" : 0,
									"fontsize" : 10.0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "zl len",
									"patching_rect" : [ 167.0, 396.0, 36.0, 18.0 ],
									"fontname" : "Arial",
									"numinlets" : 2,
									"id" : "obj-30",
									"numoutlets" : 2,
									"fontsize" : 10.0,
									"outlettype" : [ "", "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "sel 0",
									"patching_rect" : [ 359.0, 401.0, 32.5, 18.0 ],
									"fontname" : "Arial",
									"numinlets" : 2,
									"id" : "obj-29",
									"numoutlets" : 2,
									"fontsize" : 10.0,
									"outlettype" : [ "bang", "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "t l b l zlclear",
									"patching_rect" : [ 144.0, 330.0, 130.0, 18.0 ],
									"fontname" : "Arial",
									"numinlets" : 1,
									"id" : "obj-26",
									"numoutlets" : 4,
									"fontsize" : 10.0,
									"outlettype" : [ "", "bang", "", "zlclear" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "zl group 100",
									"patching_rect" : [ 218.0, 396.0, 100.0, 18.0 ],
									"fontname" : "Arial",
									"numinlets" : 2,
									"id" : "obj-25",
									"numoutlets" : 2,
									"fontsize" : 10.0,
									"outlettype" : [ "", "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "zl sub 3",
									"patching_rect" : [ 218.0, 358.0, 160.0, 18.0 ],
									"fontname" : "Arial",
									"numinlets" : 2,
									"id" : "obj-18",
									"numoutlets" : 2,
									"fontsize" : 10.0,
									"outlettype" : [ "", "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "NIO triplet",
									"patching_rect" : [ 73.0, 281.0, 58.0, 18.0 ],
									"fontname" : "Arial",
									"numinlets" : 1,
									"id" : "obj-17",
									"numoutlets" : 0,
									"fontsize" : 10.0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "triplet ",
									"patching_rect" : [ 163.0, 279.0, 40.0, 18.0 ],
									"fontname" : "Arial",
									"numinlets" : 1,
									"id" : "obj-15",
									"numoutlets" : 0,
									"fontsize" : 10.0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "+ 1",
									"patching_rect" : [ 397.0, 115.0, 32.5, 18.0 ],
									"fontname" : "Arial",
									"numinlets" : 2,
									"id" : "obj-13",
									"numoutlets" : 1,
									"fontsize" : 10.0,
									"outlettype" : [ "int" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "!= 0",
									"patching_rect" : [ 397.0, 89.0, 32.5, 18.0 ],
									"fontname" : "Arial",
									"numinlets" : 2,
									"id" : "obj-12",
									"numoutlets" : 1,
									"fontsize" : 10.0,
									"outlettype" : [ "int" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "gate 2",
									"patching_rect" : [ 63.0, 254.0, 100.0, 18.0 ],
									"fontname" : "Arial",
									"numinlets" : 2,
									"id" : "obj-11",
									"numoutlets" : 2,
									"fontsize" : 10.0,
									"outlettype" : [ "", "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "NO 3 to rearrange",
									"linecount" : 2,
									"patching_rect" : [ 38.0, 197.0, 55.0, 29.0 ],
									"fontname" : "Arial",
									"numinlets" : 1,
									"id" : "obj-10",
									"numoutlets" : 0,
									"fontsize" : 10.0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "+ 1",
									"patching_rect" : [ 177.0, 140.0, 32.5, 18.0 ],
									"fontname" : "Arial",
									"numinlets" : 2,
									"id" : "obj-7",
									"numoutlets" : 1,
									"fontsize" : 10.0,
									"outlettype" : [ "int" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "!= 0",
									"patching_rect" : [ 177.0, 118.0, 32.5, 18.0 ],
									"fontname" : "Arial",
									"numinlets" : 2,
									"id" : "obj-6",
									"numoutlets" : 1,
									"fontsize" : 10.0,
									"outlettype" : [ "int" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "gate 2",
									"patching_rect" : [ 25.0, 178.0, 100.0, 18.0 ],
									"fontname" : "Arial",
									"numinlets" : 2,
									"id" : "obj-5",
									"numoutlets" : 2,
									"fontsize" : 10.0,
									"outlettype" : [ "", "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "outlet",
									"patching_rect" : [ 25.0, 1081.0, 25.0, 25.0 ],
									"numinlets" : 1,
									"id" : "obj-3",
									"numoutlets" : 0,
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "inlet",
									"patching_rect" : [ 397.0, 43.0, 25.0, 25.0 ],
									"numinlets" : 0,
									"id" : "obj-2",
									"numoutlets" : 1,
									"outlettype" : [ "int" ],
									"comment" : "triplet metrical level (0/1)"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "inlet",
									"patching_rect" : [ 257.0, 41.0, 25.0, 25.0 ],
									"numinlets" : 0,
									"id" : "obj-1",
									"numoutlets" : 1,
									"outlettype" : [ "int" ],
									"comment" : "nominator of Time signature"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "list.swapellements",
									"patching_rect" : [ 144.0, 505.0, 114.0, 20.0 ],
									"fontname" : "Arial",
									"numinlets" : 2,
									"id" : "obj-33",
									"numoutlets" : 1,
									"fontsize" : 12.0,
									"outlettype" : [ "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "p \"count 2s and 3s\"",
									"patching_rect" : [ 128.0, 94.0, 116.0, 20.0 ],
									"fontname" : "Arial",
									"numinlets" : 1,
									"id" : "obj-8",
									"numoutlets" : 3,
									"fontsize" : 12.0,
									"outlettype" : [ "int", "int", "int" ],
									"patcher" : 									{
										"fileversion" : 1,
										"appversion" : 										{
											"major" : 5,
											"minor" : 1,
											"revision" : 9
										}
,
										"rect" : [ 33.0, 75.0, 698.0, 623.0 ],
										"bglocked" : 0,
										"defrect" : [ 33.0, 75.0, 698.0, 623.0 ],
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
										"boxes" : [ 											{
												"box" : 												{
													"maxclass" : "outlet",
													"patching_rect" : [ 306.0, 452.0, 25.0, 25.0 ],
													"numinlets" : 1,
													"id" : "obj-21",
													"numoutlets" : 0,
													"comment" : ""
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "outlet",
													"patching_rect" : [ 262.0, 456.0, 25.0, 25.0 ],
													"numinlets" : 1,
													"id" : "obj-20",
													"numoutlets" : 0,
													"comment" : ""
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "unpack i i i",
													"patching_rect" : [ 230.0, 397.0, 100.0, 20.0 ],
													"fontname" : "Arial",
													"numinlets" : 1,
													"id" : "obj-19",
													"numoutlets" : 3,
													"fontsize" : 12.0,
													"outlettype" : [ "int", "int", "int" ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "comment",
													"text" : "# of 2s, # of 3s, # of anything else",
													"patching_rect" : [ 352.0, 355.0, 192.0, 20.0 ],
													"fontname" : "Arial",
													"numinlets" : 1,
													"id" : "obj-10",
													"numoutlets" : 0,
													"fontsize" : 12.0
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "comment",
													"text" : "cout the \"2\"s and \"3\"s and the rest",
													"linecount" : 2,
													"patching_rect" : [ 466.0, 238.0, 158.0, 34.0 ],
													"fontname" : "Arial",
													"numinlets" : 1,
													"id" : "obj-4",
													"numoutlets" : 0,
													"fontsize" : 12.0
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "zl reg",
													"patching_rect" : [ 229.0, 357.0, 109.0, 20.0 ],
													"fontname" : "Arial",
													"numinlets" : 2,
													"id" : "obj-18",
													"numoutlets" : 2,
													"fontsize" : 12.0,
													"outlettype" : [ "", "" ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "pack i i i",
													"patching_rect" : [ 319.0, 327.0, 123.0, 20.0 ],
													"fontname" : "Arial",
													"numinlets" : 3,
													"id" : "obj-17",
													"numoutlets" : 1,
													"fontsize" : 12.0,
													"outlettype" : [ "" ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "+ 1",
													"patching_rect" : [ 423.0, 298.0, 32.5, 20.0 ],
													"fontname" : "Arial",
													"numinlets" : 2,
													"id" : "obj-15",
													"numoutlets" : 1,
													"fontsize" : 12.0,
													"outlettype" : [ "int" ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "0",
													"patching_rect" : [ 409.0, 270.0, 32.5, 20.0 ],
													"fontname" : "Arial",
													"numinlets" : 2,
													"id" : "obj-16",
													"numoutlets" : 1,
													"fontsize" : 12.0,
													"outlettype" : [ "int" ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "+ 1",
													"patching_rect" : [ 371.0, 298.0, 32.5, 20.0 ],
													"fontname" : "Arial",
													"numinlets" : 2,
													"id" : "obj-13",
													"numoutlets" : 1,
													"fontsize" : 12.0,
													"outlettype" : [ "int" ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "0",
													"patching_rect" : [ 357.0, 253.0, 32.5, 20.0 ],
													"fontname" : "Arial",
													"numinlets" : 2,
													"id" : "obj-14",
													"numoutlets" : 1,
													"fontsize" : 12.0,
													"outlettype" : [ "int" ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "+ 1",
													"patching_rect" : [ 319.0, 298.0, 32.5, 20.0 ],
													"fontname" : "Arial",
													"numinlets" : 2,
													"id" : "obj-12",
													"numoutlets" : 1,
													"fontsize" : 12.0,
													"outlettype" : [ "int" ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "b 1",
													"patching_rect" : [ 409.0, 243.0, 27.0, 20.0 ],
													"fontname" : "Arial",
													"numinlets" : 1,
													"id" : "obj-11",
													"numoutlets" : 1,
													"fontsize" : 12.0,
													"outlettype" : [ "bang" ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "0",
													"patching_rect" : [ 305.0, 251.0, 32.5, 20.0 ],
													"fontname" : "Arial",
													"numinlets" : 2,
													"id" : "obj-8",
													"numoutlets" : 1,
													"fontsize" : 12.0,
													"outlettype" : [ "int" ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "t b l -1",
													"patching_rect" : [ 229.0, 149.0, 171.0, 20.0 ],
													"fontname" : "Arial",
													"numinlets" : 1,
													"id" : "obj-7",
													"numoutlets" : 3,
													"fontsize" : 12.0,
													"outlettype" : [ "bang", "", "int" ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "iter",
													"patching_rect" : [ 305.0, 181.0, 27.0, 20.0 ],
													"fontname" : "Arial",
													"numinlets" : 1,
													"id" : "obj-6",
													"numoutlets" : 1,
													"fontsize" : 12.0,
													"outlettype" : [ "" ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "sel 2 3",
													"patching_rect" : [ 305.0, 213.0, 123.0, 20.0 ],
													"fontname" : "Arial",
													"numinlets" : 1,
													"id" : "obj-5",
													"numoutlets" : 3,
													"fontsize" : 12.0,
													"outlettype" : [ "bang", "bang", "" ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "outlet",
													"patching_rect" : [ 229.0, 451.0, 25.0, 25.0 ],
													"numinlets" : 1,
													"id" : "obj-2",
													"numoutlets" : 0,
													"comment" : ""
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "inlet",
													"patching_rect" : [ 229.0, 114.0, 25.0, 25.0 ],
													"numinlets" : 0,
													"id" : "obj-1",
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"comment" : ""
												}

											}
 ],
										"lines" : [ 											{
												"patchline" : 												{
													"source" : [ "obj-6", 0 ],
													"destination" : [ "obj-5", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-5", 0 ],
													"destination" : [ "obj-8", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-5", 2 ],
													"destination" : [ "obj-11", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-8", 0 ],
													"destination" : [ "obj-12", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-12", 0 ],
													"destination" : [ "obj-8", 1 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-13", 0 ],
													"destination" : [ "obj-14", 1 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-14", 0 ],
													"destination" : [ "obj-13", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-5", 1 ],
													"destination" : [ "obj-14", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-16", 0 ],
													"destination" : [ "obj-15", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-15", 0 ],
													"destination" : [ "obj-16", 1 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-11", 0 ],
													"destination" : [ "obj-16", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-17", 0 ],
													"destination" : [ "obj-18", 1 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-12", 0 ],
													"destination" : [ "obj-17", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-13", 0 ],
													"destination" : [ "obj-17", 1 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-15", 0 ],
													"destination" : [ "obj-17", 2 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-7", 2 ],
													"destination" : [ "obj-16", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-7", 2 ],
													"destination" : [ "obj-14", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-7", 2 ],
													"destination" : [ "obj-8", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-7", 0 ],
													"destination" : [ "obj-18", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-1", 0 ],
													"destination" : [ "obj-7", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-7", 1 ],
													"destination" : [ "obj-6", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-18", 0 ],
													"destination" : [ "obj-19", 0 ],
													"hidden" : 0,
													"midpoints" : [ 239.0, 376.0 ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-19", 0 ],
													"destination" : [ "obj-2", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-19", 1 ],
													"destination" : [ "obj-20", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-19", 2 ],
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
										"default_fontname" : "Arial",
										"fontname" : "Arial",
										"default_fontsize" : 12.0,
										"fontface" : 0,
										"fontsize" : 12.0,
										"globalpatchername" : ""
									}

								}

							}
, 							{
								"box" : 								{
									"maxclass" : "inlet",
									"patching_rect" : [ 106.0, 42.0, 25.0, 25.0 ],
									"numinlets" : 0,
									"id" : "obj-64",
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"comment" : "prime factors"
								}

							}
 ],
						"lines" : [ 							{
								"patchline" : 								{
									"source" : [ "obj-38", 0 ],
									"destination" : [ "obj-51", 1 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-58", 0 ],
									"destination" : [ "obj-51", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-51", 0 ],
									"destination" : [ "obj-61", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-51", 1 ],
									"destination" : [ "obj-63", 0 ],
									"hidden" : 0,
									"midpoints" : [ 179.0, 664.0, 72.5, 664.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-51", 2 ],
									"destination" : [ "obj-65", 1 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-48", 1 ],
									"destination" : [ "obj-65", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-65", 0 ],
									"destination" : [ "obj-42", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-48", 2 ],
									"destination" : [ "obj-50", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-50", 1 ],
									"destination" : [ "obj-47", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-63", 0 ],
									"destination" : [ "obj-3", 0 ],
									"hidden" : 0,
									"color" : [ 0.039216, 0.815686, 0.0, 1.0 ],
									"midpoints" : [ 72.5, 1009.5, 34.5, 1009.5 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-54", 0 ],
									"destination" : [ "obj-63", 1 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-53", 0 ],
									"destination" : [ "obj-3", 0 ],
									"hidden" : 0,
									"color" : [ 0.039216, 0.815686, 0.0, 1.0 ],
									"midpoints" : [ 56.5, 623.0, 34.5, 623.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-54", 0 ],
									"destination" : [ "obj-61", 1 ],
									"hidden" : 0,
									"midpoints" : [ 153.5, 957.0, 456.0, 957.0, 456.0, 656.0, 234.5, 656.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-61", 0 ],
									"destination" : [ "obj-48", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-53", 1 ],
									"destination" : [ "obj-58", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-58", 1 ],
									"destination" : [ "obj-61", 1 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-45", 0 ],
									"destination" : [ "obj-55", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-38", 0 ],
									"destination" : [ "obj-45", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-1", 0 ],
									"destination" : [ "obj-40", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-40", 0 ],
									"destination" : [ "obj-38", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-47", 0 ],
									"destination" : [ "obj-57", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-14", 0 ],
									"destination" : [ "obj-33", 1 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-41", 0 ],
									"destination" : [ "obj-14", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-49", 0 ],
									"destination" : [ "obj-44", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-30", 0 ],
									"destination" : [ "obj-41", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-33", 0 ],
									"destination" : [ "obj-53", 1 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-11", 0 ],
									"destination" : [ "obj-53", 1 ],
									"hidden" : 0,
									"midpoints" : [ 72.5, 540.5, 153.5, 540.5 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-55", 0 ],
									"destination" : [ "obj-53", 0 ],
									"hidden" : 0,
									"color" : [ 1.0, 0.0, 0.0, 1.0 ],
									"midpoints" : [ 266.5, 228.0, 56.5, 228.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-48", 3 ],
									"destination" : [ "obj-49", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-48", 1 ],
									"destination" : [ "obj-49", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-48", 0 ],
									"destination" : [ "obj-54", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-26", 0 ],
									"destination" : [ "obj-33", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-25", 0 ],
									"destination" : [ "obj-34", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-26", 1 ],
									"destination" : [ "obj-25", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-26", 2 ],
									"destination" : [ "obj-18", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-26", 3 ],
									"destination" : [ "obj-25", 0 ],
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
									"source" : [ "obj-11", 1 ],
									"destination" : [ "obj-26", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-18", 1 ],
									"destination" : [ "obj-29", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-18", 0 ],
									"destination" : [ "obj-25", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-13", 0 ],
									"destination" : [ "obj-11", 0 ],
									"hidden" : 0,
									"color" : [ 1.0, 0.0, 0.0, 1.0 ],
									"midpoints" : [ 406.5, 237.5, 72.5, 237.5 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-5", 1 ],
									"destination" : [ "obj-11", 1 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-12", 0 ],
									"destination" : [ "obj-13", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-2", 0 ],
									"destination" : [ "obj-12", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-5", 0 ],
									"destination" : [ "obj-3", 0 ],
									"hidden" : 0,
									"color" : [ 0.113725, 0.662745, 0.423529, 1.0 ],
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-7", 0 ],
									"destination" : [ "obj-5", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-6", 0 ],
									"destination" : [ "obj-7", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-64", 0 ],
									"destination" : [ "obj-5", 1 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-8", 1 ],
									"destination" : [ "obj-6", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-64", 0 ],
									"destination" : [ "obj-8", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-42", 0 ],
									"destination" : [ "obj-54", 1 ],
									"hidden" : 0,
									"midpoints" : [ 202.5, 917.5, 248.5, 917.5 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-34", 1 ],
									"destination" : [ "obj-41", 1 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-68", 0 ],
									"destination" : [ "obj-49", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-51", 2 ],
									"destination" : [ "obj-68", 1 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-50", 0 ],
									"destination" : [ "obj-20", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-20", 0 ],
									"destination" : [ "obj-68", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-44", 0 ],
									"destination" : [ "obj-42", 1 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
 ]
					}
,
					"saved_object_attributes" : 					{
						"default_fontface" : 0,
						"default_fontname" : "Arial",
						"fontname" : "Arial",
						"default_fontsize" : 10.0,
						"fontface" : 0,
						"fontsize" : 10.0,
						"globalpatchername" : ""
					}

				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "p \"check if triplet\"",
					"patching_rect" : [ 314.0, 180.0, 100.0, 20.0 ],
					"fontname" : "Arial",
					"numinlets" : 1,
					"id" : "obj-51",
					"numoutlets" : 1,
					"fontsize" : 12.0,
					"outlettype" : [ "int" ],
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
									"text" : "== 116",
									"patching_rect" : [ 88.0, 222.0, 51.0, 20.0 ],
									"fontname" : "Arial",
									"numinlets" : 2,
									"id" : "obj-47",
									"numoutlets" : 1,
									"fontsize" : 12.0,
									"outlettype" : [ "int" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "zl ecils 1",
									"patching_rect" : [ 50.0, 190.0, 57.0, 20.0 ],
									"fontname" : "Arial",
									"numinlets" : 2,
									"id" : "obj-45",
									"numoutlets" : 2,
									"fontsize" : 12.0,
									"outlettype" : [ "", "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "zl group 100",
									"patching_rect" : [ 50.0, 163.0, 100.0, 20.0 ],
									"fontname" : "Arial",
									"numinlets" : 2,
									"id" : "obj-41",
									"numoutlets" : 2,
									"fontsize" : 12.0,
									"outlettype" : [ "", "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "t b l zlclear",
									"patching_rect" : [ 50.0, 100.0, 67.0, 20.0 ],
									"fontname" : "Arial",
									"numinlets" : 1,
									"id" : "obj-39",
									"numoutlets" : 3,
									"fontsize" : 12.0,
									"outlettype" : [ "bang", "", "zlclear" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "spell",
									"patching_rect" : [ 74.0, 126.0, 37.0, 20.0 ],
									"fontname" : "Arial",
									"numinlets" : 1,
									"id" : "obj-35",
									"numoutlets" : 1,
									"fontsize" : 12.0,
									"outlettype" : [ "int" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "inlet",
									"patching_rect" : [ 50.0, 40.0, 25.0, 25.0 ],
									"numinlets" : 0,
									"id" : "obj-49",
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "outlet",
									"patching_rect" : [ 88.0, 302.0, 25.0, 25.0 ],
									"numinlets" : 1,
									"id" : "obj-50",
									"numoutlets" : 0,
									"comment" : ""
								}

							}
 ],
						"lines" : [ 							{
								"patchline" : 								{
									"source" : [ "obj-35", 0 ],
									"destination" : [ "obj-41", 0 ],
									"hidden" : 0,
									"midpoints" : [ 83.5, 154.0, 59.5, 154.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-39", 0 ],
									"destination" : [ "obj-41", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-39", 1 ],
									"destination" : [ "obj-35", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-39", 2 ],
									"destination" : [ "obj-41", 0 ],
									"hidden" : 0,
									"midpoints" : [ 107.5, 158.0, 59.5, 158.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-41", 0 ],
									"destination" : [ "obj-45", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-45", 1 ],
									"destination" : [ "obj-47", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-49", 0 ],
									"destination" : [ "obj-39", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-47", 0 ],
									"destination" : [ "obj-50", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
 ]
					}
,
					"saved_object_attributes" : 					{
						"default_fontface" : 0,
						"default_fontname" : "Arial",
						"fontname" : "Arial",
						"default_fontsize" : 10.0,
						"fontface" : 0,
						"fontsize" : 10.0,
						"globalpatchername" : ""
					}

				}

			}
, 			{
				"box" : 				{
					"maxclass" : "outlet",
					"patching_rect" : [ 67.0, 310.0, 25.0, 25.0 ],
					"numinlets" : 1,
					"id" : "obj-10",
					"numoutlets" : 0,
					"comment" : "list of prime numbers"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "inlet",
					"patching_rect" : [ 67.0, 38.0, 25.0, 25.0 ],
					"numinlets" : 0,
					"id" : "obj-4",
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"comment" : "time signature + stratification level"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "if the prime factors are 3s and 2s then depending on the nomniator of the time signature the \"3\" is placed in the position:\nnom = 3 x 2^(position)",
					"linecount" : 6,
					"patching_rect" : [ 180.0, 243.0, 150.0, 89.0 ],
					"fontname" : "Arial",
					"numinlets" : 1,
					"id" : "obj-42",
					"numoutlets" : 0,
					"fontsize" : 12.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "unpack i i s",
					"patching_rect" : [ 67.0, 88.0, 107.0, 20.0 ],
					"fontname" : "Arial",
					"numinlets" : 1,
					"id" : "obj-2",
					"numoutlets" : 3,
					"fontsize" : 12.0,
					"outlettype" : [ "int", "int", "" ]
				}

			}
 ],
		"lines" : [ 			{
				"patchline" : 				{
					"source" : [ "obj-2", 0 ],
					"destination" : [ "obj-65", 1 ],
					"hidden" : 0,
					"midpoints" : [ 76.5, 133.0, 244.0, 133.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-2", 0 ],
					"destination" : [ "obj-70", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-2", 1 ],
					"destination" : [ "obj-70", 1 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-2", 2 ],
					"destination" : [ "obj-70", 2 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-70", 1 ],
					"destination" : [ "obj-65", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-51", 0 ],
					"destination" : [ "obj-65", 2 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-2", 2 ],
					"destination" : [ "obj-51", 0 ],
					"hidden" : 0,
					"midpoints" : [ 164.5, 112.5, 323.5, 112.5 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-4", 0 ],
					"destination" : [ "obj-2", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-65", 0 ],
					"destination" : [ "obj-1", 1 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-70", 0 ],
					"destination" : [ "obj-1", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-1", 0 ],
					"destination" : [ "obj-10", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
 ]
	}

}
