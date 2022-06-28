# vector is 1 column and n row wise 
vec <- 1:10
vec
NROW(vec)
NCOL(vec)
nrow(vec)
ncol(vec)

# 1D array is n column and 1 row or 1 column or n row
# default row wise opposite to vector

arr <- array(1:10)
arr
NROW(arr)
NCOL(arr)
nrow(arr)
ncol(arr)

arr1 <- array(1:10,c(1,10))
arr2 <- array(1:10,c(10,1))
arr1
NROW(arr1)
NCOL(arr1)
nrow(arr1)
ncol(arr1)

arr2
NROW(arr2)
NCOL(arr2)
nrow(arr2)
ncol(arr2)

