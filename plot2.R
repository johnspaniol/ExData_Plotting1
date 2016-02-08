
source("load_data.R")

plot2 <- function(dataPlot2=NULL) {
  if(is.null(dataPlot2))
    dataPlot2 <- dataload()
  
  ## create png file
  
  png("plot2.png", width=400, height=400)
  
  plot(dataPlot2$Time, dataPlot2$Global_active_power,type="l",xlab="",ylab="Global Active Power (kilowatts)")
  
  ##don't forget to close!
  dev.off()
}

plot2()