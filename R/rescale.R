#' Rescaling Datasets
#'
#' @param v A numeric vector
#'
#' @return A new numeric vector of the same length, but rescaled from the input vector to the range of 0 to 1
#' @export
#' @examples
#'   rescale(c(1,2,3)) # should return [1] 0.0 0.5 1.0
#'   rescale(c(1,2,3,4,5)) # should return [1] 0.00 0.25 0.50 0.75 1.00
rescale <- function(v) {
  L <- min(v)
  H <- max(v)
  result <- (v - L) / (H - L)
  return(result)
}
