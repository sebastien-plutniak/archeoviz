do_map_plot <- function(site.map, planZ.df, map.point.size, color.var, col,
                        map.density, map.refits, refitting.df){
  
  .data <- NULL
  
  map <- site.map +
    geom_point(data = planZ.df,
               aes(x = .data[["x"]], y = .data[["y"]],
                   color = .data[[color.var]],
                   square = .data[["square"]], 
                   xyz = .data[["xyz"]],
                   object_type = .data[["object_type"]],
                   location_mode = .data[["location_mode"]],
                   id = .data[["id"]]
               ),
               size = map.point.size / 10
    ) +
    scale_color_manual(color.var, values = col)
  
  if(! is.null(map.density)){
    if(map.density == "by.variable"){
      # only layers with > 30 points
      var.sel1 <- eval(parse(text = paste0("planZ.df$", color.var)))
      var.sel2 <- table(var.sel1)
      var.sel2 <- names(var.sel2[var.sel2 >= 30])
      ids <- var.sel1  %in% var.sel2
      planZ.df.sub <- planZ.df[ids, ]
      
      map <- map +
        geom_density2d(data=planZ.df.sub,
                       aes(x = .data[["x"]], y = .data[["y"]],
                           group = .data[[color.var]],
                           color = .data[[color.var]]),
                       size = .2)
    }
    
    if(map.density == "overall"){
      map <- map +
        geom_density2d(data=planZ.df,
                       aes(x = .data[["x"]], y = .data[["y"]]),
                       size = .2, color = "grey30")
    }
  }
  
  
  # map.refits
  if( map.refits > 0 ){
    refitting.df <- refitting.df$refits.2d
    
    sel <- (refitting.df[, 1] %in% planZ.df$id) | (refitting.df[, 2] %in% planZ.df$id)
    refitting.df <- refitting.df[which(sel), ]
    
    refitting.df <- .do_lines_colors(refitting.df, planZ.df, color.var)
    
    if(nrow(refitting.df) > 1){
      # refitting.df <- cbind(
      #   refitting.df[seq(1, nrow(refitting.df)-1, by=2), c("x", "y")],
      #   refitting.df[seq(2, nrow(refitting.df),   by=2), c("x", "y")])
      # colnames(refitting.df) <- c("x", "y", "xend", "yend")
      
      map <- map +
        geom_segment(data = refitting.df,
                     aes(x = .data[["x"]], xend = .data[["xend"]],
                         y = .data[["y"]], yend = .data[["yend"]], 
                         color = .data[[color.var]]),
                     # color = "red",
                     linewidth=.3 )
    }
  }
  
  map <- ggplotly(map, tooltip = c("id", "xyz", "square",
                                   "location_mode", "object_type"),
                  source = "B") 
  
  plotly::config(map,
                 displaylogo = FALSE,  
                 toImageButtonOptions = list(format = "svg",
                                             filename = "archeoviz-map",
                                             width = 600, height = 600))
}
