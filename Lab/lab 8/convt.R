#conversion of one type to other

#vector to list
v1 <- vector("integer",10)
v1

as.list(v1)
#it is creating each element of the vector as an element of the list

#matrix to list
m1 <- matrix(1:12,nrow=2,6)
m1

as.list(m1)
#it is creating each element of the matrix as an element of the list

#array to list
a1 <- array(1:12,dim = c(2,6))
a1

as.list(a1)
#it is creating each element of the matrix as an element of the list

# applying it on list
l1 <- list(c(1:10),seq(1,5,0.5),letters[1:5])
l1

l2 <- list(c(1:10),c(1:10)^2)
l2

l3 <- list(c(1:10),(1:10)>=(10:1))
l3

l4 <- list(c(1:10),seq(0.5,5,0.5))
l4

as.vector(l1)
as.array(l1)
as.matrix(l1)

as.vector(l2)
as.array(l2)
as.matrix(l2)

as.vector(l3)
as.array(l3)
as.matrix(l3)

as.vector(l4)
as.array(l4)
as.matrix(l4)
