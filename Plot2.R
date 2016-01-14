

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

png(filename = "plot2.png", 
    width = 480, height = 480,
    units = "px", bg = "white")

plot(DateTime,  Global_active_power, 
     type = "l",
     xlab = "",
     ylab = "Global Active Power (kilowatts)")

dev.off() 





