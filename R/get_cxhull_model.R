.get_cxhull_model <- function(df, var, value){
  subset.df <-  eval(parse(text = paste0('df[df$', var, ' == "', value, '", ]' )))
  subset.df <- subset.df[, c("x", "y", "z")]
  
  subset.df <- unique(subset.df)
  hull.df <- cxhull::cxhull(as.matrix(subset.df), triangulate = TRUE) # compute convex hull
  hull.df <- cxhull::hullMesh(hull.df)                                # extract mesh
  nfaces <- nrow(hull.df$faces)
  hull.df <- - hull.df$vertices                                   # convert to negative coordinates
  
  color <- unique(eval(parse(text = paste0('df[df$', var, ' == "', value, '", ]$layer_color' ))) )
  
  list("hull"=hull.df, "color"=color, "nfaces"=nfaces)
}   
