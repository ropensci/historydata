library(dplyr)
library(lubridate)
library(readr)

to_weeks <- function(x) {
  stopifnot(is.integer(x))
  x <- ifelse(x <= 7, "1 week or less",
              ifelse(x <= 14, "2 weeks or less",
                     ifelse(x <= 21, "3 weeks or less",
                            "more than 3 weeks")))
  x <- ordered(x, levels = c("1 week or less", "2 weeks or less",
                             "3 weeks or less", "more than 3 weeks"))
  x
}

paulist_missions <- read_csv("data-raw/paulist-missions.geocoded.csv") %>%
  mutate(start_date = mdy(start_date),
         end_date = mdy(end_date)) %>%
  mutate(year = year(start_date)) %>%
  mutate(duration_days = as.integer(end_date - start_date),
         duration_weeks = to_weeks(duration_days)) %>%
  select(mission_number,
         church,
         city,
         state,
         date_start = start_date,
         date_end = end_date,
         year,
         duration_days,
         duration_weeks,
         confessions = confessions_total,
         converts = converts_total,
         order,
         lat = geo.lat,
         long = geo.lon,
         volume,
         page)

devtools::use_data(paulist_missions, overwrite = TRUE)
