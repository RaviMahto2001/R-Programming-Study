
list(5)

complex(5)
integer(5)
character(5)

sn <- c("hello","lelo","pelo","maroco")
length(sn)
nchar(sn)
nchar(sn)[1]

nchar(sn[1])

vec <- c(2,3,3,4,1,0)
mat1 <- matrix(vec,nrow = 3)
mat1
mat2 <- t(mat1)
mat2

#normal multiplication
mat1 * mat2 #error
mat2 * mat1 #error

mat1 * mat1

mat1 %*% mat2
mat2 %*% mat1

mat1
mat2
mat1 %o% mat2

mat2 %o% mat1
