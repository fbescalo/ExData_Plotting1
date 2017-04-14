#plot 4
c <- read.csv("./household_power_consumption.txt", na.strings="?", sep = ";" , stringsAsFactors=FALSE )
c1 <- subset(c, c$Date=="1/2/2007" | c$Date=="2/2/2007")
c1$DateTime <- strptime(paste(c1$Date,c1$Time), "%d/%m/%Y %H:%M:%S")
png ('plot4.png',  width = 480, height = 480)
 
par(mfrow=c(2,2))
plot( c1$DateTime, c1$Global_active_power,type="l", xlab = " ", ylab = "Global Active Power (kilowatts)")
plot( c1$DateTime, c1$Voltage,type="l", xlab = "datetime", ylab = "Voltage")
plot( c1$DateTime, c1$Sub_metering_1,type="l", xlab = "", ylab = "Energy sub metering")
points( c1$DateTime, c1$Sub_metering_2, type="l", col = "red")
points( c1$DateTime, c1$Sub_metering_3, type="l", col = "blue")
legend("topright", legend = c("Sub_metering_1","Sub_metering_2", "Sub_metering_3"),
       col = c("black", "red", "blue"),
       pch = c(NA, NA,NA) , lwd = 2)
 
plot( c1$DateTime, c1$Global_reactive_power,type="l", xlab = "datetime",ylab = "Global_reactive_power")
dev.off()