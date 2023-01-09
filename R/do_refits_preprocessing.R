.do_refits_preprocessing <- function(refits, dataset){
  # remove duplicated refits if any:
  refits <- refits[! duplicated(t(apply(refits[c(1, 2), ], 1, sort))), ]
	refits <- c(t(refits))
	refits <- merge(data.frame("id" = refits),
	                dataset[, c("id", "x", "y", "z")],
	                by = "id", sort = FALSE, all.x = TRUE)
	refits$id <- rep(seq_len(nrow(refits) / 2), each = 2)
	refits
}
