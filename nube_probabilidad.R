library("tm")
library("SnowballC")
library("wordcloud")
library("RColorBrewer")
nube1 <- read.csv("data/nube1.csv")
t=data.frame(table(nube1))

dword=t[,1]
dfreq=t[,2]
  #set.seed(1234)
  wordcloud(words = dword, freq = dfreq, min.freq = 1,
            max.words=200, random.order=FALSE, rot.per=0.35, 
            colors=brewer.pal(8, "Dark2"))
  
  