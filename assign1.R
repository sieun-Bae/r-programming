##########Assignment 01_R programming by Prof.Gaya##########
# NAME: Bae Sieun
# ID: 2016310153

# 1. Scalars and functions
# i) The area of a circle is given by the formula 𝛑 x radius x radius.
# Create a variable "area" which stores the area of a circle with radius 3.
# The constant 𝛑 is available in R as pi.
#
# Type your code below
radius <- 3
area <- pi * radius^2

# ii) How many times is the area of a circle with radius 4 bigger than the area of
# a circle with radius 3? Calculate in R and round the answer to 2 decimal
# places. Create/modify variables as you see fit.
#
# Type your code below
area_1 <- pi * 4^2
area_2 <- pi * 3^2
round(area_1 / area_2, digits=2)

# Answer (rounded to 2 decimal places):
1.78


# 2. Vectors
# We define x and y as:
x <- c(7, 3, 1, 4, 15:20)
y <- rep(1:5, c(2,1,2,3,3))
# i) How many elements does x have?
#
# Type your code below
length(x)

# Answer:
10

# ii) Modify y so that its last element appears 2 times instead of 3 times.
# Type your code below
y <- rep(1:5, c(2,1,2,3,2))

# iii) Is the 5th element of y a multiple of the 5th element of x?
# Type your code below
if (y[5] %% x[5] == 0) {
  print("5th element of y a multiple of the 5th element of x")
  }else { print("no")}
# Answer: no


# iv) Concatenate x and y into a new vector z.
#
# Type your code below
z <- append(x, y, length(x))

# v) List the unique elements of z that are bigger than 3 and are NOT divisible
# by 2. You may want to use the function unique().
#
# Type your code below
unique(z[z>3 & z%%2 != 0])

# Answer: 7 15 17 19 5


# 3. Matrices
# Use the matrix() function to generate the following matrices, m1 and m2
#
# i) m1
# [,1] [,2]
# [1,]    1   44
# [2,]    2   43
# [3,]    3   42
# [4,]    4   41
#
# Type your code below
m1 <- matrix(data = c(1,2,3,4,44,43,42,41), ncol = 2)

# ii) m2
# [,1] [,2] [,3] [,4]
# [1,]    1    2    3    4
# [2,]   44   43   42   41
#
# Type your code below
m2 <- matrix(data = c(1,2,3,4,44,43,42,41), ncol = 4, byrow = TRUE)


# iii) Add a column to m1 to produce the following matrix, m3
# [,1] [,2] [,3]
# [1,]    1   44    2
# [2,]    2   43    4
# [3,]    3   42    6
# [4,]    4   41    8
#
# Type your code below
m3 <- cbind(m1, c(2,4,6,8))
m3

# iv) Add a row to m2 to produce the following matrix, m4
# [,1] [,2] [,3] [,4]
# [1,]    1    2    3    4
# [2,]   44   43   42   41
# [3,]    3    0   -3   -6
#
# Type your code below
m4 <- rbind(m2, c(3, 0, -3, -6))
m4

# v) What is the result of multiplying (element-by-element) the 2nd row 
# of m3 with the 3rd column of m4?
#
# Type your code below
m3[2,] * m4[,3]

# Answer: 6 1806 -12


# 4. Factors
# You took out 12 clothing items from the washing machine and 
# these were the sizes you found:
#  "L","M","XS","S","XL","XS","M","M","L","XL","S","M"
# i) Create an unordered factor clothes_factor to store these 
# clothing items.
#
# Type your code below


# ii) You think that it's more appropriate to order the clothes by 
# their sizes, i.e. XS being the smallest and XL being the largest. 
# Modify clothes_factor to be ordered according to these levels.
#
# Type your code below


# iii) Check if the 3rd clothing item is smaller than the 9th item
#
# Type your code below


# Answer: 

# iv) Change the size levels to the following 
# –XS: "X-Small",S:"Small", M: "Medium",L: "Large", XL: "X-Large"
# Type your code below


# v) How many clothing items are "Medium" or bigger?
# Type your code below


# Answer: 

# vi) Sizes that are too big or too small are not useful. 
# Create a new factor clothes_factor2 that only considers sizes 
# Small, Medium and Large. 
# Type your code below


# What happened to the values of the items with sizes X-Small and X-Large?
# Answer: 



# 5. Sampling
# i) You'd like to generate 100 random numbers between 0 and 1 by 
# sampling from 0.1 to 3.1 and dividing the number that is sampled 
# with pi (𝛑). Store the values in vector s.
# (Hint: divide by pi after the sample() function)
# Type your code below


# How many numbers in s are bigger than 0.5?
# Type your code below


# Answer:


# iii) Resample the data using the same function for s, but this time 
# assign unequal probabilities to its elements using this probability 
# vector: c(0.1,0.1,0.1,0.7)
# Type your code below


# iv) How many numbers in s are bigger than 0.5 now? Why did this happen?
# Type your code below


# Answer (how many):
# Answer (why):
