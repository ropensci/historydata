#' Wholesale Market Prices in Dijon, France 1568--1630
#'
#' These are wholesale market prices in the city of Dijon in Burgundy in central
#' France from 1568 to 1630. They include the major cereal grains, different
#' qualities of wine, dried legumes, oils used for cooking, seeds, and candle
#' wax made from beef tallow. All prices were generally recorded by the city
#' council at the same time of year on the first market day after the feast of
#' St. Martin (November 11). All prices are in \emph{sous tournois} / 20
#' \emph{sous} =  1 \emph{livre tournois}.
#'
#' @author Mack Holt, George Mason University
#'
#' @format \code{dijon_prices} is a data frame with 1,110 observations of 6
#'   variables. \code{dijon_prices_wide} is a data frame with 19 observations of
#'   65 variables. \code{dijon_prices_wide} contains the data as it was
#'   transcribed; that data has been converted to a tidy format in
#'   \code{dijon_prices}.
#'
#' @section Variables:
#'
#'   \itemize{
#'
#'   \item \code{commodity}: the commodity for sale \item \code{measure}: the
#'   amount of the commodity for that price \item \code{price}: the price in
#'   \emph{sous tournais}. \item \code{citation}, \code{citation_date}:
#'   citations and dates for documents in the Archives municipales de Dijon.}
#'
#' @references All citations are to the Archives municipales de Dijon. See the
#'   columns \code{citation} and \code{citation_date} in \code{dijon_prices} for
#'   the documents from which each price was gathered.
"dijon_prices"

#' @rdname dijon_prices
"dijon_prices_wide"
