library(tidyverse)
library(lubridate)
if(!file.exists("household_power_consumption.txt")) {
  link = "https://d396qusza40orc.cloudfront.net/exdata%2Fdata%2Fhousehold_power_consumption.zip"
  download.file(url = link,destfile = "data.zip", mode='wb')
  unzip("./data.zip")
  unlink("./data.zip")
}

data <- read_csv2("./household_power_consumption.txt")


data[["Date"]] <- dmy(data[["Date"]])

single_day_subset <- filter(data, Date >= "2007-02-01" & Date <= "2007-02-02")

#Change chars to doubles
for (name in names(single_day_subset)) {
  if(class(single_day_subset[[name]]) == "character") {
    single_day_subset[[name]] <- as.numeric(single_day_subset[[name]])
  }
}

single_day_subset[["Voltage"]] <- single_day_subset[["Voltage"]]/1000

# Create an extra column that combines both the date and time into a single data structure
single_day_subset <- add_column(single_day_subset, "Date_and_time" = ymd_hms(paste0(single_day_subset[["Date"]], "T", single_day_subset[["Time"]])))
