library(dplyr)

mecha <- read.csv("data/MechaCar_mpg.csv") # read MechaCar_mpg.csv

mecha_lm <- lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD,data=mecha) #generate multiple linear regression model
summary(mecha_lm) #generate summary statistics

mecha_lm2 <- lm(mpg ~ vehicle_length + ground_clearance ,data=mecha) #generate multiple linear regression model
summary(mecha_lm2) #generate summary statistics

suspension <- read.csv("data/Suspension_Coil.csv")
total_summary <- suspension %>% summarize(Mean=mean(PSI), Median=median(PSI), Variance=var(PSI), SD=sd(PSI), .groups = 'keep') #create summary table with multiple columns
lot_summary <- suspension %>% group_by(Manufacturing_Lot) %>% summarize(Mean=mean(PSI), Median=median(PSI), Variance=var(PSI), SD=sd(PSI), .groups = 'keep') #create summary table with multiple columns

# total population
total_sample <- suspension %>% sample_n(50)
t.test(total_sample$PSI,mu=mean(suspension$PSI)) #compare sample versus population means

#lot 1
lot1_sample <- subset(suspension, Manufacturing_Lot=="Lot1") %>% sample_n(50)
t.test(lot1_sample$PSI,mu=mean(suspension$PSI)) #compare lot1 sample versus population means

#lot 2
lot2_sample <- subset(suspension, Manufacturing_Lot=="Lot2") %>% sample_n(50)
t.test(lot2_sample$PSI,mu=mean(suspension$PSI)) #compare lot1 sample versus population meansns

#lot 3
lot3_sample <- subset(suspension, Manufacturing_Lot=="Lot3") %>% sample_n(50)
t.test(lot3_sample$PSI,mu=mean(suspension$PSI)) #compare lot1 sample versus population means
