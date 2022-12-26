.do_objects_dataset <- function(from.func.objects.df=NULL, demoData.n=NULL, input.ui.table=NULL){
  # source selection ----
  if (! is.null(from.func.objects.df)){
    df <- from.func.objects.df
  } else{
    if(demoData.n > 0){
      df <- demo_objects_data(demoData.n)
    } else if(! is.null(input.ui.table)){
      df <- input.ui.table()
    }
  }
  
  colnames(df) <- tolower(colnames(df))
  
  #  file validation ----
  
  required.fields <- c("id", "square_x", "square_y", "xmin", "ymin", "zmin", "layer", "object_type")
  
  if( sum(required.fields %in% colnames(df)) != 8 ){
    return(list(data = df,
                notif.text = "notif.objects.not.ok",
                notif.type = "error"))
  } else{
    notif.text <- "notif.objects.ok"
    notif.type <- "message"
  }
  
  # check coords format ----
  coords.type.check <- function(x){
    typeof(x) %in% c("integer", "double")
    }
  
  if(sum(apply(df[1, c("xmin", "ymin", "zmin")], 2, coords.type.check)) != 3){
    return(list(data = df,
                notif.text = "coords.type.error",
                notif.type = "error"))
  }
  
  
  # add max coordinates if absent: ----
  if(is.null(df$xmax)){ df$xmax <- df$xmin }
  if(is.null(df$ymax)){ df$ymax <- df$ymin }
  if(is.null(df$zmax)){ df$zmax <- df$zmin }
  
  # tag location mode:
  df$location_mode <- .term_switcher("exact")
  
  # generate random coordinates if needed:
  location.term <- .term_switcher("fuzzy")
  df <- .coordinates_sampling(df, "xmin", "xmax", "x", location.term)
  df <- .coordinates_sampling(df, "ymin", "ymax", "y", location.term)
  df <- .coordinates_sampling(df, "zmin", "zmax", "z", location.term)
  
  # add square identifier:
  df$square <- paste(df$square_x, df$square_y, sep = "-")
  
  # order layers by mean depth:
  sorted.layers <- by(df, df$layer, function(x) mean(x$z)  )
  sorted.layers <- sapply(1:length(sorted.layers),
                          function(x) sorted.layers[x])
  sorted.layers <- sort(sorted.layers)
  df$layer <- factor(df$layer, levels = names(sorted.layers))
  
  # add color:
  df$layer_color <- factor(df$layer,
                           levels = levels(df$layer),
                           labels = grDevices::rainbow(length(levels(df$layer))))
  
  df$square_x <- factor(df$square_x)
  df$square_y <- factor(df$square_y)
  
  list("data" = df, "notif.text" = notif.text, "notif.type" = notif.type)
}