
# Config
data.url = "https://d396qusza40orc.cloudfront.net/exdata%2Fdata%2Fhousehold_power_consumption.zip"
data.dir = "data"

# Download and unzip dataset
if (!file.exists("dataset.zip")) {
  download.file(data.url, "dataset.zip")
  unzip("dataset.zip", exdir = data.dir)
}

# Read dataset to dataframe
if (!exists("powerConsumption")) {
  fileLocation = paste0("../data/", "household_power_consumption.txt")
  print(fileLocation)
  powerConsumption <- read.table(file=fileLocation, 
                                 sep = ";", 
                                 header = TRUE,
                                 na.strings="?",
                                 colClasses = c("character", "character", rep("numeric",7)))
  
  # Convert data and time columns
  powerConsumption$DateTime <- strptime(paste(powerConsumption$Date, powerConsumption$Time), "%d/%m/%Y %H:%M:%S")
  powerConsumption$Date = as.Date(powerConsumption$Date, format="%d/%m/%Y")
  
  # Filter between 2007-02-01 and 2007-02-02
  powerConsumption = powerConsumption[
    powerConsumption$Date >= as.Date("2007-02-01") & powerConsumption$Date <= as.Date("2007-02-02")
  , ]
}

