library(ggplot2)

ggplot(data, aes(x = "", y=(Median_HomeValue))) +
  geom_boxplot(outlier.colour="red", 
               outlier.shape=16,
               outlier.size=2, notch=FALSE)

ggplot(data, aes(x = "", y=(Black_Pop))) +
  geom_boxplot(outlier.colour="red", 
               outlier.shape=16,
               outlier.size=2, notch=FALSE)

ggplot(data, aes(x = "", y=(White_Pop))) +
  geom_boxplot(outlier.colour="red", 
               outlier.shape=16,
               outlier.size=2, notch=FALSE)

ggplot(data, aes(x = "", y=(Asian_Pop))) +
  geom_boxplot(outlier.colour="red", 
               outlier.shape=16,
               outlier.size=2, notch=FALSE)
