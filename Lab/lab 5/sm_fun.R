m1 <- matrix(1:12,3,4)
m2 <- matrix(-1:-12,3,4)
m3 <- matrix(10:10,5,2)
m4 <- matrix(12:23,4,3)
m5 <- matrix(12:23,2,4)
m6 <- matrix(12:50,6,4)

rbind(m1,m2)
rbind(m2,m4)
rbind(m3,m4)
rbind(m5,m6)

cbind(m1,m2)
cbind(m2,m4)
cbind(m3,m4)
cbind(m5,m6)

help("diag")
diag(1:6)
diag(c(3:0,1:3))
solve(diag(rep(1,3)))
diag(1:12,4,6)
diag(1:4,12)

