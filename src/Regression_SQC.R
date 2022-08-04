
Region_2<- read.csv("~/Desktop/M2PI/census_if/census_lf/Region_2.csv")
Region_2

data_R2 <- as.data.frame(Region_2)
data_R2



finaldata1 <- data.frame(data_R2$Year,data_R2$SGC.Code,data_R2$Geography,data_R2$Unemployment.rate,data_R2$Rt,data_R2)

model1 <- lm(finaldata1$data_R2.Rt  ~ finaldata1$data_R2.Unemployment.rate, data = finaldata1)

summary(model1)



library(ggplot2)

g <-ggplot(finaldata1, aes(x = data_R2.Rt , y = data_R2.Unemployment.rate)) +
  
  geom_point(col="black", size=3) +
  
  geom_smooth(method="lm") + 
  
  labs(title="Scatter plot of North Coast Region and Stikine", y="Unemployment rate in Stikine", x="Unemployment rate in North Coast Region")

g + scale_x_continuous(breaks=seq(0, 20, 0.5))

theme_set(theme_classic())  # not run


# method 2: Adding theme Layer itself.
g + theme_bw() 
#g + theme_classic() 
