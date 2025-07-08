library(dplyr)
library(tidyr)
us_state_populations <- read.csv(file.path("data-raw", "nhgis0001_ts_nominal_state.csv"),
                                 stringsAsFactors = FALSE)

census_year_pattern <- "A00AA(\\d{4})"

us_state_populations <- us_state_populations %>%
  pivot_longer(
    cols = matches(sprintf("%s$", census_year_pattern)),
    names_to = "year",
    values_to = "population",
    names_pattern = census_year_pattern
  ) %>%
  drop_na(population) %>%
  mutate(year = as.integer(year)) %>%
  select(GISJOIN,
         year,
         state = STATE,
         population) %>%
  arrange(year, state) %>%
  as_tibble()
usethis::use_data(us_state_populations, overwrite = TRUE)
