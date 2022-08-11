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

### Deliverable 4 - Study Design: MechaCar vs Competition

## Summary

### Recommendations
