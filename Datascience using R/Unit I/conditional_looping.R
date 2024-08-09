# Decision Making
#if statement
x <- 2
if ((x%%2)==0)
{
  print("ok")
}
#if else statement
x <- 2
print(x)
if(2) {
  print("X is an Integer")
}else
{print("X is not integer")}

#Switch statement
#The basic syntax for creating a switch statement in R is −

#switch(expression, case1, case2, case3....)
x <- switch(
  1,
  "first",
  "second",
  "third",
  "fourth"
)
print(x)

#repeat loop
#Executes a sequence of statements multiple times and abbreviates the code that manages the loop variable.
v <- c("RMV","CAS")
cnt <- 1
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
  print(cnt)
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
}


a<-c(1,2,3)
for (i in v)
{
  print(a[i])
}

# program to find even or odd in sequence of numbers

v <- c( 2,5.5,6)
t <- c(8, 3, 4)
print(v%%t)
v<-c(2,4,6,9)
print(v%%2)


#program to find odd or even
v<-c(2,4,5,6,7,8,9,10,12,14)
u<-c(1:10)
for(i in u)
  {
  print(v[i])
  }

for (i in u)
  {
  #print(v[i])
  if ((v[i]%%2)==0)
    {
    print(paste("Even",v[i]))
  }
  else{
    print(paste("Odd",v[i]))
  }
} 
print(paste("a=",2))
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
  print(paste("It is prime ",num))
}else{
  print(paste("It is not prime",num))
}


#to check whether it is perfect number or not

num=as.integer(readline(prompt="enter a  number:"))
print(num)
sum=0
i=1
#1,2,4,7,14
while(i<num)
{
  if (num%%i==0)
  {
    sum=sum+i
  }
  i=i+1
}
if (sum==num)
{
  print(paste("Perfect number is",num))
  
}else 
  {
  print(paste("Not perfect number is",num))
  }


# to generate prime numbers
num1=as.integer(readline(prompt="enter a  number:"))
m=2
while(m<num1)
{
flag=1
num=m
i=2
while(i<num){
  if((num %% i) == 0) {
    flag=0
  } 
  i=i+1
}
if (flag==1){
  print(paste("It is prime ",num))
}
m=m+1
}