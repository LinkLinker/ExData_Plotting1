# Load data
source("data.R")

# Plot 2 (setup graphic dev)
png("plot2.png", width = 480, height = 480, bg="transparent")

# Setup histogram
plot(powerConsumption$DateTime,
     powerConsumption$Global_active_power, 
     type = "l",
     xlab = "",

     ylab = "Global Active Power (kilowatts)")

# axis(1, at=1:3, labels=c("Thu", "Fri", "Sat"))

# Write plot to file
dev.off()