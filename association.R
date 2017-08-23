install.packages("arules")
library(arules) 
result <- read.transactions("data\\my_association.csv", format="basket", sep=",")
result 

summary(result) 
image(result) 
as(result, "data.frame") 
rules <- apriori(result, parameter=list(supp=0.1, conf=0.1))
rules
inspect(rules)


install.packages("arulesViz") 
library(arulesViz) 
plot(rules) 
plot(rules, method="grouped") 
plot(rules, method="graph", control=list(type="items")) 
plot(rules, method="graph", interactive=TRUE, control=list(type="items")) 

