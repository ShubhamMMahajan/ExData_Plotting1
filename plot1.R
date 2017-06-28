setwd("C:\\Users\\shubh\\Documents\\Coursera\\Exploratory Data Analysis\\Week 1")
electric_data <- read.table("household_power_consumption.txt", sep = ";", header = TRUE)
subset_data <- subset(electric_data, Date == "1/2/2007" | Date == "2/2/2007")

hist(as.numeric(subset_data$Global_active_power), ylab = "Frequency", xlab = "Global Active Power (kilowatts)", main = "Global Active Power", col = "red")
dev.copy(png, "plot1.png", height = 480, width = 480)
dev.off()
