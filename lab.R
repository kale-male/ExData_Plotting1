library(datasets)

Classes <- c(rep("character",2), rep("numeric",7))
# col.names <- colnames(read.table("./household_power_consumption.txt",
#                                  sep = ";",
#                                  header = TRUE,
#                                  nrows = 1))

Elpowcons <- read.table("./household_power_consumption.txt", 
                        header = TRUE, 
                        col.names = col.names,
                        colClasses = Classes,
                        sep = ';',
                        na.strings = "?"
                        #skip = 66637,
                        #nrows = 2880
                        )
Elpowcons$Date <-as.Date(Elpowcons$Date, "%d/%m/%Y")
Elpowcons <- Elpowcons[Elpowcons$Date == as.Date("2007-02-01") | 
                         Elpowcons$Date == as.Date("2007-02-02"),]

TimeDate <- paste(as.character(Elpowcons$Date), Elpowcons$Time, sep = " ")
Elpowcons$TimeData <- strptime(TimeDate, format = "%Y-%m-%d %H:%M:%S")

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
