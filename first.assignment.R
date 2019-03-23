## home work assignment
##as practice you can answer the question below. In R if you want to add text that is not part of the 
#code you can add the # at the start of a line of code. The writing will show up as green and
# is ignore by R. It will not send anything with # at the start of the line to the console



## A. Make a vector named x with the values 12, 22, 18, 11, 11, 2, 4
x<-c(12, 22, 18, 11, 11, 2, 4)

## What type of data is the vector x?


## Make a new variable named y and assign it the values 1, 2, 5, 6, 9, 24, 56
y<-c(1, 2, 5, 6, 9, 24, 56)
##write a command to add the vectors x and y and assign it to a new variable called x_plus_y
xy<-sum(x)+sum(y)
## why does R not compute the total sum of the vectors X and Y?


## B. create a new variable named x3 and assign it the value of the third element of the x vector

x3<-x[3]
## remember you will need to use [] to specify which element of the vector you want to call 
## write a command that will multiply the second element of x by the fifth element of y

##ask R to evaluate whether vector x is greater than vector y
x>y

## think about the output R gives in the console...why are the returned value TRUE or FALSE

##C. Calculating means

## remember we calculated mean using the mean function, written as the command mean(x)
mean(x)
meanx<-mean(x)
## R allows us to also assign functions like this to a variable, 
##this would look something like, variable_name<-function(variable_name)


## get the mean of x and the mean of y
mean(x)<mean(y)
## make a new variable called mean_x and assign it the function of calculating the mean value of x

## Is the mean of y greater than x?



##if you were listening during the tutorial you will remember that there is a shortcut to specify
## a consequetive sequence of numbers
## make a vector named hundred, and assign it all the numbers from 1 to 100
hundred<-c(1:100)


#D. characters
## make a character vector with the phrase "R is betteR than SPSS", you can name the vector anything
vect<-c( "R", "is", "betteR", "than", "SPSS")
## make sure that each word is saved its own individual element


# write a command that will multiply the character vector you made by 5
vect*5


## you can't run numeric operations on a character vector...why?


##write a line of code that will print the character vector you made to the console
print(vect)

#E. Logical evaluation
## what is TRUE + TRUE?


## what does TRUE equals to FALSE evaluate to?


## why does it evaluate to you answer above?


## Is FALSE less than TRUE?


## if TRUE == 1, FALSE == 0,  what is NA equal to?







