#' Early colleges in the United States
#'
#' This dataset contains information about the founding of colleges established
#' before 1848 in the United States of America.
#'
#' @section Variables:
#'
#'   \itemize{
#'
#'   \item \code{college}: The name of the college or university.
#'
#'   \item \code{original_name}: The name under which the institution was
#'   founded, if different.
#'
#'   \item \code{city}, \code{state}: The location of the institution.
#'
#'   \item \code{established}: The year that the institution was founded.
#'
#'   \item \code{sponsorship}: The sponsoring religious denomination, or
#'   \code{secular} if not founded by a denomination.
#' }
#' @format A data frame with 65 observations of 6 variables.
#' @author \href{http://gmu.academia.edu/GeorgeOberle}{George Oberle}, George
#'   Mason University
#'
#'   Daniel Walker Howe
#' @references This data was transcribed by George Oberle from the table "Some
#'   American Institutions of Higher Education Founded Before 1848, in Daniel
#'   Walker Howe, \emph{What Hath God Wrought: The Transformation of America,
#'   1815-1848} (New York: Oxford University Press, 2007), 460-461.
#' @examples
#' head(early_colleges)
#' if(require(ggplot2)) {
#'   ggplot(early_colleges, aes(x = established)) + geom_bar(binwidth = 5) +
#'   ggtitle("Founding Dates of Early American Colleges")
#' }
"early_colleges"
