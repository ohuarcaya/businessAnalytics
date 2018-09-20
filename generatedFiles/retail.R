#Semilla para replicar resultados
set.seed(100)
library(cluster)
retail <- read.csv("LAB_KM_MassBaratos2.csv")
head(retail)
retail <- read.csv("LAB_KM_MassBaratos2.csv", sep=';')
head(retail)
colnames(retail) <- tolower(colnames(retail))
nombres=retail[,1]
retail=retail[,-1]
rownames(retail)=nombres
head(retail)
str(retail)

cluster1=kmeans(scale(retail), 2)
cluster1
