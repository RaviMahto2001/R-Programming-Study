#Using bind
# work with array and matrix

arr1 <- array(c(1:12),c(3,4))
arr1

rbind(0,arr1)
rbind(0,arr1,0)
rbind(arr1,0)

cbind(0,arr1)
cbind(0,arr1,0)
cbind(arr1,0)

rbind(1:5,arr1)
rbind(1:5,arr1,1:5)
rbind(arr1,1:5)

cbind(1:5,arr1)
cbind(1:5,arr1,1:5)
cbind(arr1,1:5)
