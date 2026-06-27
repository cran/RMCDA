## ----setup, include=FALSE-----------------------------------------------------
knitr::opts_chunk$set(echo = TRUE)

## -----------------------------------------------------------------------------
library(RMCDA)

## -----------------------------------------------------------------------------
data <- read.csv(system.file("extdata", "AHP_input_file.csv", package = "RMCDA"), header=FALSE)
mat.lst <- read.csv.AHP.matrices(data)
mat.lst

## -----------------------------------------------------------------------------
mat.lst[[1]]->A
mat.lst[[2]]->comparing.competitors
results<- apply.AHP(A, comparing.competitors)
print(results)

