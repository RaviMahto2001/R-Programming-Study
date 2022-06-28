# Siddhant (20549)
# R-Programming

1:5 + 6:10 
c(1, 3, 6, 10, 15) + c(0, 1, 3, 6, 10)
sum(1:5)
median(1:5)
sum(1, 2, 3, 4, 5)
median(1, 2, 3, 4, 5) 
c(2, 3, 5, 7, 11, 13) - 2 # Subtraction
-2:2 * -2:2 # Multiplication
identical(2 ^ 3, 2 ** 3) # We can use ^ or ** for exponentiation
1:10 / 3 # Floating point division
1:10 %/% 3 # Integer division
1:10 %% 3 # Remainder after division
cos(c(0, pi / 4, pi / 2, pi)) # Pi is a built-in constant
exp(pi * 1i) + 1 # Euler's formula
factorial(7) + factorial(1) - 71 ^ 2 # 5041 is a great number
choose(5, 0:5)
c(3, 4 - 1, 1 + 1 + 1) == 3 # Operators are vectorized too
1:3 != 3:1
exp(1:5) < 100
(1:5) ^ 2 >= 16
sqrt(2) ^ 2 == 2 # Sqrt is the square-root function
sqrt(2) ^ 2 - 2 # This small value is the rounding error
all.equal(sqrt(2) ^ 2, 2)
all.equal(sqrt(2) ^ 2, 3)
isTRUE(all.equal(sqrt(2) ^ 2, 3))
c(
  "Can", "you", "can", "a", "can", "as",
  "a", "canner", "can", "can", "a", "can?"
) == "can"
c("A", "B", "C", "D") < "C"
c("a", "b", "c", "d") < "C" # Your results may vary
x <- 1:5
y = 6:10
x + 2 * y - 3
x <- 3
x < -3
x<-3 # Is this assignment or less than?
assign("my_local_variable", 9 ^ 3 + 10 ^ 3)
assign("my_global_variable", 1 ^ 3 + 12 ^ 3, globalenv())
x
z <- rnorm(5); z
(zz <- rlnorm(5))
c(Inf + 1, Inf - 1, Inf - Inf)
c(1 / Inf, Inf / 1, Inf / Inf)
c(sqrt(Inf), sin(Inf))
c(log(Inf), log(Inf, base = Inf))
c(NA + 1, NA * 5, NA + Inf)
c(NA + NA, NaN + NaN, NaN + NA, NA + NaN)
x <- c(0, Inf, -Inf, NaN, NA)
is.finite(x)
is.infinite(x)
is.nan(x)
is.na(x)
(x <- 1:10 >= 5)
!x
(y <- 1:10 %% 2 == 0)
x & y
x | y
x <- c(TRUE, FALSE, NA) # The three logical values
xy <- expand.grid(x = x, y = x) # Get all combinations of x and y
within( # Make the next assignments within xy
  xy,
  {
    and <- x & y
    or <- x | y
    not.y <- !y
    not.x <- !x
  }
)
none_true <- c(FALSE, FALSE, FALSE)
some_true <- c(FALSE, TRUE, FALSE)
all_true <- c(TRUE, TRUE, TRUE)
any(none_true)
any(some_true)
any(all_true)
all(none_true)
all(some_true)
all(all_true)