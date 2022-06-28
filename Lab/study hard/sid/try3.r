vec1 <- c(1,8,9,6)
vec2 <- c(7,9,3,5)
vec1*vec2
vec3 <- c(11, 36, 54, 85)
vec4 <- c(3, 23, 25, 20)
vec3/vec4
a = length(vec1)
b = length(vec2)
cat("Length of vector1 is : ", a, "\nLength of vector2 is : ", b)
color <- c("red","black","blue")
for (x in color) {
  print(x)
}
1.2:7.2
vec5 <- c(1, 2:8, c(2,6,7), 8, 10)
vector("integer",6)
vector("numeric",8)
vector("complex",5)
vector("logical",5)
vector("character",5)
complex(10)
logical(8)
seq.int(1, 7, 2)
seq.int(0.1, 2.8, 0.3)
color <- c("red","black","blue")
for (x in seq_along(color)) {
  print(x)
}
len <- length(color)
length(color) <- 5
print(color)
length(color) <- 2
print(color)

color <- c(One = "red", Two = "black", "blue")
print(color)

print(color[2:3])

print(color[c(1,3)])

print(color[c(TRUE, FALSE, TRUE)])

print(color[c(-2)])

print(color[c(2.3)])

1:5 + 1
1:5 *3
3* 1:5
1:3 + 1:13

rep(color,3)
print(color)

rep(color, each=3)
vec1 <- 1:4
rep(vec1, times = 1:4)
rep(vec1, length.out = 7)
rep.int(vec1,3.2)
rep_len(vec1,15)
