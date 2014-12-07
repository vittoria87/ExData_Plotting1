full_dataset <- read.csv("household_power_consumption.txt", sep = ";", na.strings = "?") 
sub_dataset <- full_dataset [full_dataset$Date == '1/2/2007' | full_dataset$Date == '2/2/2007', ] 
date_time <- strptime(paste(sub_dataset$Date, sub_dataset$Time), "%d/%m/%Y %H:%M:%S") 
png(file = "plot3.png") 
plot(date_time, sub_dataset$Sub_metering_1, type = 'l', xlab = "", ylab = "Energy sub metering") 
lines(date_time, sub_dataset$Sub_metering_2, col = "red") 
lines(date_time, sub_dataset$Sub_metering_3, col = "blue") 
legend("topright", c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), col = c("black", "red", "blue"), lty = 1) 
dev.off() 
