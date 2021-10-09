# MechaCar Statistical Analysis

# Loading packages
library(tidyverse)
library(dplyr)

# --- Importing data files
MechaCar_data <- read.csv('MechaCar_mpg.csv',check.names = F,stringsAsFactors = F)
SuspCoil_data <- read.csv('Suspension_Coil.csv',check.names = F,stringsAsFactors = F)

# --- Linear regression on MechaCar_mpg data
lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD,data=MechaCar_data)

# Generating summary statistics
summary(lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD,data=MechaCar_data))

# --- Statistics on Suspension Coil data
# Retrieving stats values for PSI in Suspension_Coil data 
total_summary <- summarize(SuspCoil_data, Mean_PSI=mean(PSI), Median_PSI=median(PSI), Var_PSI=var(PSI) , StdDev_PSI=sd(PSI) , .groups = "keep")

# Summary data by Manufacturing Lot
lot_summary <- SuspCoil_data %>% group_by(Manufacturing_Lot) %>% summarize(Mean_PSI=mean(PSI), Median_PSI=median(PSI), Var_PSI=var(PSI) , StdDev_PSI=sd(PSI) , .groups = "keep")

# --- Performing a T-test analysis on Suspension_Coil data

# t-test to check if the PSI across all manufacturing lots is statistically different from the population mean
t.test(SuspCoil_data$PSI,mu=1500)

# Determining if the PSI for each manufacturing lot is statistically different from the population mean
# filtering and assigning manufacturing lots
lot1 <- subset(SuspCoil_data, Manufacturing_Lot == "Lot1")
lot2 <- subset(SuspCoil_data, Manufacturing_Lot == "Lot2")
lot3 <- subset(SuspCoil_data, Manufacturing_Lot == "Lot3")

# Lot 1 Sample t-test
t.test(lot1$PSI,mu=1500)

# Lot 2 Sample t-test
t.test(lot2$PSI,mu=1500)

# Lot 3 Sample t-test
t.test(lot3$PSI,mu=1500)

#-------------- end of code -------------#