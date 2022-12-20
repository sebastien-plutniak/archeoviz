
demo_timeline_data <- function(){
  df <- expand.grid(year=1980:1995,
                    square_x = 1:10,
                    square_y = 1:9)
  df[ - sample(1:nrow(df), 1200),]
}
