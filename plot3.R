# making Myplot 3
df$Sub_metering_1 <- as.numeric(as.character(df$Sub_metering_1))
df$Sub_metering_2 <- as.numeric(as.character(df$Sub_metering_2))
df$Sub_metering_3 <- as.numeric(as.character(df$Sub_metering_3))

plot3 <- function() {
       plot(df$timestamp,df$Sub_metering_1, type="l", xlab="", ylab="Energy sub metering")
       lines(df$timestamp,df$Sub_metering_2,col="red")
       lines(df$timestamp,df$Sub_metering_3,col="blue")
       legend("topright", col=c("black","red","blue"), c("Sub_metering_1  ","Sub_metering_2  ", "Sub_metering_3  "),lty=c(1,1), lwd=c(1,1))
       dev.copy(png, file="plot3.png", width=480, height=480)
       dev.off()
       cat("plot3.png has been saved in", getwd())
}
# plot(3)
# plot3.png has been saved in /Users/shuangtan/R-Programming_DataScience_Coursera/Exploratory Data Analysis 
