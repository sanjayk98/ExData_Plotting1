#Author: Sanjay Kumar
#Date: 11-Nov-2018
#plot1
#
setwd("C:/Users/sanjayx/Desktop/coursera")
load('power.dat')
par(resetPar())
png(filename = "plot1.png",width = 480, height = 480)
dev.copy(png,'plot1.png')
par(mfrow=c(1,1))
hist(as.numeric(power$Global_active_power),col="red",main="Global Power",xlab="Global Active Power(killo watts)")
dev.off()
