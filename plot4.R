source("lab.R")

png(filename = "plot4.png")

par(mfrow = c(2,2), mar = c(4, 4, 2, 2))
with(Elpowcons, {
  plot(TimeData, 
       Global_active_power, 
       pch = ".", 
       type = "l", 
       ylab = "Global active power", 
       xlab = "")
  plot(TimeData,
       Voltage,
       pch = ".", 
       type = "l", 
       ylab = "Voltage", 
       xlab = "datetime")
  plot3(bty = "n")
  plot(TimeData, 
       Global_reactive_power, 
       xlab = "datetime", 
       ylab = "Global_reactive_power", 
       type = "l", 
       pch = ".")
})

dev.off()