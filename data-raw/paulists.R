library(dplyr)
paulist_missions <- read.csv("data-raw/paulist-missions.geocoded.csv",
                             stringsAsFactors = FALSE)
paulist_missions <- paulist_missions %>%
  tbl_df() %>%
  select(mission_number,
         church,
         city,
         state,
         start_date,
         end_date,
         confessions = confessions_total,
         converts = converts_total,
         order,
         lat = geo.lat,
         long = geo.lon)
devtools::use_data(paulist_missions, overwrite = TRUE)
