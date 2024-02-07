.get_volume_coordinates <- function(id, xmin, xmax, ymin, ymax, zmin, zmax, color, square, object_type){
  res <- matrix(c(xmin, ymin, zmin,
				  xmin, ymax, zmin,
				  xmax, ymax, zmin,
				  xmax, ymin, zmin,
				  xmin, ymin, zmax,
				  xmin, ymax, zmax,
				  xmax, ymax, zmax,
				  xmax, ymin, zmax),
				ncol = 3, byrow =T)
  res <- data.frame(cbind(res, "id" = id, "color" = color,
						  "square" = square, "object_type" = object_type))
  res <- rbind(res, res[c(5:8), ])
  res[9:12, 1:3] <- NA
  res[, 1:3] <- apply(res[, 1:3], 2, as.numeric)
  res
}
