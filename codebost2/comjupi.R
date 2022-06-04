library(tensorflow)
library(keras)
library(
  tfdatasets
)
boston_housing <-dataset_boston_housing(
  path = "/home/aus/Área de Trabalho/jupyter/bostor/boston.txt",
  test_split = 0.2,
  seed = 113L)

c(train_data, train_labels) %<-% boston_housing$train
c(test_data, test_labels) %<-% boston_housing$test
