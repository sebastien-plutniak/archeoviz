.do_coords_minmax <- function(df){
  list("xmin" = floor(min(df$x,   na.rm = T) / 100) * 100,
       "xmax" = ceiling(max(df$x, na.rm = T) / 100) * 100,
       "ymin" = floor(min(df$y,   na.rm = T) / 100) * 100,
       "ymax" = ceiling(max(df$y, na.rm = T) / 100) * 100,
       "zmin" = floor(min(df$z,   na.rm = T) / 100) * 100, 
       "zmax" = ceiling(max(df$z, na.rm = T) / 100) * 100)
}