#specifies working directory where dataset is located
setwd("C:/Users/ADMIN/Desktop/ExData_Plotting1")

#reads data
data<-read.table("household_power_consumption.txt", sep=";", na.strings="?", header=TRUE)

#converts Date to Date classes in R and filters Date
data$Date <- as.Date(data$Date, "%d/%m/%Y")
data <- data[(data$Date >= as.Date("2007-02-01")) & (data$Date <= as.Date("2007-02-02")), ]

#saves plot to PNG file
png("plot1.png", width=480, height=480, units="px")

#plots data
hist(data$Global_active_power, col="red", main="Global Active Power", xlab="Global Active Power 
(kilowatts)")

#shuts down graphics device
dev.off()