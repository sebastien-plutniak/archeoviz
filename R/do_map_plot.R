.do_map_plot <- function(site.map, planZ.df, map.point.size, color.var, col,
                        map.density, map.refits, refitting.df, grid.legend, 
                        grid.orientation, background.map){
  
  .data <- NULL
  
  
  map <- site.map
  
  # add background map ----
  if(! is.null(background.map)){
    map <- map +
      geom_path(data = background.map,
                aes(x = .data[["x"]], y = .data[["y"]], group = .data[["group"]]), 
                colour = "black", size = .2) 
  }
  
  # add points ----
  map <- map +
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
  
  # add density contours ----
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
  
  
  # add refits ----
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
  # convert to plotly ----
  map <- ggplotly(map, tooltip = c("id", "xyz", "square",
                                   "location_mode", "object_type"),
                  source = "B") 
  
  map <- plotly::config(map,
                 displaylogo = FALSE,  
                 toImageButtonOptions = list(format = "svg",
                                             filename = "archeoviz-map",
                                             width = 600, height = 600))
  
  # add grid legend:  ----
  map <- layout(map,                 
         annotations = list(
           list( 
                xref="paper", yref="paper",
                x = 0, y = 0,
                font = list(size = 12),
                text = grid.legend,
                xanchor = "left",
                xshift = 0, yshift = 0,
                showarrow = F,
                opacity = 1 )
           ) # end annotation
  )
  
  # add north arrow: ----
  if( ! is.null(grid.orientation)){
    # compute north orientation: 
    arrow.coords <- matrix(c(.95, .95, .1, .04), ncol=2) 
    
    arrow.coords <- .rotate(coords = arrow.coords,  # rotate arrow
                            degrees = grid.orientation,
                            pivot = c(.95, .07))
    map <- layout(map,                 
                  annotations = list(
                    list(x = arrow.coords[1,1], y = arrow.coords[1,2],
                         ax = arrow.coords[2,1], ay = arrow.coords[2,2],
                         xref = "paper", yref = "paper",
                         axref = "paper", ayref = "paper",
                         text = "",
                         showarrow = T),
                    list(x = .958, y = 0,
                         xref = "paper", yref = "paper",
                         text = "N",
                         showarrow = F)
                  ) # end annotation
    )
  }

  map
}




