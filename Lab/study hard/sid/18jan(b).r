l1 <- list(1:5)
l1
v1 <- 1:5
v1
l2 <- list(1:10, c(1:10)^2, month.abb, array(1:12,c(3,4)),matrix(1:12,3,4,TRUE))
l2
abs(-5)
v2 <- c(-1,-2,-5,-7,0,8)
abs(v2)
names(l1)
l2[1]
length(l2[[1]])
l2
names(l2) <- c("Numbers", "Squares", "Months", "Array", "Matrix")
l2
names(l2)
l1 <- list(l1,l2)
l1
length(l1)
is.atomic(v1)
is.recursive(v1)
is.atomic(l1)
is.atomic(l2)
is.recursive(l1)
is.recursive(l2)
l2[1]
is.recursive(l2[1])
length(l2[[1]])
is.recursive(l2[[1]])
l2[[4]]
dim(v1)
dim(l2[[4]])
dim(l2[[5]])
NROW(l2[[4]])
ncol(l2[[5]])
NROW(v1)
nrow(v1)
nrow(l2)
NROW(l2)
l1l1
l2
l1 <- list(1,2,3)
l1
l3 <- list(1:10, month.name, letters[11:20])
l3
l2
l4 <- list(l1, list(l2,l3))
l4
is.atomic(l1)
is.recursive(l1)
is.atomic(l1[[1]])
is.vector(l1[1])
l2[-2]
l3[c(TRUE,TRUE,FALSE)]
arr3 <- l2[[4]]
arr3
arr3[1,2]
dim(arr3)
dim(l2[[4]])
length(l3)
length(l2[[4]])
l5 <- list(1:5,list(seq.int(1:5)))
length(l5)
l6 <- list(1,2,3,4,5)
length(l6)
as.list(v1)
as.numeric(l6)
l2
l3
as.character(l3[[3]])
iris
help("data.frame")
d1 <- data.frame(x=letters[1:5])
d1
rnorm(10)
rnorm(100,50,2)
as.integer(rnorm(100,50,2))
runif(100,1,20)
as.integer(runif(100,1,20))
v3 <- as.integer(runif(100,1,100))
mean(v3)
sd(v3)
str(v3)
summary(v3)
v4 <- as.integer(runif(12,1,10))
sort(v4)
summary(v4)
NROW(v4)
d1 <- data.frame(x=letters[1:5], y=rnorm(5), )
d1
v5 <- integer(5)
NROW(v5)
NCOL(v5)
v6 <- vector("integer",5)
v6
NROW(v6)
NCOL(v6)
d1 <- data.frame(x=letters[1:5], y=rnorm(5), z=runif(5)>=0.5)
d1
v4
v4>=3
class(d1)
d1
d1[3,2]
dim(d1)
row.names(d1) <- month.abb[1:5]
d1
row.names(d1)
colnames(d1)
dimnames(d1)
nrow(d1)
ncol(d1)
NROW(d1)
NCOL(d1)
length(d1)
names(d1)
d2 <- data.frame(z=rlnorm(5), y=sample(5), x=letters[3:7])
d2
d1[c(2,3),]
d1[2]
d1[c(2,4),]
d1[c(TRUE,FALSE),c("x", "y")]
d1

d1$y
d1[[1]][2:3]
d1[c(2:3),1]
d1[["x"]][2:3]
d1
subset(d1,y>0)
subset(d1,y<0 || z==FALSE)
names(d1)
d1
t(d1)
d2
d4
cbind(d2,d4)
rbind(d1,d4)
d4 <- data.frame(x= letters[1:5], y=sample(5), z=runif(5))
d4
d2
rbind(d2,d4)
merge(d2,d4,by="x")
cbind(d2,d4)
merge(d2,d4,by="x",all=TRUE)
merge(d2,d4, by="x", all=TRUE)
colSums(d2[2])
colSums(d2[1:2])
colMeans(d2[1:2])
iris
str(iris)
max(iris[1])
min(iris[2])
min(iris[c(2:4)])
max.col(iris[2:4])
max.col(iris[2])
