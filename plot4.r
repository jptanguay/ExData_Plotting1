
#
# Exploratory Data Analysis
# Project #1
#
# 2015-10-0
# jptanguay
#
# 
# plot4.r
#
#############################
#
#############################

# set the working directory to the correct path
# and load the common script that loads and prepares data
setwd("C:/Users/jptanguay/Documents/coursera/ExploratoryDataAnalysis/project1-ver2")
source(file="project1_common.r")

				
#############################
#plot 4
#############################
par(mfrow=c(2,2))

plot(dat2$datetime,dat2$Global_active_power, xlab = "", ylab = "Global Active Power", type = "l")

plot(dat2$datetime,dat2$Voltage, xlab = "datetime", ylab = "Voltage", type = "l" )

plot(dat2$datetime,dat2$Sub_metering_1, xlab = "" , ylab = "Energy sub metering", type = "l", col="black")
lines(dat2$datetime,dat2$Sub_metering_2, ylab = "Energy sub metering", type = "l", col="red")
lines(dat2$datetime,dat2$Sub_metering_3, ylab = "Energy sub metering", type = "l", col="blue")

plot(dat2$datetime,dat2$Global_reactive_power, xlab = "datetime", ylab = "Global_reactive_power", type = "l" )

dev.copy(png,filename="plot4.png");
dev.off ();


				