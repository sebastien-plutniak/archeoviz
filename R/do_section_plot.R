.do_section_plot <- function(selection, dataset, section.point.size,
                             refitting.df, show.refits, 
                             colors, grid.coord, coords, axis.labels, xaxis,
                             reverse.axis.values=""){
   # data check: ----
  section.df <- dataset[selection, ]

  if(nrow(dataset[selection, ]) == 0){
    section.df <- dataset
    section.df[ ! is.na(section.df)] <- NA
    showNotification(.term_switcher("notif.no.data"))
  } else{
    section.df <- dataset[selection, ]
  }

  # adapt values ----
  section.df$x <- eval(parse(text = paste0("section.df$", xaxis)))
  section.df$point.size <- section.point.size

  grid.coord <- grid.coord[! duplicated(grid.coord$id), ]
  grid.coord$x <- eval(parse(text = paste0("grid.coord$", xaxis)))
  
  # begin plot ----
  section <- plotly::plot_ly(section.df,
                             source = xaxis)

  # add config ----
  section <- plotly::config(section,
                            displaylogo = FALSE,
                            toImageButtonOptions = list(
                              format = "svg",
                              filename = paste0("archeoviz-", xaxis, "-section"),
                              width = 600, height = 600
                              ))
  # add points ----
  section <- plotly::add_markers(section, x = ~x, y = ~z,
                          color = ~group.variable,
                          colors =  colors,
                          marker = list(symbol = 'square',
                                        size  = ~point.size,
                                        sizemode = 'diameter'),
                          text = ~paste('id:', id,
                                        '<br>x:', x, ', y:', y, 'z:', z,
                                        '<br>Square:', square,
                                        '<br>Location:', location_mode,
                                        '<br>Class:', object_type)
  )

  # add grid ----
  section <- plotly::add_segments(section, x = ~x, xend = ~x,  y = 0, yend = ~z,
                                   data = grid.coord,
                                   color = I("grey70"), alpha=.6,
                                   showlegend=F, hoverinfo="skip", inherit = F)

  # add refits ----
  if( sum(show.refits) > 0){
    
    refitting.df <- refitting.df()
    refitting.df <- refitting.df$refits.2d
    
    # subset refitting data set:
    sel <- (refitting.df[, 1] %in% section.df$id) & (refitting.df[, 2] %in% section.df$id)
    refitting.df <- refitting.df[which(sel), ]

    # define values for the x axis:
    refitting.df$x  <- eval(parse(text = paste0("refitting.df$", xaxis)))
    refitting.df$xend  <- eval(parse(text = paste0("refitting.df$", xaxis, "end")))

    section <- plotly::add_segments(section,
                                    x = ~x, xend = ~xend,
                                    y = ~z, yend = ~zend,
                                 data = refitting.df,
                                 color = I("red"), showlegend=F,
                                 line = list(width=1),
                                 hoverinfo = "skip",
                                 inherit = F)
    }
  # add layout ----
  
  xrange <- c(eval(parse(text = paste0("coords$", xaxis, "min"))),
              eval(parse(text = paste0("coords$", xaxis, "max"))))
  
  if( grepl("x", reverse.axis.values) & xaxis == "x" ){
    xrange <- c(eval(parse(text = paste0("coords$", xaxis, "max"))),
                eval(parse(text = paste0("coords$", xaxis, "min"))))
  }
  if( grepl("y", reverse.axis.values) & xaxis == "y" ){
    xrange <- c(eval(parse(text = paste0("coords$", xaxis, "max"))),
                eval(parse(text = paste0("coords$", xaxis, "min"))))
  }
  
  section <- plotly::layout(section,
                     paper_bgcolor = getShinyOption("background.col"), 
                     plot_bgcolor =  getShinyOption("background.col"),
                     xaxis = list(title = toupper(xaxis),
                                  zeroline = FALSE,
                                  range = xrange,
                                  tickvals = eval(parse(text = paste0("axis.labels$", xaxis, "axis$breaks"))),
                                  ticktext = eval(parse(text = paste0("axis.labels$", xaxis, "axis$labels")))
                     ),
                     yaxis = list(title= .term_switcher("depth"),
                                  zeroline = T,
                                  range = c(coords$zmax, coords$zmin),
                                  scaleanchor="x"
                     )
                     )
  
  section
}
