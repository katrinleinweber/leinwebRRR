#' Rescaling Datasets
#'
#' @param vector A numeric vector
#' @param lower Numeric value of lower rescaling bound (default: 0)
#' @param upper Numeric value of upper rescaling bound (default: 1)
#'
#' @return A new numeric vector of the same length, but rescaled from the input vector to the range specified by `lower` and `upper` (default: 0 to 1)
#' @export
#' @examples
#'   rescale(c(1,2,3), 1, 2) # should return [1] 1.0 1.5 2.0
#'   rescale(c(1,2,3,4,5)) # should return [1] 0.00 0.25 0.50 0.75 1.00

rescale <- function(vector, lower = 0, upper = 1) {
  L <- min(vector)
  (vector - L) / (max(vector) - L) * (upper - lower) + lower
}
