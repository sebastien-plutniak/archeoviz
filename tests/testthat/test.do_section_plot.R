
  ui.terms <- .load_interface_terms("fr")
  shinyOptions("objects.df"  = df,
               "ui.terms"    = ui.terms)
  
  #  prepare data ----
  
  df <- .do_objects_dataset(demoData.n = 100)
  
  coords <- .do_coords_minmax(df$data, square.size = 100)
  
  range.x <- seq(floor(coords$xmin / 100) * 100, ceiling(coords$xmax / 100) * 100, 100)
  range.y <- seq(floor(coords$ymin / 100) * 100, ceiling(coords$ymax / 100) * 100, 100)
    
  square.coords <- list("range.x" = range.x, "range.y" = range.y)
  
  square_x <- levels(df$square_x)
  square_y <- levels(df$square_y)
  squares <- list("square_x" = square_x, "square_y" = square_y)
  
  grid.coords.res <- data.frame(
    "id" = c(rbind(seq_len(length(square.coords$range.x)),
                   seq_len(length(square.coords$range.x)))),
    "x"  = c(rbind(seq(coords$xmin, coords$xmax, 100),
                   seq(coords$xmin, coords$xmax, 100))),
    "y"  = rep(c(coords$ymin, coords$ymax), length(square.coords$range.x)),
    "z"  = coords$zmax)
    
  axis.labels.res <- list(
    "xaxis" = list(
      "breaks" = (square.coords$range.x + 50)[ 1:length(squares$square_x) ],
      "labels" =  squares$square_x 
    ),
    "yaxis" = list(
      "breaks" = (square.coords$range.y + 50)[ 1:length(squares$square_y) ],
      "labels" =  squares$square_y 
    )
  )
  
  
  refits <- demo_refits_data(100)
  refits.res <- function(){.do_refits_preprocessing(refits, df$data)}
  
  # make plot ----
  fig.x <- .do_section_plot(selection = df$data$x %in% seq(100, 300),
                            dataset = df$data,
                            section.point.size = 1,
                            refitting.df = refits.res,
                            show.refits = FALSE,
                            colors = as.character(unique(df$data$layer_color)),
                            grid.legend = "test",
                            grid.coord = grid.coords.res,
                            coords = coords,
                            axis.labels = axis.labels.res,
                            xaxis = "x",
                            reverse.axis.values = "")
  
  fig.y <- .do_section_plot(selection = df$data$x %in% seq(100, 300),
                   dataset = df$data,
                   section.point.size = 1,
                   refitting.df = refits.res,
                   show.refits = FALSE,
                   colors = as.character(unique(df$data$layer_color)),
                   grid.legend = "test",
                   grid.coord = grid.coords.res,
                   coords = coords,
                   axis.labels = axis.labels.res,
                   xaxis = "y",
                   reverse.axis.values = "")

  fig.y.reversed <- .do_section_plot(selection = df$data$x %in% seq(100, 300),
                          dataset = df$data,
                          section.point.size = 1,
                          refitting.df = refits.res,
                          show.refits = FALSE,
                          colors = as.character(unique(df$data$layer_color)),
                          grid.legend = "test",
                          grid.coord = grid.coords.res,
                          coords = coords,
                          axis.labels = axis.labels.res,
                          xaxis = "y",
                          reverse.axis.values = "y")
  
  fig.x.reversed <- .do_section_plot(selection = df$data$x %in% seq(100, 300),
                                     dataset = df$data,
                                     section.point.size = 1,
                                     refitting.df = refits.res,
                                     show.refits = FALSE,
                                     colors = as.character(unique(df$data$layer_color)),
                                     grid.legend = "test",
                                     grid.coord = grid.coords.res,
                                     coords = coords,
                                     axis.labels = axis.labels.res,
                                     xaxis = "x",
                                     reverse.axis.values = "x")
  
test_that(".do_section_plot: attributes", {  
  expect_equal(attr(fig.y, "class"), c("plotly", "htmlwidget"))
  expect_equal(names(fig.y$x),c("visdat", "cur_data", "attrs", "layout", "source", "config", "layoutAttrs"))
})


test_that(".do_section_plot: Altitude values", {  
  expect_lt(fig.y$x$layoutAttrs[[1]]$yaxis$range[1], 1091)
  expect_gt(fig.y$x$layoutAttrs[[1]]$yaxis$range[2], 109)
})

test_that(".do_section_plot: X axis ranges", {  
  expect_equal(fig.x$x$layoutAttrs[[1]]$xaxis$range, c(0, 900))
}) 

test_that(".do_section_plot: reversed X axis ranges", {  
  expect_equal(fig.x.reversed$x$layoutAttrs[[1]]$xaxis$range, c(900, 0))
}) 


test_that(".do_section_plot: Y axis ranges", {  
  expect_equal(fig.y$x$layoutAttrs[[1]]$xaxis$range, c(0, 700))
}) 

test_that(".do_section_plot: reversed Y axis ranges", {  
  expect_equal(fig.y.reversed$x$layoutAttrs[[1]]$xaxis$range, c(700, 0))
}) 



