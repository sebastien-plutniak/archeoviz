demo_timeline_data <- function(){
  df <- expand.grid("year" = seq(1980, 1995, 1),
                    "square_x" = seq(1, 10, 1),
                    "square_y" = seq(1, 9, 1))
  df[ - sample(seq_len(nrow(df)), 1200),] # randomly deleting squares
}
