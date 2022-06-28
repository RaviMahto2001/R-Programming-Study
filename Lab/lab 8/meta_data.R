#getting some about data

v1 <- 1:10
v1

mean(v1)
sd(v1)
str(v1)

summary(v1)

snd <- rnorm(10)
nd <- rnorm(10,5,2)
ud <- runif(10,1,100)

snd
summary(snd)
summary(nd)
summary(ud)


help("summary")

x1 <- c(12,15,10,5,7,8,2,3,13,34,23,32)
x1
sort(x1)
summary(x1)
