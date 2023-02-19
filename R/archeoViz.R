archeoViz <- function(objects.df=NULL, refits.df=NULL, timeline.df=NULL,
                      title=NULL, home.text=NULL, lang="en", set.theme="cosmo",
                      square.size = 100,
                      reverse.axis.values=NULL, reverse.square.names=NULL,
                      add.x.square.labels = NULL, add.y.square.labels = NULL,
                      class.variable = NULL, class.values = NULL,
                      default.group = "by.layer", location.mode = NULL,
                      map.z.val = NULL, map.density = "no", map.refits = NULL,
                      plot3d.hulls = NULL, plot3d.surfaces = NULL, plot3d.refits = NULL,
                      sectionX.x.val = NULL, sectionX.y.val = NULL, sectionX.refits = NULL, 
                      sectionY.x.val = NULL, sectionY.y.val = NULL, sectionY.refits = NULL,
                      camera.center = NULL, camera.eye = NULL, run.plots = FALSE
                      ){
  
  
  # tests parameters----
  # : test default.group ----
  if( ! default.group %in% c("by.layer", "by.variable")){
    stop("The 'default.group' parameter must be one of 'by.layer' or 'by.variable'.")
  }
  
  # : test lang ----
  if( ! lang %in% c("en", "fr", "pt")){
    stop("The 'lang' parameter must be one of 'en', 'fr', 'pt'.")
  }
  
  # : test square.size ----
  if( ! is.numeric(square.size)){
    stop("The 'square.size' parameter must be a positive numerical value.")
  }
  
  # : test reverse.axis.values ----
  if(is.null(reverse.axis.values)){
    reverse.axis.values <- " "
  } else if( ! reverse.axis.values %in% c("x", "y", "z", "xy", "yx", "xz", "zx", "yz", "zy", "xyz", "xzy","yzx", "yxz", "zxy", "zyx")){
    stop("The value of the 'reverse.axis.values' parameter must be a combination of one, two, or three 'x', 'y', 'z' letters.")
  }
  
  # : test reverse.square.names ----
  if(is.null(reverse.square.names)){
    reverse.square.names <- " "
  } else if( ! reverse.square.names %in% c("x", "y", "xy", "yx")){
    stop("The value of the 'reverse.square.names' parameter must be combine one or two 'x', 'y' letters.")
  }
  
  #  load terms interface ----
  ui.terms <- .load_interface_terms(lang)
  
  params <- list("class_variable" = class.variable, "class_values" = class.values,
                 "default.group" = default.group, "location" = location.mode,
                 "planZ" = map.z.val, "map.density" = map.density, "refits.map" = map.refits, 
                 "cxhull" = plot3d.hulls, "surface" = plot3d.surfaces, "refits" = plot3d.refits,
                 "sectionXx" = sectionX.x.val, "sectionXy" = sectionX.y.val, "refits.sectionX" = sectionX.refits,
                 "sectionYx" = sectionY.x.val, "sectionYy" = sectionY.y.val, "refits.sectionY" = sectionY.refits,
                 "camera.center" = camera.center, "camera.eye" = camera.eye, "run.plots" = run.plots)
  
  
  # define shiny options ----
  shinyOptions("objects.df"  = objects.df,
               "refits.df"   = refits.df,
               "timeline.df" = timeline.df,
               "square.size" = square.size,
               "reverse.axis.values" = reverse.axis.values,
               "reverse.square.names" = reverse.square.names,
               "add.x.square.labels" = add.x.square.labels,
               "add.y.square.labels" = add.y.square.labels,
               "params" = params,
               "title"       = title,
               "home.text"   = home.text,
               "set.theme"   = set.theme,
               "ui.terms"    = ui.terms)
  
  shinyApp(ui = app_ui, server = app_server)
}
