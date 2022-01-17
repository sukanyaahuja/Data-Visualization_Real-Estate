library(car)
library(ggplot2)
library(tidyverse)
library(DescTools)
library(ggpubr)
install.packages("ggstatsplot")
library(ggstatsplot)
data <- Health_Facts

#Regression with Outliers
model <- lm(log(Median_HomeValue) ~ 
              log(Cancer_Related_Deaths)+
              log(Individuals_Uninsured)+
              log(People_per_hospital)+
              log(Total_Population_2019), data=data)
summary(model)
#creates separate scatter plots with regression line
avPlots(model)

model2 <- lm(log(Median_HomeValue) ~
              log(Cancer_Related_Deaths)+
              log(Individuals_Uninsured)+
              log(People_per_hospital)+
              log(Black_Pop)+
              log(White_Pop)+
              log(Asian_Pop), data=data)
summary(model2)


model3 <- lm(log(Median_HomeValue) ~
               log(Black_Pop)+
               log(White_Pop)+
               log(Asian_Pop), data=data)
summary(model3)

#suk TP
Outliers <- boxplot(Health_Facts$Cancer_Related_Deaths,
                          Health_Facts$Individuals_Uninsured,
                          Health_Facts$People_per_hospital,
                        Health_Facts$Total_Population_2019)$out
x<-Health_Facts
x<- x[-which(x$Cancer_Related_Deaths %in% Outliers),]

model4 <- lm(log(Median_HomeValue) ~ 
              log(Cancer_Related_Deaths)+
              log(Individuals_Uninsured)+
              log(People_per_hospital)+
              log(Total_Population_2019), data=x)
summary(model4)
#creates separate scatter plots with regression line
avPlots(model4)
