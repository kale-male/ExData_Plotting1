source("lab.R")
library(datasets)

plot3 <- function(bty = "y"){
  
  with(Elpowcons, {
    plot(TimeData,
         Sub_metering_1, 
         type = "n", 
         xlab = "", 
         ylab = "Energy sub metering")
    
    points(TimeData,
           Sub_metering_1, 
           type = "l", 
           col = "black")
    points(TimeData,
           Sub_metering_2, 
           type = "l", 
           col = "red")
    points(TimeData,
           Sub_metering_3,
           type = "l", 
           col = "blue")
  })
  legend("topright", pch = "-", 
         col = c("black", "red", "blue"), 
         legend = c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"),
         bty = bty)
  
}

png(filename = "plot3.png")
plot3()
dev.off()