min_factor <- 100
max_factor <- 999

m <- sort(unique(c((max_factor:min_factor) %*% t(max_factor:min_factor))), decreasing = TRUE)

for (num in m) {
  digits <- as.integer(unlist(strsplit(toString(num), split = "")))
  if (all(digits == rev(digits))) {
    print(num)
    break
  }
}
