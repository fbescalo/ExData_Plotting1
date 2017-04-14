c <- read.csv("./household_power_consumption.txt", na.strings="?", sep = ";" , stringsAsFactors=FALSE )
#             We will only be using data from the dates 2007-02-01 and 2007-02-02
c1 <- subset(c, c$Date=="1/2/2007" | c$Date=="2/2/2007")
png ('plot1.png',  width = 480, height = 480)
hist(c1$Global_active_power, col = "red", main = "Global Active Power", xlab = "Global Active Power (kilowatts)" , breaks = c(2,4,6,8))
 
dev.off()