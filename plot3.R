# Load data
source("data.R")

# Plot 3 (setup graphic dev)
png("plot3.png", width = 480, height = 480, bg="transparent")

# Setup plot, with Sub_metering_1 as first line
plot(powerConsumption$DateTime,
     powerConsumption$Sub_metering_1, 
     type = "l",
     xlab = "",
     ylab = "Energy sub metering")

# Add second line Sub_metering_2
lines(powerConsumption$DateTime,
      powerConsumption$Sub_metering_2,
      col = "red")

# Add third line Sub_metering_2
lines(powerConsumption$DateTime,
      powerConsumption$Sub_metering_3,
      col = "blue")

# Add legend to top right
legend("topright",
       legend = c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"),
       col = c("black", "red", "blue"),
       lwd = 2)

# Write plot to file
dev.off()