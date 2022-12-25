.do_section_plot <- function(selection, dataset, section.point.size, refitting.df, show.refits, 
                 colors, grid.coord, coords, axis.labels, xaxis){
  # check if there are data:
  section.df <- dataset[selection, ]

  if(nrow(dataset[selection, ]) == 0){
    section.df <- dataset
    section.df[ ! is.na(section.df)] <- NA
    showNotification(.term_switcher("notif.no.data"))
  } else{
    section.df <- dataset[selection, ]
  }

  # adapt values:
  section.df$x <- eval(parse(text = paste0("section.df$", xaxis)))
  section.df$point.size <- section.point.size
  
  grid.coord <- grid.coord[! duplicated(grid.coord$id), ]
  grid.coord$x <- eval(parse(text = paste0("grid.coord$", xaxis)))
  
  # begin plot
  section <- plotly::plot_ly(section.df)

  section <- plotly::config(section,
                            toImageButtonOptions = list(
                              format = "svg",
                              filename = "section",
                              width = 600, height = 600
                              ))

  section <- plotly::add_markers(section, x = ~x, y = ~z,
                          color = ~layer,
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

  section <- plotly::add_segments(section, x = ~x, xend = ~x,  y = 0, yend = ~z,
                                   data = grid.coord,
                                   color = I("grey70"), alpha=.6,
                                   showlegend=F, hoverinfo="skip", inherit = F)

  # add refits:
  if(show.refits & nrow(refitting.df) > 0){
    # subset refitting data set:
    sel <- (refitting.df[, 1] %in% section.df$id) | (refitting.df[, 2] %in% section.df$id)
    refitting.df <- refitting.df[which(sel), ]

    # define values for the x axis:
    refitting.df$x  <- eval(parse(text = paste0("refitting.df$", xaxis)))

    section <- plotly::add_paths(section, x = ~x, y = ~z,
                          split = ~id,
                          data = refitting.df,
                          color = I("red"), showlegend=F,
                          line = list(width=1),
                          hoverinfo = "skip",
                          inherit = F)
  }

  section <- plotly::layout(section,
                     xaxis = list(title = toupper(xaxis),
                                  zeroline = FALSE,
                                  range= c(eval(parse(text = paste0("coords$", xaxis, "min"))),
                                           eval(parse(text = paste0("coords$", xaxis, "max")))),
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
