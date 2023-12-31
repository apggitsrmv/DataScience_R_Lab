#Live Demo
xvalues <- c(1.6,2.1,2,2.23,3.71,3.25,3.4,3.86,1.19,2.21)
yvalues <- c(5.19,7.43,6.94,8.11,18.75,14.88,16.06,19.12,3.21,7.58)

# Give the chart file a name.
png(file = "nls.png")

# Plot these values.
plot(xvalues,yvalues)

#linear Regression
plot(xvalues,yvalues,col = "blue",main = "Regression",
     abline(lm(yvalues~xvalues)),cex = 1.9,pch = 20,xlab = "Xvalues",ylab = "YValues")

# Take the assumed values and fit into the model.
model <- nls(yvalues ~ b1*xvalues^2+b2,start = list(b1 = 10,b2 = 10))

# Plot the chart with new data by fitting it to a prediction from 100 data points.
new.data <- data.frame(xvalues = seq(min(xvalues),max(xvalues),len = 100))

lines(new.data$xvalues,predict(model,newdata = new.data))

# Save the file.
dev.off()

# Get the sum of the squared residuals.
print(sum(resid(model)^2))

# Get the confidence intervals on the chosen values of the coefficients.
print(confint(model))
#When we execute the above code, it produces the following result −






# Live Demo
xvalues <- c(1.6, 2.1, 2, 2.23, 3.71, 3.25, 3.4, 3.86, 1.19, 2.21)
yvalues <- c(5.19, 7.43, 6.94, 8.11, 18.75, 14.88, 16.06, 19.12, 3.21, 7.58)

# Give the chart file a name.
png(file = "nls.png")

# Plot the original data.
plot(xvalues, yvalues, col = "blue", main = "Non-linear Regression", cex = 1.9, pch = 20, xlab = "Xvalues", ylab = "YValues")

# Non-linear Regression (Quadratic Model)
model <- nls(yvalues ~ b1 * xvalues^2 + b2, start = list(b1 = 10, b2 = 10))

# Plot the fitted curve.
new.data <- data.frame(xvalues = seq(min(xvalues), max(xvalues), len = 100))
lines(new.data$xvalues, predict(model, newdata = new.data), col = "red")

# Save the file.
dev.off()

# Get the sum of the squared residuals.
print(sum(resid(model)^2))

# Get the confidence intervals on the chosen values of the coefficients.
print(confint(model))

