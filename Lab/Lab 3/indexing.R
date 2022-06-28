a1 <- array(1:12,dim = c(3,4),
                dimnames = list(c("r1","r2","r3"),c("c1","c2","c3","c4")))
a1

m1 <- matrix(1:12,nrow = 3,ncol = 4,byrow = TRUE,dimnames = 
               list(c("r1","r2","r3"),c("c1","c2","c3","c4")))
m1

a1[1,2]
m1[1,2]

a1[2,]
a1[,2]
m1[2,]
m1[,2]

a1[c(1,3),]
m1[,c(1,3)]
