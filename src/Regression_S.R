
Region_4<- read.csv("~/Desktop/M2PI/census_if/census_lf/Region_4.csv")
Region_4

data_R4 <- as.data.frame(Region_4)
data_R4



finaldata4 <- data.frame(data_R4$Year,data_R4$SGC.Code,data_R4$Geography,data_R4$Unemployment.rate,data_R4$Rt,data_R4)

model4 <- lm(finaldata4$data_R4.Rt  ~ finaldata4$data_R4.Unemployment.rate, data = finaldata4)

summary(model4)


library(ggplot2)

g <-ggplot(finaldata4, aes(x = data_R4.Rt , y = data_R4.Unemployment.rate)) +
  
  geom_point(col="black", size=3) +
  
  geom_smooth(method="lm") + 
  
  labs(title="Scatter plot of North Coast Region and Stikine", y="Unemployment rate in Stikine", x="Unemployment rate in North Coast Region")

g + scale_x_continuous(breaks=seq(0, 20, 0.5))

theme_set(theme_classic())  # not run


# method 2: Adding theme Layer itself.
g + theme_bw() 
#g + theme_classic() 
