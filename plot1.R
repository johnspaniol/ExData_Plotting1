source("load_data.R") 

plot1 <- function(dataplot1=NULL) {
  if(is.null(dataplot1))
    dataplot1 <- dataload()

  ##create png file

  png("plot1.png", width=400, height=400)
  
  hist(dataplot1$Global_active_power,main="Global Active Power",xlab="Global Active Power (kilowatts)",ylab="Frequency",col="red")
  
  ## dont forget to close!
  dev.off()
}

plot1()