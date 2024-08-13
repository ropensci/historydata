library(readxl)

data_file <- file.path("data-raw", "DoD_Worldwide_US_Military_Personnel.Report_1950_1999.xlsx")
us_military_strengths <- read_excel(data_file, na = "NA")

usethis::use_data(us_military_strengths, overwrite = TRUE)
