.do_selection_table <- function(dataset, id){

	df.tab <- dataset[id, ]
	df.tab <- df.tab[, - which(colnames(df.tab) %in% c("x", "y", "z", "square_x", "square_y", "group.variable", "color.values", "xyz", "layer_color"))]

	div(style = 'overflow-x: auto; overflow: auto; ',
		HTML(knitr::kable(df.tab, row.names=FALSE,
						  table.attr = "class=\"tabclass\"",
						  format="html", escape = FALSE))	
	) #end div
}
