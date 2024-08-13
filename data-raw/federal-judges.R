# Biographical Directory of Federal Judges, 1789-present
# http://www.uscourts.gov/JudgesAndJudgeships/BiographicalDirectoryOfJudges.aspx)

library(dplyr)
library(tidyr)
library(devtools)

export_url <- "http://www.fjc.gov/history/export/jb.txt"
download.file(export_url, destfile = "data-raw/judges.csv")

judges <- read.csv("data-raw/judges.csv", stringsAsFactors = FALSE) %>%
  as_tibble()

judges_people <- judges %>%
  select(judge_id = Judge.Identification.Number,
         name_first = Judge.First.Name,
         name_middle = Judge.Middle.Name,
         name_last = Judge.Last.Name,
         name_suffix = Suffix,
         birth_date = Birth.year,
         birthplace_city = Place.of.Birth..City.,
         birthplace_state = Place.of.Birth..State.,
         death_date = Death.year,
         death_city = Place.of.Death..City.,
         death_state = Place.of.Death..State.,
         gender = Gender,
         race = Race.or.Ethnicity)

judges_people[judges_people == ""] <- NA
judges_people[judges_people == " "] <- NA

appointments <- vector(mode = "list", length = 6)

appointments[[1]] <- judges %>%
  select(judge_id = 1, 19:46)

appointments[[2]] <- judges %>%
  select(judge_id = 1, 48:75)

appointments[[3]] <- judges %>%
  select(judge_id = 1, 77:104)

appointments[[4]] <- judges %>%
  select(judge_id = 1, 106:133)

appointments[[5]] <- judges %>%
  select(judge_id = 1, 135:162)

appointments[[6]] <- judges %>%
  select(judge_id = 1, 164:191)

lapply(appointments, function(x) {
  x  %>%
    select(judge_id,
           court_name = 2,
           court_type = 3,
           president_name = 4,
           president_party = 5,
           nomination_date = 8,
           predecessor_last_name = 11,
           predecessor_first_name = 12,
           senate_confirmation_date = 21,
           commission_date = 22,
           chief_judge_begin = 25,
           chief_judge_end = 26,
           retirement_from_active_service = 27,
           termination_date = 28,
           termination_reason = 29)
})  %>%
  rbind_all() -> judges_appointments

judges_appointments[judges_appointments == ""] <- NA
judges_appointments[judges_appointments == " "] <- NA

judges_appointments <- judges_appointments %>%
  filter(!is.na(court_name))

usethis::use_data(judges_people, judges_appointments, overwrite = TRUE)
