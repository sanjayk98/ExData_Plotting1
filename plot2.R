#Author: Sanjay Kumar
#Date: 11-Nov-2018
#plot2
#
setwd("C:/Users/sanjayx/Desktop/coursera")
load('power.dat')
par(resetPar())
png(filename = "plot2.png",width = 480, height = 480)
dev.copy(png,'plot2.png')
par(mfrow=c(1,1))
plot(as.POSIXct(paste(power$Date, power$Time), format="%d/%m/%Y %H:%M:%S"),as.numeric(power$Global_active_power),type="l",col="red",main="global active power",xlab="Date",ylab="kw")

dev.off()