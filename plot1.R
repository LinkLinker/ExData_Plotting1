# Load data
source("data.R")

# Plot 1 (setup graphic dev)
png("plot1.png", width = 480, height = 480, bg="transparent")

# Setup histogram
plot1 <- hist(powerConsumption$Global_active_power, 
     main = "Global Active Power",
     col = "red",
     xlab = "Global Active Power (kilowatts)")

title(main = "Global Active Power")

# Write plot to file
dev.off()