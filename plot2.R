library(tidyverse)
if(!file.exists("data.zip")) {
  link = "https://d396qusza40orc.cloudfront.net/exdata%2Fdata%2Fhousehold_power_consumption.zip"
  download.file(url = link,destfile = "data.zip", mode='wb')
  unzip("./data.zip")
  unlink("./data.zip")
}

data <- read_csv2("./household_power_consumption.txt")