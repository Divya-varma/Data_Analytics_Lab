#(a) Import the Iris dataset (https://archive.ics.uci.edu/ml/datasets/iris).
ds <- read.csv('https://archive.ics.uci.edu/ml/machine-learning-databases/iris/iris.data')
# preview the first 5 rows

head(ds)

#(b) As you may know, this dataset contains three kinds of flowers: Iris-Setosa, IrisVersicolor, and Iris-Virginica, having the following four features: sepal length, sepal
#width, petal length, petal width. choose only two features: petal length, petal width,
#and plot the data points in a 2-D space where the x-axis and the y-axis represent the
#petal length and the petal width, respectively.
class(ds)
colnames(ds)
plot(iris$Petal.Length, iris$Petal.Width, pch=21, bg=c("red","green3","blue")[unclass(iris$Species)], main="Iris Data")

#(c) Compute the similarity measure between Iris-Setosa and Iris-Versicolor; and IrisVersicolor and Iris-Virginica; and Iris-Setosa and Iris-Virginica considering only two
#features petal length and petal width
library(lsa)


a <- c(23, 34, 44, 45, 42, 27, 33, 34)
b <- c(17, 18, 22, 26, 26, 29, 31, 30)
c <- c(34, 35, 35, 36, 51, 29, 30, 31)

data <- cbind(a, b)

#calculate Cosine Similarity
cosine(data)

install.packages("coop")
cosine(a, b, use = "everything", inverse = FALSE)