.get_surface_model <- function(df, var, value){
  subset.df <-  eval(parse(text = paste0('df[df$', var, ' == "', value, '", ]' )))
  subset.df <- subset.df[, c("x", "y", "z")]
  
  # GAM computation:
  fit <- mgcv::gam(z ~ s(x, y), data = subset.df)
  # add predicted altitudes:
  subset.df$pred <- stats::predict(fit)
  # generating a table for sampling:
  x <- seq.int(from = min(subset.df$x), to = max(subset.df$x), length.out = 100)
  y <- seq.int(from = min(subset.df$y), to = max(subset.df$y), length.out = 100)
  plot.df <- expand.grid("x" = x, "y" = y)
  plot.df$predict <- stats::predict(fit, newdata = plot.df) 
  
  z <- reshape2::dcast(plot.df, x ~ y, value.var="predict")
  
  # output values preparation:
  x.values <- z[, 1]
  y.values <- as.numeric(colnames(z[,-1]))
  z.matrix <- as.matrix(z[, -1])
  color <- as.character(unique(eval(parse(text = paste0('df[df$', var, ' == "', value, '", ]$layer_color' ))) ))
  
  list("z.matrix" = z.matrix, "x" = x.values, "y" = y.values, "color" = color)
}
