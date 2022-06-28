c(12, 13, TRUE, FALSE)
c(22, "Sid", TRUE)
vec1 <- c(1:10)
vec2 <- c(-1,3,-5,6,129)
vec3 <- c(2, -7, 10, 6.5, 1.7, -2.2)
vec1
vec2
vec3
NROW(vec1)
nrow(vec1)
ncol(vec1)
NCOL(vec1)
integer(5)
vector("integer", 5)
logical(5)
complex(5)
a <- logical(5)
a
class(a)
character(6)
a[3] <- TRUE
a
is.logical(a)
cv <- complex(5)
is.logical(cv)
is.complex(cv)
is.complex(a)
as.numeric(cv)
as.logical(cv)
as.character(cv)
as.logical("true")
as.logical("TRUE")
as.logical("trues")
as.complex(a)
c("One"=2.0, TRUE,"Two"=5, "Three"=1.7)
c(vec1,vec2,vec3)
arr
c(vec1,vec2,vec3,arr)
2.1:2.9
f <- c("s", "i", "d")
for (i in seq_along(f)) {
  print(i)
  
}
help("seq")

seq(1,30,3)
letters
letters(1:4)
letters[4]
letters[1:4]
LETTERS
LETTERS[7]
x <- 10:1
y <- -c(-10:10)
y
x <- -c(1071:1075)
x
z <- -c(1071:1075,1074:1071)
z
(10:20)*2
10:(20*2)
10:20*2
1+1:10/10
2^(0:5)
2^0:5
0:5^2
(1:6)*5
3%%4
6&&2
6%%2
0:15%%4
(1:8)/(5:12)
1:8
5:12
(1:8)/(1:4)
(1:2)*(1:11)
seq(20,80,20)
seq.int(20,80,20)
seq(-10,5,0.5)
seq.int(-10,5,0.5)
x
rep(1:3,each=2)
x <- rep(1:10,times=10)
x1 <- array(x, c(10,10))
x1
x2 <- matrix(x, 10, 10)
x2
identical(x1,x2)
assign("x", c(1:100))
help("assign")
x
assign("x", rep(1:10, times=10))
x
m <- matrix(c(1:12), nrow=3, ncol=4)
m
M1 <- matrix(13:24, 3, 4)
M1
M2 <- matrix(1:12,4,3)
M2
cbind(m,M1)
cbind(M1,M2)
rbind(m,M1)
M3 <- matrix(11:16,3,2)
M3
rbind(m,M1)
M4 <- array(21:28,c(2,4))
M4
rbind(m,M4)
-diag(1:5)
diag(c(-3:0,-3:-1))
diag(1:3,5)
diag(1:3,10)
help("diag")
d1 <- diag(1:2)
d1
dimnames(d1) <- list(c("R1", "R2"), c("C1","C2"))
d1
