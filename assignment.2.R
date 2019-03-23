
##class 2 exercises matrixes and lists

### Like every reasonable person you like dogs. You're also interested in the breeds of dogs people have and
# bring to your local dog park. You spent the entire day at the dog park and you took note of how many dogs
# or different breeds arrive. And you also record how many dogs of each breed tried to fight another dog

## list of observed dogs
### There were four chihuahuas, or these all four chihuahuas started a fight
## there were 57 pugs, only 10 got into a fight
## there were 6 border collies, 0 got into a fight because they were busy herding children mistaken for sheep
## there were 8 labradors, 2 got into a fight
## there was 1 samoyed, he got into a fight.

###using what you know about matrices in R create a labelled matrix to represent these data
##It should look like:

####             Fighter | Non-fighter
#Chihuahua    |_____4____|____0_____|
# Pugs        |____10____|___47_____|
#Collies      |____0_____|___6______|
#Samoyed      |___1______|___0______|








### after inputting these data into the matrix you relaise that 2 of the chihuahuas you recorded
# as fighting chihuahuas were actual large white rats. So there were only 2 fighting chihuahuas
##you are a very lazy programmer and do not want to rewrite the above code you wrote.
##Using the correct indexing e.g. Matrix[row, column] you can assign a new value to that position in the matrix
# in the same way you would assign a value to any other variable



x<-list(fighter= c("Samoyed"= TRUE, "collie"= FALSE))




###LISTS
# Your interest in dogs escalates. Because you have nothing better to do so you bring the a weighing scale
# to the dog park. Maybe smaller dogs fight more because they have small-man syndrome
# Now that you know how to make lists, you believe you've found a near perfect way to store your data
##in this list you want to add the following piece of information
## a variable named dog breed, that records the four different breeds
# a variable for each breed that records a vecotr of the weight of the dogs
# A variable name that records which dog park you did your field work in
# A logical str variable that simply stats true or false whether any dog of that breed fought
# To do this, you can follow this structure..within the list, we can make a variable named
# fighter, then within the vector we can assign "collie" = FALSE etc

##The weights for each dog in kilos are
##chichuachua_weight = 2.3, 1.3
## pugs_weight =  coincidentally all 57 pugs weighed 5.4kg (use the rep function so you do not have to type 5.4 fifty seven times)
## collies_weight = 18, 22, 25, 28, 20, 21.4
## samoyed_weight = 17.5

##the weights should be entered as unique variables in the lists per breed. e.g. collie_weight = c(18,22,25,28,20,21.4)




##you also know how to index lists using $ 
##using $ run the mean function to calculate the average weight of each breed.


## Using $ indexing to call the logical variable fight...so we can se which breeds fought and which didn't



