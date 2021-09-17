#library(LICORS)
#Define a normalized vector P
P<-(normalize(c(1,4,2,2,1)))
# Define a normalized vector Q.

Q<-(normalize(c(2,5,3,7,8)))
#Combine P and Q as matrix object. Please note that when defining a matrix from
#vectors, the vectors should be combined as rows.

PQ<-rbind(P,Q)
PQ
dist(PQ)
