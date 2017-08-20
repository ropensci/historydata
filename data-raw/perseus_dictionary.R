library(rperseus)
library(tidyverse)

perseus_dictionary <- perseus_catalog %>%
  filter(grepl("Dictionary", description)) %>%
  pull(urn) %>%
  get_perseus_text()

perseus_dictionary <- perseus_dictionary %>%
  select(entry = text,
         perseus_urn = urn)

devtools::use_data(perseus_dictionary, overwrite = TRUE)
