source("./extract_and_select_data.R")

#ggplot2 
################################################################################
# ggplot(data = single_day_subset, mapping = aes(x = Date_and_time)) +
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
# ggsave("./plot3.png")
################################################################################

plot(x = single_day_subset$Date_and_time,
     y = single_day_subset$Sub_metering_1,
     type="l",
     xlab = '')

lines(x = single_day_subset$Date_and_time,
     y = single_day_subset$Sub_metering_2,
     col = "red")

lines(x = single_day_subset$Date_and_time,
      y = single_day_subset$Sub_metering_3,
      col = "blue")

legend("topright",
       legend = c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"),
       col = c("black", "red", "blue"), lty = 1)

dev.copy(png,'./plot3.png')
dev.off()