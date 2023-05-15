 .get_plan_coordinates <- function(id, xmin, xmax, ymin, ymax, zmin, zmax, color, square, object_type, axes){
          
	if(axes == "xz"){
	  res <- matrix(c(xmin, ymin, zmin,
					  xmax, ymin, zmin,
					  xmin, ymin, zmax,
					  xmax, ymin, zmax), ncol = 3, byrow =T)
	}
	if(axes == "yz"){
	  res <- matrix(c(xmin, ymax, zmin,
					  xmin, ymin, zmin,
					  xmin, ymax, zmax,
					  xmin, ymin, zmax), ncol = 3, byrow =T)
	}
	if(axes == "xy"){
	  res <- matrix(c(xmin, ymin, zmin,
					  xmin, ymax, zmin,
					  xmax, ymin, zmin,
					  xmax, ymax, zmin), ncol = 3, byrow =T)
	}

	res <- data.frame(cbind(res,
							"id" = id, "color" = color, "square" = square,
							"object_type" = object_type))
	res[, 1:3] <- apply(res[, 1:3], 2, as.numeric)
	res
}
