.get_cxhull_model <- function(df, layer.name){
  layer.df <- df[df$layer == layer.name, c("x", "y", "z") ]
  layer.df <- unique(layer.df)
  hull.df <- cxhull::cxhull(as.matrix(layer.df), triangulate = T) # compute convex hull
  hull.df <- cxhull::hullMesh(hull.df)                            # extract mesh
  nfaces <- nrow(hull.df$faces)
  hull.df <- - hull.df$vertices                                   # convert to negative coordinates
  color <- unique(df[df$layer == layer.name,]$layer_color)
  list("hull"=hull.df, "color"=color, "nfaces"=nfaces)
}   
