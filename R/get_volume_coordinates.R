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
  res <- cbind(res, id, color, square, object_type) 
  res <- rbind(res, res[c(5:8), ])
  res[9:12, 1:3] <- NA
  res
}

