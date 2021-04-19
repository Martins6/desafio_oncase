library(tidyverse)
library(jsonlite)

df <- 
  fromJSON('data/receitas.json') %>% 
  as_tibble()

df %>% 
  head(20) %>% 
  colnames()
