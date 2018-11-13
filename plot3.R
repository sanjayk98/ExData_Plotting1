#Author: Sanjay Kumar
#Date: 11-Nov-2018
#plot3
#
setwd("C:/Users/sanjayx/Desktop/coursera")
load('power.dat')
par(resetPar())
png(filename = "plot3.png",width = 480, height = 480)
dev.copy(png,'plot3.png')
par(mfrow=c(1,1))
plot(as.POSIXct(paste(power$Date, power$Time), format="%d/%m/%Y %H:%M:%S"),as.numeric(power$Sub_metering_1),type="l",col="red",main="sub activity",xlab="Date",ylab="Energy Sub-Metering kw")
lines(as.POSIXct(paste(power$Date, power$Time), format="%d/%m/%Y %H:%M:%S"),as.numeric(power$Sub_metering_2),type="l",col="blue",main="sub activity",xlab="Date",ylab="Energy Sub-Metering kw")
#par(new=T)
lines(as.POSIXct(paste(power$Date, power$Time), format="%d/%m/%Y %H:%M:%S"),as.numeric(power$Sub_metering_3),type="l",main="sub activity",col="grey",xlab="Date",ylab="Energy Sub-Metering kw")
legend("topright", legend = c("Sub_metering_1","Sub_metering_2","Sub_metering_3"), col = c("red","blue","grey"), lwd = 1, cex = 0.5)

dev.off()