#' Promotions of U.S. Navy officers, 1798-1849
#'
#' This dataset contains records of the careers of officers of the line in the
#' United States Navy who became midshipmen between 1798 and 1849. It lists the
#' dates at which officers were promoted to the ranks of midshipment,
#' lieutenant, master commandament, and captain.
#'
#' @section Variables:
#'
#'   \itemize{
#'
#'   \item \code{id}: A unique numeric identifier for each officer.
#'
#'   \item \code{name}: Name of the officer.
#'
#'   \item \code{generation}: A numeric value to represent a judgment about the
#'   generations within the officer corp of the U.S. Navy. First generation
#'   officers entered the service before 1801, as a rank higher than midshipman.
#'   Second generation officers entered the service before the Peace
#'   Establishment Act (or by the end of 1801), but as midshipman. Thus, they
#'   essentially became adults in the service, and they learned their craft from
#'   the first generation. Third generation officers entered the service as
#'   midshipmen after the Peace Establishment Act but before the end of the War
#'   of 1812. Those officers in this generation who became captain rose to that
#'   rank in the 1830s and '40s. Fourth generation officers entered the service
#'   after the War of 1812 had ended. These officers saw almost no wartime
#'   service, and many of the ones who achieved captain found themselves having
#'   to decide whether to serve in the Union or the Confederacy during the Civil
#'   War.
#'
#'   \item \code{rank}: The ranks which officers obtained, including
#'   \code{midshipman}, \code{lieutenant}, \code{master_commandant}, and
#'   \code{captain}. Also included are the dates some officers
#'   \code{left_service}.
#'
#'   \item \code{date}: The date as a character string on which an officer
#'   attained the associated rank. }
#'
#' @format A data frame with 5,705 observations of 4 variables.
#' @author \href{http://abbymullen.org/}{Abby Mullen}, Northeastern University
#'
#'   Edward W. Callahan
#' @references This data was compiled by Abby Mullen from Edward W. Callahan,
#'   \emph{Officers of the Continental and U.S. Navy and Marine Corps,
#'   1775-1900} (New York: L. R. Hamersly, 1901), made available via the Naval
#'   Historical Center,
#'   \url{http://www.ibiblio.org/hyperwar/NHC/Callahan/index.htm}. See Mullen's
#'   blog post about compiling the data,
#'   "\href{http://abbymullen.org/database-of-officers-of-the-line/}{Database of
#'   Officers of the Line}," abbymullen.org, January 5, 2013.
#' @examples
#' head(naval_promotions)
"naval_promotions"
