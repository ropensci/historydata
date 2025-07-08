#' Populations of US states and territories, 1790-2020
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
#' @format A data frame with 1034 observations of 4 variables.
#' @references This dataset has been gathered by the
#'   \href{https://www.nhgis.org/}{NHGIS}.
#'   Steven Manson, Jonathan Schroeder, David Van Riper, Katherine Knowles, Tracy Kugler,
#'   Finn Roberts, and Steven Ruggles.
#'   \emph{IPUMS National Historical Geographic Information System: Version 19.0}
#'   \[dataset\]. Minneapolis, MN: IPUMS, 2024.
#'   \doi{10.18128/D050.V19.0}
#' @examples
#' head(us_state_populations)
"us_state_populations"
