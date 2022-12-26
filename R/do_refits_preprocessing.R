.do_refits_preprocessing <- function(refits, dataset){
	refits <- c(t(refits))
	refits <- merge(data.frame("id" = refits),
	                dataset[, c("id", "x", "y", "z")],
	                by = "id", sort = FALSE, all.x = TRUE)
	refits$id <- rep(seq_len(nrow(refits) / 2), each = 2)
	refits
}
