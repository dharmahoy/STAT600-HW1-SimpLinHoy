\name{SimpLin-package}
\alias{SimpLin-package}
\alias{SimpLin}
\docType{package}
\title{
\packageTitle{SimpLin}
}
\description{
\packageDescription{SimpLin}
}
\details{

The DESCRIPTION file:
\packageDESCRIPTION{SimpLin}
\packageIndices{SimpLin}
Use this package by entering in two numeric vectors, x and y, into the fitModel
function. Then a simple linear regression will be fit to the input.
}
\author{
\packageAuthor{SimpLin}

Maintainer: \packageMaintainer{SimpLin}
}
\examples{
## Here is an example of fitModel output when correct input is provided
exampleX <- c(1,5,7,9,11,12,15)
exampleY <- c(2,7,9,10,15,20,3)
fitModel(exampleX, exampleY)
}
