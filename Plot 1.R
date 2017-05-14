# Data Loading and Preprocessing
if(!file.exists("temp")) dir.create('temp')
 fileUrl <- 'http://d396qusza40orc.cloudfront.net/exdata%2Fdata%2Fhousehold_power_consumption.zip'
 download.file(fileUrl, destfile = './temp/household_power_consumption.zip')
 file <- unzip('./temp/household_power_consumption.zip', exdir = './temp')
 power <- read.table(file, header = T, sep = ";")
 # Convert the date variable to Date class
 power$Date <- as.Date(power$Date, format="%d/%m/%Y")
 #subset the data, to get power$Date 01 and 02 two days.
 df <- power[(power$Date=="2007-02-01") | (power$Date=="2007-02-02"),]
 
 df$Global_active_power <- as.numeric(as.character(df$Global_active_power))
 df$Global_reactive_power <- as.numeric(as.character(df$Global_reactive_power))
 
 
 # Save file  dev.copy 
 plot1 <- function() {
      hist(df$Global_active_power, main = paste("Global Active Power"), col="red", xlab="Global Active Power (kilowatts)")
      dev.copy(png, file="plot1.png", width=480, height=480)
       dev.off()
   cat("Plot1.png has been saved in", getwd())
   }
 
 