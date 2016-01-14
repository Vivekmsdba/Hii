
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



# Plot Data

png(filename = "plot1.png", 
    width = 480, height = 480)

hist(Global_active_power, 
     col = "red", 
     main = "Global Active Power", 
     xlab = "Global Active Power (kilowatts)")

dev.off()
png(filename = "plot1.png", 
    width = 480, height = 480, 
    units = "px", bg = "transparent")

hist(Global_active_power, 
     col = "red", 
     main = "Global Active Power", 
     xlab = "Global Active Power (kilowatts)",
     breaks = 12, ylim = c(0, 1200))

dev.off()

