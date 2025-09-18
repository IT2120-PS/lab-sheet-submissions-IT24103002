#Set directory 
setwd("C:\\Users\\user\\OneDrive\\Desktop\\IT24104075")

# Exercise 01 - Uniform Distribution
# X ~ Uniform(min=0, max=40)
# We need to find P(10 <= X <= 25)

# This is calculated as P(X <= 25) - P(X <= 10)
punif(25, min = 0, max = 40, lower.tail = TRUE) - punif(10, min = 0, max = 40, lower.tail = TRUE)

# Exercise 02 - Exponential Distribution
# X ~ Exponential(rate = 1/3)
# We need to find P(X <= 2)

pexp(2, rate = 1/3, lower.tail = TRUE)

# Exercise 03.i - Normal Distribution
# X ~ Normal(mean = 100, sd = 15)
# We need to find P(X > 130)

# This is 1 - P(X <= 130)
1 - pnorm(130, mean = 100, sd = 15, lower.tail = TRUE)

# Alternatively, using lower.tail = FALSE
pnorm(130, mean = 100, sd = 15, lower.tail = FALSE)

# Exercise 03.ii - Normal Distribution
# We need to find the value 'a' such that P(X <= a) = 0.95

qnorm(0.95, mean = 100, sd = 15, lower.tail = TRUE)