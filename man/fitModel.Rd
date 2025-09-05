\name{fitModel}
\alias{fitModel}
\title{fitModel}
\description{
This function wraps the fitLin C++ function to check the datatypes and formatting
of the users input before calling fitLin.
}
\usage{
fitModel(x,y)
}
\arguments{
  \item{x}{
  x is a numeric vector that the user inputs.
}
  \item{y}{
  y is a numeric vector that the user inputs.
}
}
\value{
When ran this function outputs the LIST returned from the fitLin function.
This LIST includes the following values.
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
## Here is an example of fitModel output when correct input is provided
exampleX <- c(1,5,7,9,11,12,15)
exampleY <- c(2,7,9,10,15,20,3)
fitModel(exampleX, exampleY)
}
