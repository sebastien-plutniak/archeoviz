.do_objects_dataset <- function(from.parameter.input=NULL, 
                                from.ui.input=NULL, 
                                demoData.n=NULL,
                                add.x.square.labels=NULL, add.y.square.labels=NULL){
  # source selection ----
  if (! is.null(from.parameter.input)){
    df <- from.parameter.input
  } else{
    if(demoData.n > 0){
      df <- demo_objects_data(demoData.n)
    } else if(! is.null(from.ui.input)){
      df <- from.ui.input()
    }
  }
  
  colnames(df) <- tolower(colnames(df))
  
  #  Tests file ----
  
  required.fields <- c("id", "xmin", "ymin", "zmin", "layer", "object_type")
  
  if( sum(required.fields %in% colnames(df)) != 6 ){
    return(list(data = df,
                notif.text = "notif.objects.not.ok",
                notif.type = "error"))
  } else{
    notif.text <- "notif.objects.ok"
    notif.type <- "message"
  }
  
  # : test coords format ----
  coords.type.check <- function(x){
    typeof(x) %in% c("integer", "double")
  }
  
  if(sum(apply(df[1, c("xmin", "ymin", "zmin")], 2, coords.type.check)) != 3){
    return(list(data = df,
                notif.text = "notif.error.coords.type",
                notif.type = "error"))
  }
  
  # : test unique identifiers ----
  if(sum(duplicated(df$id)) > 0){
    return(list(data = df,
                notif.text = "notif.error.identifier",
                notif.type = "error"))
  }
  
  
  # Objects ----
  df$object_type <- as.character(df$object_type)
  # sanitize column names:
  idx <- grep("object_", colnames(df))
  colnames(df)[idx] <- gsub("[\\*\\/\\-\\+]", ".", colnames(df)[idx], perl=TRUE)
  
  # Coordinates ----
  # : clean empty coordinates values
  df[which(df$xmin %in% c("", " ")), "xmin"] <- NA
  df[which(df$ymin %in% c("", " ")), "ymin"] <- NA
  df[which(df$zmin %in% c("", " ")), "zmin"] <- NA
  
  n.removed <- which( ! stats::complete.cases(df[, c("xmin", "ymin", "zmin")]))
  
  if(length(n.removed) > 0){
    notif.text <- "notif.warn.obj.removed"
    notif.type <- "warning"
    df <- df[ - n.removed, ]
  }
  
  
  # : add max coordinates if absent: ----
  if(is.null(df$xmax)){ df$xmax <- df$xmin }
  if(is.null(df$ymax)){ df$ymax <- df$ymin }
  if(is.null(df$zmax)){ df$zmax <- df$zmin }
  
  # if coord.max absent, set coord.max = coord.min 
  df[is.na(df$xmax), "xmax"] <- df[is.na(df$xmax), "xmin"]
  df[is.na(df$ymax), "ymax"] <- df[is.na(df$ymax), "ymin"]
  df[is.na(df$zmax), "zmax"] <- df[is.na(df$zmax), "zmin"]
  
  df[, c("xmin", "ymin", "zmin", "xmax", "ymax", "zmax")] <- 
    apply(df[, c("xmin", "ymin", "zmin", "xmax", "ymax", "zmax")], 2, 
          function(x) as.integer(trunc(x))  )
  
  # : location mode ----
  df[, "location_mode"] <- "exact"
  
  # tag fuzzy coordinates:
  df$x.fuzzy <- F
  df$y.fuzzy <- F
  df$z.fuzzy <- F
  
  # : generate random coordinates if needed ----
  location.term <- "fuzzy"
  df <- .coordinates_sampling(df, "xmin", "xmax", "x", location.term)
  df <- .coordinates_sampling(df, "ymin", "ymax", "y", location.term)
  df <- .coordinates_sampling(df, "zmin", "zmax", "z", location.term)
  
  # compute fuzzy sum
  df$fuzzy.sum <- apply(df[, c("x.fuzzy", "y.fuzzy", "z.fuzzy")], 1, sum)
  
  # : add a string summary of the coordinates: ----
  df$xyz <- paste0(round(df$x, 1), ", ", round(df$y, 1), ", ", round(df$z, 1))
  
  # Squares ----
  if( ! (is.null(df$square_x) & is.null(df$square_y)) ){
    # : add square identifier ----
    # : as factors ----
    df$square_x <- factor(df$square_x, exclude = c(NA, "", " "))
    df$square_y <- factor(df$square_y, exclude = c(NA, "", " "))
    df$square_x <- factor(df$square_x,
                          levels = sort(c(levels(df$square_x), add.x.square.labels)))
    df$square_y <- factor(df$square_y,
                          levels = sort(c(levels(df$square_y), add.y.square.labels)))
    df$square <- paste(df$square_x, df$square_y, sep = "-")
    
  } else{
    df$square_x <- NULL
    df$square_y <- NULL
    df$square <- ""
  }
  
  
  
  # Layers ----
  # : order by mean depth ----
  sorted.layers <- by(df, df$layer, function(x) mean(x$z, na.rm = TRUE)  )
  sorted.layers <- sapply(seq_len(length(sorted.layers)),
                          function(x) sorted.layers[x])
  sorted.layers <- sort(sorted.layers)
  df$layer <- factor(df$layer, levels = names(sorted.layers))
  
  list("data" = df, "notif.text" = notif.text, "notif.type" = notif.type)
}
