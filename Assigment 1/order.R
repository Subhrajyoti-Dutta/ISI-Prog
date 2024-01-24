insertion_order <- function(arr){
  return(insertion_order_cpp(c(arr))) #had to use c() else it was doing it inplace
}