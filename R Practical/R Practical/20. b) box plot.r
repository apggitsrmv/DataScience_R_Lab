df<-read.csv("Combined.csv")
print(df)
v<-df[,c("SALARY","Basic")]
print(v)

boxplot(SALARY~Basic,data=v,xlab="Basic",ylab="Salary", main="Salary Chart")
df<-read.csv("guna1.csv")
print(df)

v<-df[,c("Apptitude","gunas")]
print(v)

boxplot(Apptitude~gunas,data=v,xlab="Guans",ylab="Apptitude", main="Gunas chart")

v<-df[,c("Apptitude","Attitude")]
print(v)

boxplot(Apptitude~Attitude,data=v,xlab="Attitude",ylab="Apptitude", main="Gunas chart")
