
Region_4<- read.csv("~/Desktop/M2PI/census_if/census_lf/Region_4.csv")
Region_4

data_R4 <- as.data.frame(Region_4)
data_R4



finaldata4 <- data.frame(data_R4$Year,data_R4$SGC.Code,data_R4$Geography,data_R4$Unemployment.rate,data_R4$Rt,data_R4)

model <- lm(finaldata4$data_R4.Rt  ~ finaldata4$data_R4.Unemployment.rate, data = finaldata4)

summary(model)


library(ggplot2)

ggplot(finaldata4, aes(x = finaldata4$data_R4.Rt , y = finaldata4$data_R4.Unemployment.rate)) +
  
  geom_point() +
  
  stat_smooth()