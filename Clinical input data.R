sitrep_clinical_input_corrupt <- tibble::tribble(
            ~region,    ~code,                                        ~NHS_111_area_name, ~'26-Feb', ~'27-Feb', ~'28-Feb', ~'01-Mar', ~'02-Mar', ~'03-Mar', ~'04-Mar',
            "North", "111AA1",                              "North East England NHS 111",     734,     663,     664,     648,     676,    1766,    1397,
            "North", "111AF8",                        "North West inc Blackpool NHS 111",    1446,    1303,    1306,    1298,    1468,    3553,    3355,
            "North", "111AD9",                            "Yorkshire And Humber NHS 111",    1272,    1136,    1079,    1172,    1208,    2683,    2300,
  "Midlands & East", "111AA2",                                    "Lincolnshire NHS 111",     192,     222,     267,     243,     261,     637,     557,
  "Midlands & East", "111AG7",                            "Luton & Bedfordshire NHS 111",      98,      94,      99,      58,      84,     201,     197,
  "Midlands & East", "111AA4",                                 "Nottinghamshire NHS 111",     324,     301,     294,     301,     292,     532,     595,
  "Midlands & East", "111AA5",                                      "Derbyshire NHS 111",     526,     404,     422,     425,     476,    1002,     973,
  "Midlands & East", "111AB2",                                   "Hertfordshire NHS 111",     271,     293,     302,     238,     260,     646,     563,
  "Midlands & East", "111AG8",    "Norfolk including Great Yarmouth and Waveney NHS 111",     235,     264,     260,     278,     270,     777,     671,
  "Midlands & East", "111AC2",                                         "Suffolk NHS 111",     111,     133,     145,     134,     138,     394,     385,
  "Midlands & East", "111AC3",                                     "North Essex NHS 111",     195,     200,     241,     181,     249,     574,     583,
  "Midlands & East", "111AC4",                                     "South Essex NHS 111",     221,     201,     216,     224,     250,     461,     464,
  "Midlands & East", "111AC5",                   "Cambridgeshire & Peterborough NHS 111",     141,     143,     129,     129,     141,     368,     277,
  "Midlands & East", "111AC6",                                "Northamptonshire NHS 111",     202,     158,     180,     141,     175,     379,     413,
  "Midlands & East", "111AC7",                                   "Milton Keynes NHS 111",     133,      82,      99,      88,     105,     206,     162,
  "Midlands & East", "111AC8",                        "Leicestershire & Rutland NHS 111",     360,     305,     263,     254,     296,     519,     530,
  "Midlands & East", "111AF4",                                   "Staffordshire NHS 111",     282,     320,     287,     345,     374,     728,     671,
  "Midlands & East", "111AC9",                                   "West Midlands NHS 111",     941,     852,     852,     764,     853,    1511,    1735,
            "South", "111AA6",                                   "Isle Of Wight NHS 111",      43,      36,      29,      42,      49,      79,      72,
            "South", "111AG9",                                   "Thames Valley NHS 111",     420,     406,     381,     338,     394,    1084,    1126,
            "South", "111AB4",                                     "Oxfordshire NHS 111",      NA,      NA,      NA,      NA,      NA,      NA,      NA,
            "South", "111AE1",                                   "Mainland Ship NHS 111",     487,     436,     408,     429,     457,    1119,    1095,
            "South", "111AE2",                                 "Buckinghamshire NHS 111",      NA,      NA,      NA,      NA,      NA,      NA,      NA,
            "South", "111AE3",                                       "Berkshire NHS 111",      NA,      NA,      NA,      NA,      NA,      NA,      NA,
            "South", "111AG6",                  "South East Coast exc East Kent NHS 111",     576,     574,     615,     590,     597,    1031,    1030,
            "South", "111AG4",                                       "East Kent NHS 111",     132,     208,     124,     146,     167,     423,     401,
            "South", "111AE5",                                          "Dorset NHS 111",     187,     212,     186,     169,     298,     768,     606,
            "South", "111AE6",                               "Banes & Wiltshire NHS 111",     147,     129,     135,     125,     180,     475,     401,
            "South", "111AE7", "Bristol, North Somerset & South Gloucestershire NHS 111",     299,     262,     255,     266,     313,     810,     785,
            "South", "111AE8",                       "Gloucestershire & Swindon NHS 111",     148,     137,     129,     116,     171,     427,     469,
            "South", "111AE9",                                        "Somerset NHS 111",     151,     145,     137,     124,     210,     499,     326,
            "South", "111AF1",                                        "Cornwall NHS 111",     118,     112,      99,     107,     134,     678,     527,
            "South", "111AF2",                                           "Devon NHS 111",     248,     289,     243,     264,     335,     588,     533
  )


sitrep_clinical_input_corrupt_long <- sitrep_clinical_input_corrupt %>% 
  mutate(year=2019) %>% 
  select(-region, -code) %>% 
  pivot_longer(-c(NHS_111_area_name, year), names_to='day_month', values_to='calls') %>% 
  mutate(day_month=str_replace(day_month, '_', '-'), date=paste(year, day_month, sep='-'), date=ydm(date)) %>% 
  select(-contains('year'), -contains('day_month')) 


saveRDS(sitrep_clinical_input_corrupt_long, here::here('data',  'sitrep_clinical_input_corrupt_long.rds'))



