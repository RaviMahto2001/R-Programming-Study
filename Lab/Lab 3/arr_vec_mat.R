vec <- c(1:10)
vec

arr1d1 <- array(1:12,c(12))
arr1d1

arr1d2 <- array(1:4,c(4),
                dimnames = list(c("x1","x2","x3","x4")))
arr1d2

arr1d3 <- array(seq.int(2,8,2),c(4),
                dimnames = list(c("x1","x2","x3","x4")))
arr1d3

arr2d1 <- array(1:12,dim = c(3,4))
arr2d1

arr2d2 <- array(1:12,dim = c(3,4),
              dimnames = list(c("r1","r2","r3"),c("c1","c2","c3","c4")))
arr2d2

arr3d1 <- array(1:24,dim=c(2,4,3))
arr3d1

arr3d2 <- array(1:24,dim=c(2,4,3),
                dimnames = list(c("x1","x2"),c("y1","y2","y3","y4"),
                                c("z1","z2","z3")))
arr3d2

vec24 <- seq.int(1,24,2)
arr3d3 <- array(vec24,dim=c(2,4,3),
                dimnames = list(c("x1","x2"),c("y1","y2","y3","y4"),
                                c("z1","z2","z3")))
arr3d3

#matrix
m1 <- matrix(1:12,nrow = 3,ncol = 4)
m1

m2 <- matrix(1:12,nrow = 3,ncol = 4,byrow = TRUE)
m2

m3 <- matrix(1:12,nrow = 3,ncol = 4,byrow = TRUE,dimnames = 
               list(c("r1","r2","r3"),c("c1","c2","c3","c4")))
m3




#checking for classes 
vec1 <- c(1:6)
vec1
class(vec1)

arr1 <- array(1:6,dim = c(6))
arr1
class(arr1)


a1 <- array(1:12,dim = c(3,4))
a1

m1 <- matrix(1:12,nrow = 3,ncol = 4)
m1

v1 <- 1:12
v1

class(m1)
class(a1)
class(v1)

dim(a1)
dim(v1)
dim(m1)

nrow(v1)
nrow(a1)
nrow(m1)
ncol(v1)
ncol(a1)
ncol(m1)

NROW(v1)
NROW(a1)
NROW(m1)

NCOL(v1)
NCOL(a1)
NCOL(m1)


arr1 <- array(1:24,dim = c(4,6))
arr1

dim(arr1) <- c(6,4)
arr1
dim(arr1) <- c(12,2)
arr1

mt1 <- matrix(1:24,nrow = 4,ncol = 6)
mt1

dim(mt1) <- c(6,4)
mt1
dim(mt1) <- c(12,2)
mt1


dimnames(arr2d2)
dimnames(arr3d3)
dimnames(m3)

axy1 <- array(1:12,dim = c(3,4))
axy1
nm1 <- dimnames(arr2d2)
dimnames(axy1) <- nm1
axy1

rownames(axy1)
colnames(axy1)
