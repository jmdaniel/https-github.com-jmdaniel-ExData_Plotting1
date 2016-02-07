##
## Exploratory Data Analysis
##
## Project Week 1 - February 7th 2016
##
## File: plot2.R
## 
## Purpose: Plot the Global Active Power (killowatts) over the two days in February 1 & 2 2007
##

# --------------------------------------------
# Plot 2
# Global Active Power vs. time over two days

# Download and read the data
source("get_energy_data.R")

# Construct the plots and save it to a PNG file with a width of 480 pixels and a height of 480 pixels
# Open the graphic device as PNG file
png(filename = "plot2.png", width = 480, height = 480)

# We remove the X label: xlab = 0
# We set the type of point to stair steps: type = "s"
plot(x = plot_data$DateTime, y = plot_data$Global_active_power, xlab = "",
     ylab = "Global Active Power (kilowatts)", type = "s")

# Close the graphical device
dev.off()

# --------------- End of plot2.R --------------- 
