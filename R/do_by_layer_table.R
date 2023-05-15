.do_by_layer_table <- function(dataset, input.location){
  
  df <- table(dataset$layer, dataset$location_mode)
  
  if(nrow(df) == 0) return()
  
  if("show.uncertainty" %in% input.location){
    dataset$fuzzy.sum <- factor(dataset$fuzzy.sum, levels = c(0, 1, 2, 3), 
           labels = c("exact", "linear", "planar", "volume"))
    df <- table(dataset$layer, dataset$fuzzy.sum)
  }
  
  if(ncol(df) > 1){
    df <- as.matrix(df)
    df <- df[order(rownames(df), decreasing = FALSE), ]
    df <- rbind(df, "total" = apply(df, 2, sum))
    df <- cbind(df, "total" = apply(df, 1, sum))
  }
  
  if(ncol(df) == 1 & nrow(df) > 1){
    df <- df[order(rownames(df), decreasing = FALSE), ]
    df <- c(df, "total" = sum(df))
    df <- as.data.frame(df)
    colnames(df) <- input.location
  }
  
  colnames(df) <- sapply(colnames(df), .term_switcher)
  rownames(df)[nrow(df)] <- .term_switcher("total")
  data.frame(df)
}
