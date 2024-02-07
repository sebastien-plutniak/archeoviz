.do_timelinedata <- function(from.func.time.df = NULL, full.dataset = NULL, timeline.ui.df = NULL){
  # sources selection:  ----
  #            function parameter > objects table > timeline table
  
  if (! is.null(from.func.time.df)){
    time.df <- from.func.time.df
  } 
  else if( ! (is.null(full.dataset$year) | ("" %in% unique(full.dataset$square) & length(unique(full.dataset$square)) == 1) ) ){
    time.df <- table(full.dataset$square, full.dataset$year)
    time.df <- as.data.frame(time.df)
    time.df$square_x <- as.character(gsub("(.*)-(.*)", "\\1", time.df[, 1]))
    time.df$square_y <- as.character(gsub("(.*)-(.*)", "\\2", time.df[, 1]))
    colnames(time.df) <- c("square", "year", "excavation", "square_x", "square_y")
    time.df$year <- as.integer(as.character(time.df$year))
    time.df <- time.df[time.df$excavation > 0, ]
    time.df <- time.df[ ! is.na(time.df$year), ]
    time.df <- time.df[, c("year", "square_x", "square_y")]
  }
  else if( try(nrow(timeline.ui.df()) > 0, silent = TRUE) == T ){
    time.df <- timeline.ui.df()
  } else {
    return(list(data = NULL, notif.text = "notif.timeline.not.ok", notif.type = "message"))
  }
  
  # Process: ----
  time.df <- data.frame(time.df)
  colnames(time.df) <- tolower(colnames(time.df))
  
  time.df$excavation <- T
  time.df$year <- as.integer(time.df$year)
  
  square_x <- sort(unique(time.df$square_x))
  square_x <- square_x[ ! (is.na(square_x) | square_x %in% c(" ", "", "NA"))]
  square_y <- sort(unique(time.df$square_y))       
  square_y <- square_y[ ! (is.na(square_y) | square_y %in% c(" ", "", "NA"))]
  
  time.grid <- expand.grid("square_x" = square_x,
                           "square_y" = square_y,
                           "year" = unique(time.df$year))
  
  time.df <- merge(time.grid,
                   time.df[c("square_x", "square_y", "year", "excavation")],
                   by = c("square_x", "square_y", "year"), all.x = T)
  time.df[ is.na(time.df$excavation), ]$"excavation" <- F
  
  time.df$square_x <- factor(time.df$square_x)
  time.df$square_y <- factor(time.df$square_y)
  
  list(data = time.df, notif.text = "notif.timeline.ok", notif.type = "message")
}
