##
## Exploratory Data Analysis
##
## Project Week 1 - February 7th 2016
##
## File: plot1.R
## 
## Purpose: Plot the Frequency of the Global Active Power of the Individual household electric power consumption for February 1st & 2nd 2007.
##

# --------------------------------------------
# Plot 1
# Global Active Power vs. Frequency

source("get_energy_data.R")

# Construct the plots and save it to a PNG file with a width of 480 pixels and a height of 480 pixels
# Open the graphic device as PNG file
png(filename = "plot1.png", width = 480, height = 480)

# Draw the plot
hist(plot_data$Global_active_power, freq = TRUE, col = "red", main = "Global Active Power",
     xlab = "Global Active Power (kilowatts)", ylab = "Frequency")

# Close the graphical device
dev.off()

# --------------- End of plot1.R --------------- 
