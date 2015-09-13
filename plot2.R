source("lab.R")

plot(Elpowcons$TimeData, 
     Elpowcons$Global_active_power, 
     pch = ".", 
     type = "l", 
     ylab = "Global active power (kilowatts)", 
     xlab = "")
dev.print(png, 
          file = "plot2.png", 
          width = 480, 
          height = 480)
dev.off()
