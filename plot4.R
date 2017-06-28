setwd("C:\\Users\\shubh\\Documents\\Coursera\\Exploratory Data Analysis\\Week 1")
electric_data <- read.table("household_power_consumption.txt", sep = ";", header = TRUE)
subset_data <- subset(electric_data, Date == "1/2/2007" | Date == "2/2/2007")

subset_data$Date <- as.Date(subset_data$Date, format = "%d/%m/%Y")
subset_data$DateandTime <- as.POSIXct(paste(subset_data$Date, subset_data$Time))



par(mfcol=c(2,2))

plot(subset_data$DateandTime, subset_data$Global_active_power, type="l", ylab= "Global Active Power", xlab="")



plot(subset_data$DateandTime, subset_data$Sub_metering_1, type="l", ylab= "Energy sub metering", xlab="")
lines(subset_data$DateandTime, subset_data$Sub_metering_2, type="l", col="red")
lines(subset_data$DateandTime, subset_data$Sub_metering_3, type="l", col="blue")
legend("topright", c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), lty=1, col=c("black", "red", "blue"))

plot(subset_data$DateandTime,subset_data$Voltage,type="l",ylab="Voltage",xlab="datetime")

plot(subset_data$DateandTime,subset_data$Global_reactive_power,type='l',xlab="datetime",ylab="Global_reactive_power")

dev.copy(png, "plot4.png", width = 480, height = 480)
dev.off()
