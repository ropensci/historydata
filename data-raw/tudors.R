library(dplyr)

tudors <- read.csv("data-raw/tudors.csv", stringsAsFactors = FALSE) %>%
  as_tibble
usethis::use_data(tudors, overwrite = TRUE)
