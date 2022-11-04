# Remove all object from R
rm(list=ls())

# Load data for linear regression
df = cars
dim(df)
colnames(df)

# Plotting the data
install.packages("ggplot2")
library(ggplot2)
ggplot(df,aes(speed,dist))+geom_point() # scatter plot
ggplot(df,aes(speed,dist))+geom_point()+geom_smooth(method="lm",se=F) # with regression line

# Divide data into train and test
sample = sample.int(n = nrow(df), size = floor(.8*nrow(df)), replace = F)
train = df[sample, ]
test  = df[-sample, ]

# Build linear model 
lm_model = lm(dist ~ speed, data = train)

# let us summarize the model
summary(lm_model)

# Predict on new test data
Pred = predict(lm_model, test)

# Calculate error rate
mape = function(y, yhat)
  mean(abs((y - yhat)/y))
mape(test$dist, Pred)

# REVIEW
# SST- total variability
# SSR(Explained)- explained variable by reg line. difference b/w est value and mean value
# SSE(Unexplained)- diff b/w observed and predicted values

