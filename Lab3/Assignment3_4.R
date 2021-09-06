#create sequence
x<-seq(1, 100,1.5)
x
len=length(x)
#Create binomial distribution
y <- dbinom(x,len,0.5)
y
