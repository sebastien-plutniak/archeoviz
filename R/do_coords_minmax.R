.do_coords_minmax <- function(df, reverse=""){
  res <- list("xmin" = floor(min(df$x,   na.rm = T) / 100) * 100,
              "xmax" = ceiling(max(df$x, na.rm = T) / 100) * 100,
              "ymin" = floor(min(df$y,   na.rm = T) / 100) * 100, 
              "ymax" = ceiling(max(df$y, na.rm = T) / 100) * 100,
              "zmin" = min(df$z, na.rm = T),
              "zmax" = max(df$z, na.rm = T)
       )
  
  if(grepl("z", reverse)){
    names(res)[5:6] <- c("zmax", "zmin")
  }
  res
}