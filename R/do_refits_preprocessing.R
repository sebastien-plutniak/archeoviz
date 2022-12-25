.do_refits_preprocessing <- function(refits, dataset){
	refits <- c(t(refits))
	refits <- merge(data.frame("id" = refits),
					dataset[, c("id", "x", "y", "z")],
					by="id", sort=F, all.x=T)
	refits$id <- rep(seq(1, nrow(refits) / 2), each=2)
	refits
}
