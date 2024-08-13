library(dplyr)
us_state_populations <- read.csv("data-raw/nhgis0011_ts_state.csv",
                                 stringsAsFactors = FALSE)
us_state_populations <- us_state_populations %>%
  select(GISJOIN,
         year = YEAR,
         state = STATE,
         population = A00AA) %>%
  as_tibble()
usethis::use_data(us_state_populations, overwrite = TRUE)
