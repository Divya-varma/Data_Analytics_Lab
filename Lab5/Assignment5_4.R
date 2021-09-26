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



irisVer <- subset(iris, Species == "versicolor")
irisSet <- subset(iris, Species == "setosa")
irisVir <- subset(iris, Species == "virginica")

irisVerSet = rbind(irisVer$Petal.Length,irisSet$Petal.Length)
dist(irisVerSet)
library(lsa)
cosine(PQ)

irisVerVir = rbind(irisVer$Petal.Length,irisVir$Petal.Length)
dist(irisVerVir)  

irisSetVir = rbind(irisSet$Petal.Length,irisVir$Petal.Length)
dist(irisSetVir)


irisVerSet1 = rbind(irisVer$Petal.Width,irisSet$Petal.Width)
dist(irisVerSet1)

irisVerVir1 = rbind(irisVer$Petal.Width,irisVir$Petal.Width)
dist(irisVerVir1)  

irisSetVir1 = rbind(irisSet$Petal.Width,irisVir$Petal.Width)
dist(irisSetVir1)