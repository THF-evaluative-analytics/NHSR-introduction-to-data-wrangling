
sitrep_60sec <-tibble::tribble(
                                         ~"NHS_111_area_name", ~"26_Feb", ~"27_Feb", ~"28_Feb", ~"01_Mar", ~"02_Mar", ~"03_Mar", ~"04_Mar",
                               "North East England NHS 111",    1957,    1787,    1654,    1661,    1781,    3396,    2625,
                         "North West inc Blackpool NHS 111",    2388,    2317,    2716,    2535,    2444,    4453,    4412,
                             "Yorkshire And Humber NHS 111",    3306,    3054,    1977,    3058,    3192,    6599,    5909,
                                     "Lincolnshire NHS 111",     265,     317,     475,     372,     352,     378,     442,
                             "Luton & Bedfordshire NHS 111",     334,     352,     334,     259,     327,     292,     178,
                                  "Nottinghamshire NHS 111",     605,     657,     785,     694,     542,     566,     755,
                                       "Derbyshire NHS 111",     600,     590,     608,     562,     529,     619,     707,
                                    "Hertfordshire NHS 111",     629,     679,     675,     543,     591,     754,     746,
     "Norfolk including Great Yarmouth and Waveney NHS 111",     571,     666,     942,     378,     550,     885,    1082,
                                          "Suffolk NHS 111",     294,     304,     251,     186,     203,     237,     385,
                                      "North Essex NHS 111",     585,     548,     593,     323,     529,     839,     946,
                                      "South Essex NHS 111",     551,     505,     558,     321,     503,     652,     775,
                    "Cambridgeshire & Peterborough NHS 111",     448,     475,     440,     440,     401,     543,     500,
                                 "Northamptonshire NHS 111",     313,     365,     385,     299,     319,     392,     450,
                                    "Milton Keynes NHS 111",     147,     122,     169,     123,     136,     134,     149,
                         "Leicestershire & Rutland NHS 111",     554,     589,     600,     500,     508,     504,     614,
                                    "Staffordshire NHS 111",     637,     626,     510,     444,     544,     531,     351,
                                    "West Midlands NHS 111",    2120,    1950,    1389,     938,     898,     717,    1422,
                          "Inner North West London NHS 111",     207,     203,     254,     174,     216,     160,     296,
                                "Hillingdon London NHS 111",     166,     146,     147,     101,      57,      76,     102,
                                "South West London NHS 111",     790,     697,     648,     537,     646,     562,     254,
                                "North West London NHS 111",     524,     424,     367,     253,     227,     235,     275,
                             "North Central London NHS 111",     395,     515,     448,     353,     434,     356,     315,
                          "Outer North East London NHS 111",     456,     451,     608,     438,     524,     757,     500,
                                "South East London NHS 111",     857,     714,     792,     794,     887,     940,     998,
                               "East London & City NHS 111",     280,     260,     386,     331,     308,     410,     376,
                                    "Isle Of Wight NHS 111",     184,     149,     138,     162,     169,     382,     329,
                                    "Thames Valley NHS 111",    1051,    1129,    1202,     660,     688,    1355,    1474,
                                      "Oxfordshire NHS 111",      NA,      NA,      NA,      NA,      NA,      NA,      NA,
                                    "Mainland Ship NHS 111",    1007,     876,    1103,     695,     680,    1214,    1294,
                                  "Buckinghamshire NHS 111",      NA,      NA,      NA,      NA,      NA,      NA,      NA,
                                        "Berkshire NHS 111",      NA,      NA,      NA,      NA,      NA,      NA,      NA,
                   "South East Coast exc East Kent NHS 111",    1740,    1453,    1265,    1101,     869,     488,     882,
                                        "East Kent NHS 111",     338,     484,     329,     220,     350,     557,     588,
                                           "Dorset NHS 111",     397,     432,     332,     265,     182,     653,     668,
                                "Banes & Wiltshire NHS 111",     266,     250,     178,     112,     135,     151,     172,
  "Bristol, North Somerset & South Gloucestershire NHS 111",     621,     513,     412,     320,     280,     263,     355,
                        "Gloucestershire & Swindon NHS 111",     323,     286,     215,     127,     137,     174,     212,
                                         "Somerset NHS 111",     285,     271,     218,     210,     325,     317,     154,
                                         "Cornwall NHS 111",     274,     289,     230,     234,     316,     528,     413,
                                            "Devon NHS 111",     557,     608,     508,     438,     671,     623,     331
  )


sitrep <- tibble::tribble(    ~'NHS_111_area_name', ~'26_Feb', ~'27_Feb', ~'28_Feb', ~'01_Mar', ~'02_Mar', ~'03_Mar', ~'04_Mar',
                                         "North East England NHS 111",    2272,    1793,    1724,    1707,    1819,    3998,    3305,
                                   "North West inc Blackpool NHS 111",    3433,    3047,    3180,    2966,    3185,    7060,    6661,
                                       "Yorkshire And Humber NHS 111",    3670,    3144,    2892,    3289,    3387,    6990,    6381,
                                               "Lincolnshire NHS 111",     359,     355,     503,     446,     444,     961,     903,
                                       "Luton & Bedfordshire NHS 111",     410,     361,     363,     292,     390,     692,     649,
                                            "Nottinghamshire NHS 111",     771,     732,     825,     788,     705,    1384,    1413,
                                                 "Derbyshire NHS 111",     786,     655,     633,     665,     690,    1491,    1376,
                                              "Hertfordshire NHS 111",     741,     689,     729,     597,     621,    1432,    1360,
               "Norfolk including Great Yarmouth and Waveney NHS 111",     667,     705,     964,     662,     744,    1652,    1589,
                                                    "Suffolk NHS 111",     339,     353,     365,     322,     332,     830,     873,
                                                "North Essex NHS 111",     651,     575,     604,     529,     660,    1467,    1383,
                                                "South Essex NHS 111",     633,     537,     565,     544,     592,    1172,    1161,
                              "Cambridgeshire & Peterborough NHS 111",     544,     485,     478,     459,     463,    1084,    1121,
                                           "Northamptonshire NHS 111",     413,     394,     419,     343,     403,     969,    1042,
                                              "Milton Keynes NHS 111",     198,     150,     177,     152,     176,     354,     317,
                                   "Leicestershire & Rutland NHS 111",     737,     654,     634,     583,     629,    1251,    1239,
                                              "Staffordshire NHS 111",     679,     648,     598,     617,     639,    1272,    1263,
                                              "West Midlands NHS 111",    2831,    2598,    2552,    2102,    2303,    4152,    4678,
                                    "Inner North West London NHS 111",     335,     264,     350,     313,     319,     435,     476,
                                          "Hillingdon London NHS 111",     190,     177,     214,     174,     156,     268,     255,
                                          "South West London NHS 111",     869,     746,     754,     730,     790,    1413,    1311,
                                          "North West London NHS 111",     608,     544,     532,     506,     489,     845,     764,
                                       "North Central London NHS 111",     691,     684,     649,     611,     621,    1040,     932,
                                    "Outer North East London NHS 111",     600,     593,     654,     609,     685,    1088,    1003,
                                          "South East London NHS 111",     961,     855,     962,     884,     992,    1557,    1480,
                                         "East London & City NHS 111",     368,     342,     406,     403,     366,     510,     556,
                                              "Isle Of Wight NHS 111",     210,     157,     156,     167,     220,     409,     344,
                                              "Thames Valley NHS 111",    1343,    1332,    1257,    1070,    1181,    2958,    3003,
                                                "Oxfordshire NHS 111",      NA,      NA,      NA,      NA,      NA,      NA,      NA,
                                              "Mainland Ship NHS 111",    1224,    1065,    1148,    1040,    1177,    2691,    2723,
                                            "Buckinghamshire NHS 111",      NA,      NA,      NA,      NA,      NA,      NA,      NA,
                                                  "Berkshire NHS 111",      NA,      NA,      NA,      NA,      NA,      NA,      NA,
                             "South East Coast exc East Kent NHS 111",    2174,    2061,    2069,    2107,    2014,    4048,    4092,
                                                  "East Kent NHS 111",     383,     498,     337,     345,     425,     996,     914,
                                                     "Dorset NHS 111",     452,     449,     439,     424,     637,    1371,    1260,
                                          "Banes & Wiltshire NHS 111",     334,     325,     283,     271,     351,     805,     729,
            "Bristol, North Somerset & South Gloucestershire NHS 111",     759,     672,     635,     605,     693,    1415,    1420,
                                  "Gloucestershire & Swindon NHS 111",     406,     375,     334,     272,     372,     781,     860,
                                                   "Somerset NHS 111",     302,     281,     255,     291,     428,     839,     635,
                                                   "Cornwall NHS 111",     283,     291,     255,     299,     357,     907,     879,
                                                      "Devon NHS 111",     613,     636,     583,     609,     848,    1618,    1409
            )

sitrep <- sitrep %>% 
  mutate(year=2018)

sitrep_60sec <- sitrep_60sec %>% 
  mutate(year=2018)


saveRDS(sitrep, here::here('data', 'sitrep.rds'))
saveRDS(sitrep_60sec, here::here('data','sitrep_60sec.rds'))


