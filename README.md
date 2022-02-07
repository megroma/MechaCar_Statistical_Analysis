# MechaCar Statistical Analysis

## Linear Regression to Predict MPG
This linear model compares multiple factors that may have an impact on the MPG. 

<img width="465" alt="D1 summary" src="https://user-images.githubusercontent.com/90511014/152705183-9fe877fb-85cf-418b-ae0f-f50544733fee.png">


- Which variables/coefficients provided a non-random amount of variance to the mpg values in the dataset?
  -   As vehicle length and ground clearance both have a very small p-values they both are likely to provide a non random variance to MPG. 

- Is the slope of the linear model considered to be zero? Why or why not?
  - The as the intercept PR>|t| is statiscally significant and not 0. 

- Does this linear model predict mpg of MechaCar prototypes effectively? Why or why not?
  - This model can be used to predict the mpg effectively. This linear model has a R-squared value at .71 so it fits realatively well and is considered to have a strong correlation. 

## Summary Statistics on Suspension Coils
This model looks at the summary of the data looking at the coil and PSI as well as grouped by the lot

<img width="309" alt="D2 total Summary" src="https://user-images.githubusercontent.com/90511014/152705249-e2c56060-3f8d-4d8e-97f8-383133c6e69b.png">

<img width="448" alt="D2 Lot Summary" src="https://user-images.githubusercontent.com/90511014/152705371-d7a3944d-ee1a-4b27-b820-1623844dc616.png">


The design specifications for the MechaCar suspension coils dictate that the variance of the suspension coils must not exceed 100 pounds per square inch. 
- Does the current manufacturing data meet this design specification for all manufacturing lots in total and each lot individually? Why or why not?
  - The combined variance of the data is 62 and Lots 1 and 2 are very low which meets the specifications. Lot 3 however has a variance well over 100 at 170 so this data does not meet the specifications.

## T-Tests on Suspension Coils
briefly summarize your interpretation and findings for the t-test results. Include screenshots of the t-test to support your summary.

<img width="448" alt="D3 Lot 1" src="https://user-images.githubusercontent.com/90511014/152811289-f39fd2ae-a755-4ecf-8cd8-96b3b1163601.png">
This p value is 1 so we would fail to reject the null hypothesis that there is no statiscally significant difference in this data from the mean of 1500.
<img width="448" alt="D3 Lot 2" src="https://user-images.githubusercontent.com/90511014/152811507-8a08536a-89e2-4997-bff7-c699c885d5b5.png">
This p value is .60 so we would also fail to reject the null hypothesis that there is no statiscally significant difference in this data from the mean of 1500.

<img width="448" alt="D3 Lot 3" src="https://user-images.githubusercontent.com/90511014/152811692-11c44967-49c2-4b59-86e9-ed0a357f8499.png">
This p value is .04 so we would reject the null hypothesis that there is no statiscally significant difference in this data from the mean of 1500. This has a low probability of this happening by chance. 

## Study Design: MechaCar vs Competition

To compare further against the competition we are going to look at how cost compares to MPG, Safety Rating, and Horsepower. 
Null hypothesis - There is no significant difference in price based on MPG, Safety Rating, and Horsepower
Alternative hypothesis - There is a significant difference in price based on MPG, Safety Rating, and Horsepower.

To test this we would run a linear regression with multiple variables similar to the following code:
  Summary(lm(cost ~ MPG + Safety + HP, data))
To have this be the most accurate we should have a variety of our and competition's cars from the least expensive to the most. We would look at the resulting p-values to see which factor if any is most significant.


