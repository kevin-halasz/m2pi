

Region_1 <- read.csv("~/Desktop/M2PI/census_if/census_lf/Region_1.csv")
Region_1

data_R1 <- as.data.frame(Region_1)
data_R1



finaldata <- data.frame(data_R1$Year,data_R1$SGC.Code,data_R1$Geography,data_R1$Unemployment.rate,data_R1$Rt,data_R1)

model <- lm(finaldata$data_R1.Rt  ~ finaldata$data_R1.Unemployment.rate, data = finaldata)

summary(model)


library(ggplot2)

g <-ggplot(finaldata, aes(x = data_R1.Rt , y = data_R1.Unemployment.rate)) +
  
  geom_point(col="black", size=3) +
  
  geom_smooth(method="lm") + 
  
  labs(title="Scatter plot of North Coast Region and Bulkley-Nechako ", y="Unemployment rate in Bulkley-Nechako ", x="Unemployment rate in North Coast Region")

g + scale_x_continuous(breaks=seq(0, 20, 0.5))

theme_set(theme_classic())  # not run


# method 2: Adding theme Layer itself.
g + theme_bw() 
#g + theme_classic() 

