library(dplyr)
early_colleges <- read.csv("data-raw/early-colleges.csv", stringsAsFactors = FALSE,
                           na.strings = "")
early_colleges <- early_colleges %>%
  tbl_df()
devtools::use_data(early_colleges, overwrite = TRUE)
