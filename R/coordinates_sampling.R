.coordinates_sampling <- function(df, coord1, coord2, coord.out){
  df[, coord.out] <- df[, coord1] # copy the minimal value
  sel.rows <- which(df[, coord1] != df[, coord2])
  results <- apply(df[sel.rows, c(coord1, coord2)], 1,
                   function(x) sample(seq(x[1], x[2]), 1) )
  df[sel.rows, coord.out] <- results
  df[sel.rows, "location_mode"] <- "fuzzy"
  df
}
