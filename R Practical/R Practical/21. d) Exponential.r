#dexp()
x_dexp<- seq(1, 10, by = 0.1) 
y_dexp<- dexp(x_dexp, rate = 5)    
plot(y_dexp)
