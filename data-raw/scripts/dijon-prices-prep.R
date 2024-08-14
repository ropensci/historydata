library(readr)
library(tidyr)
library(dplyr)
library(tibble)
library(stringr)

dijon_prices_wide <- read_csv(file.path("data-raw", "dijon-prices-wide.csv"))
dijon_citations <- read_csv(file.path("data-raw", "dijon-citations.csv")) %>%
  select(-1) %>%
  t() %>%
  as.data.frame() %>%
  rownames_to_column() %>%
  select(year = 1, citation = 2, citation_date = 3) %>%
  mutate(year = as.numeric(year))

dijon_prices <- dijon_prices_wide %>%
  gather(year, price, -commodity, -measure, na.rm = TRUE, convert = TRUE) %>%
  left_join(dijon_citations)

usethis::use_data(dijon_prices_wide, dijon_prices, overwrite = TRUE)
