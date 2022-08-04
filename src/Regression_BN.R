Region_3 <- read.csv("~/Desktop/M2PI/census_if/census_lf/Region_3.csv")
Region_3

data_R3 <- as.data.frame(Region_3)
data_R3



finaldata3 <- data.frame(data_R3$Year,data_R3$SGC.Code,data_R3$Geography,data_R3$Unemployment.rate,data_R3$Rt,data_R3)

model3 <- lm(finaldata3$data_R3.Rt  ~ finaldata3$data_R3.Unemployment.rate, data = finaldata3)

summary(model3)


library(ggplot2)

g <-ggplot(finaldata3, aes(x = data_R3.Rt , y = data_R3.Unemployment.rate)) +
  
  geom_point(col="black", size=3) +
  
  geom_smooth(method="lm") + 
  
  labs(title="Scatter plot of North Coast Region and Bulkley-Nechako ", y="Unemployment rate in Bulkley-Nechako ", x="Unemployment rate in North Coast Region")

g + scale_x_continuous(breaks=seq(0, 20, 0.5))

theme_set(theme_classic())  # not run


# method 2: Adding theme Layer itself.
g + theme_bw() 
#g + theme_classic() 
