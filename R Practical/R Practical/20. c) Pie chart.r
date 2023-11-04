x <- c(21, 62, 10, 53,76)
21/222*360

34.05+100.54+16.21+85.95+123.24
labels <- c("London", "New York", "Singapore", "Mumbai","chennai")
pie(x,labels)

pie(x, labels, main = "City pie chart", col = rainbow(length(x)))


pie(x, labels = piepercent, main = "City pie chart",col = rainbow(length(x)))
legend("topleft", c("London","New York","Singapore","Mumbai","Chennai"), cex = 0.7,
       fill = rainbow(length(x)))


library(plotrix)
x <-  c(21, 62, 10,53,76)
lbl <-  c("London","New York","Singapore","Mumbai","Chennai")

pie3D(x,labels = lbl,explode = 0.1, main = "Pie Chart of Countries ")
pie3D(x,labels=lbl,explode = 0.1, main = "Pie Chart of Countries ",)
legend("topright", c("London","New York","Singapore","Mumbai","Chennai"), cex =0.6,
       fill = rainbow(length(x)))
dev.off()

x <- c(21, 62, 10, 53,76)
labels <-  c("London","New York","Singapore","Mumbai","Chennai")

piepercent<- round(100*x/sum(x), 1)
pie3D(x, labels = piepercent, main = "City pie chart",col = rainbow(length(x)))
legend("topright", c("London","New York","Singapore","Mumbai","Chennai"), cex = 0.7,
       fill = rainbow(length(x)))
