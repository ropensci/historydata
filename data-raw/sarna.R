sarna <- read.csv("data-raw/sarna.csv", stringsAsFactors = FALSE)
devtools::use_data(sarna, overwrite = TRUE)
