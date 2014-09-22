library(dplyr)
library(lubridate)
library(tidyr)

catholic_dioceses <- read.csv("data-raw/catholic.dioceses.geocoded.csv",
                              stringsAsFactors = FALSE)
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
  tbl_df()
devtools::use_data(catholic_dioceses, overwrite = TRUE)
