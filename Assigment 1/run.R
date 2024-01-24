library(Rcpp)
sourceCpp("order.cpp")
source("order.R")

arr = c(67, 45, 3, 1, -5)

index = insertion_order(arr)

print(index)

print(arr)