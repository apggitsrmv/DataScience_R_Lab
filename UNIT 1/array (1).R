#Arrays are the R data objects which can store data in more than two dimensions. 
#For example − If we create an array of dimension (2, 3, 4)
#then it creates 4 rectangular matrices each with 2 rows and 3 columns. Arrays can store only data type.
#int a[10], b[10][10],c[10][10][10]
#An array is created using the array() function.
#It takes vectors as input and uses the values in the dim parameter to create an array.
a<-array(c(1,2,3,4,5,6,7,8,9),dim=c(3,3))
print(a)
b<-array(c(1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18),dim=c(3,3))
print(b)
b<-array(c(1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18),dim=c(3,3,4))
print(b)
b<-array(c(1,2,3,4,5,6,7,8,9,10,11,12,13,14,15),dim=c(3,3,2))
print(b)
a<-array(c(1,2,3,4,5,6,7,8,9,10,11,12),dim=c(3,3))
print(a)
b<-array(c(1,2,3,4,5,6,7,8,9,10,11,12),dim=c(3,3))
print(b)
d=a+b
print(d)
#Accessing Array Elements
# Create two vectors of different lengths.
vector1 <- c(5,9,3,11,12,13,14,15,16)
vector2 <- c(10,11,12,13,14,15,2,3,1)
vector3<-c(1,2,3,4,5,6,7,8,9)
column.names <- c("COL1","COL2","COL3")
row.names <- c("ROW1","ROW2","ROW3")
matrix.names <- c("Matrix1","Matrix2","Matrix3")

# Take these vectors as input to the array.
result <- array(c(vector1,vector2,vector3),dim = c(3,3,3),dimnames = list(row.names,
                                                                  column.names, matrix.names))
result <- array(c(vector1,vector2),dim = c(3,3,3))

print(result)
# Print the third row of the second matrix of the array.
print(result[3,,2])

# Print the element in the 1st row and 3rd column of the 1st matrix.
print(result[1,3,1])

# Print the 2nd Matrix.
print(result[,,2])
a1<-array(c(1,2,3,4,5,6,7,8,9,10),dim=c(5,2))
print(a1)
#--------------------------------------------------------
#Manipulating Array Elements
#-------------------------------------------------------

#As array is made up matrices in multiple dimensions, the operations on elements of
#array are carried out by accessing elements of the matrices.
#------------------------------------------------------
#Method 1
#---------
# Create two vectors of different lengths.
vector1 <- c(5,9,3)
vector2 <- c(10,11,12,13,14,15)

# Take these vectors as input to the array.
array1 <- array(c(vector1,vector2),dim = c(3,3))

# Create two vectors of different lengths.
vector3 <- c(9,1,0)
vector4 <- c(6,0,11,3,14,1,2,6,9)
array2 <- array(c(vector3,vector4),dim = c(3,3))
print(array2)
#Addition of 2 arrays
result.add=array1+array2
print(array1)
print(array2)
print(result.add)
#------------------------------
#method 2
#------------------------------
# Create two vectors of different lengths.
vector1 <- c(5,9,3)
vector2 <- c(10,11,12,13,14,15)

# Take these vectors as input to the array.
array1 <- array(c(vector1,vector2),dim = c(3,3,2))
print(array1)
# Create two vectors of different lengths.
vector3 <- c(9,1,0)
vector4 <- c(6,0,11,3,14,1,2,6,9)
array2 <- array(c(vector3,vector4),dim = c(3,3,2))
print(array2)


# create matrices from these arrays.
matrix1 <- array1[3,2,1]
matrix2 <- array2[3,3,2]

# Add the matrices.
result <- matrix1+matrix2
print(matrix1)
print(matrix2)
print(result)
#---------------------------------------------------
#  Calculations Across Array Elements
#We can do calculations across the elements in an array using the apply() function.
#Syntax
#apply(x, margin, fun)
#Following is the description of the parameters used −
#x is an array.
#margin is the name of the data set used.
#fun is the function to be applied across the elements of the array.
#----------------------------------------------------
#Example
#We use the apply() function below to calculate 
#the sum of the elements in the rows of an array across all the matrices.
#----------------------------------------------------
# Create two vectors of different lengths.
vector1 <- c(5,9,3)
vector2 <- c(10,11,12,13,14,15)

# Take these vectors as input to the array.
new.array <- array(c(vector1,vector2),dim = c(3,3,2))
print(new.array)

# Use apply to calculate the sum of the rows across all the matrices.
result <- apply(new.array, c(1),sum)
print(result)



## Compute row and column sums for a matrix:


x<-rbind(x1 = 3, x2 = c(4:1, 2:5))
print(x)
x <- cbind(x1 = 3, x2 = c(4:1, 2:5))
print(x)
dimnames(x)[[1]] <- LETTERS[1:8]
print(dimnames)
print(x)
apply(x, 2, mean, trim = .2)
col.sums <- apply(x, 2, sum)
print(col.sums)
row.sums <- apply(x, 1, sum)
print(row.sums)

## Sort the columns of a matrix
apply(x, 2, sort)

