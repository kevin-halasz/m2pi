Region_3 <- read.csv("~/Desktop/M2PI/census_if/census_lf/Region_3.csv")
Region_3

data_R3 <- as.data.frame(Region_3)
data_R3



finaldata <- data.frame(data_R3$Year,data_R3$SGC.Code,data_R3$Geography,data_R3$Unemployment.rate,data_R3$Rt,data_R1)

model <- lm(finaldata$data_R3.Rt  ~ finaldata$data_R3.Unemployment.rate, data = finaldata)

summary(model)


library(ggplot2)

ggplot(finaldata, aes(x = finaldata$data_R3.Rt , y = finaldata$data_R3.Unemployment.rate)) +
  
  geom_point() +
  
  stat_smooth()