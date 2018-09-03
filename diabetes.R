install.packages(c('repr', 'IRdisplay', 'evaluate', 'crayon', 'pbdZMQ', 'devtools', 'uuid', 'digest'))
install.packages(c("rpart"), dependencies = c("Depends", "Suggests"))
install.packages("rattle")
install.packages("cluster")
install.packages("foreign")
install.packages("caret")
install.packages('devtools')
library(rpart)
#########################################################
#  Algoritmo RPART PARA ARBOL DE DECISI?N               #
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

#Predicci?n usando el ?rbol a
#Calcular los valores predichos
pred<-predict(arbola,diabetes[,c(1,2)],type="class")
error=mean(pred!=diabetes$diagnostic)
error

#Calcular la matriz de confusi?n
table(pred,diabetes$diagnostic)

#Predicci?n usando el ?rbol b
#Calcular los valores predichos
pred<-predict(arbolb,diabetes[,c(1,3)],type="class")
error=mean(pred!=diabetes$diagnostic)
error

#Calcular la matriz de confusi?n
t <- table(pred,diabetes$diagnostic)
t
plot(t)
