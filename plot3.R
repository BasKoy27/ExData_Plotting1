#specifies working directory where dataset is located
setwd("C:/Users/ADMIN/Desktop/ExData_Plotting1")

#reads data
data<-read.table("household_power_consumption.txt", sep=";", na.strings="?", header=TRUE)

#converts Date and Time to Date/Time classes in R
data$Date <- as.Date(data$Date, "%d/%m/%Y")
data <- data[(data$Date >= as.Date("2007-02-01")) & (data$Date <= as.Date("2007-02-02")), ]
data$Time <- strptime(paste(data$Date, data$Time), "%Y-%m-%d %H:%M:%S")

#saves plot to PNG file
png("plot3.png", width=480, height=480, units="px")

#plots data
plot(data$Time, data$Sub_metering_1, type="l", xlab="", ylab="Energy sub metering")
lines(data$Time, data$Sub_metering_2, type="l", col="red")
lines(data$Time, data$Sub_metering_3, type="l", col="blue")
legend("topright", c("Sub_metering_1","Sub_metering_2", "Sub_metering_3"), col=c("black","red","blue"), 
       lty=1,bty=1)

#shuts down graphics device
dev.off()