# dependencies.R
required_packages <- c("shiny", "quantmod", "DT", "lubridate", "dplyr")

for (pkg in required_packages) {
  if (!requireNamespace(pkg, quietly = TRUE)) {
    install.packages(pkg)
  }
}

library(shiny)
library(quantmod)
library(DT)
library(lubridate)
library(dplyr)
