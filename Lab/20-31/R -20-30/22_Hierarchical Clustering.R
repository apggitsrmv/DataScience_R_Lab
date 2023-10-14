# Generate a matrix of random data
x = matrix(rnorm(30 * 3), ncol = 3)

# Perform hierarchical clustering with different linkage methods
hc.complete = hclust(dist(x), method = "complete")
hc.average = hclust(dist(x), method = "average")
hc.single = hclust(dist(x), method = "single")

# Set up the plotting area with 1 row and 3 columns
par(mfrow = c(1, 3))

# Plot dendrograms for different linkage methods
plot(hc.complete, main = "Complete Linkage", xlab = "", sub = "", cex = 0.9)
plot(hc.average, main = "Average Linkage", xlab = "", sub = "", cex = 0.9)
plot(hc.single, main = "Single Linkage", xlab = "", sub = "", cex = 0.9)

# Cut dendrograms to form clusters
cutree(hc.complete, 2)
cutree(hc.average, 2)
cutree(hc.single, 2)
cutree(hc.single, 4)

# Scale the features
xsc = scale(x)

# Plot hierarchical clustering with scaled features
plot(hclust(dist(xsc), method = "complete"), main = "Hierarchical Clustering with Scaled Features")

# Create a distance matrix based on correlation and perform hierarchical clustering
dd = as.dist(1 - cor(t(x)))
plot(hclust(dd, method = "complete"), main = "Complete Linkage with Correlation-Based Distance", xlab = "", sub = "")

