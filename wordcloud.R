#wordcloud2

#install.package('wordcloud2')
library(wordcloud2)
df = data.frame(word=c('mdi','iim','imt'),freq=c(20,23,15))
df
par(mar= c(0,0,0,0))
wordcloud2(df)

head(demoFreq)
dim(demoFreq)
par(mar= c(0,0,0,0))
wordcloud2(demoFreq, size = 2, color = "random-light", backgroundColor = "white")
