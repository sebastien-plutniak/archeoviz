archeoViz <- function(objects.df=NULL, refits.df=NULL, timeline.df=NULL, default.group="by.layer",
                      reverse.axis.values=NULL, reverse.square.names=NULL,
                      add.x.square.labels = NULL, add.y.square.labels = NULL,
                      title=NULL, home.text=NULL, lang="en", set.theme="cosmo"){
  
  
  # tests parameters----
  # : test default.group ----
  if( ! default.group %in% c("by.layer", "by.variable")){
    stop("The 'default.group' parameter must be one of 'by.layer' or 'by.variable'.")
  }
  
  # : test lang ----
  if( ! lang %in% c("en", "fr")){
    stop("The 'lang' parameter must be one of 'en' or 'fr'.")
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
  
  # define shiny options ----
  shinyOptions("objects.df"  = objects.df,
               "refits.df"   = refits.df,
               "timeline.df" = timeline.df,
               "default.group" = default.group,
               "reverse.axis.values" = reverse.axis.values,
               "reverse.square.names" = reverse.square.names,
               "add.x.square.labels" = add.x.square.labels,
               "add.y.square.labels" = add.y.square.labels,
               "title"       = title,
               "home.text"   = home.text,
               "set.theme"   = set.theme,
               "ui.terms"    = ui.terms)
  
  shinyApp(ui = app_ui, server = app_server)
}
