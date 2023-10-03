### if statement syntax
## if
if (test_expression) {
  #statement to execute if condition is true
}


## if else
if (test_expression) {
  # statement to execute if condition is true
} else {
  # statement to execute if condition is not true
}

## if elseif else
if (test_expression1) {
  # statement to execute if test_expression1 is true
} else if (test_expression2) {
  # statement to execute if
    # test_expression1 is not true and
    # test_expression2 is true
} else {
  # statement to execute in the remaining cases
}

#-------------------------------#
## if example: which number is greater?
a<- 57
b<- 40


## if example: is a number multiple of 173?
num1<- 4839


## if example: are you old enough to drink?
yourAge<- 20


#Let's make it as a function called "drinking"



# upgrade version called "drinking2" : age must be numeric.
is.numeric(2023) 
is.numeric("100")


drinking2 <- function(){
  # if age is in number, age>=19 or not?
  # if age is not in number, ask again
}
#-------------------------------#
#-------------------------------#
#-------------------------------#
###Loops
### while loop syntax
while (condition) 
{
  # one or more statements to execute 
}


### For loop syntax
for (var in sequence) {
  # one or more statements to execute   
}

#-------------------------------#
# while loop  example
i = 1
while (i<10) {
  print(i) 
  i = i+1
}


## for loop example : iterate through a vector
myColors <- c("red","green","blue","yellow")
# what colors are in "myColors"?
for (x in myColors) {
  print(x)
}


# print more than one value together
print(1,2,3)
print(paste(1,2,3))
print(paste("one",2,"three"))


# what's nth color?




# guess a number game. 
guessNum<- function(){
  correctNum<- sample(1:50,1)
  num<- readline(prompt = "guess number ")
  while (num!=correctNum){
    if (num > correctNum){
      print("Your number is too large. Try again")
      print(correctNum)
    } else { 
      print("Your number is too small Try again")
    }
    num<- readline(prompt = "guess number ")
  }
  print("Correct!")
}
