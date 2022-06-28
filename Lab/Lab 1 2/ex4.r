color <- c("Red","Blue","Green","Black","White","Yellow");

for (x in color) {
  print(x)
}

for (x in seq_along(color)){
  print(x)
}

color[c(1,3)]
color <- c(a="Red",b="Blue","Green","Black",c="White","Yellow");
#wrong
color[a]
#right
color[c("a","c")]

color[c(1,3,5)]

color[2.53]
color[-1]
color[c(-1,-4)]


color[c(TRUE,FALSE,FALSE)]




length(color) <- 8
color

length(color) <- 3
color

length(color) <- 6
color
