###lec07###
cond <- mtcars$hp > 200
mtcars$power_class <- ifelse(cond, "high", "medium")
cond <- mtcars$hp < 100
mtcars$power_class <- ifelse(cond, "low", mtcars$power_class)
mtcars
###lab07.R_sieun###                             
# 1. Data frames
# i) Load one of these datasets from the preloaded datasets in R
# iris  swiss  airquality  esoph  longley  quakes theoph
head(swiss)
str(swiss)
?swiss
View(swiss)

# ii) Choose any column from your dataset. 
#     Replacing df with the name of your dataset and col with the column name, what does the command table(df$col) return?
table(swiss$Fertility)
#  Answer: data vector of chosen column

# iii) Return rows 2 to 7 and columns 1 and 3
swiss[2:7, 1:3]
# iv) Choose any numeric column in your dataset. Calculate the minimum min(), maximum max(), mean mean() and standard deviation sd() of that column. 
#     Compare the values with those given by running summary(df$col)
min(swiss$Catholic)
max(swiss$Catholic)
sd(swiss$Catholic)
summary(swiss$Catholic)
# Answer: the result of summary shows min, 1st Qu, median, mean, 3rd qu, max with 3 digits (min, max, sd has shown in 2 digits.)

# v) After examining your data by using str() and View(), create a subset of your data frame called test by constraining 
#    at least 2 columns of your choice with logical operations. Use the subset() function to slice your data
test <- subset(swiss, Infant.Mortality < 20 & Education > 10)

# vi) Use with() to return the product or division of the one numeric column with another numeric column in your dataset. 
#     Store this in a new column with- in your dataset with a suitable name
swiss$Agr_Edu <- with(swiss, Agriculture/Education)
View(swiss)
# vii) Select any numerical column again, this time have a look at its summary statistics summary(df$col). 
#      The 1st Quartile means 25% of the dataset have this value or less for col, the Median splits the data to 2 equal parts 
#      and the 3rd Quartile means 75% of the dataset have this value or less for that col- umn. 
#      You want to create a new column that can have 3 class values, either “low”, “medium”,”high” or “small”, “average”, “large”, 
#      or something similar based on the column name. You may want to select a value between 1st Quartile and Median for the threshold 
#      for ”low”/“light” and a value between Median and 3rd Quartile for ”high”/“large”. Use ifelse to check with conditions 
#      that you have created based on the threshold values and assign the correct class values to the new column based on your test condition. Give the column suitable name.
summary(swiss$Catholic)
cond <- swiss$Catholic > (5.195+15.140)/2
swiss$power_Catho <- ifelse(cond, "high", "medium")
cond <- swiss$Catholic < (15.140+93.125)/2
swiss$power_Catho <- ifelse(cond, "low", swiss$power_Catho)

summary(swiss)
