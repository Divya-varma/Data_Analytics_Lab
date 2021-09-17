#1. Perform the following tasks:
#  (a) Import mtcars dataset.

data(mtcars)
head(mtcars,5)


#(b) Visualize your data using scatter plots

plot(mtcars$wt,mtcars$mpg,main = "Mileage v. Car Weight", xlab = "weight (1000 lbs)", ylab = "miles per gallon")

#(c) Compute the Correlation between mpg and wt variables
cor(mtcars$wt, mtcars$mpg)
mtcarsLight <- subset(mtcars,mtcars$wt <= 4.250)
cor(mtcarsLight$wt, mtcarsLight$mpg)
