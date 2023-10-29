# Relational Operators
#two vectors	- +,-,* ,/
v=2
print(v)
v<-2
print(v)

a=2
b<-3
print(a+b)
c<-c(1,3,4)
print(c)
v <- c( 2,5.5,6)
t <- c(8, 3, 4)
print(v+t)
print(v-t)
print(v*t)
print(v/t)

# "%%"	Give the remainder of the first vector with the second	% in C,C++, Mod Vb.net
v <- c( 2,5.5,6) 
t <- c(8, 3, 4)
print(v%%t)

# "%/%"	The result of division of first vector with second (quotient)	
v <- c( 2,5.5,6)
t <- c(8, 3, 4)
print(v%/%t)
print(v%%t)

v1<-6
t1<-4
print(v1%/%t1)
print(v1%%t1)

#Relational Operators: >,<,>=,<=,=,!=
#Checks if each element of the first vector is greater than the corresponding element of the second vector.	
v <- c(2,5.5,6,9)
t <- c(8,2.5,14,9)
print(v>t)
print(v<t)
print(v>=t)
print(v<=t)
print(v==t)
print(v!=t)


#Logical Operator : &,|,!
#It is called Element-wise Logical &,|,!,. 
#It combines each element of the first vector with the corresponding element of the second vector
#and gives a output TRUE if both the elements are TRUE
v<-c(3,1,TRUE)
print(v)
v <- c(3,1,TRUE,2+3i)
print(v)
t <- c(0,2.2,FALSE,3+2i)
print(t)
print(v&t)
print(v|t)
print(!v)
v<-c(0,3,1)
print(v)
print(!v)

# Takes first element of both the vectors and gives the TRUE only if both are TRUE when we use
#&&,|| operator

v <- c(3,0,TRUE,2+2i) #true
#true,false, true, true
print(v)
t <- c(1,3,TRUE,2+3i) # true
print(t)
print(v&&t)
#true,true,true, true
v<-c(0,1,FALSE,1) # false
print(v&&t)
print(v||t)

#Assignment Operator <-,<<-,=

v1 <- c(3,1,TRUE,2+3i)
v2 <<- c(3,1,TRUE,2+3i)
v3 = c(3,1,TRUE,2+3i)
print(v1)
print(v2)
print(v3)
print(v1+v2)
print(v1*v2)

c(3,1,TRUE,2+3i) -> v1
c(3,1,TRUE,2+3i) ->> v2 
print(v1)
print(v2)
print(v1+v2)

#Miscellaneous operator
#:	Colon operator. It creates the series of numbers in sequence for a vector.	
v <- -2:-8
print(v) 
v<-2:8
print(v)


#%in%	This operator is used to identify if an element belongs to a vector.	
v1 <- 8
v2 <- 12
t <- 1:10
print(v1 %in% t) 
print(v2 %in% t) 


#%*%	This operator is used to multiply a matrix with its transpose.	

v1<-c(2,6,5,3)
v2<-c(3,4,5,2)
print(v1*v2)



M=matrix(c(2,6,5,1,10,4),nrow=2,ncol=3,byrow=TRUE)
print(M)
M = matrix( c(2,6,5,1,10,4), nrow = 2,ncol = 3,byrow = FALSE)
print(M)
M=matrix(c(1,2,3,4,5,6,7,8,9),nrow=3,ncol=3,byrow=TRUE)
print(M)
M1=matrix(c(1,2,3,4,5,6,7,8,9),nrow=3,ncol=3,byrow=TRUE)
print(M1)
print(M%*%M1)
print()
print(t(M))
t = M %*% t(M)
print(t)


M<-2*3
t(M)<=3*2



