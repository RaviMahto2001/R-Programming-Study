
m1 <- matrix(1:12,nrow = 3,ncol = 4,byrow = TRUE,dimnames = 
               list(c("r1","r2","r3"),c("c1","c2","c3","c4")))
m1

m2 <- matrix(1:12,nrow = 3,ncol = 4,byrow = FALSE,dimnames = 
               list(c("r1","r2","r3"),c("c1","c2","c3","c4")))
m2

m3 <- m1+m2
m3

m4 <- m1*m2
m4

m5 <- m1/m2
m5

m6 <- m1^2
m6

dim(m2) <- c(4,3)
m1
m2

dim(m1)
dim(m2)
#actual matrix multiplication
m_mul_act <- m1%*%m2
m_mul_act[1,2] <- 10
inm_mul_act <- solve(m_mul_act)
inm_mul_act%*%m_mul_act

#inverse
m1 <- matrix(1:4,nrow = 2,ncol = 2)
m1
solve(m1)


hello <- matrix(c(2,4,6,3),nrow = 2,ncol = 2)
hello
ihello <- solve(hello)
ihello
ihello %*% hello


