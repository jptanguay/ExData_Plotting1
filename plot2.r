

#
# Exploratory Data Analysis
# Project #1
#
# 2015-10-09
# jptanguay
#
# 
# plot2.r
#
#############################
#
#############################

# set the working directory to the correct path
# and load the common script that loads and prepares data
setwd("C:/Users/jptanguay/Documents/coursera/ExploratoryDataAnalysis/project1-ver2")
source(file="project1_common.r")


#############################
#plot 2
#############################
par(mfrow=c(1,1))
plot(dat2$datetime, dat2$Global_active_power, xlab= "", ylab = "Global Active Power (kilowatts)", type = "l")

dev.copy(png,filename="plot2.png");
dev.off ();

