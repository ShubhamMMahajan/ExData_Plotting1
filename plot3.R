setwd("C:\\Users\\shubh\\Documents\\Coursera\\Exploratory Data Analysis\\Week 1")
electric_data <- read.table("household_power_consumption.txt", sep = ";", header = TRUE)
subset_data <- subset(electric_data, Date == "1/2/2007" | Date == "2/2/2007")

subset_data$Date <- as.Date(subset_data$Date, format = "%d/%m/%Y")
subset_data$DateandTime <- as.POSIXct(paste(subset_data$Date, subset_data$Time))

plot(subset_data$DateandTime, subset_data$Sub_metering_1,type = "l", ylab = "Energy sub metering", xlab = "")
lines(subset_data$DateandTime, subset_data$Sub_metering_2,type = "l", col = "red")
lines(subset_data$DateandTime, subset_data$Sub_metering_3,type = "l", col = "blue")
legend("topright", c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), col=c("black", "red", "blue"), lty = 1)

dev.copy(png, "plot3.png", width = 480, height = 480)
dev.off()
