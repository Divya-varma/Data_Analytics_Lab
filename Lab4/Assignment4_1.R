#1a
s<-c(1,2,3,4,5,6)
# generate the vector of probabilities 
probability <- rep(1/6, 6) 
probability
barplot(probability,names.arg = s, ylim = c(0,.16), main = "Probability Distribution of Roll Dice", ylab = "Probability", xlab = "outcomes",col = "#D4A7B1") 

#1b Cumulative frequency table

cum_probability <- cumsum(probability) 

# plot the probabilites 
barplot(cum_probability,names.arg = s, ylim = c(0,1), main = "CumulativeProbability Distribution of Roll Dice", ylab = "Probability", xlab = "outcomes",col = "#D4A7B1") 


#1c
x<-0:10
y<-dbinom(0:10,10,0.16)
data.frame("Prob"=y,row.names=x)
plot(0:10,dbinom(0:10,10,0.16),,type='h',xlab="",ylab="Probability",sub="Number of kids with blue eyes")

#1d
par(mfrow=c(2,2))
plot(0:10,dbinom(0:10,10,0.05),type='h',xlab="",ylab="Prob", sub="p=0.05")
plot(0:10,dbinom(0:10,10,0.2),type='h',xlab="",ylab="Prob", sub="p=0.2")
plot(0:10,dbinom(0:10,10,0.5),type='h',xlab="",ylab="Prob", sub="p=0.5")
plot(0:10,dbinom(0:10,10,0.8),type='h',xlab="",ylab="Prob", sub="p=0.8")

#1e
x<-0:10
y<-dpois(0:10,0.2)
data.frame("Prob"=y,row.names=x)
plot(0:10, dpois(0:10,0.2), type='h', xlab="Sequence Errors",ylab="Probability" ) 