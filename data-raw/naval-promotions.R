library(dplyr)
library(tidyr)
library(lubridate)
naval_promotions <- read.csv("data-raw/naval-promotions.csv",
                             stringsAsFactors = FALSE)
naval_promotions <- naval_promotions %>%
  tbl_df() %>%
  select(name,
         generation = Generation,
         midshipman = date.midshipman,
         lieutenant = date.lieutenant,
         master_commandant = date.mastercommandant,
         captain = date.captain,
         left_service = date.leftservice) %>%
  gather(rank, date, -name, -generation, na.rm = TRUE) %>%
  filter(date != "") %>%
  mutate(date = ymd(date, locale = "en_US"))
devtools::use_data(naval_promotions, overwrite = TRUE)
