library(tidyverse)
#library(rjson)
library(jsonlite)

df <- 
  fromJSON('data/receitas.json') %>% 
  as_tibble()

df %>% 
  pull(rating) %>% 
  unique()
