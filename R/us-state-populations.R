#' Populations of US states and territories, 1790-2010
#'
#' Population figures for US states and territories from the decennial census.
#'
#' @section Variables:
#'
#'   \itemize{
#'
#'   \item \code{year}: date of the census.
#'
#'   \item \code{state}: name of the state or territory.
#'
#'   \item \code{population}: population of the state or territory.
#'
#'   \item \code{GISJOIN}: a unique identifier for joining NHGIS data to spatial
#'   data.
#'
#'   }
#' @format A data frame with 983 observations of 4 variables.
#' @references This dataset has been gathered by the
#'   \href{https://www.nhgis.org/}{NHGIS}. Minnesota Population Center,
#'   \emph{National Historical Geographic Information System: Version 2.0}
#'   (Minneapolis: University of Minnesota, 2011).
#' @examples
#' head(us_state_populations)
"us_state_populations"
