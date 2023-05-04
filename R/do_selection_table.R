.do_selection_table <- function(dataset, xyz, dims){
  # determine the set of coordinates to use:
  if(is.null(xyz)){
    id <- dataset[1, ]$id
  } else if(dims == "xyz"){
    id <- dataset[dataset$x == xyz$x & dataset$y == xyz$y & dataset$z == xyz$z, ]$id
  } else if(dims == "xy"){
    id <- dataset[dataset$x == xyz$x & dataset$y == xyz$y, ]$id
  } else if(dims == "xz"){
    id <- dataset[dataset$x == xyz$x & dataset$z == xyz$y, ]$id
  } else if(dims == "yz"){
    id <- dataset[dataset$y == xyz$x & dataset$z == xyz$y, ]$id
  } 
  # retrieve the line corresponding to the selected point:
  id <- which(dataset$id == id)
	df.tab <- dataset[id, ]
	df.tab <- df.tab[, - which(colnames(df.tab) %in% c("x", "y", "z", "square_x", "square_y", "group.variable", "color.values", "xyz", "layer_color"))]

	# format the table:
	div(style = 'overflow-x: auto; overflow: auto; ',
		HTML(knitr::kable(df.tab, row.names=FALSE,
						  table.attr = "class=\"tabclass\"",
						  format="html", escape = FALSE))	
	) #end div
}
