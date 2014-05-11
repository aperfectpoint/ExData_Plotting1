source("./plotting.R")

plot3 <- function() {
  data <- init()
  png(filename= "plot3.png",width=480, height = 480, units= "px")
  plot(data$DateTime, data$Sub_metering_1, col = "black", type="l",xlab="",ylab="Energy sub metering")
  lines(data$DateTime, data$Sub_metering_2, col = "red", type="l")
  lines(data$DateTime, data$Sub_metering_3, col = "blue", type="l")
  legend("topright",col = c("black","red", "blue"), legend = c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), lty=1)
  dev.off()
}

plot3()