```R
# Improved function to calculate the mean, handling NA and non-numeric values gracefully.
calculate_mean <- function(x) {
  #Check if vector is numeric
  if (!is.numeric(x)) {
    stop("Error: Input vector must be numeric.")
  }
  if (length(x) == 0) {
    return(NA) # Handle empty vectors
  }
  mean(x, na.rm = TRUE) #Use mean function with na.rm = TRUE to ignore NAs
}

# Example usage with NA values:
my_vector_with_na <- c(1, 2, NA, 4, 5)
mean_result <- calculate_mean(my_vector_with_na)
print(paste("Mean with NA:", mean_result)) # Correct output: 3

# Example usage with non-numeric values:
my_vector_character <- c(1, 2, "a", 4, 5)
mean_result <- calculate_mean(my_vector_character) #Correctly throws error

#Example usage with empty vector
my_vector_empty <- c()
mean_result <- calculate_mean(my_vector_empty)
print(paste("Mean of empty vector:", mean_result)) #Correctly return NA
```