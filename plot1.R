## Code for Plot 1 in Project 1
## Read the data for the 2 dates of interest into sel1
sel1 <- read.csv.sql("C:/Users/Padma/Documents/Coursera/ExpDataAnalysis/household_power_consumption.txt",   sql = "select  *  from file  where (Date = '1/2/2007' or date =  '2/2/2007') ", sep = ";")
## Plot the histogram
hist(sel1$Global_active_power,col='red',xlab='Global Active Power(KiloWatts)',main='Global Active Power')
## Create a png copy of the above
dev.copy(png,file="C:/Users/Padma/Documents/Coursera/ExpDataAnalysis/plot1.png")
dev.off()