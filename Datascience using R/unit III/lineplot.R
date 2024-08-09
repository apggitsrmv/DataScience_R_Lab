# Create the data for the chart.
v <- c(7,12,28,3,41)

# Give the chart file a name.
#png(file = "line_chart.jpg")

# Plot the bar chart. 
plot(v,type = "o")

# Save the file.
#dev.off()
#######################################
# Create the data for the chart.
v <- c(7,12,28,3,41)

# Give the chart file a name.
#png(file = "line_chart_label_colored.jpg")

# Plot the bar chart.
plot(v,type = "o", col = "red", xlab = "Month", ylab = "Rain fall",
     main = "Rain fall chart")

# Save the file.
#dev.off()
###################
# Create the data for the chart.
v <- c(7,12,28,3,41)
t <- c(14,7,6,19,3)
x<-c(15,7,8,18,5)

# Give the chart file a name.
#png(file = "line_chart_2_lines.jpg")

# Plot the bar chart.
plot(v,type = "o",col = "red", xlab = "Month", ylab = "Rain fall", 
     main = "Rain fall chart")

lines(t, type = "o", col = "blue")
lines(x, type = "o", col = "green")

# Save the file.
#dev.off()