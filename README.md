# MechaCar_Statistical_Analysis

## Overview

The management team at AutosRUs’ has requested an analytical review of production data for the new MechaCar. The hope is to gain insights into production issues MechCar has been having and find solutions to create a successful product.

The key objectives of the analysis include:

 - determine variables that predict MechaCar's mpg through linear regression analysis
 - generate summary statistics on pounds per square inch (PSI) of suspension coils
 - determine if manufacturing lots are statistically different from mean population
 - design a study to compare MechaCar performance against other manufacturer vehicles
  

## Linear Regression to Predict MPG

Summary of Findings

1. Within the dataset, 'Vehicle Length' and 'Ground Clearance' appear to be the most significant variables that provide a non-random effect on the MechaCar's mpg values.

![Summary of Findings](https://github.com/RebeccaA79/MechaCar_Statistical_Analysis/blob/main/images/MechaCar_mpg_summary_statistics.png)

2. Based on the p-value of 5.35e-11, the slope of the linear model is not considered zero.  

3. The R-squared value of 0.7149 shows the linear model is approximately 71% accurate in predicting mpg of the MechaCar. Without considering other factors, the linear model does seem to be reliable.  


## Summary Statistics on Suspension Coils

The variance at the total summary level is approximately 62 psi, meeting the design specification requirement of remaining under 100 psi. 

![Total Summary](https://github.com/RebeccaA79/MechaCar_Statistical_Analysis/blob/main/images/total_summary_df.png)

Looking at the lot_summary_df image below, Lot 3 does not meet the design specification with a psi of approximately 170 falling significantly above the 100 psi requirement.

![Individual Lot Summary](https://github.com/RebeccaA79/MechaCar_Statistical_Analysis/blob/main/images/lot_summary_df.png)


## T-Tests on Suspension Coils

The T-test results across all manufacturing lots shows a p-value of 0.06028 which indicates they are not statistically different from the population mean.

![T-Test All](https://github.com/RebeccaA79/MechaCar_Statistical_Analysis/blob/main/images/suspension_coils_cumulative_t-test.png)

The T-test on each individual lot shows p-values of:


Lot 1: 1
Lot 2: 0.6072
Lot 3: 0.04168

These results show Lot 1 and Lot 2 are not statistically different from the population mean. However, Lot 3 is slightly statistically different from the population mean. Lot 3 appears to be under-performing and should be further analyzed to determine if it should be dropped.

![T-Test Individual](https://github.com/RebeccaA79/MechaCar_Statistical_Analysis/blob/main/images/suspensionCoil_individual_lot_t-test.png)

## Study Design: MechaCar vs Competition

With the surging cost of fuel, consumers are particularly interested in a vehicles fuel efficiency. A study should be performed to quantify how the MechaCar performs against the competition in terms of fuel efficiency. The following are highlights of the study:


 1. Metric to be tested: Fuel efficiency- city and highway

 2. Null hypothesis: MechaCar's fuel efficiency is similar to the fuel efficiency of competitors vehicles within a similar class.
 
    Alternative hypothesis: MechaCar's fuel efficiency is statistically different in comparison to the fuel efficiency of competitors vehicles within a similar class

 3. Statistical test to be used: The T-test is the most appropriate statistical method to use in this study
 
 4. Data needed to run the test: Competitor fuel efficiency data for vehicles of a similar class to the MechaCar

