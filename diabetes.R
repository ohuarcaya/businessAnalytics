install.packages(c("rpart"), dependencies = c("Depends", "Suggests"))
install.packages("rattle")
install.packages("cluster")
install.packages("foreign")
install.packages("caret")
library(rpart)
#########################################################
#  Algoritmo RPART PARA ARBOL DE DECISIÓN               #
#########################################################

diabetes<-read.table(file.choose(),header=T,sep=",") 
head(diabetes)
str(diabetes)

# Declarar V4 como un factor
diabetes[,4]<-as.factor(diabetes[,4])

library(rattle)
# Arbol A
arbola=rpart(diagnostic~glucose+insulin,data=diabetes,method="class")
arbola
drawTreeNodes(arbola)

# Arbol B
arbolb=rpart(diagnostic~glucose+sspg,data=diabetes,method="class")
arbolb
drawTreeNodes(arbolb)

#Predicción usando el árbol a
#Calcular los valores predichos
pred<-predict(arbola,diabetes[,c(1,2)],type="class")
error=mean(pred!=diabetes$diagnostic)
error

#Calcular la matriz de confusión
table(pred,diabetes$diagnostic)

#Predicción usando el árbol b
#Calcular los valores predichos
pred<-predict(arbolb,diabetes[,c(1,3)],type="class")
error=mean(pred!=diabetes$diagnostic)
error

#Calcular la matriz de confusión
t <- table(pred,diabetes$diagnostic)
t
plot(t)
