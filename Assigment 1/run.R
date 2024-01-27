library(Rcpp)
sourceCpp("order.cpp")
source("order.R")

arr = c(67, 45, 3, 1, -5)

index = insertion_order(arr)
index_cpp = insertion_order_cpp(arr)

print(arr)

print(index)
print(arr[index])

print(index_cpp)
print(arr[index_cpp])