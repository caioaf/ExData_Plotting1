# Load data
library(dplyr)

fullData <- read.table("household_power_consumption.txt", na.strings = "?", sep = ";", header = TRUE)
fullData$Date <- as.Date(fullData$Date, "%d/%m/%Y")
data <- filter(fullData, Date >= "2007-02-01", Date <= "2007-02-02")

datetime <- paste(data$Date, data$Time)
data$datetime <- as.POSIXct(datetime)

# Plot chart 1
par(mfrow = c(1, 1))
with(data, hist(Global_active_power, xlab = "Global Active Power (kilowatts)", main = "Global Active Power", col = "red"))

# Save pictures
dev.copy(png, file="plot1.png", height=480, width=480)
dev.off()
