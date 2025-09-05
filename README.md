# Introduction

Hello! Welcome to the package I have created for STAT600 HW1. This README outlines how to install this package and its typical use. For more details on how to use this package please refer to the Vignette.

# Install in R

To install this package in your R console please run the following lines.

```{r}
# install.packages("devtools") # if not installed
# devtools::install_github("dharmahoy/STAT600-HW1-SimpLinHoy")
```

# Install with Folder Download

To install this package via folder download, start by downloading the contents of this GitHub Repository to your local device. To build the package first insure that `devtools` is loaded.

```{r}
library(Rcpp)
compileAttributes() # add your file path in here
```

Finally, run `build()` and `install()` in your terminal using the correct file paths.

# Typical Usecase
When provided with the correct input type, the package will operate as follows.
```{r}
exampleX <- c(1,5,7,9,11,12,15)
exampleY <- c(2,7,9,10,15,20,3)
fitModel(exampleX, exampleY)
```
