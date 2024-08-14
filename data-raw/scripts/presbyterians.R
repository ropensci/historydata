library(readr)
library(dplyr)
pres <- read_csv(file.path("data-raw", "weber-1927.csv"))

presbyterians <- pres %>%
  mutate(denomination = ifelse(denomination == "Reunited Presbyterians",
                               "Presbyterians", denomination))

usethis::use_data(presbyterians, overwrite = TRUE)
