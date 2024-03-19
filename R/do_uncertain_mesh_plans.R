.do_uncertain_mesh_plans <- function(fig, df, axes){
      
	if(nrow(df) == 0){ return(fig) }
  
	df$axes <- axes
	df <- apply(df, 1, function(i)
				.get_plan_coordinates(id = i["id"],
									 xmin = i["xmin"], xmax = i["xmax"],
									 ymin = i["ymin"], ymax = i["ymax"],
									 zmin = i["zmin"], zmax = i["zmax"],
									 color = i["layer_color"],
									 square = i["square"],
									 object_type = i["object_type"],
									 axes = i["axes"]),
				simplify = F)
				
	df <- do.call("rbind", df)
  
	fig <- plotly::add_mesh(fig,
						  x = df[, 1],
						  y = df[, 2],
						  z = df[, 3],
						  i = c(0, 1), j = c(1, 2), k = c(2, 3),
						  data = df,
						  split = ~id,
						  facecolor = df[, 5],
						  showscale = FALSE, inherit = FALSE,
						  flatshading =TRUE, opacity = .5,
						  text = ~paste('id:', id,
										'<br>Square:', square,
										'<br>Class:', object_type))
  fig
}


