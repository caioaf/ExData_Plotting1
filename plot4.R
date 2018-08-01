# Load data
library(dplyr)

fullData <- read.table("household_power_consumption.txt", na.strings = "?", sep = ";", header = TRUE)
fullData$Date <- as.Date(fullData$Date, "%d/%m/%Y")
data <- filter(fullData, Date >= "2007-02-01", Date <= "2007-02-02")

datetime <- paste(data$Date, data$Time)
data$datetime <- as.POSIXct(datetime)

# Plot chart 4
par(mfrow = c(2, 2))
# top left
with(data, plot(Global_active_power ~ datetime, type="l", xlab = "", ylab = "Global Active Power (kilowatts)"))

# top right
with(data, plot(Voltage ~ datetime, type="l"))

# bottom left
with(data, plot(Sub_metering_1 ~ datetime, type="l", xlab = "", ylab = "Global Active Power (kilowatts)"))
with(data, lines(Sub_metering_2 ~ datetime, col='red') )
with(data, lines(Sub_metering_3 ~ datetime, col='blue') )
legend("topright", col=c("black", "red", "blue"), lty=1,
       legend=c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"))

# bottom right
with(data, plot(Global_reactive_power ~ datetime, type="l"))
# Save pictures
dev.copy(png, file="plot4.png", height=480, width=480)
dev.off()
