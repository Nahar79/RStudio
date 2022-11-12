data("ToothGrowth")
View(ToothGrowth)

install.packages('dplyr')
library(dplyr)

arrange(filter(ToothGrowth, dose ==0.5),len)

filtered_toothgrowth <- ToothGrowth %>%
  filter(dose==0.5) %>%
  group_by(supp) %>%
  summarize(mean_len = mean(len,na.rm = T),.group="drop")

