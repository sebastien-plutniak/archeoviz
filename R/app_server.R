app_server <- function(input, output, session) {
  .data <- NULL

  # Interface ----
  
  # : guidelines ----
  # hide input tab when using the function's dataset parameter
  if(! is.null(getShinyOption("objects.df"))){
    hideTab(inputId = "tabs", target = .term_switcher("tab.input"))
  }
    
  # : title ----
  output$title.edited <- renderUI({
    archeoViz.label <- paste(" <a href=https://analytics.huma-num.fr/archeoviz/home/ title='Go to the archeoViz portal' target=_blank>archeoViz</a> v",
                             utils::packageVersion("archeoViz"), sep="")
    title <- shiny::getShinyOption("title")
    
    if(is.null(title)){
      title.edited <- paste("<h4>", archeoViz.label, "</h4>")
    } else if(is.character(title) & nchar(title) <= 25){
      title.edited <- paste("<h4>", title, "</h4>",
                            .term_switcher("through"), archeoViz.label,
                            "<br><br>", sep="")
    } else{
      stop("The title parameter must be a character string (25 characters max).")
    }
    div(HTML(title.edited))
  })
  
  # : home text ----
  output$home.text <- renderUI({
    home.text <- shiny::getShinyOption("home.text")
    
    if(is.null(home.text)){
      home.text <- div(HTML(paste(
        "<div style=width:40%;, align=left>",
        .term_switcher("welcome")),
        "</div>"
      ) #end paste
      ) #end div
    } else if(is.character(home.text)){
      home.text <- div(HTML(paste(
        "<div style=width:50%;, align=left>",
        home.text, 
        "</div>"
      ) # end paste
      ) # end HTML
      ) # end div
    } else{stop("'home.text' parameter must be a character string.")}
    
  })
  
  # Timeline preprocessing ----
  timeline.file <- reactive({
    # attente du fichier de l'utilisateur
    validate(need(input$timeline.file, message = ""))
    input$timeline.file
  })
  
  
  timeline.ui.df <- reactive({
    req(timeline.file())
    utils::read.csv(timeline.file()$datapath,
                    header=T, #quote = "",
                    sep=input$sep2, dec = input$dec.sep2,
                    stringsAsFactors = F)
  })
  
  timeline.data <- reactive({
    objects.dataset <- objects.dataset()
    from.func.time.df <- getShinyOption("timeline.df")
    
    # sources priority: 
    #   function parameter > objects table > timeline table
    timeline <- .do_timelinedata(from.func.time.df, 
                                 objects.dataset, 
                                 timeline.ui.df) # this is the reactive object
    # notification disabled
    # showNotification(.term_switcher(timeline$notif.text),
    #                  type = timeline$notif.type)
    timeline$data
  })
  
  # Refits preprocessing: ----
  refits.file <- reactive({
    # waiting refits csv file
    validate(need(input$refits.file, message = ""))
    input$refits.file
  })
  
  input.ui.refits <- reactive({
    utils::read.csv(refits.file()$datapath,
                    header = TRUE, #quote = "",
                    sep = input$sep3,
                    dec = input$dec.sep3,
                    stringsAsFactors = FALSE)
  })
  
  
  refitting.df <- reactive({
    req(objects.dataset)

    refits <- list("refits.2d" = data.frame(), "refits.3d" = data.frame())
    
    if(! is.null(getShinyOption("refits.df")) ){
      refits <- data.frame(getShinyOption("refits.df"))
    } else if(input$demoData.n > 0){
      refits <- demo_refits_data(input$demoData.n)
    } else if( ! is.null(input$refits.file)){
      refits <- input.ui.refits()
    } 
    
    if(class(refits)[1] != "list"){
      refits <- .do_refits_preprocessing(refits, objects.dataset())
    }
    
    refits # an empty data.frame or a list with two dataframes
  })  
  
  # Objects preprocessing: ----
  objects.file <- reactive({
    # waiting objects csv file
    validate(need(input$objects.file, message = ""))
    input$objects.file
  })
  
  objects.ui.input <- reactive({
    df <- utils::read.csv(objects.file()$datapath, 
                          header=T, #quote = "",
                          sep = input$sep1, dec = input$dec.sep1,
                          stringsAsFactors = F)
  })
  
  #  : static preprocessing ----
  objects.dataset <- reactive({
    
    result <- .do_objects_dataset(
      from.func.objects.df = getShinyOption("objects.df"),
      demoData.n           = input$demoData.n, 
      input.ui.table       = objects.ui.input,
      add.x.square.labels = getShinyOption("add.x.square.labels"),
      add.y.square.labels = getShinyOption("add.y.square.labels")
    )
    
    showNotification(.term_switcher(result$notif.text),
                     type = result$notif.type, duration = 10)
    
    if(result$notif.type != "error"){
      result$data
    }
  })
  
  # : group variable ----
  group.variable <- reactive({
    
    if(input$group.selection == "by.layer"){
      value <- "layer"
    } else if (input$group.selection == "by.variable"){
      value <- as.character(input$class_variable)
    }
    value
  })
  
  # : subset data  ----
  objects.subdataset <- eventReactive(input$goButton, {
    req(input$class_variable, coords.min.max, input$location)
    
    df <- objects.dataset()
    df$group.variable <- factor(eval(parse(text = paste0("df$", group.variable() ))))
    df$layer_color <- factor(df$group.variable,
                      levels = levels(df$group.variable),
                      labels = grDevices::rainbow(length(levels(df$group.variable))))
    # location mode selection:
    df.sub <- df[df$location_mode %in% input$location, ]
    
    # class selection:
    if( ! .term_switcher("all") %in% input$class_values){
      selection <- eval(parse(text = paste0("df.sub$", input$class_variable))) %in% input$class_values[input$class_values != .term_switcher("all")]
      df.sub <- df.sub[selection, ]
    }
    
    df.sub  # return the subset of the dataframe
  }, ignoreNULL = F) # end dataset subset
  
  
  # Coordinate system ----
  
  # : coords min/max coordinates ----
  coords.min.max <- reactive({
    .do_coords_minmax(objects.dataset(),
                      square.size = getShinyOption("square.size"),
                      reverse.axis.values = getShinyOption("reverse.axis.values"))
  })
  
  # : squares list ----
  squares <- reactive({
    req(coords.min.max)
    coords.min.max  <- coords.min.max()
    df <- objects.dataset()
    square.size <- getShinyOption("square.size")
    # if the nr of square labels is insufficient, do not display the labels:
    square_x <- ""
    square_y <- ""
    
    max.nr.of.Xsquares <- length(unique(trunc(seq(coords.min.max$xmin, coords.min.max$xmax) / square.size) * square.size)) - 1
    square.Xlabels <- levels(df$square_x)
    if(max.nr.of.Xsquares == length(square.Xlabels) ){
      square_x <- square.Xlabels
    }  else {
      message(paste0(max.nr.of.Xsquares, " X squares, but ",
                     length(square.Xlabels), " X labels provided: ", 
                     paste0(square.Xlabels, collapse = ", "), ".\n"))
    }
    
    max.nr.of.Ysquares <- length(unique(trunc(seq(coords.min.max$ymin, coords.min.max$ymax) / square.size) * square.size)) - 1
    square.Ylabels <- levels(df$square_y)
    if(max.nr.of.Ysquares == length(square.Ylabels) ){
      square_y <- square.Ylabels
    } else {
      message(paste0(max.nr.of.Ysquares, " Y squares, but ",
                    length(square.Ylabels), " Y labels provided: ", 
                    paste0(square.Ylabels, collapse = ", "), ".\n"))
    }
    
    list("square_x" = square_x, "square_y" = square_y)
  })
  
  # : ranges ----
  square.coords.ranges <- reactive({
    coords <- coords.min.max()
    square.size <- getShinyOption("square.size")
    
    range.x <- seq(floor(coords$xmin / square.size) * square.size, ceiling(coords$xmax / square.size) * square.size, square.size)
    range.y <- seq(floor(coords$ymin / square.size) * square.size, ceiling(coords$ymax / square.size) * square.size, square.size)
    
    list("range.x" = range.x, "range.y" = range.y)
  })
  
  # : grid coordinates ----
  grid.coordx <- reactive({
    square.coords <- square.coords.ranges()
    square.size <- getShinyOption("square.size")
    coords <- coords.min.max()
    
    data.frame(
      "id" = c(rbind(seq_len(length(square.coords$range.x)),
                     seq_len(length(square.coords$range.x)))),
      "x"  = c(rbind(seq(coords$xmin, coords$xmax, square.size),
                     seq(coords$xmin, coords$xmax, square.size))),
      "y"  = rep(c(coords$ymin, coords$ymax), length(square.coords$range.x)),
      "z"  = coords$zmax)
  })
  
  grid.coordy <- reactive({
    square.coords <- square.coords.ranges()
    square.size <- getShinyOption("square.size")
    coords <- coords.min.max()
    
    data.frame(
      "id" = c(rbind(seq_len(length(square.coords$range.y)),
                     seq_len(length(square.coords$range.y)))),
      "x"  = rep(c(coords$xmin, coords$xmax),
                 length(square.coords$range.y)),
      "y"  = c(rbind(seq(coords$ymin, coords$ymax, square.size),
                     seq(coords$ymin, coords$ymax, square.size))),
      "z"  = coords$zmax)
  })
  
  # : colors ----
  colors.list <- reactive({
    req(objects.subdataset)
    as.character(levels(objects.subdataset()$layer_color))
  })
  
  # : axis labels ----
  axis.labels <- reactive({
    square.coords <- square.coords.ranges()
    square.size <- getShinyOption("square.size")
    squares <- squares()
    
    if(grepl("x", getShinyOption("reverse.square.names"))){
      squares$square_x <-factor(squares$square_x)
      levels(squares$square_x) <- rev(levels(squares$square_x))
    }
    if(grepl("y", getShinyOption("reverse.square.names"))){
      squares$square_y <-factor(squares$square_y)
      levels(squares$square_y) <- rev(levels(squares$square_y))
    }
    
    list(
      "xaxis" = list(
        "breaks" = (square.coords$range.x + square.size / 2)[ seq_len(length(squares$square_x)) ],
        "labels" =  squares$square_x
      ),
      "yaxis" = list(
        "breaks" = (square.coords$range.y + square.size / 2)[ seq_len(length(squares$square_y)) ],
        "labels" =  squares$square_y
      )
    )
  })    
  
  
  # TABLES ----
  # : preview objects tab  ----
  output$objects.preview.tab <- renderTable({
    objects.ui.input()[1:2, ]
  }, rownames = T, digits=0)
  
  output$objects.preview.table <- renderUI({
    div(style = 'overflow-x: scroll; overflow: auto',
        tableOutput('objects.preview.tab'))
  })
  
  # : preview refits tab  ----
  output$refits.preview.tab <- renderTable({
    input.ui.refits()[1:2, ]
  }, rownames = T, digits=0)
  
  output$refitss.preview.table <- renderUI({
    div(style = 'overflow-x: scroll; overflow: auto',
        tableOutput('refits.preview.tab'))
  })
  
  # : sel. tab: 3D ----

  output$plot3d.selection.tab <- renderUI({
    .do_selection_table("dataset" = objects.subdataset(), 
                        "xyz" = plot3d.click.selection(),
                        "dims" = "xyz")
  })
  
  # : sel. tab. : Map ----
  output$map.selection.tab <- renderUI({
    .do_selection_table("dataset" = objects.subdataset(), 
                        "xyz" = map.click.selection(),
                        "dims" = "xy")
  })
  # : sel. tab: X section ----
  output$sectionX.selection.tab <- renderUI({
    .do_selection_table("dataset" = objects.subdataset(), 
                        "xyz" = sectionX.click.selection(),
                        "dims" = "yz")
  })

  ## : sel. tab: Y section ----
  output$sectionY.selection.tab <- renderUI({
    .do_selection_table("dataset" = objects.subdataset(), 
                        "xyz" = sectionY.click.selection(),
                        "dims" = "xz")
  })
  
  
  # : by variable ----
  by.variable.table <- reactive({
    req(input$class_variable, input$class_values, objects.subdataset)
    dataset <- objects.subdataset()
    
    .do_by_variable_table(dataset, input$class_variable, input$location)
  })
  # render:
  output$by.variable.table <- renderTable({by.variable.table()}, 
                                          rownames = T, digits=0)
  
  # : by layer ----
  by.layer.table <- reactive({
    req(input$class_variable, input$class_values, objects.subdataset)
    dataset <- objects.subdataset()
    
    .do_by_layer_table(dataset, input$location)
  })
  # render:
  output$by.layer.table <- renderTable({by.layer.table()}, 
                                       rownames = T, digits=0)
  
  # MAPS ----
  # : site map ----
  site.map <- reactive({
    
    coords <- coords.min.max()
    square.coords <- square.coords.ranges()
    squares <- squares()
    axis.labels <- axis.labels()
    
    map <- ggplot() +
      theme_minimal(base_size = 11) +
      geom_vline(xintercept = square.coords$range.x, colour = "darkgrey" ) +
      geom_hline(yintercept = square.coords$range.y, colour = "darkgrey" ) +
      coord_fixed() +
      scale_x_continuous("", breaks = axis.labels$xaxis$breaks,
                         labels = axis.labels$xaxis$labels) +
      scale_y_continuous("", breaks = axis.labels$yaxis$breaks,
                         labels = axis.labels$yaxis$labels) 
    
    # set background color:
    if(getShinyOption("background.col") != "white"){
      background <- element_rect(fill = getShinyOption("background.col"))
      map <- map + theme_dark(base_size = 11) + 
        theme(panel.background = background,
              plot.background = background,
              legend.background = background
              ) 
    }
    
    # reverse axes if needed:
    reverse <- getShinyOption("reverse.axis.values")
    if(grepl("x", reverse)){ 
      map <- map + scale_x_reverse(breaks = axis.labels$xaxis$breaks,
                                   labels = axis.labels$xaxis$labels)
      }
    if(grepl("y", reverse)){ 
      map <- map + scale_y_reverse(breaks = axis.labels$yaxis$breaks,
                                   labels = axis.labels$yaxis$labels)
      }
    
    map
  }) 
  
  #  : mini-map X ----
  site.mapX <- reactive({
    req(input$sectionXy)
    coords <- coords.min.max()
    
    rect.df <- data.frame(
      "ymin" = input$sectionXy[1], 
      "ymax" = input$sectionXy[2],
      "xmin" = input$sectionXx[1],
      "xmax" = input$sectionXx[2])
    
    site.map() +
      geom_rect(data = rect.df,
                aes(ymin = .data[["ymin"]], ymax = .data[["ymax"]],
                           xmin = .data[["xmin"]], xmax = .data[["xmax"]]),
                fill="red", alpha=.7)
  })
  output$site.mapX <- renderPlot({site.mapX()}, height = 300)
  
  output$downloadMinimapX <- downloadHandler(
    filename = paste0(gsub(" ", "-", shiny::getShinyOption("title")), "-minimap-x.svg"),
    content = function(file) {
      ggsave(file, plot = site.mapX(), 
             device = "svg", width=9, height=9, pointsize = 14)
    }
  )
  
 
  #  : mini-map Y ----
  site.mapY <- reactive({
    req(input$sectionYy)
    coords <- coords.min.max()
    
    rect.df <- data.frame(
      "ymin" = input$sectionYy[1], 
      "ymax" = input$sectionYy[2],
      "xmin" = input$sectionYx[1],
      "xmax" = input$sectionYx[2])
    
    site.map() +
      geom_rect(data = rect.df,
                aes(ymin = .data[["ymin"]], ymax = .data[["ymax"]],
                           xmin = .data[["xmin"]], xmax = .data[["xmax"]]),
                fill="red",  alpha=.7
      )
  })
  output$site.mapY <- renderPlot({site.mapY()}, height = 300)
  
  output$downloadMinimapY <- downloadHandler(
    filename = paste0(gsub(" ", "-", shiny::getShinyOption("title")), "-minimap-y.svg"),
    content = function(file) {
      ggsave(file, plot = site.mapY(),
             device = "svg", width=9, height=9, pointsize = 14)
    }
  )
  
  
  # : timeline map ----
  timeline.map <- reactive({
    axis.labels <- axis.labels()

    map.grid <- expand.grid("square_x" = axis.labels$xaxis$labels,
                            "square_y" = axis.labels$yaxis$labels)
    
    # reverse squares if needed:
    reverse <- getShinyOption("reverse.axis.values")
    if(grepl("x", reverse)){ 
      levels(map.grid$square_x) <- rev(levels(map.grid$square_x))
    }
    if(grepl("y", reverse)){ 
      levels(map.grid$square_y) <- rev(levels(map.grid$square_y))
    }
    
    timeline.map <- ggplot() +
      theme_minimal(base_size = 12) +
      geom_tile(data = map.grid,
                aes(x = .data[["square_x"]], y = .data[["square_y"]]), alpha=0) +
      geom_vline(xintercept =  seq(0.5, length(axis.labels$xaxis$labels) + .5, 1),
                 colour = "grey70" ) +
      geom_hline(yintercept =  seq(0.5, length(axis.labels$yaxis$labels) + .5, 1),
                 colour = "grey70" ) +
      coord_fixed() +
      xlab("") + ylab("")
    
    timeline.map
  })   
  
  goButton3D <- reactive({
    req(input$class_values, objects.dataset())
    if( (input$goButton3D > 0) | getShinyOption("params")$run.plots  ){
      TRUE
    } else { return() }
  })
  
  # PLOT  3D ----
  plot3d <- eventReactive(goButton3D(), {
    req(ratio3D.value)
    validate(need(input$class_values, .term_switcher("notif.tick.value")))
    
    dataset <- objects.subdataset()
    coords <- coords.min.max()
    squares <- squares()
    axis.labels <- axis.labels()
    dataset$point.size <- input$point.size
    size.scale <- input$point.size
    
    # : plot initial ----
    fig <- plot_ly(dataset, x = ~x, y = ~y, z = ~z,
                   color = ~group.variable,
                   colors = colors.list(),
                   size  = ~point.size,
                   sizes = size.scale,
                   marker = list(symbol = 'square', sizemode = 'diameter'),
                   text = ~paste('id:', id,
                                 '<br>Square:', square,
                                 '<br>Location:', location_mode,
                                 '<br>Class:', object_type),
                   source = "A"
    )
    
    fig <- config(fig,
                  displaylogo = FALSE,
                  toImageButtonOptions = list(
                    format = "svg",
                    filename = "archeoviz-3d",
                    width = 600, height = 600
                  )
    )
    
    # : add points ----
    fig <- add_markers(fig)
    
    # : add refits lines  ----
    plot3.refits <- sum(c(input$refits,
                          getShinyOption("params")$plot3d.refits))
    if( plot3.refits > 0 ){
        refitting.df <- refitting.df()
        refitting.df <- refitting.df$refits.3d

        sel <- (refitting.df[, 1] %in% dataset$id) | (refitting.df[, 2] %in% dataset$id)
        refitting.df <- refitting.df[which(sel), ]

        fig <- add_paths(fig, x= ~x, y= ~y, z= ~z,
                         split = ~id.internal,
                         data = refitting.df,
                         color = I("red"),
                         hoverinfo = "skip",
                         showlegend = FALSE, inherit = F)
       
        # warning : refits lines: ----
        if( nrow(refitting.df) > 500){
          showNotification(.term_switcher("notif.warn.refits"),
            type = "warning", duration = 10)
        }
    }
    
    
    # Uncertainty ----
    if("show.uncertainty" %in% input$location){
      
      linear.n.objects <- 0
      planar.n.objects <- 0
      volume.n.objects <- 0
      
      fuzzy.sums <- table(dataset$fuzzy.sum)
      
      # : linear uncertainty ####
      if("1" %in% names(fuzzy.sums) ){
        linear.x.df <- dataset[dataset$fuzzy.sum == 1 & dataset$x.fuzzy, ]
        if(nrow(linear.x.df) > 0){  
          linear.x.df <- .do_uncertain_lines(linear.x.df)
          }
  
        linear.y.df <- dataset[dataset$fuzzy.sum == 1 & dataset$y.fuzzy, ]
        if(nrow(linear.y.df) > 0){
          linear.y.df <- .do_uncertain_lines(linear.y.df)
        }
  
        linear.z.df <- dataset[dataset$fuzzy.sum == 1 & dataset$z.fuzzy, ]
        if(nrow(linear.z.df) > 0){
          linear.z.df <- .do_uncertain_lines(linear.z.df)
      }

      linear.df <- rbind(linear.x.df, linear.y.df, linear.z.df)

      fig <- plotly::add_paths(fig, x = ~xmin, y = ~ymin, z = ~zmin,
                       split = ~id.internal,
                       data = linear.df,
                       color = ~group.variable,
                       text = ~paste('id:', id,
                                     '<br>Square:', square,
                                     '<br>Location:', location_mode,
                                     '<br>Class:', object_type),
                       inherit = FALSE, showlegend = FALSE)
      
      linear.n.objects <- nrow(linear.df) / 2
      }  # end if
      
      
    # : planar uncertainty----
    if("2" %in% names(fuzzy.sums) & ! is.null(fig)){
      # NB: the function output is the updated fig itself (and not a table)
      
      df.fuzzy2 <- dataset[dataset$fuzzy.sum == 2, ]
      planar.xz.df <- df.fuzzy2[df.fuzzy2$x.fuzzy & df.fuzzy2$z.fuzzy, ]
      planar.yz.df <- df.fuzzy2[df.fuzzy2$y.fuzzy & df.fuzzy2$z.fuzzy, ]
      planar.xy.df <- df.fuzzy2[df.fuzzy2$x.fuzzy & df.fuzzy2$y.fuzzy, ]
      
      fig <- .do_uncertain_mesh_plans(fig, planar.xz.df, axes="xz")
      fig <- .do_uncertain_mesh_plans(fig, planar.yz.df, axes="yz")
      fig <- .do_uncertain_mesh_plans(fig, planar.xy.df, axes="xy")
      
      planar.n.objects <- (nrow(planar.xz.df) + nrow(planar.yz.df) +
                             nrow(planar.xy.df)) / 4
    }
      
      
    # : add volume uncertainty ----
    if("3" %in% names(fuzzy.sums) ){
      
      volume.df <- dataset[dataset$fuzzy.sum == 3, ]
      volume.n.objects <- nrow(volume.df) 
      
      volume.df <- apply(volume.df, 1, function(i) {
        .get_volume_coordinates(id = i["id"],
                                xmin = i["xmin"], xmax = i["xmax"],
                                ymin = i["ymin"], ymax = i["ymax"],
                                zmin = i["zmin"], zmax = i["zmax"],
                                color = i["layer_color"],
                                square = i["square"],
                                object_type = i["object_type"])
        }, simplify = F)
      
      volume.df <- do.call("rbind", volume.df)
      
      fig <- plotly::add_mesh(fig,
                         x = volume.df[, 1],
                         y = volume.df[, 2],
                         z = volume.df[, 3],
                         data = volume.df,
                         i = c(7, 0, 0, 0, 4, 4, 6, 6, 4, 0, 3, 2), 
                         j = c(3, 4, 1, 2, 5, 6, 5, 2, 0, 1, 6, 3), 
                         k = c(0, 7, 2, 3, 6, 7, 1, 1, 5, 5, 7, 6), 
                         split = ~id,
                         facecolor = ~color,
                         showscale = FALSE, inherit = FALSE,
                         flatshading =TRUE, opacity = .5,
                         text = ~paste('id:', id,
                                       '<br>Square:', square,
                                       '<br>Class:', object_type)
        )
    } # end If
      
      
    # : warning uncertainty ----
    if( (planar.n.objects + volume.n.objects) > 500){
      showNotification(
        .term_switcher("notif.warn.uncertainty"),
        type = "warning", duration = 10)
      showNotification(paste0(.term_switcher("linear.uncertainty"), ": ",
                              linear.n.objects, " ",
                              .term_switcher("objects")),
        type = "warning", duration = 10)
      showNotification(paste0(.term_switcher("planar.uncertainty"), ": ",
                              planar.n.objects, " ",
                              .term_switcher("objects")),
        type = "warning", duration = 10)
      showNotification(paste0(.term_switcher("volume.uncertainty"), ": ",
                              volume.n.objects, " ",
                              .term_switcher("objects")),
        type = "warning", duration = 10)
    }
    
    } # end if("show.uncertainty" %in% input$location)
    
    
    # : add surfaces ####
    if(sum(input$surface) > 0){
        
        # filter the layers for which a regression surfaces must be computed:
        subsets <- table(dataset$group.variable) 
        subsets <- names(subsets[subsets > 100])
        
        # compute regression surfaces:
        surf.list <- lapply(subsets, function(x) 
          .get_surface_model(df=dataset,
                            var=group.variable(), 
                            value = x))
        
        # add traces:
        for(i in seq_len(length(surf.list)) ){
          fig <- add_surface(fig,
                             z = surf.list[[i]]$z.matrix,
                             x = surf.list[[i]]$x,
                             y = surf.list[[i]]$y,
                             colorscale = list(c(0, 1), c("black", surf.list[[i]]$color)),
                             hoverinfo="skip",  showscale=FALSE,
                             opacity = .7, inherit = FALSE)
        }
    }
    
    # :  add convex hull ####
    if(input$cxhull){
      # filter the layers for which a convex hull must be computed:
      subsets <- table(dataset$group.variable) 
      subsets <- names(subsets[subsets > 19])
      
      # compute hulls:
      mesh.list <- lapply(subsets, function(x) 
            .get_cxhull_model(df=dataset,
                              var=group.variable(), 
                              value = x))
      # add convex hull mesh:
      for(i in seq_len(length(mesh.list)) ){
        fig <-  add_mesh(fig,
                         x = mesh.list[[i]][[1]][,1] * -1,
                         y = mesh.list[[i]][[1]][,2] * -1,
                         z = mesh.list[[i]][[1]][,3] * -1,
                         facecolor = rep(mesh.list[[i]]$color, mesh.list[[i]]$nfaces),
                         hoverinfo="skip",  showscale = FALSE,
                         opacity = 0.4, alphahull = 0, inherit = FALSE)
      }
    }    
    
    fig <- add_paths(fig, x = ~x,   y = ~y, z = ~z, data = grid.coordx(),
                     split = ~id,
                     color = I("grey50"), showlegend=F,
                     hoverinfo="skip",
                     inherit = F)  
    fig <- add_paths(fig, x = ~x,   y = ~y, z = ~z, data = grid.coordy(),
                     split = ~id,
                     color = I("grey50"), showlegend=F,
                     hoverinfo="skip",
                     inherit = F)
    
    # : layout setting ----
    
    range.x <- c(coords$xmax, coords$xmin)
    range.y <- c(coords$ymax, coords$ymin)
    
    if( grepl("x", getShinyOption("reverse.axis.values")) ){
      range.x <- c(coords$xmin, coords$xmax)
    }
    if( grepl("y", getShinyOption("reverse.axis.values")) ){
      range.y <- c(coords$ymin, coords$ymax)
    }
    
    camera.values <- list("center" = list (x = 0, y = 0, z = 0),
                          "eye" = list(x = 1.25, y = 1.25, z = 1.25) )
    
    if( ! is.null(getShinyOption("params")$camera.center) ){
      camera.values$center <- getShinyOption("params")$camera.center
    }
    if( ! is.null(getShinyOption("params")$camera.eye) ){
      camera.values$center <- getShinyOption("params")$camera.eye
    }
    
    fig <- layout(fig,
                  paper_bgcolor = getShinyOption("background.col"), 
                  plot_bgcolor =  getShinyOption("background.col"),
                  scene = list(
                    xaxis = list(title = 'X',
                                 tickmode = "array",
                                 range = range.x,
                                 tickvals = axis.labels$xaxis$breaks,
                                 ticktext = axis.labels$xaxis$labels,
                                 zeroline = F, showline = F
                    ),
                    yaxis = list(title = 'Y',
                                 tickmode = "array",
                                 range =  range.y,
                                 tickvals = axis.labels$yaxis$breaks,
                                 ticktext = axis.labels$yaxis$labels
                    ),
                    zaxis = list(title = .term_switcher("depth"),
                                 tickmode = "array",
                                 range = c(coords$zmax, coords$zmin)
                    ),
                    camera  = camera.values,
                    aspectmode = "manual", 
                    aspectratio = list(x = 1, 
                                       y = (coords$ymax - coords$ymin) / (coords$xmax - coords$xmin), 
                                       z = ratio3D.value() * ((coords$zmax - coords$zmin) / (coords$xmax - coords$xmin)))
                  ))  #end layout
    # fig <- plotly::event_register(fig, 'plotly_click')
  }) # end plot3d
  
  output$plot3d <- plotly::renderPlotly(plot3d())
  
  plot3d.click.selection <- reactive(plotly::event_data("plotly_click", source="A"))
  
  #  : widget out: 3D ----
  output$download.3d.plot <- downloadHandler(
    filename = paste0(gsub(" ", "-", shiny::getShinyOption("title")), "-3d-plot.html"),
    content = function(file2) {
      htmlwidgets::saveWidget(plot3d(), file = file2)
    }
  )
  
  # PLOTS 2D ----
  # :  X section plot ----
  goButtonX <- reactive({
    req(input$class_variable, input$class_values, input$sectionXy)
    if( (input$goButtonX > 0) | getShinyOption("params")$run.plots  ){
      TRUE
    } else { return() }
  })
  
  sectionXplot <- shiny::eventReactive(goButtonX(), {
    dataset <- objects.subdataset()
    
    sel <- (dataset$y >= input$sectionXy[1] & dataset$y <= input$sectionXy[2]) &
      (dataset$x >= input$sectionXx[1] & dataset$x <= input$sectionXx[2])
    
    .do_section_plot(selection = sel,
                     dataset = dataset,
                     section.point.size = input$sectionX.point.size,
                     refitting.df = refitting.df, # this is the reactive output
                     show.refits = input$refits.sectionX,
                     colors = colors.list(),
                     grid.coord = grid.coordy(),
                     coords = coords.min.max(),
                     axis.labels = axis.labels(),
                     xaxis = "y",
                     reverse.axis.values = getShinyOption("reverse.axis.values"))
  })# end sectionX
  
  output$sectionXplot <- plotly::renderPlotly({sectionXplot()})
  
  sectionX.click.selection <- reactive(plotly::event_data("plotly_click", source="y"))
  
  #  : widget out: X section ----
  output$download.section.x.plot <- downloadHandler(
    filename = paste0(gsub(" ", "-", shiny::getShinyOption("title")), "-sectionY.html"),
    content = function(file2) {
      htmlwidgets::saveWidget(sectionXplot(), file = file2)
    }
  )
  
  # : Y section plot ----
  goButtonY <- reactive({
    req(input$class_variable, input$class_values, input$sectionYx)
    if( (input$goButtonY > 0) | getShinyOption("params")$run.plots  ){
      TRUE
    } else { return() }
  })
  
  sectionYplot <- shiny::eventReactive(goButtonY(), {
    dataset <- objects.subdataset()
    
    sel <- (dataset$y >= input$sectionYy[1] & dataset$y <= input$sectionYy[2]) &
      (dataset$x >= input$sectionYx[1] & dataset$x <= input$sectionYx[2])
    
    .do_section_plot(selection = sel,
                     dataset = dataset, 
                     section.point.size = input$sectionY.point.size,
                     refitting.df = refitting.df, # this is the reactive output
                     show.refits = input$refits.sectionY, 
                     colors = colors.list(), 
                     grid.coord = grid.coordx(),
                     coords = coords.min.max(),
                     axis.labels = axis.labels(), 
                     xaxis = "x",
                     reverse.axis.values = getShinyOption("reverse.axis.values"))
  }) #end section Y
  
  output$sectionYplot <- plotly::renderPlotly({sectionYplot()})
  
  sectionY.click.selection <- reactive(plotly::event_data("plotly_click", source="x"))
  
  #  : widget out: Y section ----
  output$download.section.y.plot <- downloadHandler(
    filename = paste0(gsub(" ", "-", shiny::getShinyOption("title")), "-sectionX.html"),
    content = function(file3) {
      htmlwidgets::saveWidget(sectionYplot(), file = file3)
    }
  )
  
  # : Map plot ####
  # goButtonZ <- reactive({
  #   req(input$class_variable, input$class_values, input$map.density)
  #   if( (input$goButtonZ > 0) | getShinyOption("params")$run.plots  ){
  #     TRUE
  #   } else { return() }
  # })
  
  
  map <- eventReactive(input$goButtonZ, {
    req(init.valuesZ)   
    dataset <- objects.subdataset()
    if(is.null(input$planZ)){
      valuesZ <- init.valuesZ()
    } else{
      valuesZ <- input$planZ
    }
    sel <- dataset$z >= valuesZ[1] & dataset$z <= valuesZ[2]
    
    planZ.df <- dataset[sel, ]
    
    color.var <- group.variable()
    planZ.df[, color.var] <- as.character(planZ.df[, color.var])
    col <- unique(planZ.df[, c("layer_color", color.var)])
    col <- col[order(col[, 2]), ]
    col <- as.character(col$layer_color)
    
    map <- site.map() +
      geom_point(data = planZ.df,
                 aes(x = .data[["x"]], y = .data[["y"]],
                     color = .data[[color.var]],
                     square = .data[["square"]], 
                     xyz = .data[["xyz"]],
                     object_type = .data[["object_type"]],
                     location_mode = .data[["location_mode"]],
                     id = .data[["id"]]
                            ),
                 size = input$map.point.size / 10
                 ) +
      scale_color_manual(color.var, values = col)

    if(! is.null(input$map.density)){
      if(input$map.density == "by.variable"){
        # only layers with > 30 points
        var.sel1 <- eval(parse(text = paste0("planZ.df$", color.var)))
        var.sel2 <- table(var.sel1)
        var.sel2 <- names(var.sel2[var.sel2 >= 30])
        ids <- var.sel1  %in% var.sel2
        planZ.df.sub <- planZ.df[ids, ]
  
        map <- map +
          geom_density2d(data=planZ.df.sub,
                         aes(x = .data[["x"]], y = .data[["y"]],
                             group = .data[[color.var]],
                             color = .data[[color.var]]),
                         size = .2)
      }
    
      if(input$map.density == "overall"){
        map <- map +
          geom_density2d(data=planZ.df,
                         aes(x = .data[["x"]], y = .data[["y"]]),
                         size = .2, color = "grey30")
      }
    }
    
    # add refits:
    map.refits <- sum(c(input$map.refits,
                          getShinyOption("params")$map.refits))
    map.refits
    if( map.refits > 0 ){
      refitting.df <- refitting.df()
      refitting.df <- refitting.df$refits.2d
      
      sel <- (refitting.df[, 1] %in% planZ.df$id) | (refitting.df[, 2] %in% planZ.df$id)
      refitting.df <- refitting.df[which(sel), ]
        
        if(nrow(refitting.df) > 1){
          # refitting.df <- cbind(
          #   refitting.df[seq(1, nrow(refitting.df)-1, by=2), c("x", "y")],
          #   refitting.df[seq(2, nrow(refitting.df),   by=2), c("x", "y")])
          # colnames(refitting.df) <- c("x", "y", "xend", "yend")
          
          map <- map +
            geom_segment(data = refitting.df,
                         aes(x = .data[["x"]], xend = .data[["xend"]],
                             y = .data[["y"]], yend = .data[["yend"]]),
                         color = "red", linewidth=.3 )
        }
    }
    
    map <- ggplotly(map, tooltip = c("id", "xyz", "square",
                                     "location_mode", "object_type"),
                    source = "B") 
    
    plotly::config(map,
                   displaylogo = FALSE,  
                   toImageButtonOptions = list(format = "svg",
                                               filename = "archeoviz-map",
                                               width = 600, height = 600))
  },  ignoreNULL = ( ! getShinyOption("params")$run.plots) )
  
  output$map <- plotly::renderPlotly({ map() })
  
  map.click.selection <- reactive(plotly::event_data("plotly_click", source="B"))
  
  #  : widget out: Map  ----
  output$download.map.plot <- downloadHandler(
    filename = paste0(gsub(" ", "-", shiny::getShinyOption("title")), "-map.html"),
    content = function(file2) {
      htmlwidgets::saveWidget(map(), file = file2)
    }
  )
  
  # Conditionnal interface ----
  
  # : slider ratio 3D ----
  ratio3D.value <- reactive({
    
    ratio3D.value <- input$ratio
    
    if(is.null(ratio3D.value)){
      ratio3D.value <- getShinyOption("params")$plot3d.ratio
      if(is.null(ratio3D.value)){
        ratio3D.value <- 1
      }
    }
    ratio3D.value
  })
  
  output$ratio3D <- renderUI({
    sliderInput("ratio", .term_switcher("ratio"), width="100%", sep = "",
                min=.5, max=2,
                value = ratio3D.value(),
                step=.1)
  })
  
  # : slider Z  ----
  
  init.valuesZ <- reactive({
    coords <- coords.min.max()
    summary(seq(coords$zmin, coords$zmax))[c(2, 3)]
    })
  
  output$sliderMap <- renderUI({
    coords <- coords.min.max()
    init.valuesZ <- init.valuesZ()
    
    if( ! is.null(getShinyOption("params")$planZ) ){
      init.valuesZ <- getShinyOption("params")$planZ
    }
    
    sliderInput("planZ", "Z: min/max",  width="100%", sep = "",
                min = min(coords$zmin, coords$zmax), 
                max = max(coords$zmin, coords$zmax),
                round = T,
                value = init.valuesZ
    )
  })
  # : sliders X  ----
  init.valuesXx <- reactive({
    coords <- coords.min.max()
    summary(seq(coords$xmin, coords$xmax))[c(2, 3)]
  })
  
  output$sliderXx <- renderUI({
    coords <- coords.min.max()
    init.valuesXx <- init.valuesXx()
    
    if( ! is.null(getShinyOption("params")$sectionXx) ){
      init.valuesXx <- getShinyOption("params")$sectionXx
    }
    
    sliderInput("sectionXx", "X: min/max", width="100%", sep = "", step=1,
                min = coords$xmin, max = coords$xmax, round=T,
                value = init.valuesXx
    )
  })
  
  output$sliderXy <- renderUI({
    req(coords.min.max)
    coords <- coords.min.max()
    
    init.valueXy <- c(coords$ymin, coords$ymax)
    
    if( ! is.null(getShinyOption("params")$sectionXy) ){
      init.valueXy <- getShinyOption("params")$sectionXy
    }
    
    sliderInput("sectionXy", "Y: min/max", width="100%", sep = "", step=1,
                min = coords$ymin, max = coords$ymax, round=T,
                value = init.valueXy
    )
  })
  
  # : sliders Y  ----
  output$sliderYx <- renderUI({
    req(coords.min.max)
    coords <- coords.min.max()
    
    init.valuesYx <- c(coords$xmin, coords$xmax)
    
    if( ! is.null(getShinyOption("params")$sectionYx) ){
      init.valuesYx <- getShinyOption("params")$sectionYx
    }
    
    sliderInput("sectionYx", "X: min/max", width="100%", sep = "", step=1,
                min = coords$xmin, max = coords$xmax, round=T,
                value = init.valuesYx
    )
  })
  
  init.valuesYy <- reactive({
    coords <- coords.min.max()
    summary(seq(coords$xmin, coords$xmax))[c(2, 3)]
  })
  
  output$sliderYy <- renderUI({
    coords <- coords.min.max()
    init.valuesYy <- init.valuesYy()
    
    init.valuesYy <- summary(seq(coords$ymin, coords$ymax))[c(2, 3)]
    
    if( ! is.null(getShinyOption("params")$sectionYy) ){
      init.valuesYy <- getShinyOption("params")$sectionYy
    }
    
    sliderInput("sectionYy", "Y: min/max",  width="100%",  sep = "", step=1,
                min = coords$ymin, max = coords$ymax, round=T,
                value = init.valuesYy
    )
  })
  
  # : slider timeline  ----
  output$sliderTimeline <- renderUI({
    time.df <- timeline.data()
    if(is.null(time.df)) return()
    
    sliderInput("history.date", "Year", width="100%",  sep = "",
                min = min(time.df$year), max = max(time.df$year),
                value = min(time.df$year), step=1)
  })
  
  # : Object variable  ----
  output$class_variable <- renderUI({
    req(objects.dataset())
    items <- colnames(objects.dataset())[grep("object*", colnames(objects.dataset()))]
    selectInput("class_variable", "Variable", choices = items,
                selected = getShinyOption("params")$class_variable)
  })
  
  # observeEvent(input$reset_input, {
  #   # class_values.saved <- input$class_values
  #   updateTextInput(session, "class_values")
  # })
  
  # : Object values  ----
  output$class_values <- renderUI({
    # times <- input$reset_input # reset selection
    # actionButton("reset_input", "Reset values"),
    req(objects.dataset, input$class_variable)
    
    data <- objects.dataset()
    
    values <- unique(eval(parse(text = paste0("data$", input$class_variable))))
    
    if(is.null(input$class_values)) {
      selected.value <- .term_switcher("all")
    } else if( ! is.null(getShinyOption("params")$class_values)){
      selected.value <- getShinyOption("params")$class_values
    } else {
      selected.value <- input$class_values
    }
    
    div( 
      checkboxGroupInput("class_values", .term_switcher("values"),
                         c(.term_switcher("all"), sort(values)),
                         selected = selected.value )
    )
  })
  
  # : Group  selector ----
  output$group.selector <- renderUI({
    req(objects.dataset)
    
    group.sel.modes <- structure(c("by.layer", "by.variable"),
                                 .Names = c(.term_switcher("by.layer"),
                                            .term_switcher("by.variable")))
    radioButtons("group.selection",
                 .term_switcher("group"),
                 choices = group.sel.modes,
                 selected = getShinyOption("params")$default.group)
  })
  
  
  # : Density selector  ----
  output$density_selector <- renderUI({
    density.modes <- structure(c("no", "overall", "by.variable"), 
                               .Names = c(.term_switcher("density.no"),
                                          .term_switcher("overall"),
                                          .term_switcher("by.variable")))  
    map.density.sel <- "no"
    if( ! is.null(getShinyOption("params")$map.density) ){
      map.density.sel <- getShinyOption("params")$map.density
    }
    
    radioButtons("map.density",
                 .term_switcher("density"),
                 choices = density.modes,
                 selected = map.density.sel)
  })
  
  # : Location selector  ----
  output$locationPanel <- reactive({is.data.frame(objects.dataset())})
  outputOptions(output, "locationPanel", suspendWhenHidden = FALSE)
  
  output$location_choice <- renderUI({
    req(objects.dataset)
    
    df <- objects.dataset()
    n.location.modes <- length(unique(df$location_mode))
    
    if(n.location.modes == 1){
      loc.values <- c(unique(df$location_mode))
      loc.names <-  c(.term_switcher(loc.values))
    } else if( n.location.modes == 2) {
      loc.values <- c("exact", "fuzzy", "show.uncertainty")
      loc.names <- c(.term_switcher("exact"),
                     .term_switcher("fuzzy"),
                     .term_switcher("show.uncertainty"))
    }
    
    loc.selection <- .term_switcher(tolower(unique(df$location_mode)[1]))
    loc.selection <- tolower(unique(df$location_mode)[1])
    if( ! is.null(getShinyOption("params")$location)){
      loc.selection <- getShinyOption("params")$location
    }
    
    #TODO : interdire qu'il n'y ai aucune sélection
    checkboxGroupInput("location", .term_switcher("location"),
                 choiceNames = loc.names,
                 choiceValues = loc.values,
                 selected = loc.selection)
  })
  
  # : Refitting display selectors  ----
  output$show.refits <- renderUI({
    refitting.df <- refitting.df()
    if(nrow(refitting.df$refits.2d) > 0){
      checkboxInput("refits", .term_switcher("refits"),
                    value = getShinyOption("params")$plot3d.refits)
    }
  })
  
  output$show.map.refits <- renderUI({
    refitting.df <- refitting.df()
    if(nrow(refitting.df$refits.2d) > 0){
      checkboxInput("map.refits", .term_switcher("refits"),
                    value = getShinyOption("params")$map.refits)
    } 
  })
  
  output$show.refits.sectionX <- renderUI({
    refitting.df <- refitting.df()
    if(nrow(refitting.df$refits.2d) > 0){
      checkboxInput("refits.sectionX", .term_switcher("refits"),
                    value = getShinyOption("params")$refits.sectionX)
    }
  })
  
  output$show.refits.sectionY <- renderUI({
    refitting.df <- refitting.df()
    if(nrow(refitting.df$refits.2d) > 0){
      checkboxInput("refits.sectionY", .term_switcher("refits"),
                    value = getShinyOption("params")$refits.sectionY)
    }
  })
  
  # : Surfaces tick box  ----
  output$show.surfaces <- renderUI({
    df <- objects.subdataset()
    subsets <- table(df$group.variable)
    subsets <- names(subsets[subsets > 100])
    if(length(subsets) > 0){
      checkboxInput("surface", .term_switcher("surfaces"),
                    value = getShinyOption("params")$surface)
    }
  })
  
  # : download button : timeline plot ----
  output$download.button.timeline.map.grid <- renderUI({
    req(timeline.map.plot())
    downloadButton("download.timeline.map.grid", .term_switcher("download"))
  })
  
  # : download button : timeline grid plot ----
  output$download.button.timeline.map <- renderUI({
    req(timeline.map.plot())
    downloadButton("download.timeline.map", .term_switcher("download"))
  })
  
  #  Reproducibility ----
  
  output$reproducibility <- reactive({
    get.shiny.param <- function(param){
      param.value <- getShinyOption(param)
      if( is.null(param.value)){
        return(NULL)
      } else if(sum(param.value == "") != 0){
        return(NULL)
      } else {
        paste0("<span style=\"color: Darkblue;\">", param, "</span>",  "=", "\"", param.value, "\"")
      }
    }
    
    param.list <- list("reverse.axis.values", "reverse.square.names",
                        "title", "lang", "set.theme")
    param.list <- sapply(param.list, get.shiny.param)
    param.list <- param.list[ ! sapply(param.list, is.null) ]
    
    class_values <- input$class_values
    if(length(input$class_values) == 1){
      class_values <- paste0("\"", class_values, "\"")
    }
    if(sum(input$class_values == .term_switcher("all"))){
      class_values <-  NULL
    }
    
    params.list2 <- list("home.text" = "\" \"",
                         "add.x.square.labels" = getShinyOption("add.x.square.labels"),
                         "add.y.square.labels" = getShinyOption("add.y.square.labels"),
                         "class.variable" = paste0("\"", input$class_variable, "\""),
                         "class.values" = class_values, 
                         "square.size" = getShinyOption("square.size"),
                  "default.group" = paste0("\"", input$group.selection, "\""),
                  "location.mode" = paste0("\"", input$location, "\""),
                  "map.z.val" = input$planZ, "map.density" = paste0("\"", input$map.density, "\""),  "map.refits" = input$map.refits,
                  "plot3d.ratio" = input$ratio, "plot3d.hulls" = input$cxhull, "plot3d.surfaces" = input$surface,  "plot3d.refits" = input$refits,
                  "sectionX.x.val" = input$sectionXx, "sectionX.y.val" = input$sectionXy, "sectionX.refits" = input$refits.sectionX,
                  "sectionY.x.val" = input$sectionYx, "sectionY.y.val" = input$sectionYy, "sectionY.refits" = input$refits.sectionY
                  )
    params.list2 <- params.list2[ ! sapply(params.list2, is.null) ]
    params.list2 <- params.list2[ ! params.list2 %in%  c("", "\"\"") ]
    
    names.list2 <- paste0("<span style=\"color: Darkblue;\">", names(params.list2), "</span>")
    params.list2 <- paste0(names.list2, "=", params.list2)
    
    if(nrow(refitting.df()[[1]]) != 0){
      refits.param <- "<span style=\"color: Darkblue;\">refits.df</span>=refit.data, "
    } else{refits.param <- NULL}
    
    paste0(c("archeoViz(<span style=color:Darkblue;>objects.df</span>=data, ",
             refits.param,
             paste(param.list, collapse = ", "), ", ",
             paste(params.list2, collapse = ", "),
            ")"), collapse = "")
    
  })
  
  #  Timeline ----
  #  : main timeline ----
  timeline.map.plot <- reactive({
    req(timeline.data)
    
    time.df <- timeline.data()
    if(is.null(time.df)) return()

    # year <- input$history.date
    # if(is.null(input$history.date)){ year <- min(time.df$year, na.rm=T)}
    
    time.sub.df <- time.df[time.df$year == input$history.date, ]
    
    timeline.map() +
      geom_tile(data = time.sub.df,
                aes(x = .data[["square_x"]], y = .data[["square_y"]],
                    fill = .data[["excavation"]]),
                show.legend = F) +
      scale_fill_manual("State:",
      values = c(grDevices::rgb(0,0,0,0), 
                 grDevices::rgb(.43, .54, .23, .7)) )
  })
  
  output$timeline.map <- renderPlot({ timeline.map.plot() })
  
  output$download.timeline.map <- downloadHandler(
    filename = "timeline-map.svg",
    content = function(file) {
      ggsave(file, plot = timeline.map.plot(),
             device = "svg", width=9, height=9, pointsize = 14)
    }
  )
  
  #  : timeline grid ----
  timeline.map.grid <- reactive({
    req(timeline.data)
    time.df <- timeline.data()
    
    if(is.null(time.df)) return()
    
    timeline.map() +
      geom_tile(data = time.df,
                aes(x = .data[["square_x"]], y = .data[["square_y"]], 
                    fill = .data[["excavation"]]),
                show.legend = F)  +
      scale_fill_manual("State:",
                        values = c(grDevices::rgb(0, 0, 0, 0),
                                   grDevices::rgb(.43, .54, .23, 1)) ) +
      facet_wrap(~year) +
      theme(axis.text.x = element_text(color="white", size = .1),
            axis.text.y = element_text(color="white", size = .1),
            panel.grid.major = element_blank())
  })
  
  output$timeline.map.grid <- renderPlot({ timeline.map.grid()})
  
  output$download.timeline.map.grid <- downloadHandler(
    filename = "timeline-map-grid.svg",
    content = function(file) {
      ggsave(file, plot = timeline.map.grid(),
             device = "svg", width=9, height=9, pointsize = 14)
    }
  )
  
} # end of server.R

# 
# sample_df <- data.frame(
#   x = 1:20),
#   y = 1:20
# )
# 
# group_means_df <- setNames(
#   aggregate(value ~ group, sample_df, mean),
#   c("group", "group_mean")
# )
# 
#   ggplot(data = sample_df, mapping = aes(x = x, y = y)) +
#       theme_minimal(base_size = 11) +
#       # geom_vline(xintercept = seq(1,10,2) ) +
#       # geom_hline(yintercept = seq(1,10,2) ) +
#   geom_point()  +
#   coord_fixed() +
#   scale_x_continuous("xx") +
#   scale_y_continuous("x")   + 
#     theme(panel.grid.minor = element_line(color = "red"),
#           panel.grid.major = element_line(color = "blue"),
#           )
# 
# a$layers
