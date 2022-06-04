sample=read.csv("/home/aus/Área de Trabalho/jupyter/bostor/sample_submission.csv")
test=read.csv("/home/aus/Área de Trabalho/jupyter/bostor/test.csv")
train=read.csv("/home/aus/Área de Trabalho/jupyter/bostor/train.csv")
#os numericos terminei

library(skimr)
library(dplyr)
skim(xtr)

train %>%
  summarise(media=mean(GarageYrBlt,na.rm=T))
skim(test)

xtr=train%>%
    mutate(LotFrontage=ifelse(is.na(LotFrontage),70.04996,LotFrontage))%>%
    mutate(MasVnrArea=ifelse(is.na(MasVnrArea),1103.6853,MasVnrArea))%>%
    mutate(GarageYrBlt=ifelse(is.na(GarageYrBlt),11978.506,GarageYrBlt))

ytr=train$SalePrice

xts=test%>%
         mutate(LotFrontage=ifelse(is.na(LotFrontage),70.04996,LotFrontage))%>%
         mutate(MasVnrArea=ifelse(is.na(MasVnrArea),1103.6853,MasVnrArea))%>%
         mutate(GarageYrBlt=ifelse(is.na(GarageYrBlt),11978.506,GarageYrBlt))

yts=sample

write.csv(xtr,"/home/aus/Área de Trabalho/rstudio/bost/xtr.csv")
write.csv(xts,"/home/aus/Área de Trabalho/rstudio/bost/xts.csv")
write.csv(ytr,"/home/aus/Área de Trabalho/rstudio/bost/ytr.csv")
write.csv(yts,"/home/aus/Área de Trabalho/rstudio/bost/yts.csv")

