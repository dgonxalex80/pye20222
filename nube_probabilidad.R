library("tm")
library("SnowballC")
library("wordcloud2")
library("RColorBrewer")
# nube1 <- read.csv("data/nube1.csv")

palabras=c("probabilidad", 
           "azar", 
           "aleatorio", 
           "deterministico", 
           "incertidumbre", 
           "probable", 
           "imposible", 
           "cierto", 
           "incierto", 
           "clásico", 
           "subjetivo", 
           "frecuentista", 
           "evento", 
           "experimento", 
           "conjunto", 
           "unión", 
           "interseción",
           "conjunto",
           "marginal",
           "Pascal",
           "Fermat",
           "De Meré",
           "Gauss",
           "Laplace",
           "Kolmogorov") # 20
replicas=c(10,8,8,8,8,8,8,8,8,4,4,4,4,4,4,4,4,4,4,6,6,6,5,5,5)

nube1=rep(palabras, replicas)

t=data.frame(table(nube1))

dword=t[,1]
dfreq=t[,2]
set.seed(1234)
# wordcloud(words = dword, freq = dfreq, min.freq = 1,
#            max.words=200, random.order=FALSE, rot.per=0.35, 
#            colors=brewer.pal(8, "Dark2"))

library(wordcloud2)
wordcloud2(data = t, size = 0.5, shape = "circle")
  
  