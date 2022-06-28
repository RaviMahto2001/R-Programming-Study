# they are different from array and vector and similar to lists and matrix
help("data.frame")

d1 <- data.frame("x"=c(1:10),"y"=seq(1.0,5.5,0.5),"z"=letters[1:10])
d1

colnames(d1) <- c(LETTERS[1:3])

names(d1) <- c("integer","numeric","character")
d1

rownames(d1)
# we can also give this

d1[1]
d1[3]

class(d1)
class(d1[1])
class(d1[[1]])

str(d1)

# Sample inbuilt data frame
iris
#contains info about flowers
str(iris)

d1
d2 <- data.frame(letters[1:5],rnorm(5),runif(5)>0.5)
d2

colnames(d2) <- c("x","y","z")

names(d2)
rownames(d2) <- month.abb[1:5]
d2

rownames(d2)
colnames(d2)
dimnames(d2)

nrow(d2)
ncol(d2)

dim(d2)
length(d2)

names(d2)

d3 <- data.frame("z"=rlnorm(5),"y"=sample(5),"x"=letters[3:7])
d3

d2[c(2,3),]
d2[2]
d2[2,]

d2[2:4,]
d2[2:4,-3]
d2[c(TRUE,FALSE)]
d2[c(TRUE,FALSE),c("x","y")]

d2$x[1:3]
d2$y
d2[[3]][1:4]

subset(d2,y>0)
subset(d2,y>0 & z==TRUE)
subset(d2,y<0 | z==FALSE)
subset(d2,y>8)

t(d2)
d1
d2

cbind(d1,d2)
rbind(d1,d2)

d3 <- data.frame(11:20,seq(6,10.5,0.5),month.name[1:10])
d3

names(d3) <- c(letters[1:3])
names(d1) <- c(letters[1:3])

rbind(d1,d3)
cbind(d1,d3)


merge(d1,d3,by="a")

colSums(d1[1])
colMeans(d1[1])

colSums(d1[1:2])
colMeans(d1[1:2])

