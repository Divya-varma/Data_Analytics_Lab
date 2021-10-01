library(tidyverse)  # data manipulation
library(cluster)    # clustering algorithms
library(factoextra) # clustering algorithms & visualization
df <- USArrests
df
#remove blank fields
df <- na.omit(df)
df
#normalise
df <- scale(df)

#Best k
set.seed(123)

# function to compute total within-cluster sum of square 
wss <- function(k) {
  kmeans(df, k, nstart = 10 )$tot.withinss
}

# Compute and plot wss for k = 1 to k = 15
k.values <- 1:15

# extract wss for 2-15 clusters
library(purrr)
wss_values <- map_dbl(k.values, wss)

plot(k.values, wss_values,
     type="b", pch = 19, frame = FALSE, 
     xlab="Number of clusters K",
     ylab="Total within-clusters sum of squares")

#install.packages("factoextra")
#library(factoextra)
#distance <- get_dist(df)
#distance
#fviz_dist(distance, gradient = list(low = "#00AFBB", mid = "white", high = "#FC4E07"))
#k2 <- kmeans(df, centers = 2, nstart = 25)
#str(k2)
#fviz_cluster(k2, data = df)
#Giving different clusters
#k3 <- kmeans(df, centers = 3, nstart = 25)
k4 <- kmeans(df, centers = 4, nstart = 25)
str(k4)
#k5 <- kmeans(df, centers = 5, nstart = 25)

# plots to compare
#p1 <- fviz_cluster(k2, geom = "point", data = df) + ggtitle("k = 2")
#p2 <- fviz_cluster(k3, geom = "point",  data = df) + ggtitle("k = 3")
p3 <- fviz_cluster(k4, geom = "point",  data = df) + ggtitle("k = 4")
#p4 <- fviz_cluster(k5, geom = "point",  data = df) + ggtitle("k = 5")
p3
#library(gridExtra)
#grid.arrange(p1, p2, p3, p4, nrow = 2)

##.....................Manhattan...................
set.seed(123)
wss <- function(k) {
  kmeans(df, k, nstart = 10 )$tot.withinss
}
k.values <- 1:15
library(purrr)
wss_values <- map_dbl(k.values, wss)

plot(k.values, wss_values,
     type="b", pch = 19, frame = FALSE, 
     xlab="Number of clusters K",
     ylab="Total within-clusters sum of squares")

k4 <- kmeans(df, centers = 4, nstart = 25,method="manhattan")
str(k4)

p3 <- fviz_cluster(k4, geom = "point",  data = df) + ggtitle("k = 4")
p3

