setwd("C:\\Users\\it24103002\\Desktop\\IT24103002_Lab8")
getwd()

data <- read.table("Exercise - LaptopsWeights.txt", header = TRUE)
fix(data)
attach(data)

#Question 01
popmn <- mean(Weight.kg.)
popsd <- sd(Weight.kg.)

#Question 02
samples <- c()
n <- c()

for(i in 1:25) {
  s <- sample(Weight.kg., 6, replace = TRUE)
  samples <- cbind(samples, s)
  n <- c(n,paste('s', i))
}

colnames(samples) = n

s.means <- apply(samples, 2, mean)
s.vars <- apply(samples, 2, var)



#Question 03
mean_of_means <- mean(s.means)
sd_of_means <- sd(s.means)
