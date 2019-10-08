Introduction to data wrangling
========================================================
author: Emma Vestesson 
date: 
autosize: true
font-family: 'Georgia'



Getting up to speed
==============================
Workshop is aimed at advanced beginners and I will assume some familiarity with R and the tidyverse. We will spend a few minutes to refamiliarise ourselves with R.

Packages in R
=====================

The first time you use it you need to install the package. 


```r
install.packages("tidyverse")
```

Load the package

```r
library(tidyverse)
```

The pipe
========================================

Simplifying R code with pipes (%>%)
- Easy way to pass data through functions without nesting
- First argument of each function is “piped” in to reduce redundancy
- f(x) is the same as x %>% f()
- f(x, y) is the same as x %>% f(y)
- Keyboard shortcut ctrl+shift +m

The pipe
==============================


```r
leave_house(get_dressed(get_out_of_bed(wake_up(me))))
```
VS

```r
me %>% 
  wake_up() %>% 
  get_out_of_bed() %>% 
  get_dressed() %>% 
  leave_house()
```


Rstudio tips
========================================================
- ctrl + shift + m will create a pipe ( %>% )
- start a new R session (keyboard short ctrl+shift+F10)
- the :: operator is your friend eg dplyr::select()

Main dplyr verbs 
========================================================
Grammar of data manipulation:
+ select() picks variables (columns) based on their names
+ filter() allows row selection based on given criteria
+ mutate() creates new variables (columns) from existing ones
+ summarise() reduces multiple values down to a single summary

Main dplyr helper verbs
=======================================
+ group_by() performs any of the above on a group-by-group basis
+ arrange() changes the ordering of rows



Helper functions with select()
================================

Helper functions you can use within select():
+ starts_with(“e_”) matches names that begin with “e_”
+ ends_with(“_end”) matches names that ends with “_end”
+ contains(“_h12”) matches names that contain “_h12”
+ matches(<regex>) allows you to do regex matching on names eg matches("abc|abd") 


Example select()
===============================

```r
# Select variables/columns 2 to 5 and save data as new_dat
new_dat <- select(starwars, 2:5)

# Drop variables height and mass (same as keeping all variables but height and mass)
starwars %>% 
  select( -height, -mass) 

starwars %>% 
  select(name, ends_with("color"))
```

Example filter
============================================


```r
starwars %>% 
  filter(mass>80,  hair_color=="white")

starwars %>% 
  filter(is.na(hair_color))
```


Example mutate
===============================


```r
starwars %>% 
  mutate(height_m=height/100, bmi=mass/(height_m^2), bmi=round(bmi, 1)) 
```


Example summarise
===================================


```r
starwars %>%
  summarise(height_mean = mean(height, na.rm=TRUE))

starwars %>%
  group_by(homeworld) %>% 
  summarise(height_max = max(height, na.rm=TRUE))
```


Exercise 1
==========================================
See exercise script but also use your post-its

pink sticker = I need help

green = DONE!

Try it!
==========================================



Try it!
===========================================

+ Find the rows where height > 100
+ Find the rows where height > 90 and hair_color is not brown
+ Find the rows where eye_color is  brown
+ Find the rows where hair_color is missing
+ Find the rows where hair_color is NOT missing
+ Find the rows where hair_color is white
+ Find the rows where hair_color contains the word white
- Select the first 3 columns of starwars
- Select name and mass
- Select columns with string `color` in them
- Select all columns BUT height and mass

- Create a new variable called `half_mass` that is half of mass
- Create variable `height_cat` with 3 categories "short", "medium", "tall" if `height` [0,70], ]70,90], ]90,inf[   
- Create variable `small` that is 1 if mass is less than the mean of `mass` and 0 otherwise. 


Solution
============================================


```r
starwars %>% 
  filter(height>100)

starwars %>% 
  filter(height>90, hair_color!="brown")

starwars %>% 
  filter(eye_color=="brown")

starwars %>% 
  filter(is.na(hair_color))

starwars %>% 
  filter(!is.na(hair_color))

starwars %>% 
  filter(str_detect(hair_color, "white"))

starwars %>% 
  select(1:3) 
starwars %>% 
  select(name,mass)
starwars %>% 
  select(contains("color"))
starwars %>% 
  select( -c(height, mass) )

starwars %>% 
  mutate(half_mass=mass/2)
starwars %>% 
  mutate(height_cat=case_when(height<=70 ~ "short",
                              height>70 & height<=90 ~ "medium",
                              height>90 ~ "tall"))
starwars %>% 
  mutate(small=if_else(mass<=mean(mass, na.rm = TRUE), 1,0))
```


Scoped verbs
==========================================
+ Terminology: we have been using “single table verbs”
+ Now we can affect multiple variables simultaneously with the scoped verbs 
+ Three extensions
  - _if pick variables based on a predicate function like is.numeric() or a user defined function function(x) do_this(x) 
  + _at pick variables using the same syntax as select().
  + _all operates on all variables

mutate_if
==========================================


```r
starwars %>% 
  mutate_if(is.numeric, ~round(.) )
```

select_at 
================= 
 

```
# A tibble: 87 x 3
   hair_color    skin_color  eye_color
   <chr>         <chr>       <chr>    
 1 blond         fair        blue     
 2 <NA>          gold        yellow   
 3 <NA>          white, blue red      
 4 none          white       yellow   
 5 brown         light       brown    
 6 brown, grey   light       blue     
 7 brown         light       blue     
 8 <NA>          white, red  red      
 9 black         light       brown    
10 auburn, white fair        blue-gray
# … with 77 more rows
```

```
# A tibble: 87 x 10
   name  height  mass birth_year gender homeworld species films vehicles
   <chr>  <int> <dbl>      <dbl> <chr>  <chr>     <chr>   <lis> <list>  
 1 Luke…    172    77       19   male   Tatooine  Human   <chr… <chr [2…
 2 C-3PO    167    75      112   <NA>   Tatooine  Droid   <chr… <chr [0…
 3 R2-D2     96    32       33   <NA>   Naboo     Droid   <chr… <chr [0…
 4 Dart…    202   136       41.9 male   Tatooine  Human   <chr… <chr [0…
 5 Leia…    150    49       19   female Alderaan  Human   <chr… <chr [1…
 6 Owen…    178   120       52   male   Tatooine  Human   <chr… <chr [0…
 7 Beru…    165    75       47   female Tatooine  Human   <chr… <chr [0…
 8 R5-D4     97    32       NA   <NA>   Tatooine  Droid   <chr… <chr [0…
 9 Bigg…    183    84       24   male   Tatooine  Human   <chr… <chr [0…
10 Obi-…    182    77       57   male   Stewjon   Human   <chr… <chr [1…
# … with 77 more rows, and 1 more variable: starships <list>
```
 
 summarise_all
================================== 
 

```
# A tibble: 1 x 3
  height  mass birth_year
   <dbl> <dbl>      <dbl>
1   174.  97.3       87.6
```

```
# A tibble: 13 x 7
   hair_color height_min mass_min birth_year_min height_max mass_max
   <chr>           <dbl>    <dbl>          <dbl>      <dbl>    <dbl>
 1 auburn            150       NA             48        150       NA
 2 auburn, g…        180       NA             64        180       NA
 3 auburn, w…        182       77             57        182       77
 4 black              NA       NA             NA         NA       NA
 5 blond             170       NA             19        188       NA
 6 blonde            168       55             NA        168       55
 7 brown              NA       NA             NA         NA       NA
 8 brown, gr…        178      120             52        178      120
 9 grey              170       75             82        170       75
10 none               NA       NA             NA         NA       NA
11 unknown            NA       NA             NA         NA       NA
12 white              66       NA             NA        198       NA
13 <NA>               96       32             NA        175     1358
# … with 1 more variable: birth_year_max <dbl>
```
 
 
Exercises
==========================================
- What variables are characters? 
- Remove all numeric observations with missing values
- Calculate the mean of all numeric variable by homeworld.

Solution
==========================================
  

```
[1] "name"       "hair_color" "skin_color" "eye_color"  "gender"    
[6] "homeworld"  "species"   
```

```
# A tibble: 36 x 13
   name  height  mass hair_color skin_color eye_color birth_year gender
   <chr>  <int> <dbl> <chr>      <chr>      <chr>          <dbl> <chr> 
 1 Luke…    172    77 blond      fair       blue            19   male  
 2 C-3PO    167    75 <NA>       gold       yellow         112   <NA>  
 3 R2-D2     96    32 <NA>       white, bl… red             33   <NA>  
 4 Dart…    202   136 none       white      yellow          41.9 male  
 5 Leia…    150    49 brown      light      brown           19   female
 6 Owen…    178   120 brown, gr… light      blue            52   male  
 7 Beru…    165    75 brown      light      blue            47   female
 8 Bigg…    183    84 black      light      brown           24   male  
 9 Obi-…    182    77 auburn, w… fair       blue-gray       57   male  
10 Anak…    188    84 blond      fair       blue            41.9 male  
# … with 26 more rows, and 5 more variables: homeworld <chr>,
#   species <chr>, films <list>, vehicles <list>, starships <list>
```

```
# A tibble: 49 x 4
   homeworld      height  mass birth_year
   <chr>           <dbl> <dbl>      <dbl>
 1 Alderaan         176.  64           43
 2 Aleen Minor       79   15          NaN
 3 Bespin           175   79           37
 4 Bestine IV       180  110          NaN
 5 Cato Neimoidia   191   90          NaN
 6 Cerea            198   82           92
 7 Champala         196  NaN          NaN
 8 Chandrila        150  NaN           48
 9 Concord Dawn     183   79           66
10 Corellia         175   78.5         25
# … with 39 more rows
```
  
  
Tidy data
==========================================
Data comes in all kinds of shapes and forms. 

1. Each variable forms a column.
2. Each observation forms a row.
3. Each type of observational unit forms a table.

Sitrep data
==========================================

Downloaded data from [NHSE website](https://www.england.nhs.uk/statistics/statistical-work-areas/winter-daily-sitreps/winter-daily-sitrep-2017-18-data/) and saved in R data format. 



```r
sitrep <- readRDS(here::here('sitrep.RDS')) # all calls
sitrep_60sec <- readRDS(here::here('sitrep_60sec.RDS')) # calls answered within 60sec
```
Look at data. Is is tidy? 



New tidyr package
==========================================
The `tidyr` package was updated early september. `Spread` and  `gather` have been replaced by `pivot_longer` and `pivot_wider`. 




==========================================

```r
sitrep_long <- sitrep %>% 
  pivot_longer(-c(NHS_111_area_name, year), names_to='day_month', values_to='calls')
```
Our data is long! But we can make it even tidier. Suggestions? 


Sorting out the date
===============================










```
Error in ydm(date) : could not find function "ydm"
```
