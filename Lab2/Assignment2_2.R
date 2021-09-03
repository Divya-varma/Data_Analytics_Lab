dataset <- read.csv('https://archive.ics.uci.edu/ml/machine-learning-databases/iris/iris.data')

# preview the first 5 rows

head(dataset)


# By using existing iris data in R 

library(datasets)
ds = iris 


#(b) Mean 
result.mean <- mean(ds$Sepal.Length)
cat("Mean of Sepal.Length is ", result.mean)

result.mean <- mean(ds$Sepal.Width)
cat("Mean of  Sepal.Width is ", result.mean)

result.mean <- mean(ds$Petal.Length)
cat("Mean of  Petal.Length is ", result.mean)

result.mean <- mean(ds$Petal.Width)
cat("Mean of  Petal.Width is ", result.mean)


print (" Sum ")
aggregate(ds[,1:4], by=list(Category=ds$Species), FUN=sum)




writeLines (" Count ")
aggregate(ds[,1:4], by=list(Category=ds$Species), FUN=length)


print (" Maxumum ")
aggregate(ds[,1:4], by=list(Category=ds$Species), FUN=max, na.rm=TRUE)
