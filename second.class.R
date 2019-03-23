

memorybias<-matrix(ncol=2, nrow = 5, data=c(9,15,9,17,16,15,9,15,7,8))

View(memorybias)

rownames(memorybias)<-c("LowE2", "High E2", "High E2 + P","P 15mins", "P 4hours")
colnames(memorybias)<-c("Spatial", "Response")

chisq.test(memorybias)

install.packages("rcompanion") # this is our first introduction to install packages that dont come automatically with R
# once you know the name of a package you use the command install.packages("rcompanion") to download the package
library(rcompanion) # the library function tells R that you want it to load the package we just downloaded


pairwiseNominalIndependence(memorybias, correct = "none", chisq = TRUE) 
## after the discussion of chi square in the last meeting I read a few sources about how best to 
#implement them it as a test. Seems like the omnibus chi square is pretty much
# an estimate of whether the frequency of responses in one variable (with 2 or more levels) is associated
# with those of another variable (with 2 or more levels). Or to state it inversely, are the variables
# independent of each other. That omnibus test of assocaition is run with the chisq.test function
##the following line of code "pairwisenominalindependence" can compared the independence across groups,
## but not within groups.
# Because we are often interested about what happens within the group (spatial vs response in LowE2 group)
# I've thought about how this might be best compared...
# Right now, all I can really think of is a conditional Bayes Factor, that estimates the likelihood
# of an animal using a spatial or response strategy given their hormonal condition.
# this is something we can cover in more detail over the coming weeks
# outside of that, I'm all out of ideas...





###lists


x<-list(name=c("Eamonn", "Wayne", "Smita"), cities=c("Montreal", "Stephenville", "Montreal"), university=c(rep("Concordia", times=3)))

x$cities<-factor(x$cities)



x$name[1]

