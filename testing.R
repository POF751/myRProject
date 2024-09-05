library(tidyverse)

mtcars |> mutate(names = rownames(mtcars), .before =mpg ) |> as.tibble()
