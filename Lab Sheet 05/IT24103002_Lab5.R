setwd("C:\\Users\\it24103002\\Desktop\\IT24103002")
getwd()
# part1
delivery_times <- read.table("Exercise - Lab 05.txt", header=TRUE)

# View first few rows
head(delivery_times)


#Part2
# Histogram with 9 right-open intervals
names(delivery_times)<-c("x1")

attach(delivery_times)

histogrm <- hist(x1, breaks=seq(20, 70, length.out=10), xlab="Delivery Time (minutes)", ylab="Frequency")

#Part3
#The distribution will likely appear approximately symmetric but slightly right-skewed (longer tail toward higher delivery times).

#Part4
# Compute frequencies
breaks <- seq(20, 70, length.out=10)
freq <- histogrm$counts

# Cumulative frequencies
cumfreq <- cumsum(freq)

# Plot cumulative frequency polygon (Ogive)
plot(breaks[-1], cumfreq, type="o", main="Cumulative Frequency Polygon (Ogive)",xlab="Delivery Time (minutes)",ylab="Cumulative Frequency",)

