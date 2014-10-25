library(dplyr)
library(devtools)
tudors <- read.csv("data-raw/tudors.csv", stringsAsFactors = FALSE) %>%
  tbl_df
use_data(tudors, overwrite = TRUE)
