# Decision Making
#if statement
x <- 2.2
if(is.integer(x)) {
  print("X is an Integer")
}
#if else statement
x <- 20L
print(x)
if(is.integer(x)) {
  print("X is an Integer")
}else
{print("X is not integer")}

#Switch statement
#The basic syntax for creating a switch statement in R is −

#switch(expression, case1, case2, case3....)
x <- switch(
  2,
  "first",
  "second",
  "third",
  "fourth"
)
print(x)


#repeat loop
#Executes a sequence of statements multiple times and abbreviates the code that manages the loop variable.

v <- c("RMV","CAS")
cnt <- 2

repeat {
  print(v)
  cnt <- cnt+1
  
  if(cnt > 5) {
    break
  }
}

#while loop
v <- c("Hello","while loop")
cnt <- 2

while (cnt < 7) {
  print(v)
  cnt = cnt + 1
}

#for loop

v <- LETTERS[1:26]
for ( i in v) {
  print(i)
}
v<-c(1:10)
print(v)

for (i in v)
{
  print(i)
  if (i<=5){
  print("hello")
  }else{print("Hello1")}
}

# program to find even or odd in sequence of numbers
for (i in 1:10){
  print(i)
  if ((i%%2)==0){ 
             
             print("Even")
  }
  else {
    print("ODD")}
 
  }
 
#program to find odd or even
v<-c(2,4,5,6,7,8,9)

for(i in 1:7){
  print(v[i])}

for (i in 1:7){
  #print(v[i])
  if ((v[i]%%2)==0){
    print("Even")
  }else{
    print("Odd")
  }
} 
# Program to check if the input number is odd or even.
# A number is even if division by 2 give a remainder of 0.
# If remainder is 1, it is odd.
num = as.integer(readline(prompt="Enter a number: "))
if((num %% 2) == 0) {
  print(paste(num,"is Even"))
} else {
  print(paste(num,"is Odd"))
}
  
#to check whether is prime or not

num = as.integer(readline(prompt="Enter a number: "))
flag=1
print(num)
i=2
while(i<num){
  print(i)
if((num %% i) == 0) {
  flag=0
} 
  i=i+1
}
print(flag)
if (flag==1){
  print(paste(num,"It is prime lsldl",num,i))
}else{
  print(paste("It is not prime",num))
  }