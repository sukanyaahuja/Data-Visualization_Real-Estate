library(car)

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


