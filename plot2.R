full_dataset <- read.csv("household_power_consumption.txt", sep = ";", na.strings = "?")
sub_dataset <- full_dataset [full_dataset$Date == '1/2/2007' | full_dataset$Date == '2/2/2007', ]
date_time <- strptime(paste(sub_dataset$Date, sub_dataset$Time), "%d/%m/%Y %H:%M:%S")
png(file = "plot2.png")
plot(date_time, sub_dataset$Global_active_power, type = 'l', xlab = "", ylab = "Global Active Power (kilowatts)")
dev.off()
