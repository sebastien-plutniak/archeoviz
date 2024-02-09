.do_r_command <- function(reactive.params, refitting.df){
  
  .get.shiny.param <- function(param){
    param.value <- getShinyOption(param)
    
    if( is.null(param.value)){
      return(NULL)
    } else if(sum(param.value == "") != 0){
      return(NULL)
    } else {
      
      if(param.value %in% c("TRUE", "FALSE", "F", "T")){
        param.value <- as.logical(param.value)}
      if(param == "square.size") {param.value <- as.integer(param.value)}
      
      param.value[is.character(param.value)] <- paste0("'", 
                                                       param.value[is.character(param.value)], "'")
      
      paste0("<span style=\"color: Darkblue;\">", param, "</span>", "=", param.value)
    }
  }
  
  # static parameters: ----
  static.params <- list("reverse.axis.values", "reverse.square.names", "square.size",
                    "grid.orientation", "rotation", "title", "lang", "set.theme", "run.plots", "html.export")
  static.params <- sapply(static.params, .get.shiny.param)
  static.params <- static.params[ ! sapply(static.params, is.null) ]
  
  # dynamic parameters: ----
  reactive.params <- reactive.params[ ! sapply(reactive.params, is.null) ]
  reactive.params <- reactive.params[ ! reactive.params %in%  c("", "\"\"", '') ]
  
  names.list2 <- paste0("<span style=\"color: Darkblue;\">", names(reactive.params), "</span>")
  reactive.params <- paste0(names.list2, "=", reactive.params)
  
  # refits parameter: ----
  if(nrow(refitting.df[[1]]) != 0){
    refits.param <- "<span style=\"color: Darkblue;\">refits.df</span>=refit.data, "
  } else{refits.param <- NULL}
  
  # output: ----
  paste0(c("archeoViz(<span style=color:Darkblue;>objects.df</span>=data, ",
           refits.param,
           paste(static.params, collapse = ", "), ", ",
           paste(reactive.params, collapse = ", "),
           ")"), collapse = "")
}
