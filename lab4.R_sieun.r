####lab4_190314####

#1. Unordered Factors
v = c(1,7,3,5,2,7,3,1,2,8)
is.factor(v)

f<-factor(v)
is.factor(f)
f

f <- factor(v, levels = c(1,2)) 
#elements that are not specified in the level == NA
f

#2. Ordered Factors
##  Create a vector size_levels that stores the values “small”,“medium”, “large”
size_levels <- c("small", "medium", "large")

##  Create another vector data1 that has the following values: “medium”, “medium”,“large”,“small”,”medium”,”large”,”small”
data1 <- c("medium", "medium", "large", "small", "medium", "large", "small")

##  Create a factor fsize which is an ordered factor of data1 with ascending size_levels (i.e. s < m < l)
fsize <- factor(data1, levels = c("small", "medium", "large"), ordered=TRUE)
str(fsize)
summary(fsize) ##!!!!!!summary shows the number of elements

##Using one R command, calculate how many items are “small”, “medium” and “large”.
str(fsize)

#3. Generating random data: sample(x,size,replace,prob)
##   Create 5 numbers between 1 and 10.
sample(1:10, 5) #random numbers comming out each time I run this command

sample(1:5, 20, replace=TRUE)

##  Create 20 numbers between 1 and 5, and give unequal probabilities to each number from 1 to 5. Set prob=c(0.8,0.1,0.1,0,0)
sample(1:5, 20, replace=TRUE, prob=c(0.8,0.1,0.1,0,0))

# Practical question
playlist <- sample(c("p", "r", "h", "k", "c"), 30, replace=TRUE, prob=c(0.5,0.1,0.1,0.2,0.1))
playlist

# Practical question 2
temp <- c(23.1, 18.7, 8.3, 45.2, 32.5, -12.4, 28.0, -2.1, 13.7, 10.0)

##  Convert these numbers into a factor with these labels “Cold”: <=10°C, “Moderate”: 11-30°C, “Hot”:Over 30°C
tempCat <- cut(temp, breaks=c(-100, 10,30,100), labels=c("Cold", "Moderate", "Hot"))
str(tempCat)