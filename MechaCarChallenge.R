library(dplyr)

mecha <- read.csv("data/MechaCar_mpg.csv") # read MechaCar_mpg.csv

mecha_lm <- lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD,data=mecha) #generate multiple linear regression model
summary(mecha_lm) #generate summary statistics

mecha_lm2 <- lm(mpg ~ vehicle_length + ground_clearance ,data=mecha) #generate multiple linear regression model
summary(mecha_lm2) #generate summary statistics

suspension <- read.csv("data/Suspension_Coil.csv")
total_summary <- suspension %>% group_by(Manufacturing_Lot) %>% summarize(Mean=mean(PSI), Median=median(PSI), Variance=var(PSI), SD=sd(PSI), .groups = 'keep') #create summary table with multiple columns
