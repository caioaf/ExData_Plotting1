source("./extract_and_select_data.R")

#ggplot2 method
################################################################################
# ggplot(data = single_day_subset) +
#   geom_line(mapping = aes(x=Date_and_time, y = Global_active_power)) +
#   labs(x = NULL,
#        y = "Global Active Power (kilowatts)")
# 
# ggsave("./plot2.png")
################################################################################
png('./plot2.png')
plot(x = single_day_subset$Date_and_time, 
     y = single_day_subset$Global_active_power, 
     type = "l",
     xlab = '',
     ylab = "Global Active Power (kilowatts)")

dev.off()