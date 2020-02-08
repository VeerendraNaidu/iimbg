#Simple Linear Regrssion
women
head(women)
plot(women)
cor(women)
cov(women$height, women$weight)
cor(women$height, women$weight)

model = lm(weight ~ height, data = women)
model
summary(model)
range(women$height)
range(women$weight)
residuals(model)
plot(model)

predict(model, new=data.frame(height=77))


#doing multiple linear regression on mtcars
head(mtcars)
model2 = lm(mpg ~ wt + hp + qsec, data = mtcars)
summary(model2)
model3 = lm( mpg~wt, data = mtcars)
summary(model3)


#load the data
#missing values
#coorelation between independent variables
#form the linear model
##check the model summary - F stats, R square, coeff P value
#check for assemptions
#predict and find accuracy
