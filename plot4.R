
#Author: Sanjay Kumar
#Date: 11-Nov-2018
#plot4
#
setwd("C:/Users/sanjayx/Desktop/coursera")
load('pwoer.dat')
par(resetPar())
png(filename = "plot4.png",width = 480, height = 480)
dev.copy(png,'plot4.png')
par(mfrow=c(2,2))
plot(as.POSIXct(paste(power$Date, power$Time), format="%d/%m/%Y %H:%M:%S"),power$Global_active_power,type="l",col="red",main="global active power",xlab="Date",ylab="kw")
plot(as.POSIXct(paste(power$Date, power$Time), format="%d/%m/%Y %H:%M:%S"),power$Voltage,type="l",col="red",main="Voltage",xlab="Date",ylab="Volt")
plot(as.POSIXct(paste(power$Date, power$Time), format="%d/%m/%Y %H:%M:%S"),power$Sub_metering_1,type="l",col="red",main="sub activity",xlab="Date",ylab="Energy Sub-Metering kw")
par(new=T)
plot(as.POSIXct(paste(power$Date, power$Time), format="%d/%m/%Y %H:%M:%S"),power$Sub_metering_2,type="l",col="blue",main="sub activity",xlab="Date",ylab="Energy Sub-Metering kw")
par(new=T)
plot(as.POSIXct(paste(power$Date, power$Time), format="%d/%m/%Y %H:%M:%S"),power$Sub_metering_3,type="l",main="sub activity",col="grey",xlab="Date",ylab="Energy Sub-Metering kw")
legend("topright", legend = c("Sub_metering_1","Sub_metering_2","Sub_metering_3"), col = c("red","blue","grey"), lwd = 1, cex = 0.5)
plot(as.POSIXct(paste(power$Date, power$Time), format="%d/%m/%Y %H:%M:%S"),power$Global_reactive_power,type="l",col="red",main="global reactive power",xlab="Date",ylab="kw")
dev.off()