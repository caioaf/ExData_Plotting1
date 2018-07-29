source("./extract_and_select_data.R")

ggplot(data = single_day_subset) +
  geom_bar(mapping = aes(x= Global_active_power))