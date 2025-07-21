library(dplyr)
library(tidyr)

us_state_populations <- read.csv(file.path("data-raw", "nhgis0001_ts_nominal_state.csv"),
                                 stringsAsFactors = FALSE)

census_year_pattern <- "A00AA(\\d{4})"

us_national_population <- us_state_populations %>%
  pivot_longer(
    cols = matches(sprintf("%s$", census_year_pattern)),
    names_to = "year",
    values_to = "population",
    names_pattern = census_year_pattern
  ) %>%
  mutate(year = as.integer(year)) %>%
  as_tibble() %>%
  group_by(year) %>%
  summarize(population = sum(population, na.rm = TRUE))
usethis::use_data(us_national_population, overwrite = TRUE)
