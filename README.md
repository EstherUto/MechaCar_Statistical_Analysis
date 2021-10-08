# MechaCar Statistical Analysis

## Table of Contents

## Overview of Project

The purpose of this project is to perform data analysis on a prototype car called MechaCar. The goal was to review the data retrieved from production testing to assist the manufacturing team. For this project, tests done on the data include, 
- performing multiple linear regression analysis, 
- collecting summary statistics on the pounds per square inch (PSI) of the suspension coils from the manufacturing lots,
- running t-tests to determine if the manufacturing lots are statistically different and,
- Designing a statistical study to compare vehicle performance of the MechaCar vehicles against vehicles from other manufacturers.

Two data files were provided for this stidy and can be found in the `Resources` folder.

All statistical analysis were performed using R programming language.

## Linear Regression to Predict MPG

A linear regression was performed on the `MechaCar_mpg.csv` data using the below code resulting in the statistics summary shown in figure 1.

```
summary(lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD,data=MechaCar_data))
```

**_FIGURE 1. MPG Summary Statistics_**
![Summary_Statistics](https://user-images.githubusercontent.com/86085601/136634695-560c1a27-1336-43d1-84ed-55837412edd9.png)


The r-squared value alone let's us know there is some good amount of correlation between the other variables and the mpg. The p-value results for all the variables lets us know that this is specifically for the *vehicle length* and *ground clearance*.

Overall, based on the R-squared value, it can be said the linear model predicts the mpg of MechaCar prototypes effectively. This is because the higher the R-squared value, the higher the chances the rest of the data is correlated to the mpg and with the result number of 0.71, it is safe to say there is a good amount of dependency.

## Summary Statistics on Suspension Coils

A basic statistics summary was created for the manufacturing lots using the `Suspension_Coil.csv` file provided. The resulting total summary and the summary per manufacturing lot is shown in figures 2 and 3 respectively.

**_FIGURE 2. Total Summary_**
![Total_Summary](https://user-images.githubusercontent.com/86085601/136634716-4d283902-3784-4d5d-ada9-1319a48d4df1.png)


**_FIGURE 3. Summary per Manufacturing Lot_**

The design specifications for the MechaCar suspension coils dictate that the variance of the suspension coils must not exceed 100 pounds per square inch. The total variance lets us know that there isn't there shouldn't be any issue, however, when looking into the details, manufacturing lot 3 is over that limit. It can be said that the cars being made in that lot should be revised and looked into.


