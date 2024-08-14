library(readr)
library(lubridate)
library(dplyr)
quasi_war <- read_csv(file.path("data-raw", "quasi-war.csv"))

quasi_war <- quasi_war %>%
  mutate(year = year(date),
         month = month(date),
         day   = day(date))

usethis::use_data(quasi_war, overwrite = TRUE)
