# Module 15 Challenge - MechaCar Statistical Analysis

## Overview of the Project

### Purpose
The purpose of this program is to analyze production data for insights that may help the manufacturing team determine why their newest prototype is suffering from production troubles. Our client, Jeremy, would like to explore the relationship between MPG and multiple other metrics using multiple linear regression. This program will also be capable of performing t-tests on the Suspension Coil production data to determine if there are any irregularities in their manufacturing lots.

## Results

### Deliverable 1 - Linear Regression to Predict MPG
![Del1-Summary of MLR model](https://user-images.githubusercontent.com/103288980/184050632-e4ec2b55-9f04-4e6f-a85d-fc62632d0e6f.PNG)
1. Our multiple linear regression model has found the following variables provided the highest non-random contribution to the variance in the MPG values of the dataset. These variables are presented in descending order of their corresponding P-values: spoiler_angle (P-Value: 0.3069), AWD (P-Value: 0.1852), vehicle_weight (P-Value: 0.0776).
2. The slope of our linear model is not considered to be zero. As seen in the table above, our model has an overall P-value of 5.35e-11. This value is much smaller than our standard assumed significance level of 0.05%, therefore we can state there is suffient evidence to reject our null hypothesis.
3. The image below depits our linear model. From our summary statistics we can infer that our model has a strong overall correlation to MPG, evidenced by an R-squared value of 0.7149. However, it important to note the model shows potential signs of overfitting as there is a lack of significant variables in the P-test results above.

![Del1-MLR model](https://user-images.githubusercontent.com/103288980/184051706-893025d4-b5ff-4147-bd56-ba92ccf766f6.PNG)

### Deliverable 2 - Summary Statistics on Suspension Coils
![Del2-total_summary](https://user-images.githubusercontent.com/103288980/184052666-b404c77a-14e8-4fbf-a833-6383114d04bc.PNG)
1. Our program analyzed the production data for Suspension Coils. From the summary table above, we can infer the overall population of suspension coils does meet the design specifications as the standard deviation (7.89 PSI) of the overall population does not exceed 100 PSI.

![Del2-lot_summary](https://user-images.githubusercontent.com/103288980/184052695-3180167e-63ad-4d61-af55-cff4bbf0a26f.PNG)

2. Our analysis has also determined that each individual lot also meets the design specification as none of the standard deviations seen above are greater than 100 PSI.

### Deliverable 3 - T-Tests on Suspension Coils
Our program performs several T-Tests to determine if the manufacturing lots are statistically different from the mean population. The results are pictured below:

![Del3-ttest_alllots](https://user-images.githubusercontent.com/103288980/184240997-fd1584e5-997c-4443-ba92-80b31c4847b3.PNG)
1. T-Test of overall population: Fail to reject null hypothesis as P-Value (0.06028) is above significance level. Thus the overall population is not statistically different from the mean population.

![Del3-ttest_lot1](https://user-images.githubusercontent.com/103288980/184241017-af024159-21b1-4895-947e-725299e295a3.PNG)
2. T-Test of Lot 1: Fail to reject null hypothesis as P-Value (1) is well above significance level. Thus Lot 1 is not statistically different from the mean population.

![Del3-ttest_lot2](https://user-images.githubusercontent.com/103288980/184241063-4c5752e5-6296-44dc-8649-7c462def131a.PNG)
3. T-Test of Lot 2: Fail to reject null hypothesis as P-Value (0.6072) is well above significance level. Thus Lot 2 is not statistically different from the mean population.

![Del3-ttest_lot3](https://user-images.githubusercontent.com/103288980/184241081-62370221-8e32-4ecb-8431-c7174d441c29.PNG)
4. T-Test of Lot 3: Reject null hypothesis as P-Value (0.04168) is below significance level. Thus Lot 3 is statistically different from the mean population.

## Summary

### Deliverable 4 - Study Design: MechaCar vs Competition
To improve the utility of our program, we recommend that AutosRUs' management consider supplimenting the MechaCar analysis with an analysis of the competition. It is our belief that a regression model which predicts Units Sold as a function of Cost and Fuel Efficiency (Both Highway and City) would be a beneficial addition to the current model. 
This model would test the Alternative Hypothesis stating units sold will increase as costs decrease and fuel efficiency increases. An evaluation of the P-Values for the individual regressors will determine if the selected metrics are good predictors of our hypothesis. It would also be beneficial to evaluate the R-Squared coefficient of the overall model. 
In order to run this experiment, we will need sales data (cost and volumes) from competitors' annual sales reports as well as fuel efficiency data from government regulatory agencies. 
