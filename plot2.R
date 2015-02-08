## Plot 2 Project 1 Exp Data Analysis
## Read the required data in (Only the 2 dates of interest)
sel1 <- read.csv.sql("C:/Users/Padma/Documents/Coursera/ExpDataAnalysis/household_power_consumption.txt",   sql = "select  *  from file  where (Date = '1/2/2007' or date =  '2/2/2007') ", sep = ";")
## Set up the plot
plot(as.POSIXct(paste(sel1$Date, sel1$Time), format="%d/%m/%Y %H:%M:%S"),sel1$Global_active_power,type='n',xlab="", ylab="")
## Add labels
title(ylab="Global Active Power (Kilowatts)", xlab = "")
## Add the line
lines(as.POSIXct(paste(sel1$Date, sel1$Time),format="%d/%m/%Y %H:%M:%S"),sel1$Global_active_power )
## Create the png version
dev.copy(png,file="C:/Users/Padma/Documents/Coursera/ExpDataAnalysis/plot2.png")
dev.off()