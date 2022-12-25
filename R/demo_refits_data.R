
demo_refits_data <- function(n.objects){
  percentage.of.refits <- 0.05
  refits <- sample(seq_len(n.objects),
                   2 * round((n.objects * percentage.of.refits) / 2))
  matrix(refits, ncol=2)
}
