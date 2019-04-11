###### quiz01.r  ######
### name: Bae Sieun ###
### ID: xxxxxxxxxx  ###

data(OJ)
summary(OJ)
#1), 2)
str(OJ)

#3)
str(OJ$Purchase)
summary(OJ$Purchase)
table(OJ$Purchase)

#4)
df <- subset(OJ, StoreID ==7 & LoyalCH > 0.6, 1:10)

#5)
with(subset(df, Purchase == 'CH'), mean(LoyalCH))

#6)
df <- df[order(df$WeekofPurchase),]

#7)
df <- na.omit(df)
highest_sd <- 0.0
var_index <- -1
for (i in 4:7) 
{
  if (!is.factor(df[[i]])){
    if(sd(df[[i]]) > highest_sd){
      highest_sd <- sd(df[[i]])
      var_index <- i
    }
  }
}
highest_sd # print the highest variance
var_index # print the index with the highest variance
names(df)[var_index] # print column name with highest variance

#8)
summary(OJ$DiscMM)

cond1 <- df$DiscMM > 0.24
cond2 <- df$DiscMM <= 0

OJ$DiscLevel <- ifelse(OJ$DiscMM > mean(summary(OJ$DiscMM)[3] + summary(OJ$DiscMM)[5]), "high", "average")
OJ$DiscLevel <- ifelse(OJ$DiscMM < mean(summary(OJ$DiscMM)[2] + summary(OJ$DiscMM)[3]), "low", OJ$DiscLevel)

summary(OJ$DiscLevel)
str(OJ$DiscLevel)

#9)
OJ$DiscLevel <- factor(OJ$DiscLevel, levels=c("low", "average", "high"), ordered = TRUE)
str(OJ$DiscLevel)

