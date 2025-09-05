\name{SimpLinCpp.Rd}
\alias{SimpLinCpp.Rd}
\title{SimpLinCpp, Rcpp}
\description{
This function runs the C++ code that fits the simple linear regression model,
finds the B0 and B1 estimates, their standard errors, their confidence intervals,
residuals, and predicted values.
}
\usage{
SimpLinCpp.Rd(x,y)
}
\arguments{
  \item{x}{
  x is a numeric arma::mat with two columns. The first is a column of ones to
  ensure an intercept term is estimated. The second column is the numeric vector
  of data provided by the user.
}
  \item{y}{
  y is a numeric arma::vec provided by the user.
  }
}
\value{
The value returned by this function is a LIST with the following items.
\item{B0 }{Estimate of the intercept}
\item{seB0 }{Standard error estimate for the intercept}
\item{B0CI }{Confidence interval for B0, lower and upper bound are values in a vector}

\item{B1 }{Estimate of the slope}
\item{seB0 }{Standard error estimate for the slope}
\item{B0CI }{Confidence interval for B1, lower and upper bound are values in a vector}

\item{resid }{A vector of the residual values}
\item{predi }{A vector of the predicted values}
}
\author{
Dharma Hoy
}
\examples{
## This function should not be used without the use of its wrapper function
## please see the documentation of SimpLinR for examples.
}










