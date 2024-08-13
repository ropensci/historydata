library(dplyr)
us_state_populations <- read.csv("data-raw/nhgis0011_ts_state.csv",
                                 stringsAsFactors = FALSE)
us_national_population <- us_state_populations %>%
  select(year = YEAR,
         state = STATE,
         state_population = A00AA) %>%
  as_tibble() %>%
  group_by(year) %>%
  summarize(population = sum(state_population, na.rm = TRUE))
usethis::use_data(us_national_population, overwrite = TRUE)
