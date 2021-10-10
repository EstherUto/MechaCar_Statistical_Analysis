# MechaCar Statistical Analysis

## Table of Contents
- [Overview of Project](#overview-of-project)
- [Linear Regression to Predict MPG](#linear-regression-to-predict-mpg)
- [Summary Statistics on Suspension Coils](#summary-statistics-on-suspension-coils)
- [T-Tests on Suspension Coils](#t-tests-on-suspension-coils)
- [Study Design: MechaCar vs Competition](#study-design--mechacar-vs-competition)


## Overview of Project

The purpose of this project is to perform data analysis on a prototype car called MechaCar. The goal was to review the data retrieved from production testing to assist the manufacturing team. For this project, tests done on the data include, 
- performing multiple linear regression analysis, 
- collecting summary statistics on the pounds per square inch (PSI) of the suspension coils from the manufacturing lots,
- running t-tests to determine if the manufacturing lots are statistically different and,
- Designing a statistical study to compare vehicle performance of the MechaCar vehicles against vehicles from other manufacturers.

Two data files were provided for this study and can be found in the `Resources` folder.

All statistical analysis were performed using R programming language.

## Linear Regression to Predict MPG

A linear regression was performed on the `MechaCar_mpg.csv` data using the below code resulting in the statistics summary shown in figure 1.

```
summary(lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD,data=MechaCar_data))
```

**_FIGURE 1. MPG Summary Statistics_**

![Summary_Statistics](https://user-images.githubusercontent.com/86085601/136634695-560c1a27-1336-43d1-84ed-55837412edd9.png)

The r-squared value alone let's us know there is some good amount of correlation between the other variables and the mpg. The p-value results for all the variables lets us know that this is specifically for the *vehicle length* and *ground clearance*.

The linear model slope varied for each variable. The slope values for the the model relative to vehicle weight and ground clearance is seen to be result in a positive correlation and a slope not equal to 0. The AWD slope shows there is some sort of negative correlation. However, the vehicle weight and spoiler angle slopes are close to 0. It can be said that overall, the slope of the linear model is not equal to 0. 

Overall, based on the R-squared value, it can be said the linear model predicts the mpg of MechaCar prototypes effectively. This is because the higher the R-squared value, the higher the chances the rest of the data is correlated to the mpg and with the result number of 0.71, it is safe to say there is a good amount of dependency.

## Summary Statistics on Suspension Coils

A basic statistics summary was created for the manufacturing lots using the `Suspension_Coil.csv` file provided. The resulting total summary and the summary per manufacturing lot is shown in figures 2 and 3 respectively.

**_FIGURE 2. Total Summary_**

![Total_Summary](https://user-images.githubusercontent.com/86085601/136634716-4d283902-3784-4d5d-ada9-1319a48d4df1.png)


**_FIGURE 3. Summary per Manufacturing Lot_**

![Summary_per_Manufacturing_lot](https://user-images.githubusercontent.com/86085601/136634942-e11c53c4-ac08-498c-9131-66350312e8a0.png)


The design specifications for the MechaCar suspension coils dictate that the variance of the suspension coils must not exceed 100 pounds per square inch. The total variance lets us know that there isn't there shouldn't be any issue, however, when looking into the details, manufacturing lot 3 is over that limit. It can be said that the cars being made in that lot should be revised and looked into.

## T-Tests on Suspension Coils

T-tests were performed to determine if all the manufacturing lots and each individual lot are statistically different from the population mean. For the tests, a significance value of 5% was chosen. 
- The null hypothesis for the testing is the sample mean is equal to the population mean of 1500 therefore is representative of the population. 
- The alternative hypothesis is the sample mean is not equal to the population mean therefor not representative of the population. 

### T-Test on All Manufacturing Lots

The results from the test on all the manufacturing lots is shown in figure 4. The p-value of 0.06 is greater than the significant value of 0.05 meaning we fail to reject the null hypothesis. This means overall, the sample of all the lots is possible representaive of the population.

**_FIGURE 4. T-Test (All Lots)_**

<img width="398" alt="Lots_t-test" src="https://user-images.githubusercontent.com/86085601/136668946-d061b358-6f05-49fc-a90a-f103b99021b5.png">

### T-Test on Individual Manufacturing Lots

The results from the test performed on the individual lots is provided in the following three images. The resulting p-values for each lot shows that Lot 1 and Lot 2 fail to reject the null hypothesis, however, the p-value of Lot 3 rejects the null hypothesis. This means the Lot 1 and Lot 2 samples are better representative of the population in comparison to lot 3.

**_FIGURE 5. T-Test (Lot 1)_**

<img width="398" alt="Lot_1_t-test" src="https://user-images.githubusercontent.com/86085601/136668999-be64752d-b9bd-4866-a8c7-7d7e9fa7e0b2.png">


**_FIGURE 6. T-Test (Lot 2)_**

<img width="397" alt="Lot_2_t-test" src="https://user-images.githubusercontent.com/86085601/136669008-11ef8e96-d75d-4da5-be63-ffe36a0176c8.png">

**_FIGURE 7. T-Test (Lot 3)_**

<img width="396" alt="Lot_3_t-test" src="https://user-images.githubusercontent.com/86085601/136669014-052374c4-df90-4e4c-9b90-5cdb6f383b06.png">

## Study Design: MechaCar vs Competition

A study design to advertise the benefit of consumers purchasing a MechaCar over car competitors has been requested by the client. To develop the best study, data such as the cost similar cars, fuel consumption, horse power, maintenance costs, aesthetics, how loud the car is, rolling resistance, average life expectancy amongst others.

To focus on what would appeal most to customers, the starting metrics to focus on could be fuel consumption in comparison to competitors.

The null hypothesis would be "The MechaCar's performance cannot be seen fully with how low the car's fuel consumption is". The alternative hypothesis would be "The MechaCar's performance can be seen fully with how low the car's fuel consumption is".

The best statistical test to test the hypothesis would be a single linear regression as it tells us how much the variance of the dependent variable (car performance) can be predicted by the variance of the independent variable (fuel consumption).

The data needed to run the test would be for each unit, what is the fuel consumption and the overall car performance.
