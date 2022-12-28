.do_by_layer_table <- function(dataset, input.location){
  df <- table(dataset$layer, dataset$location_mode)
  
  if(ncol(df) > 1 & nrow(df) > 1 ){
    df <- as.matrix(df)
    df <- df[order(df[,1], decreasing = T), ]
    df <- rbind(df, "Total" = apply(df, 2, sum))
    df <- cbind(df, "Total" = apply(df, 1, sum))
  }
  if(ncol(df) == 1 & nrow(df) > 1){
    df <- df[order(df[, 1], decreasing = T), ]
    df <- c(df, "Total" = sum(df))
    df <- as.data.frame(df)
    colnames(df) <- input.location
  }
  data.frame(df)
}