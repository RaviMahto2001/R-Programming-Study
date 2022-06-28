#Q1
vec1 <- seq(0,1,0.25)
vec1

#Q2
n <- 1:20
vec2 <- n*(n+1)/2
vec2

names(vec2) <- letters[1:20]
vec2

vec2[c("a","e","i","o","u")]

#Q3
vec3 <- c(10:1,0:10)
dvec3 <- diag(vec3)
dvec3

#Q4
d1 <- diag(1,20,21)
d1 <- rbind(0,d1)
d1

d2 <- diag(1,21,20)
d2 <- cbind(0,d2)
d2

ans4 <- d1 + dvec3 + d2
ans4

eigen(ans4)

#Q5
list1 <- list(alpha = 1, list(beta = 2, gamma = 3, delta = 4), eta = NULL)
length(list1)

#Q6
l1 <- list(c(0,1,4,9),16,25,36,49,NULL,64,NULL,81,NULL)
l1

#Q7
iris
dataset1 <- data.frame(iris[1:4])
dataset1

colMeans(dataset1)

#Q8
beaver1
beaver2

beaver1 <- cbind(beaver1,"id" = 1)
beaver2 <- cbind(beaver2,"id" = 2)

b1 <- rbind(beaver1,beaver2)
b1
subset(b1,activ == 1)
