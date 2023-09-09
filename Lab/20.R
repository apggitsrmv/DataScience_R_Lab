
# Read the data from guna.csv
data <- read.csv("guna1.csv")
summary(data)
bar_chart_attitude <- table(data$Attitude)
barplot(bar_chart_attitude, main = "Bar Chart for Attitude", xlab = "Attitude", ylab = "Count", col = colors, beside = TRUE)
# Add the legend to the chart
legend("topright", bar_chart_attitude, cex = 0.7, fill = colors)

box_plot_attitude <- boxplot(data$Attitude, main = "Box Plot for Attitude", ylab = "Attitude")

pie_chart_attitude <- table(data$Attitude)
pie(pie_chart_attitude, main = "Pie Chart for Attitude")

histogram_attitude <- hist(data$Attitude, main = "Histogram for Attitude", xlab = "Attitude", ylab = "Frequency")

line_plot_attitude <- plot(data$Apptitude, type = "l", main = "Line Plot for Attitude Over Apptitude", xlab = "Apptitude", ylab = "Attitude")
lines(data$guna, type = "o", col = "blue")
lines(data$Attitude,, type = "o", col = "green")