.do_coords_minmax <- function(df, square.size, reverse.axis.values=""){
  res <- list("xmin" = floor(min(df$x,   na.rm = T) / square.size) * square.size,
              "xmax" = ceiling(max(df$x, na.rm = T) / square.size) * square.size,
              "ymin" = floor(min(df$y,   na.rm = T) / square.size) * square.size, 
              "ymax" = ceiling(max(df$y, na.rm = T) / square.size) * square.size,
              "zmin" = min(df$z, na.rm = T),
              "zmax" = max(df$z, na.rm = T)
       )
  
  if(grepl("z", reverse.axis.values)){ names(res)[5:6] <- c("zmax", "zmin") }
  
  res
}