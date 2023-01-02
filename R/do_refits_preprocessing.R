.do_refits_preprocessing <- function(refits, dataset){
	refits <- c(t(refits))
	refits <- merge(data.frame("id" = refits),
	                dataset[, c("id", "x", "y", "z")],
	                by = "id", sort = FALSE, all.x = TRUE)
	refits$id <- rep(seq_len(nrow(refits) / 2), each = 2)
	refits
}


# n <- 700
# dataset <- demo_objects_data(n)
# dataset <- .do_objects_dataset(dataset)$data
# refits <- demo_refits_data(n)
# refits <- c(t(refits))
# refits <- merge(data.frame("id" = refits),
#                 dataset[, c("id", "x", "y", "z")],
#                 by = "id", sort = FALSE, all.x = TRUE)
# refits$id <- rep(seq_len(nrow(refits) / 2), each = 2)
# refits
