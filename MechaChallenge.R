# MechaCar Statistical Analysis

# Loading packages
library(tidyverse)
library(dplyr)

# Importing data files
MechaCar_data <- read.csv('MechaCar_mpg.csv',check.names = F,stringsAsFactors = F)
SuspCoil_data <- read.csv('Suspension_Coil.csv',check.names = F,stringsAsFactors = F)

# Linear regression on MechaCar_mpg data
lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD,data=MechaCar_data)

# Generating summary statistics
summary(lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD,data=MechaCar_data))

# Retrieving stats values for PSI in Suspension_Coil data 
total_summary <- summarize(SuspCoil_data, Mean_PSI=mean(PSI), Median_PSI=median(PSI), Var_PSI=var(PSI) , StdDev_PSI=sd(PSI) , .groups = "keep")

# Summary data by Manufactoring Lot
lot_summary <- SuspCoil_data %>% group_by(Manufacturing_Lot) %>% +
  summarize(Mean_PSI=mean(PSI), Median_PSI=median(PSI), Var_PSI=var(PSI) , StdDev_PSI=sd(PSI) , .groups = "keep")


#-------------- end of code -------------#