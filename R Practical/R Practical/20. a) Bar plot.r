H <- c(7,12,28,3,41)
barplot(H)
H <-  c(9,13,21,8,36,22,12,41,31,33,19)

barplot(H)
H <- c(7,12,28,3,41)
M <- c("Mar","Apr","May","Jun","Jul")
barplot(H,names.arg=M,xlab="Month",ylab="Revenue",col="red",
        main="Revenue chart",border="blue")


H<-c(12,14,15,16,11,23,11,14,26,28,29,12)
M<-c("Jan","Feb","Mar","Apr","May","Jun","Jul","Aug","Sep","Oct","Nov","Dec")
barplot(H,names.arg = M)
barplot(H,names.arg=M,xlab="Month",ylab="Rainfall",col="red",main="Rainfall Vs Month",border="blue")

dev.off()

colors = c("green","orange","brown")
months <- c("Mar","Apr","May","Jun","Jul")
regions <- c("East","West","North")

Values <- matrix(c(2,9,3,11,9,4,8,7,3,12,5,2,8,10,11), nrow = 3, ncol = 5, byrow = TRUE)
print(Values)
barplot(Values, main = "total revenue", names.arg = months, xlab = "month", ylab = "revenue", col = colors)
legend("topleft", regions, cex = 0.75, fill = colors)


df<-read.csv("Combined.csv")
print(df)

df1=df["SALARY"]
print(df1)
#barplot(df1)
v<-df1[,]
print(v)
dfname1<-df["Name"]
names<-dfname1[,]
print(names)
barplot(v,names.arg=names,xlab="salary",ylab="in Rs",main="Salary Chart",col="red",border="blue")
