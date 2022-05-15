# Deliverable 1

library(dplyr)                                                                                                            # Load the dplyr library
MechaCar_mpg <- read.csv('MechaCar_mpg.csv',stringsAsFactors = F)                                                         # Read in dataset
head(MechaCar_mpg)                                                                                                        # Check the MechaCar_mpg dataframe after load
lm(formula = mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD,data=MechaCar_mpg)            # Perform linear regression using the lm() function
summary(lm(formula = mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD,data=MechaCar_mpg))   # Using summary() function to determine
                                                                                                                          # p-value and the r-squared value 
                                                                                                                          # for the linear regression model.

# Deliverable 2

Suspension_Coil_table <- read.csv(file='Suspension_Coil.csv',check.names=F,stringsAsFactors = F) # Read in the Suspension_Coil.csv file as a table.
head(Suspension_Coil_table)


# Write an RScript that creates a total_summary dataframe using the summarize() function to get the mean, median, variance, and standard deviation of the suspension coil's PSI column
?summarize 
total_summary <- Suspension_Coil_table %>% summarize(Mean=mean(PSI), Median=median(PSI), Variance=var(PSI), SD=sd(PSI), .groups = 'keep')
head(total_summary)


# Write an RScript that creates a lot_summary dataframe using the group_by() and the summarize() functions to group each manufacturing lot by the :-
# mean, median,variance, and standard deviation of the suspension coil's PSI column.
lot_summary <- Suspension_Coil_table %>% group_by(Manufacturing_Lot) %>% summarize(Mean=mean(PSI), Median=median(PSI), Variance=var(PSI), SD=sd(PSI), .groups = 'keep')
head(lot_summary)

# DELIVERABLE 3


# Write an RScript using the t.test() function to determine if the PSI across all manufacturing lots 
# is statistically different from the population mean of 1,500 pounds per square inch.
t.test((Suspension_Coil_table$PSI),mu=1500)


# Write three more RScripts using the t.test() function and its subset() argument to determine if the PSI for each manufacturing lot 
# is statistically different from the population mean of 1,500 pounds per square inch.
t.test((subset(Suspension_Coil_table, Manufacturing_Lot == "Lot1")$PSI),mu=(1500))
t.test((subset(Suspension_Coil_table, Manufacturing_Lot == "Lot2")$PSI),mu=(1500))
t.test((subset(Suspension_Coil_table, Manufacturing_Lot == "Lot3")$PSI),mu=(1500))
