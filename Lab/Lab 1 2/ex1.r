vec1 <- c(1:6);
vec2 <- c(TRUE,FALSE,TRUE,FALSE,TRUE,FALSE);
vec3 <- c('a','b','c','d','e','f');
print("This is an integer vector :-")
vec1
print("This is a logical vector :-")
vec2
print("This is a character vector :-")
vec3
cat("",vec1)
cat(vec1,vec2,vec3)

vec1 <- c(1,2,3,4,5,6);
vec2 <- c(6,7,8);
l1 <- length(vec1);
l2 <- length(vec2);
print(vec1)
print(vec2)
cat("length of vec1 is",l1,"and length of vec2 is",l2)