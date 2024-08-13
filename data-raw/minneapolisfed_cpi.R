library(rvest)
library(readr)
library(dplyr)

cpi_link <- "https://www.minneapolisfed.org/about-us/monetary-policy/inflation-calculator/consumer-price-index-1800-"

minneapolisfed_cpi <- read_html(cpi_link) %>%
  html_element("table") %>%
  html_table()

names(minneapolisfed_cpi)[1] <- "year"
names(minneapolisfed_cpi)[2] <- "annual_average_index"
names(minneapolisfed_cpi)[3] <- "annual_percentage_change"
minneapolisfed_cpi$annual_percentage_change <- parse_number(minneapolisfed_cpi$annual_percentage_change)

write_csv(minneapolisfed_cpi, file = file.path("data-raw", "minneapolisfed_cpi.csv"))
usethis::use_data(minneapolisfed_cpi, overwrite = TRUE)
