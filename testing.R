library(tidyverse)

rm(list = ls())

df <- mtcars |> mutate(name = rownames(mtcars), .before =mpg ) |> 
  as.tibble() |> 
  pivot_longer(cols = mpg:carb,names_to = "parameter", values_to = "value")


df |> ggplot(mapping = aes(x = parameter, y = value)) +
  geom_point()

df |> ggplot(mapping = aes(x = parameter, y = value)) +
  geom_boxplot()
