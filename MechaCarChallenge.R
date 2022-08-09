# Import dependencies
library(tidyverse)

## Deliverable 1
# Import csv file (MechaCar_mpg.csv)
mechacar_table <- read.csv(file='MechaCar_mpg.csv',check.names=F,stringsAsFactors = F)
# Create multiple linear regression model
mpg_model <- lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD, data = mechacar_table)
mpg_model
# Generate summary statistics
summary(mpg_model)

## Deliverable 2
# Import csv file (Suspension_Coil.csv)
suspension_table <- read.csv(file='Suspension_Coil.csv',check.names=F,stringsAsFactors = F)
# Generate summary of PSI continuous variable
total_summary <- suspension_table %>% summarize(Mean=mean(PSI), Median=median(PSI), Variance=var(PSI), SD=sd(PSI), .groups = 'keep')
# Generate Lot summary of PSI by manufacturing lot group
lot_summary <- suspension_table %>% group_by(Manufacturing_Lot) %>% summarize(Mean=mean(PSI), Median=median(PSI), Variance=var(PSI), SD=sd(PSI), .groups = 'keep')

## Deliverable 3
# Perform one-sample t-test for PSI across all lots
t.test(suspension_table$PSI, mu=1500)
# Perform one-sample t-test for PSI of each lot
t.test(subset(suspension_table, Manufacturing_Lot == 'Lot1')$PSI, mu=1500)
t.test(subset(suspension_table, Manufacturing_Lot == 'Lot2')$PSI, mu=1500)
t.test(subset(suspension_table, Manufacturing_Lot == 'Lot3')$PSI, mu=1500)