library(learningr)
library(lattice)
library(ggplot2)
#lattice package
histogram(~Obama,obama_vs_mccain)
histogram(obama_vs_mccain$Obama)

#ggplot2 good and efficient

maxtemp <- c('sun'= 24,'mon' = 23, 'tue' = 24, 'wed' = 25,'thus' = 21,'fri' = 27,'sat' = 20)
maxtemp
barplot(maxtemp)
barchart(maxtemp)
pie(maxtemp)
layout(matrix(1:2,1))
