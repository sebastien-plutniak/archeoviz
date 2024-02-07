.do_square_list <- function(square.size, coords.min, coords.max, square.list, axes){
  
  max.nr.of.squares <- length(unique(trunc(seq(coords.min, coords.max) / square.size) * square.size)) - 1
  square.labels <- levels(square.list)
  
  if(max.nr.of.squares == length(square.labels) ){
    squares.print <- square.labels
  }  else {
    message(paste0(max.nr.of.squares, " ", axes, " squares, but ",
                   length(square.labels), " labels provided: ", 
                   paste0(square.labels, collapse = ", "), ".\n"))
    squares.print <- NULL # "" # if the nr of square labels is insufficient, do not display the labels
  }
  list("squares.print" = squares.print,
       "squares.save" = square.labels)
}