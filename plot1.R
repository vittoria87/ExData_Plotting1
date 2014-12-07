full_dataset <- read.csv("household_power_consumption.txt", sep = ";", na.strings = "?") 
sub_dataset <- full_dataset [full_dataset$Date == '1/2/2007' | full_dataset$Date == '2/2/2007', ] 
png(file = "plot1.png") 
hist(sub_dataset$Global_active_power, col = "red", main = "Global Active Power", xlab = "Global Active Power (kilowatts)") 
dev.off() 
