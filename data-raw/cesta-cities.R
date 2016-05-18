library(readr)
library(dplyr)
library(tidyr)

if (!file.exists("data-raw/cesta-cities.csv")) {
  download.file("https://raw.githubusercontent.com/cestastanford/historical-us-city-populations/master/data/1790-2010_MASTER.csv",
                destfile = "data-raw/cesta-cities.csv")
}

cities <- read_csv("data-raw/cesta-cities.csv")

cities <- cities %>%
  gather(year, population, -ID, -ST, -City, -CityST, -STPLFIPS_2010, -Name_2010,
         -County, -LAT, -LON, -LAT_BING, -LON_BING, -`City Source`,
         -`Population Source`, -`Place Type`, -`County_Name`) %>%
  mutate(year = as.integer(year))

names(cities) <- tolower(names(cities))

cities <- cities %>%
  rename(source_city = `city source`, source_population = `population source`,
         place_type = `place type`) %>%
  select(id, city, state = st, year, population, everything())

correct_na <- function(x) {
  if (is.character(x)) {
    out <- ifelse(x == "0", NA, x)
  } else if (is.numeric(x)) {
    out <- ifelse(x == 0, NA, x)
  }
  out
}

cities <- cities %>%
  filter(population > 0) %>%
  mutate(stplfips_2010 = correct_na(stplfips_2010),
         name_2010 = correct_na(name_2010))

us_cities_pop <- cities

devtools::use_data(us_cities_pop, overwrite = TRUE)
