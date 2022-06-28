seq.int(1,10)
arr<-(1:10)^2
arr

(1:10)-1
n <- 1:20
n * (n+1) / 2
n
vec1 <- n * (n+1) / 2
vec1
vec1[5]
letters[1:20]
letters[c(1,8,15)]
names(vec1)
vec2 <- 1:3
names(vec2) <- c("One", "Two", "Three")
vec2
names(vec2)
names(vec1) <- c(letters[1:20])
vec1
vec2
vec2[2]
vec2["Two"]
vec1[c("a","e","i","o","u")]

diag(1,5,5)
d5 <- diag(5,5,4)

c(10:0, 1:10)
d1<-diag(c(10:0, 1:10),21)
d1
cbind(0,d5,1:5)
length(d5)
d1
d2 <- diag(1,20,21)
d2
d2<-rbind(0,d2)
d2
d3 <- d1+d2
d3
d4 <- cbind(0, diag(1,21,20))
d5 <- d3+d4
d5
eigen(d5)
