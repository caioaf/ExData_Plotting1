# This file reads in the data
source("./extract_and_select_data.R")

#ggplot2 method
################################################################################
# ggplot(data = single_day_subset) +
#   geom_histogram(mapping = aes(x= Global_active_power, fill = "red"),
#                    color = "black", bins = 18, show.legend = FALSE) +
#   labs(title = "Global Active Power",
#       x = "Global Active Power (killowatts)",
#       y = "Frequency")
# 
# ggsave("./plot1.png")
################################################################################
png('./plot1.png')
hist(single_day_subset$Global_active_power,
     col = "red",
     xlab = "Global Active Power (killowatts)",
     ylab = "Frequency",
     main = "Global Active Power")


dev.off()