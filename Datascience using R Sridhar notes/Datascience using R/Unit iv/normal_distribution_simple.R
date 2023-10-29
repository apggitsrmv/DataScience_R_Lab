x = c(186, 176, 158, 180, 186, 168, 168, 164, 178, 170, 189, 195, 172,
     187, 180, 186, 185, 168, 179, 178, 183, 179, 170, 175, 186, 159,
     161, 178, 175, 185, 175, 162, 173, 172, 177, 175, 172, 177, 180)
y <- x
plot(x,y)
print(mean(x))
print(sd(x))

k=(x-mean(x))*(x-mean(x))/(2*sd(x)*sd(x))
k1=exp(-k)
k2=1/sqrt(2*3.14*sd(x)*sd(x))
k3=k2*k1
plot(x,k3)

y<-dnorm(x,mean(x),sd(x))
plot(x,y)

getwd()
setwd("E:/MCA/Unit iv")
winedata<-read.csv("winequality-red.csv")
head(winedata)
summary(winedata)
x<-winedata$density
x<-winedata$fixed.acidity
y<-dnorm(x,mean(x),sd(x))
plot(x,y)


setwd("E:/MCA/unit III")
guna<-read.csv("guna1.csv")
head(guna)
summary(guna)

x<-guna$Attitude
print(x)
print(mean(guna$Attitude))
print(sd(guna$Attitude))

y<-dnorm(guna$Attitude,mean=mean(guna$Attitude),sd=sd(guna$Attitude))
plot(x,y)


x<-guna$Apptitude
print(x)
print(mean(guna$Apptitude))
print(sd(guna$Apptitude))

y<-dnorm(guna$Apptitude,mean=mean(guna$Apptitude),sd=sd(guna$Apptitude))
plot(x,y)

x<-guna$Att.Value
print(x)
print(mean(guna$Att.Value))
print(sd(guna$Att.Value))

y<-dnorm(guna$Att.Value,mean=mean(guna$Att.Value),sd=sd(guna$Att.Value))
plot(x,y)


