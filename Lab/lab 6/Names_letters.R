# Letters Sequences

letters[c(1:26)]
LETTERS[c(1:26)]

# dimnames made easy

# these names are variables that refer to elements of array
#we can assign names and access names using names()
arr1 <- array(1:10,c(1,10))
arr1

names(arr1)
names(arr1) <- c("one","two","three","four","five")
names(arr1)


#for 2D array
arr2 <- array(1:6,c(2,3))
arr2
names(arr2) <- c("oneone","twoone","onetwo","twotwo","onethree","twothree")
names(arr2)