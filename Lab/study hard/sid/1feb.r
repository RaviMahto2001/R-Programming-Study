sqrt(49)
hypotenuse <- function(x = 3, y = 4){
  sqrt(x*x + y*y)
}

hypotenuse(3,4)
hypotenuse()

do.call(hypotenuse, list(3,4))
args(hypotenuse)
formals(hypotenuse)
formalArgs(hypotenuse)

# Strings

str1 <- c("This is a string.")
str1
str2 <- c("This is also a string.")
str2
paste(str1, str2)
paste(c("Good", "Bad"), "People")
paste(c("Good", "Bad"), c("People", "Person"))
paste0(c("Good", "Bad"), c("People", "Person"))
paste0(str1, str2)
paste(str1, str2, sep = "$")
toString(1:20)        
1:20
toString(1:20, width = 20)
cat(str1, str2)

strv <- c("I", "am", "Sid", "BSc", "hello", "Hru", "bye")
strv
noquote(strv)
pow <- 1:3
pow
pow_e <- exp(pow)
pow_e

formatC(pow_e)
formatC(pow_e, digits = 3)
formatC(pow_e, width = 10)
formatC(pow_e, format = "e")
formatC(pow_e, format = "e", flag = "+")

cat("HelloWorld")
cat("Hello\tWorld")
cat("Hello\nWorld")
cat("Hello\1World")
cat("Hello\\tWorld")
cat("Hello\"World")
cat("Hello\'World")

toupper("Hello World")
tolower("Hello World")

pi
formatC(pi, 16)

sq <- function(x){
  x*x
}
sqt <- function(x){
  x^(1/2)
}
average <- function(x){
  s <- 0
  for (i in x) {
    s <- s + i
  }
  s/length(x)
}
sq(2)
sqt(25)
vec1
vec2
average(vec2)
vec2

str_v <- c("String 1 is this","String 2 is this","String 3 is this","String 4 is this")
str_v
str
substring(str,2, 5)
substr(str,2,5)
substring(str_v, 1, 9)
substr(str_v,1,9)
help("substring")
substring(str_v, 1:9, 10)
substr(str_v,1:9,10)
str_v
strsplit(str, " ")
strsplit(str_v, " ")


rep(c(1,2),3)
gender <- rep(c("Male", "Female"), 5)
gender
data.frame(Roll_no = 1:20, Gender = gender)
help("sample")
sample(c("Male", "Female"), 20, replace = TRUE)
d1 <- data.frame(Roll_no = 1:20, Gender = sample(c("male", "female"), 20, replace = TRUE))
d1[2]
d1$Gender
class(d1$Gender)

d1
d1$name <- "sid"
d1$Roll_no
d1$Gender <- as.factor(d1$Gender)
class(d1$Gender)
d1$Gender
as.numeric(d1$Gender)
gender <- sample(c("male", "female"), 20, replace = TRUE)
gender
as.numeric(gender)
levels(d1$Gender)
nlevels(d1$Gender)
d2 <- data.frame(Roll_no = 1:20, Gender = sample(c("male", "female"), 20, replace = TRUE))
d2$Gender
d2$Gender <- factor(d2$Gender, levels = c("male", "female"))
d2$Gender <- as.factor(d2$Gender)
d2$Gender
relevel(d2$Gender, "female")
