
library(utils)
library(shiny)
library(tidyverse)
library(plotly)

data <- read.csv("https://opendata.ecdc.europa.eu/covid19/hospitalicuadmissionrates/csv/data.csv", na.strings = "", fileEncoding = "UTF-8-BOM")


