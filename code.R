data<- read.table("adult.data")
data=data.frame(data)
for (i in 1:15 )
{
data<-data[!data[,i]%in% "?,",]
}
require(caret)
#install.packages("mlbench")
require(mlbench)
set.seed(123)
cv<-trainControl(method="cv",number=10)
modelfitRF<-train(V15~.,data=data,meyhod="rf", trControl=cv)
