#' Log of sum of exponential terms
#'
#' @param x A vector of numeric type
#'
#' @return The log of the sum of the exponent of the input vector elements
#'
#' @import stats
#'
#' @export
#'
#' @example
#' log_summed_exps(1:2000)
#' log_summed_exps(1:10)
#' log_summed_exps(10:1)
log_summed_exps = function(x) {
  x = sort(x, decreasing = T)
  min = x[length(x)]
  max = x[1]
  x = x[-length(x)]
  return(max + log(1 + sum(exp(x - max))))
}


