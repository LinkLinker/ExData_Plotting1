# Load data
source("data.R")

# Plot 4 (setup graphic dev)
png("plot4.png", width = 480, height = 480, bg="transparent")

# Setup grid for plots
par(mfrow=c(2,2))

# Plot 1 (top left)
plot(powerConsumption$DateTime,
     powerConsumption$Global_active_power, 
     type = "l",
     xlab = "",
     ylab = "Global Active Power")

# Plot 2 (top right)
plot(powerConsumption$DateTime,
     powerConsumption$Voltage, 
     type = "l",
     xlab = "datetime",
     ylab = "Voltage")

# Plot 3 (bottom left)
plot(powerConsumption$DateTime,
     powerConsumption$Sub_metering_1, 
     type = "l",
     xlab = "",
     ylab = "Energy sub metering")
lines(powerConsumption$DateTime,
      powerConsumption$Sub_metering_2,
      col = "red")
lines(powerConsumption$DateTime,
      powerConsumption$Sub_metering_3,
      col = "blue")
legend("topright",
       legend = c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"),
       col = c("black", "red", "blue"),
       bty = "n",
       lwd = 1)

# Plot 4 (bottom right)
plot(powerConsumption$DateTime,
     powerConsumption$Global_reactive_power, 
     type = "l",
     ylab = "Global_reactive_power",
     xlab = "datetime")


# Write plot to file
dev.off()