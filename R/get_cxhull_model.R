.get_cxhull_model <- function(df, var, value){
  
  subset.df <-  eval(parse(text = paste0('df[which(df$', var, ' == "', value, '"), ]' )))
  subset.df <- subset.df[, c("x", "y", "z")]
  
  subset.df <- unique(subset.df)
  
  hull.df <- geometry::convhulln(as.matrix(subset.df), "FA")
  
  if(! is.list(hull.df)){return()}
  
  nfaces <- nrow(hull.df$hull)
  hull.df <- - hull.df$p      # convert to negative coordinates
  
  color <- unique(eval(parse(text = paste0('df[df$', var, ' == "', value, '", ]$layer_color' ))) )
  
  list("hull"=hull.df, "color"=color, "nfaces"=nfaces)
}   
