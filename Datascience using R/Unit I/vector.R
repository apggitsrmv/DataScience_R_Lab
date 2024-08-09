#Single Element Vector
#Even when you write just one value in R, it becomes a vector of length 1 and
#belongs to one of the above vector types.
# Atomic vector of type character.
v="abc"
print(v);

# Atomic vector of type double.
print(12.5)

# Atomic vector of type integer.
print(63L)

# Atomic vector of type logical.
print(TRUE)

# Atomic vector of type complex.
print(2+3i)

# Atomic vector of type raw.
print(charToRaw('hello'))


#Multiple Elements Vector
#Using colon operator with numeric data
a=4
print(a)
a=3
print(a)

print(a[1])
print(a[2])
# Creating a sequence from 5 to 13.
v <- 5:13
print(v[1])
print(v[2])
# Creating a sequence from 6.6 to 12.6.
v <- 6.6:12.6
print(v)

# If the final element specified does not belong to the sequence then it is discarded.
v <- 3.8:10.6
print(v)
g2<-b:5
print(g2)
#Using sequence (Seq.) operator

# Create vector with elements from 5 to 9 incrementing by 0.4.
v<-seq(9, 5, by = -0.5)
print(v)

print(seq(5, 9, by = 0.5))
print(seq(9,5,by=-0.5))

#Using the c() function

#The non-character values are coerced to character type if one of the elements is a character.

# The logical and numeric values are converted to characters.
c=3
s2<-c("apple","red",5,TRUE)
print(s2)
s <- c('apple','red',5,TRUE)
print(s)
s1<-charToRaw(s[4])
print(s1)
print(s[4])
#Accessing Vector Elements
#Elements of a Vector are accessed using indexing. The [ ] brackets are used for indexing. 
#Indexing starts with position 1. Giving a negative
#value in the index drops that element from result.TRUE, FALSE or 0 and 1 can also be used for indexing.

# Accessing vector elements using position.
t <- c("Sun","Mon","Tue","Wed","Thurs","Fri","Sat")
print(t[c(1,3,5)])
u <- t[c(2,4,6)]
print(u)

# Accessing vector elements using logical indexing.
v <- t[c(TRUE,FALSE,TRUE,TRUE,FALSE,TRUE,FALSE)]
print(v)

# Accessing vector elements using negative indexing.
x <- t[c(-2,-5)]
print(x)

# Accessing vector elements using customized indexing.
y <- t[c(2,4,6,3,5,7)]
print(y)

# Addition, Subtraction, Multiplication, Division
a<-c(2,3,4)
b<-c(3,-1,5)
print(a+b)
a*b
a/b
a-b

a1=10
a_1=10
a.a=10

#Vector Element Recycling
#If we apply arithmetic operations to two vectors of unequal length, 
#then the elements of the shorter vector are recycled to complete the operations.

v1 <- c(3,8,4,5,0,11)
v2 <- c(4,11,2)
print(v1)
print(v2)
# V2 becomes c(4,11,4,11,4,11)
a.b<-v1+v2
print(a.b)
add.result <- v1+v2
print(add.result)

sub.result <- v1-v2
print(sub.result)
Mul.result<-v1*v2
print(Mul.result)

#Vector Element Sorting
#Elements in a vector can be sorted using the sort() function.

v <- c(3,8,4,5,0,11, -9, 304)

# Sort the elements of the vector.
sort.result <- sort(v)
print(sort.result)

# Sort the elements in the reverse order.
revsort.result <- sort(v, decreasing = TRUE)
print(revsort.result)

# Sorting character vectors.
v <- c("Red","Blue","yellow","violet")
sort.result <- sort(v)
print(sort.result)

# Sorting character vectors in reverse order.
revsort.result <- sort(v, decreasing = TRUE)
print(revsort.result)

#single element vector -numeric,integer, char, logical, raw
#multi element vector c()
#vector manipulation-addition,sub,mul,div
#individual elements could be acccessed using indexing-normal, neg, logical, customized
#sorting - ascending and descending

