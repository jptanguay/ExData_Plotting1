

#
# Exploratory Data Analysis
# Project #1
#
# 2015-10-09
# jptanguay
#
# 
# plot3.r
#
#############################
#
#############################

# set the working directory to the correct path
# and load the common script that loads and prepares data
setwd("C:/Users/jptanguay/Documents/coursera/ExploratoryDataAnalysis/project1-ver2")
source(file="project1_common.r")

#############################
#plot 3
#############################
par(mfrow=c(1,1))
plot(dat2$datetime, dat2$Sub_metering_1, xlab= "", ylab = "Energy sub metering", type = "l", col="black")
lines(dat2$datetime, dat2$Sub_metering_2,  ylab = "Energy sub metering", type = "l", col="red")
lines(dat2$datetime, dat2$Sub_metering_3,  ylab = "Energy sub metering", type = "l", col="blue")
	
legend('topright', c("Sub_metering_1", "Sub_metering_2" ,"Sub_metering_3"), lty=1, col=c('black', 'red', 'blue'), bty='1', cex=.75)

dev.copy(png,filename="plot3.png");
dev.off ();



				