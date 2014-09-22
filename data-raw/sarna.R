library(dplyr)
sarna <- read.csv("data-raw/sarna.csv", stringsAsFactors = FALSE)
sarna <- sarna %>%
  tbl_df()
devtools::use_data(sarna, overwrite = TRUE)
