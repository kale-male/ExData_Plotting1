Classes <- c(rep("character",2), rep("numeric",7))
col.names <- colnames(read.table("./household_power_consumption.txt",
                                 sep = ";",
                                 header = TRUE,
                                 nrows = 1))

Elpowcons <- read.table("./household_power_consumption.txt", 
                        header = FALSE, 
                        col.names = col.names,
                        colClasses = Classes,
                        sep = ';',
                        skip = 66637,
                        nrows = 2880)
Elpowcons$Date <-as.Date(Elpowcons$Date, "%d/%m/%Y")
Elpowcons <- Elpowcons[Elpowcons$Date == as.Date("2007-02-01") | 
                         Elpowcons$Date == as.Date("2007-02-02"),]

TimeDate <- paste(as.character(Elpowcons$Date), Elpowcons$Time, sep = " ")
Elpowcons$TimeData <- strptime(TimeDate, format = "%Y-%m-%d %H:%M:%S")
hist(Temp$Global_active_power, col = "red")