source("./extract_and_select_data.R")

##ggplot2 method
################################################################################
## Note you need to install the gridExtra package for this file
# install.packages("gridExtra")
# library(gridExtra)
# 
# p1 <- ggplot(data = single_day_subset) +
#   geom_line(mapping = aes(x=Date_and_time, y = Global_active_power)) +
#   labs(x = NULL,
#        y = "Global Active Power (kilowatts")
# 
# p2 <- ggplot(data = single_day_subset, mapping = aes(x = Date_and_time)) +
#   geom_line(mapping = aes(y = Sub_metering_1, color = 'Sub_metering_1')) +
#   geom_line(mapping = aes(y = Sub_metering_2, color = 'Sub_metering_2')) +
#   geom_line(mapping = aes(y = Sub_metering_3, color = 'Sub_metering_3')) +
#   labs(x = NULL,
#        y = "Energy sub metering") +
#   scale_colour_manual("", 
#                       breaks = c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"),
#                       values = c("red", "green", "blue"))
# 
# 
# 
# p3 <- ggplot(data = single_day_subset, mapping = aes(x = Date_and_time)) +
#   geom_line(mapping = aes(y = Sub_metering_1, color = 'Sub_metering_1')) +
#   geom_line(mapping = aes(y = Sub_metering_2, color = 'Sub_metering_2')) +
#   geom_line(mapping = aes(y = Sub_metering_3, color = 'Sub_metering_3')) +
#   labs(x = NULL,
#        y = "Energy sub metering") +
#   scale_colour_manual("", 
#                       breaks = c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"),
#                       values = c("red", "green", "blue"))
# 
# p4 <- ggplot(data = single_day_subset) +
#   geom_histogram(mapping = aes(x= Global_active_power, fill = "red"), color = "black", bins = 18, show.legend = FALSE) +
#   labs(title = "Global Active Power",
#        x = "Global Active Power (killowatts)",
#        y = "Frequency")
# 
# grid.arrange(p1,p2,p3,p4, nrow = 2, ncol = 2)
################################################################################

dev.copy(png,'./plot4.png')
dev.off()