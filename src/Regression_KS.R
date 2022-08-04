

Region_1 <- read.csv("~/Desktop/M2PI/census_if/census_lf/Region_1.csv")
Region_1

data_R1 <- as.data.frame(Region_1)
data_R1



finaldata <- data.frame(data_R1$Year,data_R1$SGC.Code,data_R1$Geography,data_R1$Unemployment.rate,data_R1$Rt,data_R1)

model <- lm(finaldata$data_R1.Rt  ~ finaldata$data_R1.Unemployment.rate, data = finaldata)

summary(model)


library(ggplot2)

ggplot(finaldata, aes(x = finaldata$data_R1.Rt , y = finaldata$data_R1.Unemployment.rate)) +
  
  geom_point() +
  
  stat_smooth()