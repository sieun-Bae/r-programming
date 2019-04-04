####lab06_sieun####
#1. List creation
# i) Create a list myList that contains a bunch of things: a number, a string, a vector and another string 
# (e.g. 12345, “Ada”, c(3,7), “cake”).
myList <- list(12345, "Ada", c(3,7), "cake")

# ii) How would you access the second item of this list, “Ada”?
myList[[2]]

# iii) Create a vector of names that represent your data above 
# (e.g. “Student- ID”, “Name”, “FavNumbers”, “FavFood”) and assign it to your list’s names
names(myList) <- c("Student-ID", "Name", "FavNumbers", "FavFood")

# iv) Access the second item of this list again but this time using indexing by name
myList["Name"]

# 2. List within a list (within a list)
# Consider the following lists
another_song <- list(title = "R again!", duration = 75)
similar_song <- list(title = "R u on time?", duration = 230, similar = another_song)
song <- list(title = "R sometimes", duration = 190, track = 5, similar = similar_song)

# i) State three ways you could index the title of song, “R sometimes”
#code
song [["title"]]
#code
song [[1]]
#code
song$title

# ii) Add a new list element to song called type with the values “jazz” and “blues”
song$type <- c("jazz", "blues")

# iii) Set song’s track to 6
song$track <- 6

# iv) How would you access the duration of another_song from song using indexing by [[ only?
song[[4]][[3]][[2]]

# 3. # Data frames
# Create a data frame myDf that contains 5 rows with the following variables (columns) and values. 
# Remember to add stringsAsFactors = FALSE

id <- 1:5
name <- LETTERS[1:5]
month <- month.name[1:5]
field4 <- sample(15:50, 5)

myDf <- data.frame(id, name, month, field4, stringAsFactors = FALSE)

# i) How many observations does myDf have? 4
# ii) What is all the information related to the third row? 3, C, March, 23
# iii) Change the name of field4 to “age”. 
#       Check that the change is correct by running names() or colnames()
colnames(myDf) [colnames(myDf)=="field4"] <- "age" ##same as names(myDf)["field4"] <- "age"
names(myDf)

#👉 iv) Order the dataset by age and store the result in a new data frame called myDf-byAge
myDf_byAge <- myDf[order(myDf$age),]

# 4. Loading dataset
# Select one of these datasets from the preloaded datasets in R
#   mtcars  iris  swiss  airquality  esoph  longley  quakes
# i) Examine the data by typing str(data), ?data and head(data). 
#    Give a summary of what the data is about, e.g. num. rows, columns and types
str(iris)
?iris 
#This famous (Fisher's or Anderson's) iris data set gives the measurements in centimeters of the variables sepal length and width and petal length and width, respectively, for 50 flowers from each of 3 species of iris. The species are Iris setosa, versicolor, and virginica.
#iris is a data frame with 150 cases (rows) and 5 variables (columns) named Sepal.Length, Sepal.Width, Petal.Length, Petal.Width, and Species.
head(iris)

# ii) Load the dataset into your environment. 
#     Pick a suitable column that should be used to order your data and order your data according to that column.
dataset1 <- head(iris[order(iris$Sepal.Length),])

# iii) Add a new row to your dataset (keeping in mind the number of columns and their data types)
add_ex <- data.frame(Sepal.Length = 4.7, Sepal.Width = 3.3, Petal.Length = 1.5, Petal.Width = 0.3, Species = "setosa")
dataset2 <- rbind(dataset1, add_ex)
dataset2
# iv) Add a new column (variable) to your dataset, call it interesting with values generated from 
#     a random sampling between “y” and “n”. Keep in mind the total number of observations after iii)
interesting <- sample(5:7, 7, replace=TRUE)
dataset2$interesting <- interesting
