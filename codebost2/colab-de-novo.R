x_train=read.csv("/home/aus/Área de Trabalho/pararst/xtrain")
x_test=read.csv("/home/aus/Área de Trabalho/pararst/xtest")
library(dplyr)
library(skimr)
skim(x_train)
train1=x_train%>%
  select(-MSZoning,-Street,-Alley,-LotShape,-LandContour,-Utilities,-LotConfig,-LandSlope,Neighborhood,
         -Condition1,-Condition2,-BldgType,-HouseStyle,-HouseStyle,-RoofStyle,-RoofMatl,-Exterior1st,
         -Exterior2nd,-MasVnrType,-ExterQual,-ExterCond,-Foundation,-BsmtQual,-BsmtCond,-BsmtExposure,
         -BsmtFinType1,-BsmtFinType2,-Heating,-HeatingQC,-CentralAir,-Electrical,-KitchenQual,-Functional,
         -FireplaceQu,-GarageFinish,-GarageType,-GarageCond,-PavedDrive,-PoolQC,-Fence,-MiscFeature,
         -SaleType,-SaleCondition,-Neighborhood,-GarageQual)
test1=x_test%>%
  select(-MSZoning,-Street,-Alley,-LotShape,-LandContour,-Utilities,-LotConfig,-LandSlope,Neighborhood,
         -Condition1,-Condition2,-BldgType,-HouseStyle,-HouseStyle,-RoofStyle,-RoofMatl,-Exterior1st,
         -Exterior2nd,-MasVnrType,-ExterQual,-ExterCond,-Foundation,-BsmtQual,-BsmtCond,-BsmtExposure,
         -BsmtFinType1,-BsmtFinType2,-Heating,-HeatingQC,-CentralAir,-Electrical,-KitchenQual,-Functional,
         -FireplaceQu,-GarageFinish,-GarageType,-GarageCond,-PavedDrive,-PoolQC,-Fence,-MiscFeature,
         -SaleType,-SaleCondition,-Neighborhood,-GarageQual)


skim(test1)
skim(train1)

write.csv(test1,file = "/home/aus/Área de Trabalho/pararst/test1")
write.csv(train1,file = "/home/aus/Área de Trabalho/pararst/train1")
