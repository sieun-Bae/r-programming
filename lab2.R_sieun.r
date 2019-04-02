
##########190307##########

#Passing correct variable type into functions

mean(c(1,10))
#mean(c("1","10"))

#cannot calculate string

#Assignment and changing variable values
a <- 5
a / 2
a

a<- a-2
a

#valid variable names
#2 cents <- 0.02
#2cents <- 0.02

cents <- 0.02
cents

#help! <-"Please help!"
help <-"Please help!"
help

##############################################

#Scalars practical question
anna_average <- 823 / 5
bea_average <- 1092 / 8

#Who has more friends on average per year?
if(anna_average > bea_average) {
  print("Anna has more friends on average per year!")
  print(anna_average/bea_average)
} else {
  print("Beatrix has more friends on average per year!")
  print(bea_average/anna_average)
}

##############################################

#vectors

y <- c(1:100)
print(y)

y2 <- seq(1,20, length.out = 5)
y2

#my.vec <- c("a", 1, "b", 2, "c", 3)
my.vec <- c(1, "a")
my.vec


mult3 <- seq(3,30,3)
mult3

y3 <- c(mult3 %% 2 == 0)
y3

sum(y3)

