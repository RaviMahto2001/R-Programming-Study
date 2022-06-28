# creating package manually

#'This is a Sample Function
#'@export
#'@param x numeric variable
#'@param y numeric variable
hypotenuse <- function(x,y){
  sqrt(x^2 + y^2)
}

triplets <- data.frame(
  x = c(3,5,6),
  y = c(4,12,8),
  z = c(5,13,10)
)

getwd()
setwd("F:\\studyfiles\\R Programming\\Exam\\Related to Packages\\manualpack")
package.skeleton("pythagoras",c("hypotenuse","triplets"))

library(roxygen2)
roxygenize("pythagoras")

library(usethis)
library(devtools)
check("pythagoras")
build("pythagoras")
release("pythagoras")
