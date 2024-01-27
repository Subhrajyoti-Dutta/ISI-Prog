insertion_order <- function(arr){
  len = length(arr)
  index = 1:len
  for (i in 2:len){
    temp = arr[i]
    j = i - 1
    while (j >= 1 && arr[j] > temp){
      arr[j+1] = arr[j]
      index[j+1] = index[j]
      j = j - 1
    }
    arr[j+1] = temp
    index[j+1] = i
  }
  return(index)
}