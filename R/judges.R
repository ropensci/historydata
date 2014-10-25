#' Federal judges in the United States of America
#'
#' This dataset contains information about the appointments and careers of all
#' federal judges in United States history since 1789. It includes judges who
#' "judges presidentially appointed during good behavior who have served since
#' 1789 on the U.S. District Courts, the U.S. Courts of Appeals, the Supreme
#' Court of the United States,  the former U.S. Circuit Courts, and the federal
#' judiciary's courts of special jurisdiction." Some of the unnecessary
#' information from the source has been excluded.
#'
#' @section Data frames:
#'
#'   The data frame \code{judges_people} contains information about the judges,
#'   such as names and vital information. The data frame
#'   \code{judges_appointments} contains information about their appointments,
#'   such as the name of the court, nominating president, and the dates of
#'   service.
#'
#' @format Two data frames, \code{judges_people} and \code{judges_appointments}.
#' @references This data is taken from the
#'   \href{http://www.uscourts.gov/JudgesAndJudgeships/BiographicalDirectoryOfJudges.aspx}{Biographical
#'    Directory of Federal Judges, 1789-present}.
#' @examples
#' data(judges_people)
#' data(judges_appointments)
#' @name judges
#' @aliases judges_appointments judges_people
NULL
