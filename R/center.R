#' Centering Datasets
#'
#' Some more description.
#'
#' And even more.
#'
#' @param data The numeric vector to be centered
#' @param desired The numeric midpoint value around which the data will be centered (default: 0).
#'
#' @return A new vector containing the original data centered around the desired values
#' @export
#' @examples
#'   center(c(1,2,3)) # should return [1] -1  0  1
#'   center(c(1,2,3), 1) # should return [1] 0 1 2
center <- function(data, desired = 0) {
  new_data <- (data - mean(data)) + desired
  return(new_data)
}
