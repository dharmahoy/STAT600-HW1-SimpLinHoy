### Dharma Hoy
### STAT 600 HW1
### Input Wrapper

#' Fit a simple linear regression with user's input
#'
#' This function takes two numeric vectors, fits a simple linear
#' regression, and returns and prints the estimates of B0 B1, their standard errors
#' confidence intervals, residuals, and predicted values.
#'
#' @param x numeric vector inputted by the user to use in simple linear regression
#' @param y numeric vector inputted by the user to use in simple linear regression
#' @returns a list containing the estimates of B0 B1, their standard errors
#' confidence intervals, residuals, and predicted values. This list is printed.
#' If x and y are not the same length, execution will be stopped and an error
#' message displayed. If x and/or y are not numeric, execution will be stopped
#' and an error message displayed.

SimpLinR <- function(x, y){
  if(length(x) != length (y)){
    stop("x and y must be the same length")
  } else if(is.numeric(x) == FALSE | is.numeric(y) == FALSE){
    stop("x and y must be numeric")
  } else {
    output <- SimpLinCpp(cbind(rep(1, length(x)), x), y)
    output
  }

}

