dataset <- read.csv('https://archive.ics.uci.edu/ml/machine-learning-databases/iris/iris.data')

# preview the first 5 rows

head(dataset)
barplot(iris$Petal.Length) #Creating simple Bar Graph
library(RColorBrewer)
barplot(table(iris$Species,iris$Petal.Length),col  = brewer.pal(3,"Set1")) #Stacked Plot

boxplot(iris$Sepal.Length~iris$Species) #Creating Box Plot between two variable
plot(x=iris$Petal.Length,y=iris$Species) #Multivariate Scatter Plot
