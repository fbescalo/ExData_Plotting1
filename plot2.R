#plot 2
c <- read.csv("./household_power_consumption.txt", na.strings="?", sep = ";" , stringsAsFactors=FALSE )
c1 <- subset(c, c$Date=="1/2/2007" | c$Date=="2/2/2007")
c1$DateTime <- strptime(paste(c1$Date,c1$Time), "%d/%m/%Y %H:%M:%S")
png ('plot2.png',  width = 480, height = 480)
plot( c1$DateTime, c1$Global_active_power,type="l", xlab = " ", ylab = "Global Active Power (kilowatts)")
dev.off()