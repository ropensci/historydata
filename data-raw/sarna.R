library(dplyr)
library(tidyr)
sarna <- read.csv("data-raw/sarna.csv", stringsAsFactors = FALSE)
sarna <- sarna %>%
  as_tibble() %>%
  select(year,
         population_low = estimate_low,
         population_high = estimate_high,
         percentage_low = percentage_pop_low,
         percentage_high = percentage_pop_high) %>%
  gather(estimate, value, -year)
usethis::use_data(sarna, overwrite = TRUE)
