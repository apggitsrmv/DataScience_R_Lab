x<-4
y<-pbinom(x,4,0.5)
print(y)

x<-seq(0,4,0.1)
x<-4
y<-pbinom(x,4,0.1)
print(y)
plot(x,y)

x<-26
y<-dbinom(x,51,0.5)
print(y)

x<-seq(26,51,0.5)
y <- pbinom(x,51,0.5)

print(x)
plot(x,y)

y<-1-pbinom(x,51,0.5)
x<-seq(0,25,0.5)
print(y)
plot(x,y)

x<-seq(0,25,0.5)
y<-pbinom(x,25,0.5)
plot(x,y)

x <- seq(0,50,1)
y <- dbinom(x,50,0.5)
print(dbinom(0, size=12, prob=0.2) + 
        + dbinom(1, size=12, prob=0.2) + 
        + dbinom(2, size=12, prob=0.2) + 
        + dbinom(3, size=12, prob=0.2) + 
        + dbinom(4, size=12, prob=0.2))
print(pbinom(4,12,0.2))
