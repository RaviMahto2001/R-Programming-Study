vec <- c(1:12)
vec

arr <- array(1:12, c(4,3), 
             list(c("R1", "R2", "R3", "R4"), c("C1", "C2", "C3")))
arr

seq.int(2,24,2)
2:24
arr2 <- array(seq.int(2,24,2), c(4,3))
arr2

class(arr2)
arr3d <- array(1:24, c(4,3,2), 
               list(c("R1", "R2", "R3", "R4"), c("C1", "C2", "C3"), c("Arr1", "Arr2")))
arr3d

vec2 <- 1:24
arr3d <- array(vec2, c(4,3,2), 
               list(c("R1", "R2", "R3", "R4"), c("C1", "C2", "C3"), c("Arr1", "Arr2")))
arr3d
arr3d2 <- array(c(1,-2,3,-4,5,-6,7,-8), c(2,2,2), 
               list(c("R1", "R2"), c("C1", "C2"), c("Arr1", "Arr2")))
arr3d2

m1 <- matrix(1:24, 3, 4, FALSE , 
             list(c("R1", "R2", "R3"), c("C1", "C2", "C3", "C4")))
m1
class(m1)
m2 <- matrix(1:12, 4, 3, FALSE , 
             list(c("R1", "R2", "R3", "R4"), c("C1", "C2", "C3")))
m2
identical(arr,m2)
dim(arr)
dim(m2)
nrow(arr)
NROW(arr)
NROW(vec)
nrow(vec)
NCOL(vec)

arr3 <- arr2
arr3
dim(arr3)
dim(arr3) <- c(6,2)
arr3
dimnames(arr1)
dimnames(arr1) <- list(c("R1", "R2", "R3", "R4"), c("C1", "C2", "C3"))
dimnames(arr1)

identical(arr, m2)

row.names(m2)
row.names(arr)

m3 <- matrix(arr, 4, 3)
m3
n1 <- dimnames(m2)
n1

dimnames(m3) <- n1
m3

arr2[1,3]
arr2[1,]
arr2[c(1,3),]
arr2[,c(1,3)]
m2
m3
identical(m2,m3)

m4 <- m2+m3
m4

m5 <- m4-m3
m5
m6 <- m2*m3
m6
m7 <- m2/m3
m7

arr4 <- arr^2
arr4

m8 <- m1%*%m2
m8

solve(m8)
m9 <- matrix(1:4, 2, 2)
m9
solve(m9)
m10<- matrix(1:9,3,3)
m10
m2
t(m2)
arr2*2
arr2*arr4
arr2+arr4
arr-arr4
arr/arr2
t(arr)%*%arr2
