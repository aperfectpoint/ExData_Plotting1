source("./plotting.R")

plot1 <- function() {
  data <- init()
  png(filename= "plot1.png",width=480, height = 480, units= "px")
  hist(data$Global_active_power, col='red', xlab = 'Global Active Power (kilowatts)', main = 'Global Active Power')
  dev.off()
}

plot1()