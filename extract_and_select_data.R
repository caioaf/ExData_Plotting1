library(tidyverse)
if(!file.exists("household_power_consumption.txt")) {
  link = "https://d396qusza40orc.cloudfront.net/exdata%2Fdata%2Fhousehold_power_consumption.zip"
  download.file(url = link,destfile = "data.zip", mode='wb')
  unzip("./data.zip")
  unlink("./data.zip")
}

data <- read_csv2("./household_power_consumption.txt")

# data[["Date"]] <- gsub(pattern = "/", replacement = "-", x = data[["Date"]])
# data[["Date"]] <- mdy(data[["Date"]])
data[["Date"]] <- dmy(data[["Date"]])

single_day_subset <- filter(data, Date >= "2007-02-01" & Date <= "2007-02-02")