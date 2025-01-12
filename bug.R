```R
# This function attempts to calculate the mean of a numeric vector.
# However, it contains a subtle error that can lead to unexpected results.
calculate_mean <- function(x) {
  if (length(x) == 0) {
    return(NA)  # Handle empty vectors
  }
  sum(x) / length(x)
}

# Example usage:
my_vector <- c(1, 2, 3, 4, 5)
mean_result <- calculate_mean(my_vector)
print(paste("Mean:", mean_result)) # Expected output: Mean: 3

my_vector_with_na <- c(1, 2, NA, 4, 5) # Vector with NA
mean_result <- calculate_mean(my_vector_with_na)
print(paste("Mean with NA:", mean_result)) # Unexpected behavior: NaN, should be 2.666...

#Another example
my_vector_character <- c("a", "b", "c") # Vector with characters
mean_result <- calculate_mean(my_vector_character)
print(paste("Mean with character:", mean_result)) # Error : non-numeric argument to binary operator
```