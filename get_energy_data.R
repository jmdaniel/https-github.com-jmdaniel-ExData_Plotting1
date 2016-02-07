##
## Exploratory Data Analysis
##
## Project Week 1 - February 7th 2016
##
## File: get_energy_data.R
## 
## Purpose: get the Individual household electric power consumption Data Set and clean it before analysis
##

#setwd("/Users/jmcoeur/Documents/workspaceR/1.DataScience/ExploratoryData/")

# Download the file from the UC Irvine Machine Learning Repository

# If there is no file  named "household_power_consumption.txt", we download the dataset and unzip it there
if (!file.exists("./household_power_consumption.txt")) {
  dataset <- "https://d396qusza40orc.cloudfront.net/exdata%2Fdata%2Fhousehold_power_consumption.zip"
  download.file(dataset, "./exdata_data_household_power_consumption.zip", method="curl")
  unzip("./exdata_data_household_power_consumption.zip", exdir = ".")
}

# Read the energy data
# As per project notes, "?" represent NA values
# We ensure the proper class conversion to facilitate the loading process
energy_data <- read.table("./household_power_consumption.txt", header = TRUE, sep = ";", na.strings = "?",
                          stringsAsFactors = FALSE, 
                          colClasses = c("character", "character", "numeric", "numeric", "numeric", "numeric",
                                         "numeric", "numeric", "numeric"))
# The dataset has 2,075,259 rows and 9 columns

# We restrict the data to analyse / plot to February 1st & 2nd 2007
plot_data <- energy_data[energy_data$Date == "1/2/2007" | energy_data$Date == "2/2/2007", ]
# 2880 raws in plot_data

# We transform "Date" column from "character" into "Date" with right format 
plot_data$Date <- as.Date(plot_data$Date, format="%d/%m/%Y")

# Concatenate Date & Time, to be used as X axis in plots 2, 3 & 4
fdatetime <- function (date, time) {
  dt <- paste(date, time, sep = " ")
  dt <-  strptime(dt, format="%Y-%m-%d %H:%M:%S", tz = "EST5EDT")
}

# Create new column "DateTime" with the date time of each observation
plot_data$DateTime <- fdatetime(plot_data$Date, plot_data$Time)

# "plot_data" contains the data to be plotted for this project
# Each plot will be drawned in a separated R script, which will call this get_energy_data.R script to ensure the reproduceability of the analysis.


# --------------- End of get_energy_data.R --------------- 

