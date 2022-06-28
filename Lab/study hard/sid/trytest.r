# Ques.1)
vec1 <- seq.int(0, 1, 0.25)
vec1


# Ques.2)
n <- 1:20
n * (n + 1) / 2 
names(n) <- letters[1:20] 
n
n[c("a","e","i","o","u")] 


# Ques.3)
vec2 <- c(10:0,1:10) 
vec2
d1 <- diag(vec2)
d1


# Ques.4)
d2 <- diag(1, 20, 21) 
d2 <- rbind(0, d2)  
d2
d3 <- diag(1, 21, 20) 
d3 <- cbind(0, d3) 
d3
d4 <- d1 + d2 + d3 
d4 
eigen(d4) 


# Ques.5)
l1 <- list(alpha = 1, list(beta = 2, gamma = 3, delta = 4), eta = NULL)
l1
length(l1)


# Ques.6)
l2 <- list(c(0,1,4,9), 16, 25, 36, 49, 50:59, 64, 70:79, 81, 90:99)
names(l2) <- c("0:9","10:19","20:29","30:39","40:49","50:59","60:69","70:79","80:89","90:99")
l2 # 6th, 8th, 10th element have no square no.s, thus whole range would be printed


# Ques.7)
iris
data1 <- data.frame((iris[sapply(iris, is.numeric)])) 
data1
colMeans(data1) 


# Ques.8)
beaver1$id <- 1 
beaver1
beaver2$id <- 2 
beaver2
data2 <- rbind(beaver1,beaver2) 
data2
subset(data2, activ == 1)