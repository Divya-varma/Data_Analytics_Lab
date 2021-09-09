dataset <- read.csv('PAICOL.csv')

# Replace the value of DATE with formatted dates and then display the summary of the data using the function summary()

sapply(dataset, class)
dataset$DATE <- as.Date(dataset$DATE)
sapply(dataset, class)
summary(dataset)

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
