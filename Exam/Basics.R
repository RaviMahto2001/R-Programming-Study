
z <- rnorm(5); z

(zz <- rlnorm(5))

fac <- factor(sample(letters[1:5],50,replace = TRUE)); fac
vec <- 1:50; vec

df <- data.frame(vec,fac); df
View(df)
ndf <- edit(df)
ndf

rm(df)
ls()
rm(list = ls())
ls(all.names = TRUE)

