input <- mtcars[,c("mpg","disp","hp","wt")]
print(head(input))
model <- lm(mpg~disp+hp+wt, data = input)
print(model)
cat("# # # # The Coefficient Values # # # ","\n")
a <- coef(model)[1]
print(a)
Xdisp<- coef(model)[2]
Xhp<- coef(model)[3]
Xwt<- coef(model)[4]
print(Xdisp)
print(Xhp)
print(Xwt)
x1 = 221
x2 = 102
x3 = 2.91
Y = 37.15+(-0.000937)*x1+(-0.0311)*x2+(-3.8008)*x3
layout(matrix(c(1,2,3,4),2,2)) # optional 4 graphs/page
plot(model)


data=read.csv("winequality-red.csv")
x1<-data$fixed.acidity
x2<-data$volatile.acidity
x3<-data$citric.acid
x4<-data$residual.sugar
x5<-data$free.sulfur.dioxide
x6<-data$total.sulfur.dioxide
x7<-data$density
x8<-data$pH
x9<-data$sulphates
x10<-data$chlorides
x11=data$alcohol
y<-data$quality
model=lm(y~x1+x2+x3+x4+x5+x6+x7+x8+x9+x10+x11)
print(summary(model))
paste("y=",a,"+",x1,"*x1","+",x2,"*x2","+",x3,"*x3", "+",x4,"*x4")
#6.3    0.51    0.13    2.3 0.076   29  40  0.99574 3.42    0.75    11

a1 <- data.frame (x1=6.3, x2=0.51, x3=0.13, x4=2.3, x10=0.076, x5=29, x6=40, x7=0.99574, x8=3.42, x9=0.75, x11=11)
result <-  predict(model,a1)
