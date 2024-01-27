#include <Rcpp.h>

using namespace Rcpp;

// [[Rcpp::export]]

NumericVector insertion_order_cpp(NumericVector input) {
  int length = input.size();
  NumericVector index(length);
  NumericVector arr(length);
  for (int i = 0; i < length; i++) {
    index[i] = i + 1; //+1 becoz index start from 1
    arr[i] = input[i];
  }
  
  int i, j;
  double temp;
  for (i = 1; i < length; i++) {
    temp = arr[i];
    for (j = i - 1; j >= 0 && arr[j] > temp; j--) {
      arr[j + 1] = arr[j];
      index[j + 1] = index[j];
    }
    arr[j + 1] = temp;
    index[j + 1] = i + 1; //+1 becoz index start from 1
  }
  return index;
}