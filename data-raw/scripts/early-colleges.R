library(dplyr)
early_colleges <- read.csv(file.path("data-raw", "early-colleges.csv"), stringsAsFactors = FALSE,
                           na.strings = "")
early_colleges <- early_colleges %>%
  as_tibble()
usethis::use_data(early_colleges, overwrite = TRUE)
