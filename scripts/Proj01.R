# sampling a die roll -------

die <- 1:6
sample(x= die, size=1)

# setting the size to 2 - with replacement will simulate a roll of two dice

sample(x= die, size = 2, replace = TRUE)
dice <- sample(x = die, size = 2, replace = TRUE)
sum(dice)

# create a function to simulate a changing dice roll

roll_sum <- function() {
  die <- 1:6
  dice <- sample(die, size = 2, replace = TRUE)
  sum(dice)
}
roll_sum()

## add arguments to a function
### the bones argument can has a default value: bones = 1:6

roll_sum2 <- function(bones = 1:6) {
  dice <- sample(bones, size = 2, replace = TRUE)
  sum(dice)
}
roll_sum2(bones = 1:4)
roll_sum2(1:10)
roll_sum2()
