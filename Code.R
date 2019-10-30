
if (!require('tidyverse')) install.packages('tidyverse'); library('tidyverse')
if (!require('here')) install.packages('here'); library('here')
if (!require('tidylog')) install.packages('tidylog'); library('tidylog')
if (!require('lubridate')) install.packages('lubridate'); library('lubridate')


View(starwars)

# First set of exercises



# Second set of exercises


# Reshaping and joining data

sitrep <- readRDS(here::here('data', 'sitrep.rds')) # all calls
sitrep_60sec <- readRDS(here::here('data', 'sitrep_60sec.rds')) # calls answered within 60sec


sitrep_long <- sitrep %>% 
  pivot_longer(-c(NHS_111_area_name, year), names_to='day_month', values_to='calls')

sitrep_long <- sitrep_long %>% 
  mutate(day_month=str_replace(day_month, '_', '-'), date=paste(year, day_month, sep='-'), date=ydm(date)) 

# Reshaping and joining data - exercise
sitrep_60sec_long <- sitrep_60sec %>% 
  pivot_longer(-c(NHS_111_area_name, year), names_to='day_month', values_to='calls') %>% 
  mutate(day_month=str_replace(day_month, '_', '-'), date=paste(year, day_month, sep='-'), date=ydm(date)) 
