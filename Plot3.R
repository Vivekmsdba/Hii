

# Load Data

hpc <- read.table("household_power_consumption.txt",
                  header = TRUE,
                  sep = ";",
                  na = "?")


#Selecting the right date period (from 1/2/2007 to 2/2/2007)
hpc.s <- hpc[(hpc$Date=="1/2/2007") | (hpc$Date=="2/2/2007"),]

#Sanity Check
head(hpc.s)

attach(hpc.s)

hpc.s$DateTime <- strptime(Date, "%d/%m/%Y")



# Plot Data

png(filename = "plot3.png", 
    width = 480, height = 480,
    units = "px", bg = "white")

plot(DateTime, Sub_metering_1, 
     type = "l",
     col = "black",
     xlab = "", ylab = "Energy sub metering")
lines(DateTime, Sub_metering_2, col = "red")
lines(DateTime, Sub_metering_3, col = "blue")

legend("topright", 
       col = c("black", "red", "blue"),
       c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"),
       lwd = 1)

dev.off() 




