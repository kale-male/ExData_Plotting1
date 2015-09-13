source("lab.R")
library(datasets)

hist(Elpowcons$Global_active_power, 
     col = "red", 
     main = "Global active power", 
     xlab = "Global active power (kilowatts)")
dev.print(png, 
          file = "plot1.png", 
          width = 480, 
          height = 480)
dev.off()