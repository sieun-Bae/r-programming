###lab09###
# install.packages("MASS"), library(MASS)


# Data frames
# 1) Load one of these datasets from the preloaded datasets in R
data(esoph)

# 2) Choose a column with factored data. How many different levels are there 
#    and how are they distributed (how many observations for each level)?
summary(esoph$agegp) #the number of observations for each level
str(esoph$agegp) #the number of levels
#   Answer: 6 levels, distribution: 15,15,16,16,15,11

# 3) Create a new data frame df which is a subset of your data frame with no missing values, 
#    i.e. remove all ‘NA’ values.
df <- na.omit(esoph)

# 4) Using df, find the column with the highest variance. 
#    Iterate over all non-factor columns, and keeping track of the largest variance so far 
#    and its index (Hint: use for and if-statement-else constructs)
highest_var <- 0.0
var_index <- -1

for (i in 1:ncol(df))
{
  if(!is.factor(df[[i]])){
    if(var(df[[i]])>highest_var){
      highest_var <- var(df[[i]])
      var_index <- i
    }
  }
}
names(df)[var_index]
paste("highest variance:", highest_var)
paste("variance index:", var_index)
#   Answer: column name: ncontrols, variance: 161.867163009404

 
# 5) Taking the column with the highest variance, divide it into three class levels. 
#    Determine the suitable cutoff values for “low”, “average”, and “high” 
#    or “small”, “medium” and “large” by looking at its summary(). 
#    Create a new column in df with a suitable name and assign the values using the ifelse construct
summary(df$ncontrols)
str(df$ncontrols)

df$levels <- ifelse(df$ncontrols > 13, "high", "average")
df$levels <- ifelse(df$ncontrols < 5, "low",df$levels)
df
# 6) Convert this new column into an ordered factor with the three levels that you have created in (5)

df$levels <- factor(df$levels, levels = c("low", "average", "high"), ordered=TRUE)

summary(df$levels)
