# making my Plot 2.
df <- transform(df, timestamp=as.POSIXct(paste(Date, Time)), "%d/%m/%Y %H:%M:%S")
 plot2 <- function() {
       plot(df$timestamp,df$Global_active_power, type="l", xlab="", ylab="Global Active Power (kilowatts)")
       dev.copy(png, file="plot2.png", width=480, height=480)
       dev.off()
       cat("plot2.png has been saved in", getwd())
 }