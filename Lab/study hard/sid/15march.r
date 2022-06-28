obama_vs_mccain
help("obama_vs_mccain")

obama <- obama_vs_mccain$Obama
obama
mean(obama)
mean(obama_vs_mccain$McCain)

sort(obama)

summary(obama)

seq.int(30,100,10)
cut(obama, seq.int(30,100,10) )
table(cut(obama, seq.int(30,100,10) ))

min(obama)
max(obama)
sd(obama)
var(obama)


pmin(obama, obama_vs_mccain$McCain)
with(obama_vs_mccain, pmin(obama, McCain))
with(obama_vs_mccain, pmax(obama, McCain))
with(obama_vs_mccain, cummin(obama))
with(obama_vs_mccain, cummax(obama))
with(obama_vs_mccain, cumsum(obama))
with(obama_vs_mccain, cumprod(obama))
with(obama_vs_mccain, cor(Obama, McCain))
quantile(obama)
quantile(obama, c(0.8, 0.9, 0.95))
IQR(obama)
fivenum(obama)

library(learningr)
with(obama_vs_mccain, plot(Income, Turnout))
cleaned_obama <- na.omit(obama_vs_mccain)
cleaned_obama
length(cleaned_obama)
with(cleaned_obama, cor(Income, Turnout))
with(obama_vs_mccain, plot(Income, Turnout, col = "Red", pch = 20))
plot(1:25, pch = 1:25)
with(obama_vs_mccain, plot(Income, Turnout, col = "Red", 
                           pch = 20, main = "Income Turnout Correlation", 
                          xlab = "INCOME", ylab = "TURNOUT"))
library(lattice)
xyplot(Turnout~Income, obama_vs_mccain, col = "Green", pch = 25,
       main = "Income Turnout Correlation", 
       scales = list(y = list(log = TRUE)))

install.packages("ggplot2")
library(ggplot2)
ggplot(obama_vs_mccain, aes(Turnout, Income)) + geom_point()

with(obama_vs_mccain, plot(Income, Turnout, col = "Red", type = "l", 
                           pch = 20, main = "Income Turnout Correlation", 
                           xlab = "INCOME", ylab = "TURNOUT"))

help("crab_tag$daylog")
help("crab_tag")

str(crab_tag$daylog)

with(crab_tag$daylog, plot(Date, -Max.Depth, type = "l", 
                           ylim = c(-max(Max.Depth), 0)))

with(crab_tag$daylog, lines(Date, -Min.Depth, 
                            col = "Blue"))