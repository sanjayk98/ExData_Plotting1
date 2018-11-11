#Author: Sanjay Kumar
#Date: 11-Nov-2018
#Loading data from 1/2/2007 to 2/2/2007
#
setwd("C:/Users/sanjayx/Desktop/coursera")
download.file("https://d396qusza40orc.cloudfront.net/exdata%2Fdata%2Fhousehold_power_consumption.zip",destfile = "c:/users/sanjayx/desktop/coursera/power.zip")
consumption<-data.table::fread('household_power_consumption.txt')
names(consumption)
consume<-subset(consumption,consumption$Date=="1/2/2007"|consumption$Date=="2/2/2007")
# Replace ? with NA
consume[consume=='?']<-NA
# Remove NA dataset
power<-consume[complete.cases(consume), ]
save(power,file='power.dat')


