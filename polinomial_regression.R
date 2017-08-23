x<-c(1:9)
y<-c(5,3,2,3,4,6,10,12,18)
z<-data.frame(x,y)
fit0<-lm(y~x,data=z)
lines(fitted(fit0))
summary(fit0)
par(mfrow=c(2,2))
plot(fit0)


x<-c(1:9);y<-c(5,3,2,3,4,6,10,12,18);z<-data.frame(x,y)
plot(z) 
fit<-lm(y~x+I(x^2),data=z)
lines(fitted(fit))
summary(fit)
par(mfrow=c(2,2))
plot(fit)

pred<-data.frame(x=10)
predict(fit,newdata=pred)

