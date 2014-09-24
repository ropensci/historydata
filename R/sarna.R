#' Population estimates of American Jews
#'
#' This dataset contains estimates of the population of American Jews.
#'
#' @section Variables:
#'
#'   \itemize{
#'
#'   \item \code{year}: date of estimate.
#'
#'   \item \code{estimate}: the type of estimate. \code{population_low} and
#'   \code{population_high} are the lower and upper bounds on the population of
#'   American Jews; \code{percentage_high} and \code{percentage_low} are the
#'   lower and upper bounds on the percentage of Jews among the United States
#'   population.
#'
#'   \item \code{value}: the value of the estimate.
#'
#'   }
#'
#' @format A data frame with 92 observations of 3 variables.
#' @references This data is taken from the appendix in Jonathan D. Sarna,
#'   \emph{American Judaism: A History} (New Haven: Yale University Press,
#'   2004), 375-376.
#' @examples
#' head(sarna)
"sarna"
