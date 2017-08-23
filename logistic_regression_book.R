
mtcars

#logistic model
am.glm <- glm(formula=am ~ hp + wt, data = mtcars, family=binomial) 
summary(am.glm)

# new data prediction
newdata <- data.frame(hp=120, wt=2.8) 
predict(am.glm, newdata, type="response")

 


#in training data 
mtcars[mtcars$hp==110,]
newdata <- data.frame(hp=110, wt=2.620) 
predict(am.glm, newdata, type="response")






















