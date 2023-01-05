.get_surface_model <- function(df, layer.name){
  layer.df <- df[df$layer == layer.name, c("x", "y", "z") ]
  # GAM computation:
  fit <- mgcv::gam(z ~ s(x, y), data = layer.df)
  # add predicted altitudes:
  layer.df$pred <- stats::predict(fit)
  # generating a table for sampling:
  x <- seq.int(from = min(layer.df$x), to = max(layer.df$x), length.out = 100)
  y <- seq.int(from = min(layer.df$y), to = max(layer.df$y), length.out = 100)
  plot.df <- expand.grid("x" = x, "y" = y)
  plot.df$predict <- stats::predict(fit, newdata = plot.df) 
  
  z <- reshape2::dcast(plot.df, x ~ y, value.var="predict")
  
  # output values preparation:
  x.values <- z[, 1]
  y.values <- as.numeric(colnames(z[,-1]))
  z.matrix <- as.matrix(z[, -1])
  color <- as.character(unique(df[df$layer == layer.name,]$layer_color))
  list("z.matrix" = z.matrix, "x" = x.values, "y" = y.values, "color" = color)
}
