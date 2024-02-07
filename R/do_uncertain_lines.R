.do_uncertain_lines <- function(df){
  df <- df[rep(seq_len(nrow(df)), each = 2), ]
  idx <- seq(2, nrow(df), 2)
  df[idx, ]$xmin <- df[idx, ]$xmax
  df[idx, ]$ymin <- df[idx, ]$ymax
  df[idx, ]$zmin <- df[idx, ]$zmax
  df$id.internal <- paste0(df[,1], df[,2])
  df
}
