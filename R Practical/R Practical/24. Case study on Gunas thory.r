data <- read.csv("guna1.csv")

# Comparison of Attitude and Apptitude
attitude <- data$Attitude
apptitude <- data$Apptitude

# Calculate Mean and Standard Deviation
mean_attitude <- mean(attitude)
sd_attitude <- sd(attitude)

cat("Attitude - Mean:", mean_attitude, "SD:", sd_attitude, "\n")

# Create a Scatter Plot
plot(attitude, apptitude, main = "Scatter Plot: Attitude vs. Apptitude", xlab = "Attitude", ylab = "Apptitude", col = "blue")

# Create a Boxplot for Attitude and Apptitude
boxplot(attitude, apptitude, names = c("Attitude", "Apptitude"), main = "Boxplot: Attitude vs. Apptitude", col = c("orange", "green"))

# Create a Histogram for Attitude and Apptitude
par(mfrow = c(1, 2))
hist(attitude, col = "lightblue", main = "Histogram: Attitude", xlab = "Attitude", ylab = "Frequency")
hist(apptitude, col = "lightgreen", main = "Histogram: Apptitude", xlab = "Apptitude", ylab = "Frequency")
par(mfrow = c(1, 1))

# Correlation Matrix
cor_matrix <- cor(data[, c("Attitude", "Apptitude", "Sattvic", "Rajasic", "Tamasic")])
print("Correlation Matrix:")
print(cor_matrix)

# Hypothesis Testing (ANOVA) for Attitude and Apptitude based on Gunas
anova_result <- aov(Attitude ~ Sattvic + Rajasic + Tamasic + Apptitude, data = data)
print("ANOVA Result:")
print(anova_result)

# Correlation Matrix
cor_matrix <- cor(data[, c("Attitude", "Apptitude", "Sattvic", "Rajasic", "Tamasic")])
print("Correlation Matrix:")
print(cor_matrix)

# Pairwise Scatter Plots
pairs(data[, c("Attitude", "Apptitude", "Sattvic", "Rajasic", "Tamasic")], main = "Pairwise Scatter Plots")

# Create a Boxplot for Attitude based on Guna Types
boxplot(Attitude ~ gunas, data = data, main = "Boxplot: Attitude by Guna Types", col = c("orange", "green", "blue"))

# Bar Plot for Apptitude by Guna Types
barplot(data$Apptitude, beside = TRUE, names.arg = data$gunas, col = c("orange", "green", "blue"), main = "Bar Plot: Apptitude by Guna Types", xlab = "Guna Types", ylab = "Apptitude")
