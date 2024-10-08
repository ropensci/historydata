library(dplyr)
library(lubridate)
library(tidyr)

data_file <- file.path("data-raw", "catholic.dioceses.geocoded.csv")
catholic_dioceses <- read.csv(data_file, stringsAsFactors = FALSE)
catholic_dioceses <-
  catholic_dioceses %>%
  select(diocese,
         erected = date.erected,
         metropolitan = date.metropolitan,
         rite,
         lat = geo.lat,
         long = geo.lon) %>%
  gather(event, date, -diocese, -rite, -lat, -long) %>%
  filter(date != "") %>%
  mutate(date = mdy(date)) %>%
  as_tibble()
usethis::use_data(catholic_dioceses, overwrite = TRUE)
