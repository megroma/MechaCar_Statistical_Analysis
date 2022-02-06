library(dplyr)
MechaCar_mpg <- read.csv("MechaCar_mpg.csv")
lg <- lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD, data=MechaCar_mpg)
summary(lg)

Coil <- read.csv("Suspension_Coil.csv")
total_summary <- Coil%>% 
  summarise(Mean=mean(PSI), Median = median(PSI), StD = sd(PSI), Variance = var(PSI))

lot_summary <- Coil%>% group_by(Manufacturing_Lot) %>% summarise(Mean=mean(PSI), Median = median(PSI), StD = sd(PSI), Variance = var(PSI))


t.test(Coil$PSI, mu=1500)

t.test(subset(Coil, Manufacturing_Lot == "Lot1") $PSI, mu=1500)  
t.test(subset(Coil, Manufacturing_Lot == "Lot2") $PSI, mu=1500)
t.test(subset(Coil, Manufacturing_Lot == "Lot3") $PSI, mu=1500)