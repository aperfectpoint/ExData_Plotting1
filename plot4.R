source("./plotting.R")

plot4 <- function() {
  data <- init()
  png(filename= "plot4.png",width=480, height = 480, units= "px")
  par(mfrow=c(2,2))
  # top left
  plot(data$DateTime, data$Global_active_power, type= "l", ylab="Global Active Power (kilowatts)", xlab = '')
  
  #top-right
  plot(data$DateTime, data$Voltage, type= "l", ylab="Voltage", xlab = 'dateTime')
  
  # bottom left
  plot(data$DateTime, data$Sub_metering_1, col = "black", type="l",xlab="",ylab="Energy sub metering")
  lines(data$DateTime, data$Sub_metering_2, col = "red", type="l")
  lines(data$DateTime, data$Sub_metering_3, col = "blue", type="l")
  legend("topright",col = c("black","red", "blue"), legend = c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), lty=1, bty = "n", cex=0.7)
  
  #bottom right
  plot(data$DateTime, data$Global_reactive_power, type= "l", xlab="dateTime", ylab="Global_reactive_power")
  
  dev.off()
}

plot4()