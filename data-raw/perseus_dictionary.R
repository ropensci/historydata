library(httr)
library(rvest)
library(tidyverse)
library(rlist)

### Utility function from rperseus cf https://github.com/daranzolin/rperseus/blob/master/R/utils.R
extract_text <- function(url) {

  r <- httr::GET(url,
                 httr::user_agent("rperseus - https://github.com/daranzolin/rperseus")
  )
  if (r$status_code == 500) stop("Nothing available for that URN.")
  r_list <- r %>%
    httr::content("raw") %>%
    xml2::read_xml() %>%
    xml2::as_list()

  text <- purrr::map(r_list$reply$passage$TEI$text$body$div, ~paste(unlist(.), collapse = " "))
  text <- gsub("\\s+", " ", text)
  text <- gsub("\\*", "", text)
  text <- stringr::str_trim(text)
  text_df <- data_frame(text = text) %>% filter(text != "")
  return(text_df)
}

entry_names <- read_html("http://cts.perseids.org/read/pdlrefwk/viaf88890045/003/perseus-eng1") %>%
  html_nodes(".col-md-1") %>%
  html_text() %>%
  as.character() %>%
  stringr::str_trim()

indices_list <- list()
for (L in LETTERS) {
  l <- list.filter(entry_names, substr(., 1, 1) == L)
  l_index <- paste(l[1], l[length(l)], sep = "-")
  indices_list <- append(indices_list, l_index)
}

indices_list <- discard(indices_list, ~stringr::str_detect(., "NA"))

BASE_URL <- "http://cts.perseids.org/api/cts/?request=GetPassage&urn=urn:cts:pdlrefwk:viaf88890045.003.perseus-eng1"

perseus_dictionary <- indices_list %>%
  map( ~ paste(BASE_URL, ., sep = ":")) %>%
  map_df(extract_text) %>%
  rename(entry = text)

devtools::use_data(perseus_dictionary, overwrite = TRUE)
