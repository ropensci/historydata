library(dplyr)
library(tidyr)
us_state_populations <- read.csv(file.path("data-raw", "nhgis0001_ts_nominal_state.csv"),
                                 stringsAsFactors = FALSE)
us_state_populations <- us_state_populations %>%
  pivot_longer(
    cols = matches("A00AA\\d{4}$"),
    names_to = "year",
    values_to = "population",
    names_pattern = "A00AA(\\d{4})"
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
