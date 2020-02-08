df = mtcars
df
#ggplots
library(ggplot2)
ggplot(df, aes(x=wt, y=mpg)) + geom_point()
ggplot(df, aes(x=wt, y=mpg)) + geom_point(aes(color=am))
ggplot(df, aes(x=wt, y=mpg)) + geom_point(aes(color=am, size=hp))
ggplot(df, aes(x=wt, y=mpg)) + geom_point(aes(color=am, size=hp, shape=carb))

ggplot(df, aes(x=cyl, y=gear, fill=cyl)) + geom_bar(stat='identity')

df %>% group_by(cyl, gear) %>% summarise(CNT = n())
ggplot(df %>% group_by(cyl, gear) %>% summarise(CNT = N()), aes(x=cyl, y=)) 


#Box Plot
ggplot(df, aes(x='', y=mpg)) + geom_boxplot()
ggplot(df, aes(x=gear, y=mpg, fill=gear)) + geom_boxplot()
ggplot(df, aes(x=gear, y=mpg, fill=gear)) + geom_boxplot() + facet_grid(~ cyl)
