x <- seq(-10, 10, by = .1)
y <- dnorm(x, mean = 2.5, sd = 0.5)
plot(x,y)

y1<-pnorm(x,mean=2.5,sd=0.5)
plot(x,y1)
y2<-qnorm(x,mean=2.5,sd=0.5)
plot(x,y2)
y3<-qnorm(x,mean(x),sd(x))
plot(x,y3)

guna<-read.csv("guna1.csv")
head(guna)
summary(guna)

x<-guna$Attitude
print(x)
print(mean(guna$Attitude))
print(sd(guna$Attitude))

y<-dnorm(guna$Attitude,mean=mean(guna$Attitude), sd=sd(guna$Attitude))
plot(x,y)
y <- pnorm (guna$Attitude, mean=mean(guna$Attitude), sd=sd(guna$Attitude))
plot(x,y)

x <- seq(0, 1, by = 0.02)
y <- qnorm(x, mean = 2, sd = 1)
y<-qnorm(x,mean(x),sd(x))
plot(x,y)

y<-pnorm(x,mean=2,sd=1)
plot(x,y)

y<-dnorm(x,mean=2,sd=1)
y<-dnorm(x,mean(x),sd(x))
plot(x,y)

y<-pnorm(x,mean(x),sd(x))
plot(x,y)
y<-qnorm(x,mean(x),sd(x))
plot(x,y)
x<-rnorm(50000)
y<-dnorm(x,mean(x),sd(x))
plot(x,y)
hist(y, main = "Normal DIstribution")
