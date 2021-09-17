# Load ggplot package and visulaize the following using ggplot functions
install.packages("ggplot2")
library(ggplot2)

#a.

ggplot(data = dataset, aes(x = DATE, y = LEVEL)) + geom_line() + labs(title = "Daily levels of a river") + theme_bw()

#b. 

ggplot(data = dataset, aes(x = RAIN, y = LEVEL)) + geom_point() + labs(title = "Scatter plot of RAIN and LEVEL") + theme_bw()

#c.

ggplot(data = dataset, aes(x = DATE, y = LEVEL)) + geom_line(aes(color = "LEVEL")) +
  geom_line(aes(x = DATE, y = RAIN, color = "RAIN")) + labs(title = "Daily levels & rainfall of a river") + theme_bw()
#(d) Find and plot circles on the LEVEL plot at the maximum and minimum value.
data_max <- dataset[which.max(dataset$LEVEL), ]
data_min <- dataset[which.min(dataset$LEVEL), ]

ggplot(data = dataset, aes(x = DATE, y = LEVEL)) +
  geom_line() +
  geom_point(aes(x = data_max$DATE, y = data_max$LEVEL), shape = 1, size = 3, color = "red") + 
  geom_point(aes(x = data_min$DATE, y = data_min$LEVEL), shape = 1, size = 3, color = "blue") + 
  scale_shape_discrete(solid = FALSE) +
  labs(title = "Daily levels of a river") +
  theme_bw()



#(e) Plot the LEVEL for the year "2001."
install.packages("dplyr")        # Install dplyr package
library("dplyr")                 # Load dplyr package
ggplot(dataset[DATE %between% c("2001-01-01", "2001-12-31")], aes(x = DATE, y = LEVEL)) +
  geom_line() +
  labs(title = "Daily levels of a river in 2001") +
  theme_bw()
