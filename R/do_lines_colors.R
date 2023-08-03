.do_lines_colors <- function(lines.df, objects.df, color.param){
  if(sum(lines.df[, 1] %in% objects.df$id) > 1){
    lines.df <- merge(lines.df,
                      objects.df[, c("id", color.param)],
                      by.x="from", by.y="id")
  } else{
    lines.df <- merge(lines.df,
                      objects.df[, c("id", color.param)],
                      by.x="to", by.y="id")
  }
  lines.df
}