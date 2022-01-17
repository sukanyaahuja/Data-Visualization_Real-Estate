annual_aqi_by_cbsa_2021 = read.csv("Desktop/annual_aqi_by_cbsa_2021.csv")
head(annual_aqi_by_cbsa_2021)
library(ggplot2)

viz <- ggplot(annual_aqi_by_cbsa_2021, aes(x = State, y = Median.AQI))
viz <- viz + xlab("States") 
viz <- viz + ylab("Median Air Quality Index") 
viz <- viz + geom_boxplot(notch = TRUE)  
viz <- viz + scale_y_continuous(breaks = seq(0, 175, 25))
viz <- viz + facet_wrap(~ Region, scale= "free_x")
viz <- print(viz + ggtitle("Boxplot with Notches of Median Air Quality Index Values Using Stations Throughout the US Faceted by Sub-Region:"))
viz


########################################################

annual_aqi_by_cbsa_2021 = read.csv("Desktop/annual_aqi_by_cbsa_2021.csv")
head(annual_aqi_by_cbsa_2021)
library(ggplot2)

viz <- ggplot(annual_aqi_by_cbsa_2021, aes(x = State, y = Median.AQI))
viz <- viz + xlab("States") 
viz <- viz + ylab("Median Air Quality Index") 
viz <- viz + geom_boxplot(notch = TRUE)  
viz <- viz + scale_y_continuous(breaks = seq(0, 175, 25))
viz <- viz + facet_wrap(~ Region, scale= "free_x")
viz <- print(viz + ggtitle("Boxplot with Notches of Median Air Quality Index Values Using Stations Throughout the US Faceted by Sub-Region with Outliers Removed :"))
viz


########################################################


Sea_Level_Trends = read.csv("Desktop/Sea_Level_Trends.csv")
library(ggplot2)

viz <- ggplot(Sea_Level_Trends, aes(x = State, y = X.MSL_Trends_mm_yr))
viz <- viz + xlab("States") 
viz <- viz + ylab("MSL Trends: Milimeters Per Year") 
viz <- viz + geom_boxplot(notch = TRUE)
viz <- viz + scale_y_continuous(breaks = seq(-15, 15, 5))
viz <- viz + facet_wrap(~ Region, scale="free_x")
viz <- print(viz + ggtitle("Boxplot with Notches of MSL Trends Using Stations in Water-Adjacent States Facted by Region:"))
viz


########################################################

Sea_Level_Trends = read.csv("Desktop/Sea_Level_Trends.csv")
library(ggplot2)

viz <- ggplot(Sea_Level_Trends, aes(x = State, y = X.MSL_Trends_mm_yr))
viz <- viz + xlab("States") 
viz <- viz + ylab("MSL Trends: Milimeters Per Year") 
viz <- viz + geom_boxplot(notch = TRUE, outlier.shape = NA)
viz <- viz + scale_y_continuous(breaks = seq(-15, 15, 5))
viz <- viz + facet_wrap(~ Region, scale="free_x")
viz <- print(viz + ggtitle("Boxplot with Notches of MSL Trends Using Stations in Water-Adjacent States Facted by Region with Outliers Removed:"))
viz

########################################################


