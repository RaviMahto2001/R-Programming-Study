#understanding diag

diag(1,5,6)
diag(1,5)

# unique thing
d1 <- diag(1:5)
d1
d2 <- rbind(0,diag(1:4,4,5))
d2
d3 <- cbind(0,diag(1:4,5,4))
d3

d4 <- d1 + d2 + d3
d4
