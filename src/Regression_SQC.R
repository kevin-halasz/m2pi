
Region_2<- read.csv("~/Desktop/M2PI/census_if/census_lf/Region_2.csv")
Region_2

data_R2 <- as.data.frame(Region_2)
data_R2



finaldata1 <- data.frame(data_R2$Year,data_R2$SGC.Code,data_R2$Geography,data_R2$Unemployment.rate,data_R2$Rt,data_R2)

model <- lm(finaldata1$data_R2.Rt  ~ finaldata1$data_R2.Unemployment.rate, data = finaldata1)

summary(model)


library(ggplot2)

ggplot(finaldata1, aes(x = finaldata1$data_R2.Rt , y = finaldata1$data_R2.Unemployment.rate)) +
  
  geom_point() +
  
  stat_smooth()