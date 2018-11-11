hist(as.integer(power$Global_active_power),col="red",main="Global Power",xlab="Global Active Power")
png(filename = "plot1.png",width = 480, height = 480)
dev.copy(png,'plot1.png')
dev.off()
