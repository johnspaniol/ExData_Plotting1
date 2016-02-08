source("load_data.R")

plot4 <- function(dataPlot4=NULL) {
  if(is.null(dataPlot4))
    dataPlot4 <- dataload()
  
  ##create png file
  png("plot4.png", width=400, height=400)
  
  par(mfrow=c(2,2))
  
  #- plot 1
  plot(dataPlot4$Time, dataPlot4$Global_active_power,type="l",xlab="",ylab="Global Active Power")
  
  #- plot 2
  plot(dataPlot4$Time, dataPlot4$Voltage, type="l",xlab="datetime", ylab="Voltage")
  
  #- plot 3
  plot(dataPlot4$Time, dataPlot4$Sub_metering_1, type="l", col="black",xlab="", ylab="Energy sub metering")
  lines(dataPlot4$Time, dataPlot4$Sub_metering_2, col="red")
  lines(dataPlot4$Time, dataPlot4$Sub_metering_3, col="blue")
  legend("topright",col=c("black", "red", "blue"),c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"),lty=1,box.lwd=0)
  
  #- plot 4
  plot(dataPlot4$Time, dataPlot4$Global_reactive_power, type="n",xlab="datetime", ylab="Global_reactive_power")
  lines(dataPlot4$Time, dataPlot4$Global_reactive_power)
  
  ##don't forget to close!
  dev.off()
  
}

plot4()