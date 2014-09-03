#reading in the required data
data <- read.table(file="household_power_consumption.txt", na.strings="?", sep=";", nrows=2880, skip=66637)
colnames(data) <- c("Date", "Time", "Global_active_power", "Global_reactive_power", "Voltage", "Global_intensity", "Sub_metering_1", "Sub_metering_2", "Sub_metering_3")
data$Date <- as.Date(data$Date, "%d/%m/%Y")
strptime(data$Time, format="%H:%M:%S")
#making a scatterplot
time <- as.POSIXct(paste(data$Date, data$Time), format="%Y-%m-%d %H:%M:%S")
Sys.setlocale("LC_TIME", "English")
plot(time, data$Global_active_power, type="l",xlab="", ylab="Global Active Power (kilowatts)")
