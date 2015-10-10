Sys.setlocale("LC_ALL", "English")


# load and filter data into a new variable
dat = read.csv("household_power_consumption.txt", header = TRUE, sep = ";", dec=".", stringsAsFactors=FALSE)  
dat2 <- dat[dat$Date %in% c("1/2/2007", "2/2/2007"), ]

# get rid of the old variable
rm(dat)
sapply(dat2, typeof)



# convert data to proper type
# and create a new fields for the date in POSIX format
dat2$Date <- as.Date(dat2$Date, format="%d/%m/%Y")
dat2$Global_active_power <- as.double(dat2$Global_active_power)
dat2$Sub_metering_1 <- as.double(dat2$Sub_metering_1)
dat2$Sub_metering_2 <- as.double(dat2$Sub_metering_2)
dat2$Sub_metering_3 <- as.double(dat2$Sub_metering_3)

dat2$datetime <- strftime(paste(dat2$Date, dat2$Time, sep=" "), format="%Y/%m/%d %H:%M:%s")
dat2$datetime <- as.POSIXct(dat2$datetime)


