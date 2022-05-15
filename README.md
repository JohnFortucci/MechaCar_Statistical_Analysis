# Introduction 

Management has approached the data analystics team to review production data to determine if there are any insights that may help the manufacturing team which is currently having some production troubles with the MechaCar prototype this is blocking the manufacturing team's progress.

## Linear Regression to Predict MPG

### Overview

Using the dataset for the prototype for MechaCars produce a linear regression model to predict MPG from the variables of vehicle length, vehicle weight, spoiler angle, ground clearance, and AWD.

### Output

Below is the output showing the results of the linear regression model to predict MPG from the variables :- 

- Vehicle length
- Vehicle weight
- Spoiler angle 
- Ground clearance
- AWD.


![LR_to_predict_MPG](/Resources/LR_to_predict_MPG.PNG)

### Analysis

Based on the above :- 
- Vehicle length and ground clearance provided a non-random amount of variance to the mpg values using this dataset, as shown by their low p-values. 
- The slope of the linear model is not considered to be zero because the estimates for all coefficients are not zero. 
- This model predicts the MPG of MechaCar protoypes effectively because the Adjusted R-squared reflects that ~68.25% of the variation within mpg is explained by the coefficients.

## Summary Statistics on Suspension Coils

### Overview

Using the dataset Suspension_Coil.csv which contains the the weight capacities of multiple suspension coils from multiple production lots create summary statistics to show :- 

- The suspension coil’s PSI continuous variable across all manufacturing lots
- The following PSI metrics for each lot: mean, median, variance, and standard deviation.

### Output

Below is the output showing the runlog of the code executed to generate the summary statistics

![SS_on_Suspension_Coils](/Resources/SS_on_Suspension_Coils.PNG)

### Analysis

The design specifications for the MechaCar suspension coils dictate that the variance of the suspension coils must not exceed 100 pounds per square inch (PSI).

The table below shows the mean, median, variance, and standard deviation of the PSI generated for the overall manufacturing lots.

#### Total Summary
![Total_Summary](/Resources/Total_Summary.PNG)

The table below shows the mean, median, variance, and standard deviation of the PSI generated for each manufacturing lot.

#### Lot Summary
![Lot_Summary](/Resources/Lot_Summary.PNG)

Based on the summary tables above it can be seen that based on the variance of suspension colis in the total summary table , the suspension coils meet the MechaCar design specifications. 
If we break the data by manufacturing lot summary we can see that Lots 1 and 2 meet the MechaCar specification , but lot 3 is outwith the MechaCar specification.

## T-Tests on Suspension Coils

### Overview

Perform t-tests to determine if all manufacturing lots and each lot individually are statistically different from the population mean of 1,500 pounds per square inch.

### Output

Below is the output showing the runlog of the code executed to generate the T-tests.

![T_test_output](/Resources/T_test_output.PNG)

### Analysis

#### Overall Suspension Coil T-Test

