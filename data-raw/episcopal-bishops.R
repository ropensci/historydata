library(rvest)
library(dplyr)
library(purrr)
library(tidyr)
library(stringr)
library(readr)
library(devtools)

# Scrape bishops of the Episcopal Church into a data frame
#  https://en.wikipedia.org/wiki/List_of_bishops_of_the_Episcopal_Church_in_the_United_States_of_America

url <- "https://en.wikipedia.org/wiki/List_of_bishops_of_the_Episcopal_Church_in_the_United_States_of_America"

non_episcopal <- read_csv("data-raw/non-episocopal-consecrators.csv")

page <- read_html(url)

parsed <- page %>%
  html_nodes("table") %>%
  lapply(html_table, fill = TRUE) %>%
  `[`(2:12) %>%
  lapply(function(x) lapply(x, as.character)) %>%
  bind_rows()

remove_fn <- function(x) {
  x %>%
    str_replace_all("\\[.+\\]", "") %>%
    str_replace_all("\\(et al\\.\\)", "") %>%
    str_replace_all("Nassau", "") # TODO why is Nassaul listed as consecrator
}

cleaned <- parsed %>%
  rename(id = `No.`, bishop = Bishop, year = Year, diocese = Diocese,
         consecrators = Consecrators, notes = Notes) %>%
  mutate(consecrators = consecrators %>% remove_fn() %>% str_trim()) %>%
  separate(consecrators, str_c("consecrator", 1:10)) %>%
  mutate(year = year %>% remove_fn() %>% as.integer(),
         diocese = diocese %>% remove_fn(),
         notes = notes %>% remove_fn()) %>%
  rename(presiding_bishop = notes, year_consecrated = year) %>%
  # Fix problems we're not sure about: mostly people without consecrators
  filter(!id %in% c("751", "1027a", "A810", "980a", "1072", "1080", "1091"))

episcopal_bishops <- cleaned %>%
  select(id, bishop, year_consecrated, diocese, presiding_bishop) %>%
  mutate(church = "Episcopal Church") %>%
  bind_rows(non_episcopal)

episcopal_consecrations <- cleaned %>%
  select(id, starts_with("consecrator")) %>%
  gather(type, consecrator, -id) %>%
  select(-type) %>%
  filter(!is.na(consecrator))
episcopal_consecrations

use_data(episcopal_bishops, episcopal_consecrations, overwrite = TRUE)
