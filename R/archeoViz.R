archeoViz <- function(objects.df = NULL, refits.df = NULL, timeline.df = NULL,
                      title = NULL, home.text = NULL, lang = "en", set.theme = "cosmo",
                      square.size = 100, unit = "cm", rotation = 0, 
                      grid.orientation = NULL, background.map = NULL,
                      reverse.axis.values = NULL, reverse.square.names = NULL,
                      add.x.square.labels = NULL, add.y.square.labels = NULL,
                      class.variable = NULL, class.values = NULL,
                      default.group = "by.layer", location.mode = NULL,
                      map.z.val = NULL, map.density = "no", map.refits = NULL,
                      plot3d.ratio = 1, plot3d.hulls = FALSE, hulls.class.values = NULL,
                      plot3d.surfaces = NULL, plot3d.refits = NULL, point.size = 2,
                      sectionX.x.val = NULL, sectionX.y.val = NULL, sectionX.refits = NULL, 
                      sectionY.x.val = NULL, sectionY.y.val = NULL, sectionY.refits = NULL,
                      camera.center = c(0, 0, 0), camera.eye = c(1.25, 1.25, 1.25), 
                      run.plots = FALSE, html.export = TRUE, table.export = TRUE
                      ){
  
  
  # tests parameters----
  # : test default.group ----
  if( ! default.group %in% c("by.layer", "by.variable")){
    stop("The 'default.group' parameter must be one of 'by.layer' or 'by.variable'.")
  }
  
  # : test lang ----
  if( ! lang %in% c("de", "en", "fr", "it", "pt", "es", "ro")){
    stop("The 'lang' parameter must be one of 'de', 'en', 'es', 'fr', 'it', 'pt', 'ro'.")
  }
  
  # : test grid.orientation ----
  if( ! is.null(grid.orientation)){
    if( ! is.numeric(grid.orientation)){
      stop("'grid.orientation' must be numerical.")
    }
  }
  
  # : test square.size ----
  if( ! is.numeric(square.size)){
    stop("The 'square.size' parameter must be a positive numerical value.")
  }
  
  # : test unit ----
  if( ! unit %in% c("cm", "m", "km")){
    stop("The 'unit' parameter must be one of 'cm', 'm', 'km'.")
  }
  
  # : test background.map ----
  if( ! is.null(background.map)){
    if(! (is.matrix(background.map) | is.data.frame(background.map))){
      stop("'background.map' must be a matrix or a data frame.")
    }
    if(ncol(background.map) == 2){
      background.map <- cbind(background.map, 1)
    }
    colnames(background.map)[1:3] <- c("x", "y", "group")
  }
  
  # : test reverse.axis.values ----
  if(is.null(reverse.axis.values)){
    reverse.axis.values <- ""
  } else if( ! reverse.axis.values %in% c("x", "y", "z", "xy", "yx", "xz", "zx", "yz", "zy", "xyz", "xzy","yzx", "yxz", "zxy", "zyx")){
    stop("The value of the 'reverse.axis.values' parameter must be a combination of one, two, or three 'x', 'y', 'z' letters.")
  }
  
  # : test reverse.square.names ----
  if(is.null(reverse.square.names)){
    reverse.square.names <- ""
  } else if( ! reverse.square.names %in% c("x", "y", "xy", "yx")){
    stop("The value of the 'reverse.square.names' parameter must be combine one or two 'x', 'y' letters.")
  }
  
  #  load terms interface ----
  ui.terms <- .load_interface_terms(lang)
  
  background.col <- "white"
  if(set.theme %in% c("cyborg", "darkly", "slate")){
    background.col <- grDevices::rgb(.1,.1,.1)
  }
  
  params <- list("class.variable" = class.variable, "class.values" = class.values,
                 "default.group" = default.group, "location" = location.mode,
                 "map.z.val" = map.z.val, "map.density" = map.density, "map.refits" = map.refits, 
                 "plot3d.ratio" = plot3d.ratio, "plot3d.hulls" = plot3d.hulls, "hulls.class.values" = hulls.class.values,
                 "plot3d.surfaces" = plot3d.surfaces, "plot3d.refits" = plot3d.refits,
                 "sectionX.x.val" = sectionX.x.val, "sectionX.y.val" = sectionX.y.val, "sectionX.refits" = sectionX.refits,
                 "sectionY.x.val" = sectionY.x.val, "sectionY.y.val" = sectionY.y.val, "sectionY.refits" = sectionY.refits,
                 "point.size" = point.size, "rotation" = rotation, 
                 "camera.center" = camera.center, "camera.eye" = camera.eye)
  
  # define shiny options ----
  shinyOptions("objects.df"  = objects.df,
               "refits.df"   = refits.df,
               "timeline.df" = timeline.df,
               "square.size" = square.size,
               "unit" = unit,
               "reverse.axis.values" = reverse.axis.values,
               "reverse.square.names" = reverse.square.names,
               "add.x.square.labels" = add.x.square.labels,
               "add.y.square.labels" = add.y.square.labels,
               "grid.orientation" = grid.orientation,
               "params" = params,
               "title"       = title,
               "home.text"   = home.text,
               "lang"        = lang,
               "set.theme"   = set.theme,
               "ui.terms"    = ui.terms,
               "background.col" = background.col,
               "run.plots" = run.plots,
               "html.export" = html.export,
               "table.export" = table.export,
               "background.map" = background.map)
  
  shinyApp(ui = app_ui, server = app_server)
}
