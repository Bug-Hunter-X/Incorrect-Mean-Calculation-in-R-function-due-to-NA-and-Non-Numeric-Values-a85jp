# R Bug: Incorrect Mean Calculation

This repository demonstrates a common bug in R code: incorrect handling of `NA` values and non-numeric values when calculating the mean of a vector. The `bug.R` file contains the erroneous function, while `bugSolution.R` provides a corrected version.

The bug is caused by the function's failure to appropriately manage vectors containing missing values (`NA`) or characters.  The solution demonstrates robust handling of these cases using `na.rm = TRUE` in `mean()` and checking for numeric data type.