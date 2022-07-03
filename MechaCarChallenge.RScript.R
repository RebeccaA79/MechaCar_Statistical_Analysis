# Deliverable 1: Linear Regression to Predict MPG

  ## step 3. Use the library() function to load the dplyr package:
library(dplyr)

  ## step 4. Import and read in the MechaCar_mpg.csv file as a dataframe:
Car_Data <- read.csv('Resources/MechaCar_mpg.csv')
head(Car_Data)

  ## step 5. Perform linear regression using the lm() function.
  ## pass in six variables (i.e., columns),
  ## add the dataframe created in Step 4 as data parameter
lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD,data =Car_Data)

  ## step 6. Use summary() function to determine p-value & r-squared value
  ## for linear regression model
summary(lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD,data =Car_Data))

# Deliverable 2: Visualizations of the Trip Analysis

  ## step 2: import & read Suspension_Coil.csv file as a table:
Coil_Data <- read.csv('Resources/Suspension_Coil.csv')
head(Coil_Data)
 
  ## step 3: create total_summary dataframe with summarize() function to get mean, median, variance, std deviation of PSI column
Mean = mean(Coil_Data$PSI)
Median=median(Coil_Data$PSI)
Variance=var(Coil_Data$PSI)
SD = sd(Coil_Data$PSI)

total_summary <- data.frame(Mean,Median,Variance,SD)

  ## step 4: group each manufacturing lot by mean, median, variance & std. dev.
lot_summary <- Coil_Data %>% group_by(Manufacturing_Lot) %>% summarize(Mean=mean(PSI),Median = median(PSI),Variance = var(PSI),SD = sd(PSI), .groups = 'keep')


# Deliverable 3: T-Tests on Suspension Coils
  ## use t.test() to determine if PSI across all lots is statistically different population mean of 1,500 psi
t.test((Coil_Data$PSI),mu = 1500)

  ## write 3 scripts for each lot to determine if PSI is statiscally differant than 1500 population mean

t.test(subset(Coil_Data,Manufacturing_Lot =="Lot1")$PSI,mu = 1500)
t.test(subset(Coil_Data,Manufacturing_Lot =="Lot2")$PSI,mu = 1500)
t.test(subset(Coil_Data,Manufacturing_Lot =="Lot3")$PSI,mu = 1500)




