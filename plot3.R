source("load_data.R")

plot3 <- function(dataPlot3=NULL) {
  if(is.null(dataPlot3))
    dataPlot3 <- dataload()
  
  ##create png file
  png("plot3.png", width=400, height=400)
  
  
  plot(dataPlot3$Time, dataPlot3$Sub_metering_1, type="l", col="black",xlab="", ylab="Energy sub metering")
  lines(dataPlot3$Time, dataPlot3$Sub_metering_2, col="red")
  lines(dataPlot3$Time, dataPlot3$Sub_metering_3, col="blue")
  legend("topright",col=c("black", "red", "blue"),c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"),lty=1)
  
  #dont forget to close!
  dev.off()
}

plot3()