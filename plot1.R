#reading in the required data
data <- read.table(file="household_power_consumption.txt", na.strings="?", sep=";", nrows=2880, skip=66637)
colnames(data) <- c("Date", "Time", "Global_active_power", "Global_reactive_power", "Voltage", "Global_intensity", "Sub_metering_1", "Sub_metering_2", "Sub_metering_3")
data$Date <- as.Date(data$Date, "%d/%m/%Y")
strptime(data$Time, format="%H:%M:%S")
#ploting the histogram 
hist(data$Global_active_power, col="red", xlab="Global Active Power (kilowatts)", ylab="Frequency", main="Global Active Power", ylim=c(0,1200))


