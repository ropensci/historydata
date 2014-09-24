#' Roman Catholic dioceses in the United States, Canada, and Mexico
#'
#' Dates when Roman Catholic dioceses and archdioceses in the United States were
#' founded or made metropolitan sees, with geocoded locations. The sources cited
#' indicate that none of these sees have been discontinued.
#'
#' @section Variables:
#'
#'   \itemize{
#'
#'   \item \code{diocese}: name, and thus location, of the diocese.
#'
#'   \item \code{event}, \code{date}: the date when the diocese was
#'   \code{erected}, that is first founded, or made a \code{metropolitan} see.
#'   Encoded as a date object.
#'
#'   \item \code{rite}: the rite overseen by the diocese. Regions with ordinary
#'   jurisdiction but not episcopal character are not included.
#'
#'   \item \code{lat}, \code{long}: latitude and longitude coordinates for the
#'   headquarters city of the diocese.
#'
#'   }
#'
#' @format A data frame with 425 observations of 6 variables.
#'
#' @references This data is compiled from several sources:
#'
#'   Joseph Bernard Code, \emph{Dictionary of the American Hierarchy
#'   (1789-1964)} (New York: Joseph F. Wagner, 1964), 425-26.
#'
#'   For the United States since 1963, Canada, and Mexicode:
#'   \url{http://www.catholic-hierarchy.org/}
#'
#' @examples
#' head(catholic_dioceses)
"catholic_dioceses"
