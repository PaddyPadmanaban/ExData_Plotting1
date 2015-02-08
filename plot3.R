## Plot 3 Project 1 Exp Data Analysis
## Read the required data in (Only the 2 dates of interest)
sel1 <- read.csv.sql("C:/Users/Padma/Documents/Coursera/ExpDataAnalysis/household_power_consumption.txt",   sql = "select  *  from file  where (Date = '1/2/2007' or date =  '2/2/2007') ", sep = ";")
## Set up the plot
plot(as.POSIXct(paste(sel1$Date, sel1$Time), format="%d/%m/%Y %H:%M:%S"),sel1$Sub_metering_1,type='n',xlab="", ylab="")
## Add labels
title(ylab="Global Active Power (Kilowatts)", xlab = "")
## Add the lines , one for each sub_metering
lines(as.POSIXct(paste(sel1$Date, sel1$Time),format="%d/%m/%Y %H:%M:%S"),sel1$Sub_metering_1 )
lines(as.POSIXct(paste(sel1$Date, sel1$Time),format="%d/%m/%Y %H:%M:%S"),sel1$Sub_metering_2, col="red" )
lines(as.POSIXct(paste(sel1$Date, sel1$Time),format="%d/%m/%Y %H:%M:%S"),sel1$Sub_metering_3, col= "blue" )
## Add the legend
legend("topright", lwd=1, lty=c(1), col = c("black","red","blue"), legend = c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"))
## Create the png version
dev.copy(png,file="C:/Users/Padma/Documents/Coursera/ExpDataAnalysis/plot3.png")
dev.off()