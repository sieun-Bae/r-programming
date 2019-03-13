######lab2######

#simple calculations of vectors
a <- c(1:5)
b <- c(1:5)

print(a+b)
print(a-b)
print(a*b)
print(a/b)

append(a,b,2)

#natural indexes
book.price <- c(25.99, 18.49, 11.50, 32.00, 45.90)
print(book.price>20}

book.price[c(FALSE,FALSE,TRUE,FALSE,TRUE)]  ###what does it mean?

book.price>20 ##print all the logical value that it contains
book.price[book.price<20] ##print the only TRUE value

#NA value
##status of vector goes in [] > the result will be the natural value, not logical
x <- c(5, 3, NA, -1, 8, NA)
x[is.na(x)]
is.na(x)

x[!is.na(x)]
x[x%%2 == 0] 

##x[3] is referring to index, x[x != 3] is referring to value

##without
x <- c(5, 3, NA, -1, 8, NA)
x[!is.na(x)]
x[-1]

##matrix
print(cbind(1:5, 6:10, 11:15))
matrix(c(1:12), ncol=3, nrow=4) ##set matrix as ncol, nrow option
matrix(c(1:12), 4) ##set matrix without any option name(default==bycolumn)
matrix(c(1:12), 2)
matrix(c(1:12), byrow=TRUE) ## set matrix with byrow option, and it assigns values row by row
matrix(c(1:12), ncol=3)

#matrix_exercises
my_matrix <- matrix(1:20, 5)
my_matrix
my_matrix[1:2,]
my_matrix[,3] ##print as a vector
my_matrix[]
nrow(my_matrix)

sqrt(my_matrix[1,])

summary(my_matrix)
str(my_matrix)
##data frame 
##  setting name option is the name of the column
##  the vector goes to columns
##  the number of row and the column must be matched 
your_matrix <- data.frame("age"= c(19,23), "sex"= c("M", "F"))
your_matrix
summary(your_matrix)
str(your_matrix)

cbind(1:5, 6:10)

View(your_matrix)