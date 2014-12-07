full_dataset <- read.csv("household_power_consumption.txt", sep = ";", na.strings = "?") 
sub_dataset <- full_dataset [full_dataset$Date == '1/2/2007' | full_dataset$Date == '2/2/2007', ] 
date_time <- strptime(paste(sub_dataset$Date, sub_dataset$Time), "%d/%m/%Y %H:%M:%S") 

png(file = "plot4.png") 
par(mfrow = c(2, 2)) 
plot(date_time, sub_dataset$Global_active_power, type = 'l', xlab = "", ylab = "Global Active Power") 
plot(date_time, sub_dataset$Voltage, type = 'l', xlab = "datetime", ylab = "Voltage") 
plot(date_time, sub_dataset$Sub_metering_1, type = 'l', xlab = "", ylab = "Energy sub metering") 
lines(date_time, sub_dataset$Sub_metering_2, col = "red") 
lines(date_time, sub_dataset$Sub_metering_3, col = "blue") 
legend("topright", c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), col = c("black", "red", "blue"), lty = 1, bty = "n") 
plot(date_time, sub_dataset$Global_reactive_power, type = 'l', xlab = "datetime", ylab = "Global_reactive_power") 

dev.off() 
