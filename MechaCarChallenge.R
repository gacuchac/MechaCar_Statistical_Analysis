library(dplyr)

mecha <- read.csv("data/MechaCar_mpg.csv") # read MEchaCar_mpg.csv
mecha_lm <- lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD,data=mecha) #generate multiple linear regression model
summary(mecha_lm) #generate summary statistics
