# Hypothetical dataset
# Read the data from guna.csv
data <- read.csv("guna1.csv")


# Basic Scatter Plot
plot(data$Sattvic, data$Rajasic, main = "Scatter Plot", xlab = "Sattvic", ylab = "Rajasic")

# Basic Bar Plot
barplot(data$Tamasic, names.arg = data$Regno, col = "skyblue", main = "Bar Plot", xlab = "Regno", ylab = "Tamasic")

# Basic Line Plot
plot(data$Sno, data$Number, type = "l", col = "red", main = "Line Plot", xlab = "Sno", ylab = "Number")

# Basic Boxplot
boxplot(data$Letter, main = "Boxplot", ylab = "Letter")

# Basic Histogram
hist(data$Number, col = "lightblue", main = "Histogram", xlab = "Number", ylab = "Frequency")


# Basic Scatter Plot Matrix
pairs(data[, c("Sattvic", "Rajasic", "Tamasic", "Number", "Letter")],
      main = "Scatter Plot Matrix")

# Basic Bar Plots for selected columns
par(mfrow = c(2, 2))
barplot(data$Sattvic, names.arg = data$Regno, col = "skyblue", main = "Sattvic", xlab = "Regno", ylab = "Sattvic")
barplot(data$Rajasic, names.arg = data$Regno, col = "lightgreen", main = "Rajasic", xlab = "Regno", ylab = "Rajasic")
barplot(data$Tamasic, names.arg = data$Regno, col = "coral", main = "Tamasic", xlab = "Regno", ylab = "Tamasic")
barplot(data$Number, names.arg = data$Regno, col = "lightpink", main = "Number", xlab = "Regno", ylab = "Number")
par(mfrow = c(1, 1))

# Basic Line Plots for selected columns
plot(data$Sno, data$Number, type = "l", col = "red", main = "Line Plot", xlab = "Sno", ylab = "Number")

# Basic Boxplot for selected columns
boxplot(data[, c("Sattvic", "Rajasic", "Tamasic")], main = "Boxplot")

# Basic Histogram for selected columns
hist(data$Number, col = "lightblue", main = "Histogram", xlab = "Number", ylab = "Frequency")

# Comparison of Attitude and Apptitude
attitude <- data$Attitude
apptitude <- data$Apptitude

# Calculate Mean and Standard Deviation
mean_attitude <- mean(attitude)
sd_attitude <- sd(attitude)

mean_apptitude <- mean(apptitude)
sd_apptitude <- sd(apptitude)

cat("Attitude - Mean:", mean_attitude, "SD:", sd_attitude, "\n")
cat("Apptitude - Mean:", mean_apptitude, "SD:", sd_apptitude, "\n")

# Create a Scatter Plot
plot(attitude, apptitude, main = "Scatter Plot: Attitude vs. Apptitude", xlab = "Attitude", ylab = "Apptitude", col = "blue")

# Create a Boxplot for Attitude and Apptitude
boxplot(attitude, apptitude, names = c("Attitude", "Apptitude"), main = "Boxplot: Attitude vs. Apptitude", col = c("orange", "green"))

# Create a Histogram for Attitude and Apptitude
par(mfrow = c(1, 2))
hist(attitude, col = "lightblue", main = "Histogram: Attitude", xlab = "Attitude", ylab = "Frequency")
hist(apptitude, col = "lightgreen", main = "Histogram: Apptitude", xlab = "Apptitude", ylab = "Frequency")
par(mfrow = c(1, 1))


# Hypothetical dataset
# Assuming the data is already loaded

# Basic Summary Statistics
summary(data)

# Correlation Matrix
cor_matrix <- cor(data[, c("Attitude", "Apptitude", "Sattvic", "Rajasic", "Tamasic")])
print("Correlation Matrix:")
print(cor_matrix)

# Pairwise Scatter Plots
pairs(data[, c("Attitude", "Apptitude", "Sattvic", "Rajasic", "Tamasic")], main = "Pairwise Scatter Plots")

# Hypothesis Testing (ANOVA) for Attitude and Apptitude based on Gunas
anova_result <- aov(Attitude ~ Sattvic + Rajasic + Tamasic + Apptitude, data = data)
print("ANOVA Result:")
print(anova_result)

# Create a Boxplot for Attitude based on Guna Types
boxplot(Attitude ~ gunas, data = data, main = "Boxplot: Attitude by Guna Types", col = c("orange", "green", "blue"))

# Compare Gender-wise Attitude using Violin Plot
library(ggplot2)
ggplot(data, aes(x = Gender, y = Attitude, fill = Gender)) +
  geom_violin() +
  labs(title = "Violin Plot: Attitude by Gender", x = "Gender", y = "Attitude") +
  theme_minimal()

# Additional Plots and Analyses can be added based on specific requirements
# Compare Gender-wise Attitude using Violin Plot
ggplot(data, aes(x = Gender, y = Attitude, fill = Gender)) +
  geom_violin() +
  labs(title = "Violin Plot: Attitude by Gender", x = "Gender", y = "Attitude") +
  theme_minimal()

# Bar Plot for Apptitude by Guna Types
ggplot(data, aes(x = gunas, y = Apptitude, fill = gunas)) +
  geom_bar(stat = "identity") +
  labs(title = "Bar Plot: Apptitude by Guna Types", x = "Guna Types", y = "Apptitude") +
  theme_minimal()

# Scatter Plot for Number vs. Letter
ggplot(data, aes(x = Number, y = Letter, color = Gender)) +
  geom_point() +
  labs(title = "Scatter Plot: Number vs. Letter", x = "Number", y = "Letter") +
  theme_minimal()

# Histogram for Sattvic
ggplot(data, aes(x = Sattvic, fill = Gender)) +
  geom_histogram(binwidth = 1, position = "identity", alpha = 0.7) +
  labs(title = "Histogram: Sattvic by Gender", x = "Sattvic", y = "Frequency") +
  theme_minimal()


# Hypothetical dataset
# Assuming the data is already loaded

# Basic Summary Statistics
summary(data)

# Correlation Matrix
cor_matrix <- cor(data[, c("Attitude", "Apptitude", "Sattvic", "Rajasic", "Tamasic")])
print("Correlation Matrix:")
print(cor_matrix)

# Pairwise Scatter Plots
pairs(data[, c("Attitude", "Apptitude", "Sattvic", "Rajasic", "Tamasic")], main = "Pairwise Scatter Plots")

# Hypothesis Testing (ANOVA) for Attitude and Apptitude based on Gunas
anova_result <- aov(Attitude ~ Sattvic + Rajasic + Tamasic + Apptitude, data = data)
print("ANOVA Result:")
print(anova_result)


# Create a Boxplot for Attitude based on Guna Types
boxplot(Attitude ~ gunas, data = data, main = "Boxplot: Attitude by Guna Types", col = c("orange", "green", "blue"))

# Bar Plot for Apptitude by Guna Types
barplot(data$Apptitude, beside = TRUE, names.arg = data$gunas, col = c("orange", "green", "blue"), main = "Bar Plot: Apptitude by Guna Types", xlab = "Guna Types", ylab = "Apptitude")


# Histogram for Sattvic
hist(data$Sattvic[data$Gender == "Male"], col = "lightblue", main = "Histogram: Sattvic for Males", xlab = "Sattvic", ylab = "Frequency", xlim = c(1, 5), ylim = c(0, 4), breaks = seq(1, 5, by = 1), add = FALSE)
hist(data$Sattvic[data$Gender == "Female"], col = "lightcoral", main = "Histogram: Sattvic for Females", xlab = "Sattvic", ylab = "Frequency", xlim = c(1, 5), ylim = c(0, 4), breaks = seq(1, 5, by = 1), add = TRUE)
legend("topright", legend = c("Male", "Female"), fill = c("lightblue", "lightcoral"))


