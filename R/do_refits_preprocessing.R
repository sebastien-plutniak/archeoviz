.do_refits_preprocessing <- function(refits, dataset){
  
  # remove duplicated refits if any:
  refits <- refits[! duplicated(t(apply(refits[c(1, 2), ], 1, sort))), ]
  
  # refitting data for 2D plots:
  refits.2d <- refits[, 1:2]
  colnames(refits.2d) <- c("from", "to")
  dataset <- dataset[, c("id", "x", "y", "z")]
  
  refits.2d <- merge(refits.2d, dataset,
                   by.x = "from", by.y="id", sort = FALSE, all.x = T)
  refits.2d <- merge( refits.2d, dataset,
                   by.x = "to",   by.y="id", sort = FALSE, all.x = T)
  colnames(refits.2d) <- c("from", "to", "x", "y", "z", "xend", "yend", "zend")

  # refitting data for 3D plots:
  refits.3d <- refits.2d[rep(seq_len(nrow(refits.2d)), each = 2),  ]
  idx <- seq(2, nrow(refits.3d), 2)
  refits.3d[idx, ]$x <- refits.3d[idx, ]$xend
  refits.3d[idx, ]$y <- refits.3d[idx, ]$yend
  refits.3d[idx, ]$z <- refits.3d[idx, ]$zend
  refits.3d$id.internal <- paste0(refits.3d[,1], refits.3d[,2])
	
	# output:
	list("refits.2d" = refits.2d, "refits.3d" = refits.3d, "raw" = refits)
}



