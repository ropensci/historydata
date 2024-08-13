#' US Military Strengths
#'
#' Active Duty US Military Personnel by Regional Area and by Country: Worldwide Manpower Distribution by Geographical Area
#'
#' @details
#'   This data subset was extracted and transcribed in February 2018 from 48 individual DoD military troop
#'   strength yearly reports which varied in composition over time according to requirements mandated by Congress.
#'   The compiled spreadsheet covers the period 1950-1999, less the years 1951-1952 which are not available.
#'   It includes total military personnel, the numbers in the U.S. and overseas, the totals by military Service,
#'   and the figures for some twenty countries in which the United States had a significant military presence for
#'   much or all of the period. The original DoD reports are a mix of .pdf and .xls formats downloaded in one.zip
#'   file from the section “Historical Publications” at the bottom of the DMDC reports page. The country column
#'   headings in this spreadsheet use the ISO 3166 Alpha-2 country codes from the ISO Online Browsing Platform (OBP)
#'   at \url{https://www.iso.org/obp/ui/#search}.
#'
#'   Clarke Bursley put this data together.
#'
#' @format A data frame with 50 observations of 27 variables.
#' @references
#'   Defense Manpower Data Center,
#'   “Active Duty Military Personnel by Regional Area and by Country: Worldwide Manpower Distribution by Geographical Area (M05),
#'   Historical Reports - Military Only - 1950, 1953 - 1999,”
#'   DoD Personnel, Workforce Reports & Publications, \url{www.dmdc.osd.mil/appj/dwp/dwp_reports.jsp}
#' @examples
#' head(us_military_strengths)
"us_military_strengths"
