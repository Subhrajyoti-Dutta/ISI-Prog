library(r2r)
check = function(n, func) {
  
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
  
  if (chisq.test(freq_vals)$p.value > 0.05) return(TRUE)
  else return(FALSE)
}

check(3, sample)