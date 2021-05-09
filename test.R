library(tidyverse)

df <- read_csv('data/regression_data/regression_train.csv') %>% 
  drop_na()
df

fit <- 
  df %>% 
  select(-c(X6, X7, X5)) %>% 
  lm(data = .,
      'target ~ .',
      family='Gamma')
# fit
summary(fit)
hist(fit$resid)

qqnorm(fit$residuals)
