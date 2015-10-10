

#
# Exploratory Data Analysis
# Project #1
#
# 2015-10-09
# jptanguay
#
# 
# plot1.r
#
#############################
#
#############################


# set the working directory to the correct path
# and load the common script that loads and prepares data
setwd("C:/Users/jptanguay/Documents/coursera/ExploratoryDataAnalysis/project1-ver2")
source(file="project1_common.r")

#############################
# plot #1
#############################
par(mfrow=c(1,1))
hist(dat2$Global_active_power, xlab = "Global Active Power (kilowatts)", c="orangered3", main="Global Active Power")

dev.copy(png,filename="plot1.png");
dev.off ();

