#Import any database of transactions of your choice (Groceries' dataset may be preferred.
#It is predefined in R package)
#(a) Load required R libraries : arules and arulesViz

# Load the libraries
library(arules)
library(arulesViz)
library(datasets)

# Load the data set
data(Groceries)

# Create an item frequency plot for the top 20 items
itemFrequencyPlot(Groceries,topN=20,type="absolute")

# Get the rules
rules <- apriori(Groceries, parameter = list(supp = 0.2, conf = 0.5))

# Show the top 5 rules, but only 2 digits
options(digits=2)
#rules<-sort(rules, decreasing=TRUE,by="confidence")
##inspect(rules[1:5])