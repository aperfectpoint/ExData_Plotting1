init <- function(fileName='household_power_consumption.txt') {
  data_header<-read.csv(fileName, skip = 0, nrows = 1, sep=";",na.strings="?")
  minutes_in_hour <- 60
  hours_in_day <- 24
  data <- read.csv(fileName, skip = 66636, nrows = minutes_in_hour*hours_in_day*2, sep=";", na.strings="?")
  names(data) <- names(data_header)
  data$DateTime <- strptime(paste(data$Date, data$Time), "%d/%m/%Y %H:%M:%S")
  data
}