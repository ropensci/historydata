library(dplyr)
library(tidyr)
naval_promotions <- read.csv(file.path("data-raw", "naval-promotions.csv"),
                             stringsAsFactors = FALSE)
# Assign a unique ID to each person:
naval_promotions$id <- 1:nrow(naval_promotions)
naval_promotions <- naval_promotions %>%
  as_tibble() %>%
  select(id,
         name,
         generation = Generation,
         midshipman = date.midshipman,
         lieutenant = date.lieutenant,
         master_commandant = date.mastercommandant,
         captain = date.captain,
         left_service = date.leftservice) %>%
  gather(rank, date, -id, -name, -generation, na.rm = TRUE) %>%
  filter(date != "")
usethis::use_data(naval_promotions, overwrite = TRUE)
