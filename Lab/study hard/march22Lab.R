library(learningr)
library(ggplot2)
library(lattice)
library(stringr)

str(crab_tag$daylog)
xyplot(-Max.Depth~Date, crab_tag$daylog,type='l')
xyplot(-Max.Depth + (-Min.Depth)~Date, crab_tag$daylog,type='l')

ggplot(crab_tag$daylog,aes(Date,-Max.Depth)) + geom_line()
ggplot(crab_tag$daylog,aes(Date)) +
  geom_line(aes(y = -Max.Depth),col = "Red") +
  geom_line(aes(y = -Min.Depth),col = "Blue")

library(reshape2)
crab_long <- melt(crab_tag$daylog,id.vars = "Date",measure.vars = c("Max.Depth","Min.Depth"))

str(crab_long)

ggplot(crab_long,aes(Date,-value,group = variable)) + geom_line()

ggplot(crab_tag$daylog,aes(Date,ymax = -Max.Depth,ymin = -Min.Depth)) + geom_ribbon(fill = "white",col = "black")

str(obama_vs_mccain)

hist(obama_vs_mccain$Obama)
quantile(obama_vs_mccain$Obama)

obama_vs_mccain$Obama

hist(obama_vs_mccain$Obama, main = "Histogram of Obama",xlab = "Voter Turnout",ylab = "No of Region")
hist(obama_vs_mccain$Obama,10)
hist(obama_vs_mccain$Obama,5)
hist(obama_vs_mccain$Obama,20)
hist(obama_vs_mccain$Obama,2)
hist(obama_vs_mccain$Obama,3)

hist(obama_vs_mccain$Obama,"scott")
hist(obama_vs_mccain$Obama,nclass.Sturges)

hist(obama_vs_mccain$Obama,seq.int(0,100,4))

histogram(obama_vs_mccain$Obama)

histogram(~Obama,obama_vs_mccain)

ggplot(obama_vs_mccain,aes(Obama)) + geom_histogram(binwidth = 5)
ggplot(obama_vs_mccain,aes(Obama)) + geom_histogram()

quantile(obama_vs_mccain$Obama)
sort(obama_vs_mccain$Obama)

boxplot(obama_vs_mccain$Obama)
# quantile in graphics
bwplot(~Obama,obama_vs_mccain)

ggplot(obama_vs_mccain,aes(Obama)) + geom_boxplot()
