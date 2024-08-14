library(dplyr)
library(readr)

replace_na <- function(x, val = 0L) {
  ifelse(is.na(x), val, x)
}

methodists <- read_csv(file.path("data-raw", "methodists.csv")) %>%
  filter(minutes_year != 1778,
         minutes_year != 1779,
         minutes_year != 1785) %>%
  filter(minutes_year >= 1786, minutes_year <= 1834) %>%
  rename(members_black = members_colored,
         year = minutes_year) %>%
  mutate(members_indian = as.integer(members_indian)) %>%
  mutate(members_white = replace_na(members_white),
         members_black = replace_na(members_black),
         members_indian = replace_na(members_indian)) %>%
  rowwise() %>%
  mutate(members_total = sum(members_general, members_white, members_black,
                             members_indian, na.rm = TRUE)) %>%
  ungroup() %>%
  select(year, conference, district, meeting, state, members_total,
         starts_with("members_"), url)

usethis::use_data(methodists, overwrite = TRUE)
