.do_by_variable_table <- function(dataset, class_variable, input.location){
  
  df <- table(eval(parse(text = paste0("dataset$", class_variable))),
                    dataset$location_mode)
  
  if(nrow(df) == 0) return()
  
  if("show.uncertainty" %in% input.location){
    dataset$fuzzy.sum <- factor(dataset$fuzzy.sum, levels = c(0, 1, 2, 3), 
                                labels = c("exact", "linear", "planar", "volume"))
    df <- table(eval(parse(text = paste0("dataset$", class_variable))),
                dataset$fuzzy.sum)
  }
  
  if(nrow(df) > 1 & ncol(df) > 1){
    df <- as.matrix(df)
    df <- df[order(df[,1], decreasing = T), ]
    df <- rbind(df, "total" = apply(df, 2, sum))
    df <- cbind(df, "total" = apply(df, 1, sum))
  }
  
  if(nrow(df) > 1 & ncol(df) == 1){
    df <- df[order(df[,1], decreasing = T), ]
    df <- c(df, "total" = sum(df))
    df <- as.data.frame(df)
    colnames(df) <- input.location
  } else {
    df <- as.data.frame.matrix(df)
  }
  
  colnames(df) <- sapply(colnames(df), .term_switcher)
  rownames(df)[nrow(df)] <- .term_switcher("total")
  
  df
}