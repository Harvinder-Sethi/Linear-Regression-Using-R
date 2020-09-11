library(dplyr)
library(readr)
bdims <- read_csv("Assignments/Assignment03/bdims.csv")
View(bdims)

#To check and see if the data is linear or not.
#Visualise the relationship between chest diameter and height. 
#Does there appear to be a linear relationship?
plot(che.di ~ hgt,data= bdims)

summary(bdims$che.di)
summary(bdims$hgt)

library(psychometric)
corelation = cor(bdims$che.di , bdims$hgt) 
CIr(corelation, 505, 0.95)

model %>% summary()

# h0= No statistical significant.
# Intercept null hypothesis failed to reject, because p value greater than 0.05
# h0= There is no increase in chest diameter as the height is varied.
# slope null hypothesis is rejected, because p value is very small than 0.05
# h0= Does not fit the linear regression model.
# F-statistic:  decide whether model fits the linear regression or not.
# since p-value = < 2.2e-16 i.e. less than 0.05 so we reject our null hypothesis.

model = lm( che.di ~ hgt,data= bdims)
model
#lm(y,x)
#The constant, or intercept, is the average value for y when x=0

model %>% confint()
# since h0 lies in between this range for intercept so we fail to reject our null hypothesis.
# since h0 lies outside this range for slope so we reject our null hypothesis.


#normally distributed looking at qq plot.
#linearly distributed.
#no outliers
#module 9.

cor(bdims$che.di , bdims$hgt)
#since the value is greater than 0 so we can say that there is strong 
#positive corelation fitting the linear regression model.
