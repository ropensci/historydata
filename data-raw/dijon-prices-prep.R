library(readr)
library(tidyr)
library(dplyr)
library(devtools)
library(stringr)

dijon_prices_wide <- read_csv("data-raw/dijon-prices-wide.csv")
dijon_citations <- read_csv("data-raw/dijon-citations.csv") %>%
  select(-1) %>%
  t() %>%
  as.data.frame() %>%
  add_rownames() %>%
  select(year = 1, citation = 2, citation_date = 3) %>%
  mutate(year = as.numeric(year))

dijon_prices <- dijon_prices_wide %>%
  gather(year, price, -commodity, -measure, na.rm = TRUE, convert = TRUE) %>%
  left_join(dijon_citations)

use_data(dijon_prices_wide, dijon_prices, overwrite = TRUE)
