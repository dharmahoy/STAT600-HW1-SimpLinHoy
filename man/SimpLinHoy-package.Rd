\name{SimpLinHoy-package}
\alias{SimpLinHoy-package}
\alias{SimpLinHoy}
\docType{package}
\title{
\packageTitle{SimpLinHoy}
}
\description{
\packageDescription{SimpLinHoy}
}
\details{

The DESCRIPTION file:
\packageDESCRIPTION{SimpLinHoy}
\packageIndices{SimpLinHoy}
Use this package by entering in two numeric vectors, x and y, into the fitModel
function. Then a simple linear regression will be fit to the input.
}
\author{
\packageAuthor{SimpLinHoy}

Maintainer: \packageMaintainer{SimpLinHoy}
}
\examples{
## Here is an example of fitModel output when correct input is provided
exampleX <- c(1,5,7,9,11,12,15)
exampleY <- c(2,7,9,10,15,20,3)
fitModel(exampleX, exampleY)
}
