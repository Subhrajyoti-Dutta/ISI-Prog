library(r2r)

testUnif = function(n, func){
  freq = hashmap(
    on_missing_key = "default",
    default = 0
  )
  
  redo = 10000
  for (i in 1:(redo * factorial(n))){
    val = func(n)
    freq[[val]] = freq[[val]] + 1
  }
  
  freq_vals = unlist(values(freq))
  
  if (length(freq_vals) != factorial(n)) return(FALSE)
  
  return(chisq.test(freq_vals)$p.value)
}

check = function(arrSize, test, funct) {
  p_val = test(arrSize, funct)
  
  return(ifelse(p_val > 0.05, TRUE, FALSE))
}

check(3, testUnif, sample)