#' Compute the growth rate
#'
#' @description The determination of the growth rate is a important parameter. Indeed, the growth rate can be used to compare different individuals. There are several methods to compute the growth rate.
#'
#' @param skw_t The weight at time t
#' @param skw_ini The weight at initial time
#' @param date_t The number day at time t
#' @param date_ini The number day at initial time
#' @param method The method to be employed. See the description to know the different methods
#'
#' @return The growth rate
#' @export
#'
#' @examples
#'
#' growth_rate(skw_t = 1.2, skw_ini = 1, date_t = 7, date_ini = 0,
#' method = "exponential")
#'
#' ## See \url{https://econum.github.io/coral.growth/articles/} for more examples
#'
growth_rate <- function(skw_t, skw_ini, date_t, date_ini = 0,
                        method = "exponential") {

  # implemented method
  met <- c("exponential", "linear", "linear_std")

  # check method
  if(!any(met %in% method))
    stop("the method is not implemented. see the help page")

  # method
  if (method == "exponential") {
    gr <- (log(skw_t/skw_ini)/(date_t - date_ini))*100
  } else if (method == "linear") {
    gr <- (skw_t/skw_ini)/(date_t - date_ini)
  } else if (method == "linear_std") {
    gr <- (((skw_t/skw_ini)/skw_ini)/(date_t - date_ini))*100
  }
  gr
}
