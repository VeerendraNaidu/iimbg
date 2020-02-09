#splitting the data
mtcars ; proporation of am to be mantained
train_MTC - 70%
test_MTC - 30%

set.seed(47)
library(caTools)
head(mtcars)
split1 = sample.split(mtcars$am, SplitRatio = 0.70)
split1
table(split1)
prop.table(table(split1))
train_MTC = subset(mtcars, split1 == TRUE)
test_MTC = subset(mtcars, split1 == FALSE)
dim(train_MTC) ; dim(test_MTC)
table(train_MTC$am)
table(test_MTC$am)
prop.table(table(train_MTC$am))
prop.table(table(test_MTC$am))

#another method for spliting
library(caret)
createDataPartition(y = factor(mtcars$am), p=0.7, list=F)
intrain <- createDataPartition(y = factor(mtcars$am), p=0.7, list=F)
intrain
mtcars[intrain,]
training <- mtcars[intrain,]
test <-  mtcars[-intrain,]
training
test
table(training$am)
table(test$am)
prop.table(table(training$am))
prop.table(table(test$am))


#logestic regression on mtcars
head(mtcars)
logitmodel = glm(am ~ disp + hp + wt,  data = training)
summary(logitmodel)
#predict on sample data
test_set2 = data.frame(age=c(40,65), gender=c('Male', 'Female'), salary=c(40000, 50000))