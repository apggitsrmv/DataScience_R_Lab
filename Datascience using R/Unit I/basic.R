a<-2
b=2
print(a+b)

a<-c(2,"a",2.45,"Vidyalaya")
print(a)
print(class(a))

a<-c(2,3,4)
b<-c(3,-1,5)
c<-a+b
print(c) 
print(class(c))
print(a*b)
print(a/b)
print(a-b)

a<-c(2,3,4)


# vector
apple <- c('red','green',"yellow") 
print(apple)
print(class(apple))
apple<-c('re',2, 'low',2+3i)
print(apple)
print(class(apple))
a<-c(2,3,4)
print(class(a))
a<-2+3i
b<-3+2i
print(a+b)



#arrays
a1<-array(c(1,2,3,4,5,6,7,8,9,10),dim=c(5,2))
print(a1)
a<-matrix(c(1,2,3,4,5,6,7,8,9,10),nrow=5,ncol=2,byrow=TRUE)
print(a)


a1<-array(c(1,2,3,4,5,6,7,8,9,10),dim=c(2,5))
print(a1)
a2<-array(c(1,2,3,4,5,6,7,8,9,10),dim=c(2,5))
print(a2)
print(a1+a2)


a1<-matrix(c(1,2,3,4,5,6,7,8,9,10),nrow=2,ncol=5,byrow=TRUE)
print(a1)

a<-array(c(1,2,3,4,5,6,7,8,9,10,11,12),dim=c(3,3,3))
print(a)
b<-array(c(1,2,3,4,5,6,7,8,9),dim=c(3,3,2))
print(b)
print(a+b)
print(a*b)

b<-array(c(1,2,3,4,5,6,7,8,9),dim=c(3,3))
print(b)
print(a%*%b)


a<-array(c(1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18),dim=c(3,3,3))
print(a)
b<-array(c(1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18),dim=c(3,3,2))
print(b)
d=a+b
print(d)

#matrices
a1<-matrix(c(1,2,3,4,5,6,7,8,9),nrow=3,ncol=3,byrow=TRUE)
print(a1)
a2<-matrix(c(1,2,3,4,5,6,7,8,9),nrow=3,ncol=3)
print(a2)
#print(a1+a2)
print(a1*a2)

a1<-matrix(c(1,2,3,4,5,6,7,8,9),nrow=3,ncol=3,byrow =TRUE)
print(a1)

b1<-matrix(c(1,2,3,4,5,6,7,8,9),nrow=3,ncol=3,byrow =TRUE)
print(b1)

d1=a1%*%b1
print(d1)

print(t(a1))