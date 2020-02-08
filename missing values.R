#missing values

x = c(3,5,4,5)
x
mean(x)
x1 = c(4,5, ,6)
x2 = c(5,5,NA,20)
x2
mean(x2)
mean(x2, na.rm=T)
is.na(x2)
sum(is.na(x2))

x2[is.na(x2)] = mean(x2, na.rm=T)
x2

library(VIM)
data(sleep)
str(sleep)
summary(sleep)
names(sleep)
is.na(sleep$Dream)
sum(is.na(sleep$Dream))
colSums(is.na(sleep))
rowSums(is.na(sleep))
complete.cases(sleep)
sleep[complete.cases(sleep),]
