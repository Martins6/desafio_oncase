library(tidyverse)
library(jsonlite)
library(skimr)

df <- 
  fromJSON('data/receitas.json') %>% 
  as_tibble()


clean_outliers <- function(df, var, q=.95){
  "
  Filter tibble with values in the column less than the 95% quantile. 
  "
  df <- 
    df %>% 
    dplyr::filter(is.na(.data[[var]]) | .data[[var]] <= quantile(.data[[var]],
                                                                 probs=q,
                                                                 na.rm=TRUE))
  return(df)
}

for(i in c('sodium', 'fat', 'protein', 'calories')){
  df <- 
    df %>% 
    clean_outliers(i)
}


df %>% 
  head() %>% 
  mutate(target = map_dbl(categories, length)) %>% 
  pull(target)



