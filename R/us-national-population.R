#' Population of the United States, 1790-2010
#'
#' Population figures for the entire United States of America from the decennial census.
#'
#' @section Variables:
#'
#'   \itemize{
#'
#'   \item \code{year}: date of the census.
#'
#'   \item \code{population}: population of the state or territory.
#'
#'   }
#' @format A data frame with 23 observations of 2 variables.
#' @references This dataset has been gathered by the
#'   \href{https://www.nhgis.org/}{NHGIS}. Minnesota Population Center,
#'   \emph{National Historical Geographic Information System: Version 2.0}
#'   (Minneapolis: University of Minnesota, 2011).
#' @examples
#' head(us_national_population)
#' if(require(ggplot2)) {
#'   ggplot(us_national_population,
#'          aes(x = year, y = population)) +
#'   geom_line() +
#'   ggtitle("Population of the United States, 1790-2010")
#' }
"us_national_population"
