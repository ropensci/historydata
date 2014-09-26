#' Records of missions held by the Paulist Fathers, 1851--1893
#'
#' This dataset contains transcriptions of records of missions held in  by the
#' Paulist Fathers, a Roman Catholic missionary order, in the nineteenth-century
#' United States. This dataset contains only the most interesting data recorded
#' in the full Paulist mission chronicles. The founding members of the Paulist
#' Fathers began as members of the Redemptorist order. Their chronicles include
#' both the missions held as Redemptorists and as Paulists. This transcription
#' only includes missions up to the year 1893; the Paulist Chronicles contain
#' more records than are transcribed here, and the Paulists continued holding
#' missions for many more years than are recorded in the Chronicles.
#'
#' @section Variables:
#'
#'   \itemize{
#'
#'   \item \code{mission_number}: The number assigned to the mission in the
#'   Paulist Mission Chronicles.
#'
#'   \item \code{church}: The name of the church or cathedral at which the
#'   mission was held.
#'
#'   \item \code{city}, \code{state}: The location of the mission.
#'
#'   \item \code{start_date}, \code{end_date}: The start and end dates of the
#'   mission as a character string.
#'
#'   \item \code{confessions}: The number of confessions heard by the Paulists
#'   at the mission, which is a rough proxy for the number of people who
#'   attended the mission.
#'
#'   \item \code{converts}: The total number of converts made during the mission
#'   and people left under instruction for conversion after the mission was
#'   over.
#'
#'   \item \code{order}: Whether the mission was held under the Redemptorist or
#'   Paulist order.
#'
#'   \item \code{lat}, \code{long}: The latitude and longitude of the city where
#'   the mission was held.
#'
#'   }
#'
#' @author \href{http://lincolnmullen.com}{Lincoln Mullen}, George Mason
#'   University
#' @format A data frame with 841 observations of 11 variables.
#' @references The Paulist missions are recorded in \emph{Chronicle of the
#'   Missions Given by the Congregation of Missionary Priests of St. Paul the
#'   Apostle}, six manuscript volumes, Office of Paulist History and Archives,
#'   North American Paulist Center, Washington, DC. Data transcribed by Lincoln
#'   Mullen.
#'
#' @examples
#' head(paulist_missions)
"paulist_missions"
