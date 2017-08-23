x = c(4,6,6,8,8,9,9,10,12,12)
y = c(39,42,45,47,50,50,52,55,57,60)
plot(x,y)

cor(x, y)


cor(rank(x), rank(y))







a<-lm(y~x)
summary(a)



