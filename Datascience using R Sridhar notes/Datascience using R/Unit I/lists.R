# Create a list containing strings, numbers, vectors and a logical
# values.
a<-c(1,2,3)
print(a)

list_data <- list("Red", "Green", c(21,32,11), TRUE, 51.23, 119.1)
print(list_data)
print(list_data[3])
#Naming List Elements
#The list elements can be given names and they can be accessed using these names.

# Create a list containing a vector, a matrix and a list.
list_data <- list(c("Jan","Feb","Mar"), matrix(c(3,9,5,1,-2,8), nrow = 2),
                  list("green",12.3))
print(list_data)
# Give names to the elements in the list.
names(list_data) <- c("1st Quarter", "A_Matrix", "A Inner list")

# Show the list.
print(list_data)


#Accessing List Elements
#Elements of the list can be accessed by the index of the element in the list. 
#In case of named lists it can also be accessed using the names.


# Create a list containing a vector, a matrix and a list.
list_data <- list(c("Jan","Feb","Mar"), matrix(c(3,9,5,1,-2,8), nrow = 2),
                  list("green",12.3))

# Give names to the elements in the list.
names(list_data) <- c("1st Quarter", "A_Matrix", "A Inner list")

# Access the first element of the list.
print(list_data[1])

# Access the thrid element. As it is also a list, all its elements will be printed.
print(list_data[3])

# Access the list element using the name of the element.
print(list_data$A_Matrix)
print(list_data$`1st Quarter`)

#We continue to use the list in the above example −
#Manipulating List Elements
#We can add, delete and update list elements as shown below. 
#We can add and delete elements only at the end of a list. But we can update any element.

# Create a list containing a vector, a matrix and a list.
list_data <- list(c("Jan","Feb","Mar"), matrix(c(3,9,5,1,-2,8), nrow = 2),
                  list("green",12.3))

# Give names to the elements in the list.
names(list_data) <- c("1st Quarter", "A_Matrix", "A Inner list","String1")

# Add element at the end of the list.
list_data[4] <- "New element"
print(list_data[4])
print(list_data)
print(list_data$String1)
# Remove the last element.
list_data[4] <- NULL

# Print the 4th Element.
print(list_data)

# Update the 3rd Element.
list_data[3] <- list(list("green",12.3,"updated element"))
print(list_data[3])

print(list_data)

list_data <- list(c("Jan","Feb","Mar"), matrix(c(3,9,5,1,-2,8), nrow = 2),
                  list("green",12.3),c("Apr","May","Jun"))


names(list_data) <- c("1st Quarter", "A_Matrix", "A Inner list","2nd Quarter")
print(list_data)
#Merging Lists
#You can merge many lists into one list by placing all the lists inside one list() function.
# Create two lists.
list1 <- list(1,2,3)
list2 <- list("Sun","Mon","Tue")

# Merge the two lists.
merged.list <- c(list1,list2)
list3<-c(list1,list2)
print(list3)
list4<-list(matrix(c(3,9,5,1,-2,8),nrow=2))
print(list4)
list5<-c(list3,list4)
print(list5)

# Print the merged list.
print(merged.list)

list1<-list(1,2,3)
list2<-list(3,4,5)

list4<-list1+list2
print(list4)

vector1<-c(1,2,3)
vector2<-c(3,4,5)
vector3<-vector1+vector2
print(vector3)
#Converting List to Vector
#A list can be converted to a vector so that the elements of the vector can be used 
#for further manipulation.
#All the arithmetic operations on vectors can be applied after the list is converted into vectors.
#To do this conversion, we use the unlist() function. It takes the list as 
#input and produces a vector.



# Create lists.
list1 <- list(1:5)
print(list1)

list2 <-list(10:14)
print(list2)
#list elements cannot be applied arthimetical operations
print(list1+list2)

# Convert the lists to vectors.
v1 <- unlist(list1)
v2 <- unlist(list2)

print(v1)
print(v2)

# Now add the vectors
result <- v1+v2
print(result)