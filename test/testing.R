library(tidyverse)
library(jsonlite)
library(skimr)
library(tidytext)

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

library(lubridate)
df %>% 
  mutate(date = date(date),
         year = year(date)) %>% 
  select(all_of(c('sodium', 'fat', 'protein', 'calories',
                  'year'))) %>% 
  drop_na() %>%
  pivot_longer(cols = all_of(c('sodium', 'fat',
                               'protein', 'calories'))) %>% 
  group_by(year, name) %>%
  summarise(mu = mean(value)/sd(value)) %>% 
  filter(name == 'sodium')






