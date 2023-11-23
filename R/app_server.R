app_server <- function(input, output, session) {
  .data <- NULL
  
  # retrieve parameters from URL ----
  observe({
    query <- shiny::parseQueryString(session$clientData$url_search)
    if(length(query) == 0) return()
    
    param_static <- query[ names(query) %in% c("square.size", "run.plots") ] # ,
    param_static_char <- query[ names(query) %in% c("reverse.axis.values", "reverse.square.names", "add.x.square.labels", "add.y.square.labels", "title", "home.text") ] #  "set.theme", "lang"
    
    # : param_static numerical and logical
    if(length(param_static) > 0){
      for(x in 1:length(param_static)){
        eval(parse(text = paste0(
          "shinyOptions(", names(param_static[x]), " = ", query[[ names(param_static[x]) ]], ")"
        )))
      }
    }
    # : param_static character
    if(length(param_static_char) > 0){
      for(x in 1:length(param_static_char)){
        eval(parse(text = paste0(
          "shinyOptions(", names(param_static_char[x]), " = \"",
          query[[ names(param_static_char[x]) ]], "\")"
        )))
      }
    }
    
    param_dynamic <- query[ names(query) %in% c("map.refits", "plot3d.ratio", "plot3d.hulls", "plot3d.surfaces", "plot3d.refits", "sectionX.refits", "sectionY.refits") ]
    param_dynamic_char <- query[ names(query) %in% c("class.variable", "class.values", "default.group", "location", "map.density") ]
    
    # param_dynamic
    if(length(param_dynamic) + length(param_dynamic_char) > 0){
      param.list <- getShinyOption("params")
      
      # param_dynamic numerical and logical:
      if(length(param_dynamic) > 0){
        for(x in 1:length(param_dynamic)){
          param.list[ names(param_dynamic[x]) ] <- param_dynamic[x]
        }
      }
      # param_dynamic character:
      if(length(param_dynamic_char) > 0){
        for(x in 1:length(param_dynamic_char)){
          eval(parse(text = paste0(
            "param.list[ \"", names(param_dynamic_char[x]), "\"] <- \"", param_dynamic_char[x], "\""
          )))
        }
      }
      
      # coerce to logical values:
      sel <- param.list %in% c("TRUE", "FALSE", "T", "F")
      param.list[ sel ] <- as.logical(param.list[ sel ])
      
      shinyOptions("params" =  param.list)
    }
  }, priority=10)
  
  
  
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
    
    objects.df <- objects.dataset()
    
    query <- shiny::parseQueryString(session$clientData$url_search)
    
    if ( ! is.null(query[['timeline.df']])) {
      from.param.time.df <- utils::read.csv(url(as.character(query[['timeline.df']])))
    } else {
      from.param.time.df <- getShinyOption("timeline.df")
    }
    
    
    # sources priority: 
    #   function parameter > objects table > timeline table
    timeline <- .do_timelinedata(from.param.time.df, 
                                 objects.df, 
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
    
    refits <- list("refits.2d" = data.frame(),
                   "refits.3d" = data.frame(),
                   "raw" = data.frame())
    
    query <- shiny::parseQueryString(session$clientData$url_search)
    
    if(! is.null(getShinyOption("refits.df")) ){
      refits <- data.frame(getShinyOption("refits.df"))
    } else if(input$demoData.n > 0){
      refits <- demo_refits_data(input$demoData.n)
    } else if( ! is.null(input$refits.file)){
      refits <- input.ui.refits()
    } else if ( ! is.null(query[['refits.df']])) {
      refits <- utils::read.csv(url(as.character(query[['refits.df']])))
    } 
    
    if(class(refits)[1] != "list"){
      refits <- .do_refits_preprocessing(refits, objects.dataset())
    }
    
    refits # an empty data.frame or a list with three dataframes
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
    
    query <- shiny::parseQueryString(session$clientData$url_search)
    if ( ! is.null(query[['objects.df']])) {
      objects.df <- utils::read.csv(url(as.character(query[['objects.df']])))
    } else{
      objects.df <- getShinyOption("objects.df")
    }
    
    result <- .do_objects_dataset(
      from.parameter.input = objects.df,
      from.ui.input        = objects.ui.input,
      demoData.n           = input$demoData.n, 
      add.x.square.labels = getShinyOption("add.x.square.labels"),
      add.y.square.labels = getShinyOption("add.y.square.labels")
    )
    
    showNotification(.term_switcher(result$notif.text),
                     type = result$notif.type, duration = 10)
    if(result$notif.type == "error") return(NULL)
    
    result$data
  })
  
  # : group variable ----
  group.variable <- reactive({
    
    if(input$group.selection == "by.layer"){
      value <- "layer"
    } else if (input$group.selection == "by.variable"){
      value <- as.character(input$class.variable)
    }
    value
  })
  
  # : subset data  ----
  objects.subdataset <- eventReactive(input$goButton, {
    req(input$class.variable, coords.min.max, input$location)
    
    df <- objects.dataset()
    df$group.variable <- factor(eval(parse(text = paste0("df$", group.variable() ))))
    df$layer_color <- factor(df$group.variable,
                             levels = levels(df$group.variable),
                             labels = grDevices::rainbow(length(levels(df$group.variable))))
    # location mode selection:
    df.sub <- df[df$location_mode %in% input$location, ]
    
    # class selection:
    if( ! .term_switcher("all") %in% input$class.values){
      selection <- eval(parse(text = paste0("df.sub$", input$class.variable))) %in% input$class.values[input$class.values != .term_switcher("all")]
      df.sub <- df.sub[selection, ]
    }
    
    df.sub  # return the subset of the dataframe
  }, ignoreNULL = F) # end dataset subset
  
  
  # Coordinate system ----
  
  # : grid legend ----
  scale.value <- getShinyOption("square.size") / 100
  scale.unit <- " m"
  if(scale.value < 1){
    scale.value <- scale.value * 100
    scale.unit <- " cm"
  }
  grid.legend <- paste0(.term_switcher("grid"), ": ",
                        scale.value, " x ", scale.value, scale.unit)
  
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
    
    squares_x <- .do_square_list(square.size = square.size,
                                 coords.min = coords.min.max$xmin, 
                                 coords.max = coords.min.max$xmax, 
                                 square.list = df$square_x, axes="X")
    
    squares_y <- .do_square_list(square.size = square.size,
                                 coords.min = coords.min.max$ymin, 
                                 coords.max = coords.min.max$ymax, 
                                 square.list = df$square_y, axes="Y")
    
    # max.nr.of.Xsquares <- length(unique(trunc(seq(coords.min.max$xmin, coords.min.max$xmax) / square.size) * square.size)) - 1
    # square.Xlabels <- levels(df$square_x)
    # if(max.nr.of.Xsquares == length(square.Xlabels) ){
    #   square_x <- square.Xlabels
    # }  else {
    #   message(paste0(max.nr.of.Xsquares, " X squares, but ",
    #                  length(square.Xlabels), " X labels provided: ", 
    #                  paste0(square.Xlabels, collapse = ", "), ".\n"))
    # }
    # 
    # max.nr.of.Ysquares <- length(unique(trunc(seq(coords.min.max$ymin, coords.min.max$ymax) / square.size) * square.size)) - 1
    # square.Ylabels <- levels(df$square_y)
    # if(max.nr.of.Ysquares == length(square.Ylabels) ){
    #   square_y <- square.Ylabels
    # } else {
    #   message(paste0(max.nr.of.Ysquares, " Y squares, but ",
    #                  length(square.Ylabels), " Y labels provided: ", 
    #                  paste0(square.Ylabels, collapse = ", "), ".\n"))
    # }
    
    list("square_x" = squares_x, "square_y" = squares_y)
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
  
  # goTables button
  goTables <- reactive({
    req(input$class.values, objects.dataset())
    if( (input$goButton > 0) | getShinyOption("run.plots")  ){
      TRUE
    } else { return() }
  })
  
  # : by variable ----
  by.variable.table <- eventReactive(goTables(), {
    req(input$class.variable, input$class.values, objects.subdataset)
    dataset <- objects.subdataset()
    
    .do_by_variable_table(dataset, input$class.variable, input$location)
  })
  # render:
  output$by.variable.table <- renderTable({by.variable.table()}, 
                                          rownames = T, digits=0)
  
  # : by layer ----
  by.layer.table <- eventReactive(goTables(), {
    req(input$class.variable, input$class.values, objects.subdataset)
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
    req(input$sectionX.y.val)
    coords <- coords.min.max()
    
    rect.df <- data.frame(
      "ymin" = input$sectionX.y.val[1], 
      "ymax" = input$sectionX.y.val[2],
      "xmin" = input$sectionX.x.val[1],
      "xmax" = input$sectionX.x.val[2])
    
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
    req(input$sectionY.y.val)
    coords <- coords.min.max()
    
    rect.df <- data.frame(
      "ymin" = input$sectionY.y.val[1], 
      "ymax" = input$sectionY.y.val[2],
      "xmin" = input$sectionY.x.val[1],
      "xmax" = input$sectionY.x.val[2])
    
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
    req(input$class.values, objects.dataset())
    if( (input$goButton3D > 0) | getShinyOption("run.plots")  ){
      TRUE
    } else { return() }
  })
  
  # PLOT  3D ----
  plot3d <- eventReactive(input$goButton3D, {
    req(ratio3D.value)
    validate(need(input$class.values, .term_switcher("notif.tick.value")))
    
    dataset <- objects.subdataset()
    coords <- coords.min.max()
    squares <- squares()
    axis.labels <- axis.labels()
    
    if(is.null(input$point.size)){
      dataset$point.size <- getShinyOption("params")$point.size
      size.scale <- getShinyOption("params")$point.size
    } else{
      dataset$point.size <- input$point.size
      size.scale <- input$point.size
    }
    
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
    plot3d.refits <- sum(c(input$plot3d.refits,
                           getShinyOption("params")$plot3d.refits))
    if( plot3d.refits > 0 ){
      refitting.df <- refitting.df()
      refitting.df <- refitting.df$refits.3d
      
      sel <- (refitting.df[, 1] %in% dataset$id) | (refitting.df[, 2] %in% dataset$id)
      refitting.df <- refitting.df[which(sel), ]
      
      # add color:
      refitting.df <- .do_lines_colors(refitting.df, dataset, "group.variable")
      
      fig <- add_paths(fig, x= ~x, y= ~y, z= ~z,
                       split = ~id.internal,
                       data = refitting.df,
                       color = ~group.variable,
                       colors = colors.list(),
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
    
    
    # : add surfaces ----
    if(sum(input$plot3d.surfaces) > 0){
      
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
    if(input$plot3d.hulls){
      
      # compute hulls:
      
      hulls.selection <- input$hulls.selection
      # for first launch (with run.plot=T) :
      if(is.null(hulls.selection)){ 
        hulls.selection <- hulls.list()$hull.selected
      }
      
      mesh.list <- lapply(hulls.selection, function(x) 
        .get_cxhull_model(df = dataset,
                          var = group.variable(), 
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
    
    # camera settings:
    camera.values <- list()
    
    center.xyz <- getShinyOption("params")$camera.center
    camera.values$center <- list(x = center.xyz[1],
                                 y = center.xyz[2], z = center.xyz[3])
    eye.xyz <- getShinyOption("params")$camera.eye
    camera.values$eye <- list(x = eye.xyz[1],
                              y = eye.xyz[2], z = eye.xyz[3])
    
    fig <- layout(fig,
                  paper_bgcolor = getShinyOption("background.col"), 
                  plot_bgcolor =  getShinyOption("background.col"),
                  annotations = list(list(
                    showarrow = F,
                    x = 0, y = 0, z = 0,
                    text = grid.legend,
                    xanchor = "left",
                    xshift = 0,
                    opacity = 1
                  )),
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
  }, ignoreNULL = ( ! getShinyOption("run.plots")) ) #  end plot3d
  
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
  
  sectionXplot <- shiny::eventReactive(input$goButtonX, {
    req(init.values, objects.subdataset)
    dataset <- objects.subdataset()
    
    if(is.null(input$sectionX.y.val)){
      sectionX.y.val <- init.values()$valuesXy
      sectionX.x.val <- init.values()$valuesXx
    } else{
      sectionX.x.val <- input$sectionX.x.val  
      sectionX.y.val <- input$sectionX.y.val  
    }
    
    sel <- (dataset$y >= sectionX.y.val[1] & dataset$y <= sectionX.y.val[2]) &
      (dataset$x >= sectionX.x.val[1] & dataset$x <= sectionX.x.val[2])
    
    if(is.null(input$sectionX.point.size)){
      sectionX.point.size <- getShinyOption("params")$point.size
    } else{
      sectionX.point.size <- input$sectionX.point.size
    }
    
    # add refits:
    section.x.refits <- sum(c(input$sectionX.refits,
                              getShinyOption("params")$sectionX.refits))
    .do_section_plot(selection = sel,
                     dataset = dataset,
                     section.point.size = sectionX.point.size,
                     refitting.df = refitting.df, # this is the reactive output
                     show.refits = section.x.refits,
                     colors = colors.list(),
                     grid.coord = grid.coordy(),
                     grid.legend = grid.legend,
                     coords = coords.min.max(),
                     axis.labels = axis.labels(),
                     xaxis = "x",
                     reverse.axis.values = getShinyOption("reverse.axis.values"))
  }, ignoreNULL = ( ! getShinyOption("run.plots")) ) # end sectionX
  
  output$sectionXplot <- plotly::renderPlotly({sectionXplot()})
  
  sectionX.click.selection <- reactive(plotly::event_data("plotly_click", source="y"))
  
  #  : html export: X section ----
  output$download.section.x.plot <- downloadHandler(
    filename = paste0(gsub(" ", "-", shiny::getShinyOption("title")), "-sectionX.html"),
    content = function(file2) {
      htmlwidgets::saveWidget(sectionXplot(), file = file2)
    }
  )
  
  # : Y section plot ----
  sectionYplot <- shiny::eventReactive(input$goButtonY, {
    req(init.values, objects.subdataset)
    dataset <- objects.subdataset()
    
    if(is.null(input$sectionY.y.val)){
      sectionY.x.val <- init.values()$valuesYx
      sectionY.y.val <- init.values()$valuesYy
    } else{
      sectionY.x.val <- input$sectionY.x.val  
      sectionY.y.val <- input$sectionY.y.val  
    }
    
    sel <- (dataset$y >= sectionY.y.val[1] & dataset$y <= sectionY.y.val[2]) &
      (dataset$x >= sectionY.x.val[1] & dataset$x <= sectionY.x.val[2])
    
    if(is.null(input$sectionY.point.size)){
      sectionY.point.size <- getShinyOption("params")$point.size
    } else{
      sectionY.point.size <- input$sectionY.point.size
    }
    
    # sel <- (dataset$y >= input$sectionY.y.val[1] & dataset$y <= input$sectionY.y.val[2]) &
    #   (dataset$x >= input$sectionY.x.val[1] & dataset$x <= input$sectionY.x.val[2])
    
    # add refits:
    section.y.refits <- sum(c(input$sectionY.refits,
                              getShinyOption("params")$sectionY.refits))
    
    .do_section_plot(selection = sel,
                     dataset = dataset, 
                     section.point.size = sectionY.point.size,
                     refitting.df = refitting.df, # this is the reactive output
                     show.refits = section.y.refits, 
                     colors = colors.list(), 
                     grid.coord = grid.coordx(),
                     grid.legend = grid.legend,
                     coords = coords.min.max(),
                     axis.labels = axis.labels(), 
                     xaxis = "y",
                     reverse.axis.values = getShinyOption("reverse.axis.values"))
  }, ignoreNULL = ( ! getShinyOption("run.plots")) ) # end section Y
  
  output$sectionYplot <- plotly::renderPlotly({sectionYplot()})
  
  sectionY.click.selection <- reactive(plotly::event_data("plotly_click", source="x"))
  
  #  : html export: Y section ----
  output$download.section.y.plot <- downloadHandler(
    filename = paste0(gsub(" ", "-", shiny::getShinyOption("title")), "-sectionY.html"),
    content = function(file3) {
      htmlwidgets::saveWidget(sectionYplot(), file = file3)
    }
  )
  # : Map plot ----
  map <- eventReactive(input$goButtonZ, {
    req(init.values)   
    
    dataset <- objects.subdataset()
    if(is.null(input$map.z.val)){
      valuesZ <- init.values()$valuesZ
    } else{
      valuesZ <- input$map.z.val
    }
    sel <- dataset$z >= valuesZ[1] & dataset$z <= valuesZ[2]
    
    planZ.df <- dataset[sel, ]
    
    if(is.null(input$map.point.size)){
      map.point.size <- getShinyOption("params")$point.size
    } else{
      map.point.size <- input$map.point.size
    }
    
    color.var <- group.variable()
    planZ.df[, color.var] <- as.character(planZ.df[, color.var])
    col <- unique(planZ.df[, c("layer_color", color.var)])
    col <- col[order(col[, 2]), ]
    col <- as.character(col$layer_color)
    
    # check whether to show refits:
    map.refits <- sum(c(input$map.refits,
                        getShinyOption("params")$map.refits))
    
    do_map_plot(site.map(), planZ.df,
                map.point.size, color.var, col,
                input$map.density,
                map.refits, refitting.df(), grid.legend)
    
  }, ignoreNULL = ( ! getShinyOption("run.plots"))
  )   # end eventReactive
  
  output$map <- plotly::renderPlotly({ map() })
  
  map.click.selection <- reactive(plotly::event_data("plotly_click", source="B"))
  
  # : html export: Map  ----
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
      ratio3D.value <- as.numeric(getShinyOption("params")$plot3d.ratio)
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
  
  # : init values 
  
  init.values <- reactive({
    coords <- coords.min.max()
    
    if( ! is.null(getShinyOption("params")$sectionX.x.val) ){
      valuesXx <- getShinyOption("params")$sectionX.x.val
    } else{
      valuesXx <- c(coords$xmin, coords$xmax)
    }
    
    if( ! is.null(getShinyOption("params")$sectionX.y.val) ){
      valuesXy <- getShinyOption("params")$sectionX.y.val
    } else{
      valuesXy <- summary(seq(coords$ymin, coords$ymax))[c(2, 3)]
    }
    
    if( ! is.null(getShinyOption("params")$sectionY.x.val) ){
      valuesYx <- getShinyOption("params")$sectionY.x.val
    } else{
      valuesYx <- summary(seq(coords$xmin, coords$xmax))[c(2, 3)]
    }
    
    if( ! is.null(getShinyOption("params")$sectionY.y.val) ){
      valuesYy <- getShinyOption("params")$sectionY.y.val
    } else{
      valuesYy <- c(coords$ymin, coords$ymax)
    }
    
    if( ! is.null(getShinyOption("params")$map.z.val) ){
      valuesZ <- getShinyOption("params")$map.z.val
    } else{
      valuesZ <-summary(seq(coords$zmin, coords$zmax))[c(2, 3)]
    }
    
    list("valuesXx" = valuesXx, "valuesXy" = valuesXy,
         "valuesYx" = valuesYx, "valuesYy" = valuesYy,
         "valuesZ" = valuesZ)
  })
  
  # : slider Z  ----
  output$sliderMap <- renderUI({
    coords <- coords.min.max()
    
    sliderInput("map.z.val", "Z: min/max",  width="100%", sep = "",
                min = min(coords$zmin, coords$zmax), 
                max = max(coords$zmin, coords$zmax),
                round = T,
                value = init.values()$valuesZ
    )
  })
  
  # : sliders X  ----
  
  output$sliderXx <- renderUI({
    coords <- coords.min.max()
    
    sliderInput("sectionX.x.val", "X: min/max", width="100%", sep = "",step=1,
                min = coords$xmin, max = coords$xmax, round=T,
                value = init.values()$valuesXx)
  })
  
  output$sliderXy <- renderUI({
    coords <- coords.min.max()
    
    sliderInput("sectionX.y.val", "Y: min/max", width="100%", sep = "", step=1,
                min = coords$ymin, max = coords$ymax, round=T,
                value = init.values()$valuesXy)
  })
  
  # : sliders Y  ----
  
  output$sliderYx <- renderUI({
    coords <- coords.min.max()
    
    sliderInput("sectionY.x.val", "X: min/max", width="100%", sep = "", step=1,
                min = coords$xmin, max = coords$xmax, round=T,
                value = init.values()$valuesYx)
  })
  
  output$sliderYy <- renderUI({
    coords <- coords.min.max()
    
    sliderInput("sectionY.y.val", "Y: min/max", width="100%", sep = "", step=1,
                min = coords$ymin, max = coords$ymax, round=T,
                value = init.values()$valuesYy)
  })
  
  # : slider timeline  ----
  output$sliderTimeline <- renderUI({
    time.df <- timeline.data()
    if(is.null(time.df)) return()
    
    sliderInput("history.date", .term_switcher("year"),
                width="100%",  sep = "",
                min = min(time.df$year), max = max(time.df$year),
                value = min(time.df$year), step=1)
  })
  
  # : Object variable  ----
  output$class.variable <- renderUI({
    req(objects.dataset())
    items <- colnames(objects.dataset())[grep("object*", colnames(objects.dataset()))]
    selectInput("class.variable", .term_switcher("variable"), choices = items,
                selected = getShinyOption("params")$class.variable)
  })
  
  # observeEvent(input$reset_input, {
  #   # class.values.saved <- input$class.values
  #   updateTextInput(session, "class.values")
  # })
  
  # : Object values  ----
  class.values <- reactive({
    # times <- input$reset_input # reset selection
    # actionButton("reset_input", "Reset values"),
    req(objects.dataset, input$class.variable)
    
    data <- objects.dataset()
    
    values <- unique(eval(parse(text = paste0("data$", input$class.variable))))
    
    if(is.null(input$class.values)) {
      selected.value <- .term_switcher("all")
    } else if( ! is.null(getShinyOption("params")$class.values)){
      if(sum(getShinyOption("params")$class.values %in% values) > 0 ){
        param.list <-  getShinyOption("params")
        selected.value <- param.list$class.values
        param.list$class.values <- NULL # reset default value
        shinyOptions("params" =  param.list)
      } else{
        selected.value <- .term_switcher("all")
      }
    } else {
      selected.value <- input$class.values
    }
    list("values" = values, "selected.value" = selected.value)
  })
  
  output$class.values <- renderUI({
    checkboxGroupInput("class.values", .term_switcher("values"),
                       c(.term_switcher("all"), 
                         sort(class.values()$values)),
                       selected = class.values()$selected.value )
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
    
    loc.selection <- tolower(sort(unique(df$location_mode))[1])
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
  output$show.3d.refits <- renderUI({
    refitting.df <- refitting.df()
    if(nrow(refitting.df$refits.2d) > 0){
      checkboxInput("plot3d.refits", .term_switcher("refits"),
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
  
  output$show.sectionX.refits <- renderUI({
    refitting.df <- refitting.df()
    if(nrow(refitting.df$refits.2d) > 0){
      checkboxInput("sectionX.refits", .term_switcher("refits"),
                    value = getShinyOption("params")$sectionX.refits)
    }
  })
  
  output$show.sectionY.refits <- renderUI({
    refitting.df <- refitting.df()
    if(nrow(refitting.df$refits.2d) > 0){
      checkboxInput("sectionY.refits", .term_switcher("refits"),
                    value = getShinyOption("params")$sectionY.refits)
    }
  })
  
  # : Surfaces tick box  ----
  output$show.surfaces <- renderUI({
    df <- objects.subdataset()
    subsets <- table(df$group.variable)
    subsets <- names(subsets[subsets > 100])
    if(length(subsets) > 0){
      checkboxInput("plot3d.surfaces", .term_switcher("surfaces"),
                    value = getShinyOption("params")$plot3d.surfaces)
    }
  })
  
  # : Hull selector  ----
  hulls.list <- reactive({
    
    if( sum(input$plot3d.hulls, getShinyOption("params")$plot3d.hulls) == 0){
      return()
    }
    
    # hulls can be computed only for subgroups of data with at least 19 points
    dataset <- objects.subdataset()
    hull.values <- table(dataset$group.variable) 
    hull.values <- names(hull.values[hull.values > 19])
    
    hull.selected <- hull.values
    
    value <- getShinyOption("params")$hulls.class.values
    if( ! is.null(value) ){
      if(sum(value %in% hull.values) > 0 ){
        hull.selected <- value
      }
    }
    
    list("hull.values" = hull.values, "hull.selected" = hull.selected)
  })
  
  output$select.hulls <- renderUI({
    req(hulls.list())
    checkboxGroupInput("hulls.selection", 
                       .term_switcher("selection"),
                       hulls.list()$hull.values,
                       selected = hulls.list()$hull.selected
    )
  })
  
  # : button html export 3D  ----
  output$download.button.html.export.3d <- renderUI({
    if(getShinyOption("html.export")){
      downloadButton("download.3d.plot", .term_switcher("export"))
    }
  })  
  # : button html map  ----
  output$download.button.html.export.map <- renderUI({
    if(getShinyOption("html.export")){
      downloadButton("download.map.plot", .term_switcher("export"))
    }
  })  
  # : button html section X  ----
  output$download.button.html.export.sectionX <- renderUI({
    if(getShinyOption("html.export")){
      downloadButton("download.section.x.plot", .term_switcher("export"))
    }
  })  
  # : button html section Y  ----
  output$download.button.html.export.sectionY <- renderUI({
    if(getShinyOption("html.export")){
      downloadButton("download.section.y.plot", .term_switcher("export"))
    }
  })
  
  # : button timeline plot ----
  output$download.button.timeline.map.grid <- renderUI({
    req(timeline.map.plot())
    downloadButton("download.timeline.map.grid", .term_switcher("download"))
  })
  
  # : button timeline grid plot ----
  output$download.button.timeline.map <- renderUI({
    req(timeline.map.plot())
    downloadButton("download.timeline.map", .term_switcher("download"))
  })
  
  # : slider 3D point size ----
  output$plot3d.point.size <- renderUI({
    sliderInput("point.size", .term_switcher("point.size"),
                width="100%", sep = "",
                min=1, max=5, step=1,
                getShinyOption("params")$point.size)
  })
  # : slider map point size ----
  output$map.point.size <- renderUI({
    sliderInput("map.point.size", .term_switcher("point.size"),
                width="100%", sep = "",
                min=1, max=8, step=1, 
                value = getShinyOption("params")$point.size)
  })
  # : slider sec.X point size ----
  output$sectionX.point.size <- renderUI({
    sliderInput("sectionX.point.size", .term_switcher("point.size"),
                width="100%", sep = "",
                min=1, max=10, step=1,
                value = getShinyOption("params")$point.size)
  })
  # : slider sec.Y point size ----
  output$sectionY.point.size <- renderUI({
    sliderInput("sectionY.point.size", .term_switcher("point.size"),
                width="100%", sep = "",
                min=1, max=10, step=1,
                value = getShinyOption("params")$point.size)
  })
  
  # Exports ----
  
  # : export table   ----
  
  export.table <- reactive({
    req(input$class.variable, objects.subdataset)
    
    if( (Sys.getenv('SHINY_PORT') == "") |
        (! getShinyOption("table.export")) ){ return() }
    
    dataset <- objects.subdataset()
    
    df <- table(dataset$layer,
                eval(parse(text = paste0("dataset$", input$class.variable))))
    
    if(dim(df)[1] == 1 | dim(df)[2] == 1){ return() }
    
    df <- as.matrix(df)
    as.data.frame.matrix(df)
  })
  
  
  # : amado   ----
  
  # 1) amado handler
  output$download.amado <- downloadHandler(
    filename = "amado.csv",
    content = function(file) {
      write.csv(export.table(), file, row.names = TRUE)
    }
  )
  
  # 2) amado url
  amado.url <- reactive({
    req(export.table())
    
    data <- export.table()
    
    data <- eval(parse(text = paste0(
      "cbind('", shiny::getShinyOption("title"), "'= rownames(data), data)"
      )))
    
    data <- cbind("archeoViz" = rownames(data), data)
    data <- rbind(colnames(data), data)
    
    data <- apply(data, 2, paste0, collapse="%09")   # separate cells by tabs
    data <- gsub(" ", "%20", data)                   # add spaces
    data <- paste0(data, collapse = "%0A")           # encode lines
    
    amado.lang <- "en"
    if(getShinyOption("lang") %in% c('es', 'fr', 'it', 'ru', 'tr', 'uk', 'vi', 'zh')){
      amado.lang <- getShinyOption("lang")
    }
    
    paste0("https://app.ptm.huma-num.fr/amado/main.html?lang=", 
           amado.lang, "?table=", data)
  })
  
  
  # 3) amado download link
  output$run.amado <- renderUI({
    req(amado.url())
    
    tagList(
      "> ", .term_switcher("export.to"),
      actionLink("run.amado",
                 label = "AMADO online",
                 onclick = paste("window.open('",
                                 amado.url(), "', '_blank')")),
      "(", .term_switcher("download"),
      downloadLink("download.amado", " CSV"),  ") for seriation and classification"
    )
  })
  
  
  # : seriograph   ----
  
  # 1) seriograph handler
  output$download.seriograph <- downloadHandler(
    filename = "seriograph.csv",
    content = function(file) {
      write.csv(export.table(), file, row.names = TRUE)
    }
  )
  
  # 2) seriograph url
  seriograph.url <- reactive({
    req(export.table())
    
    data.url <- session$registerDataObj(name = "table",
                                        data = export.table(),
                                        filterFunc = function(data, req) { 
                                          httpResponse(200, "text/csv",
                                                       write.csv(data, row.names = TRUE)
                                          )
                                        })
    object.id <- gsub(".*w=(.*)&nonce.*", "\\1", data.url)
    
    data.url <- paste0(session$clientData$url_protocol, "//",
                       session$clientData$url_hostname,
                       session$clientData$url_pathname,
                       "_w_", object.id, 
                       "/session/", session$token, "/download/download.seriograph")
    
    paste0("https://analytics.huma-num.fr/ModAthom/seriograph/?data=", data.url)
  })
  
  
  # 3) seriograph download link
  output$run.seriograph <- renderUI({
    req(seriograph.url())
    
    tagList(
      "> ", .term_switcher("export.to"),
      actionLink("run.seriograph",
                 label = "Seriograph",
                 onclick = paste("window.open('",
                                 seriograph.url(), "', '_blank')")),
      "(", .term_switcher("download"),
      downloadLink("download.seriograph", " CSV"),  ") for seriation."
    )
  })
  
  
  # : explor-CA   ----
  
  # 1) explor.ca handler
  output$download.explor.ca <- downloadHandler(
    filename = "explor-ca.csv",
    content = function(file) {
      write.csv(export.table(), file, row.names = TRUE)
    }
  )
  
  # 2) explor.ca url
  explor.ca.url <- reactive({
    req(export.table())
    
    data.url <- session$registerDataObj(name = "table",
                                        data = export.table(),
                                        filterFunc = function(data, req) { 
                                          httpResponse(200, "text/csv",
                                                       write.csv(data, row.names = TRUE)
                                          )
                                        })
    object.id <- gsub(".*w=(.*)&nonce.*", "\\1", data.url)
    
    data.url <- paste0(session$clientData$url_protocol, "//",
                       session$clientData$url_hostname,
                       session$clientData$url_pathname,
                       "_w_", object.id, 
                       "/session/", session$token, "/download/download.seriograph")
    
    paste0("https://analytics.huma-num.fr/Sebastien.Plutniak/explor-ca/?data=", data.url)
  })
  
  
  # 3) explor.ca download link
  output$run.explor.ca <- renderUI({
    req(explor.ca.url())
    
    tagList(
      "> ", .term_switcher("export.to"),
      actionLink("run.explor.ca",
                 label = "explor (Correspondance Analysis)",
                 onclick = paste("window.open('",
                                 explor.ca.url(), "', '_blank')")),
      "(", .term_switcher("download"),
      downloadLink("download.explor.ca", " CSV"),  ")"
    )
  })
  
  
  # : archeofrag ----
  
  archeofrag.tables <- reactive({
    req(input$class.variable, objects.dataset(), refitting.df())
    
    if( (Sys.getenv('SHINY_PORT') == "") |
        (! getShinyOption("table.export")) ){ return() }
    
    refits.df <- refitting.df()[[3]]
    
    dataset <- objects.dataset()
    dataset <- dataset[, c("id", "layer")]
    
    if( (nrow(refits.df) == 0) | (length(unique(dataset$layer)) < 2) ){return()}
    
    refits.df <- refits.df[refits.df[,1] %in% dataset[,1], ]
    refits.df <- refits.df[refits.df[,2] %in% dataset[,1], ]
    
    list("edges" = refits.df, "objects" = dataset)
  })
  
  
  output$download.archeofrag.edges <- downloadHandler(
    filename = "archeofrag-edges.csv",
    content = function(file) {
      write.csv(archeofrag.tables()[[1]], file, row.names = FALSE)
    }
  )
  output$download.archeofrag.nodes <- downloadHandler(
    filename = "archeofrag-nodes.csv",
    content = function(file) {
      write.csv(archeofrag.tables()[[2]], file, row.names = FALSE)
    }
  )
  
  
  archeofrag.url <- reactive({
    req(archeofrag.tables())
    # edges
    edges.url <- session$registerDataObj(name = "table",
                                         data = archeofrag.tables()[[1]],
                                         filterFunc = function(data, req) { 
                                           httpResponse(200, "text/csv",
                                                        write.csv(data, row.names=FALSE)
                                           )
                                         })
    object.id2 <- gsub(".*w=(.*)&nonce.*", "\\1", edges.url)
    
    edges.url <- paste0(session$clientData$url_protocol, "//",
                        session$clientData$url_hostname,
                        session$clientData$url_pathname,
                        "_w_", object.id2, 
                        "/session/", session$token, "/download/download.archeofrag.edges")
    
    # nodes 
    nodes.url <- session$registerDataObj(name = "table",
                                         data = archeofrag.tables()[[2]],
                                         filterFunc = function(data, req) { 
                                           httpResponse(200, "text/csv",
                                                        write.csv(data, row.names = FALSE)
                                           )
                                         })
    object.id <- gsub(".*w=(.*)&nonce.*", "\\1", nodes.url)
    
    nodes.url <- paste0(session$clientData$url_protocol, "//",
                        session$clientData$url_hostname,
                        session$clientData$url_pathname,
                        "_w_", object.id, 
                        "/session/", session$token, "/download/download.archeofrag.nodes")
    
    paste0("https://analytics.huma-num.fr/Sebastien.Plutniak/archeofrag/?objects=", nodes.url, "&relations=", edges.url)
  })
  
  output$run.archeofrag <- renderUI({
    req(archeofrag.url())
    
    tagList(
      "> ", .term_switcher("export.to"),
      actionLink("run.archeofrag",
                 label = "Archeofrag",
                 onclick = paste("window.open('",
                                 archeofrag.url(), "', '_blank')")),
      "    (", .term_switcher("download"),
      downloadLink("download.archeofrag.edges", " CSV-1"),
      ", ",
      downloadLink("download.archeofrag.nodes", " CSV-2"),
      ")"
    )
  })
  
  
  # : Export ui header ----
  output$export.header <- renderUI({
    if(
      ( (Sys.getenv('SHINY_PORT') != "") & # only if remote use of the app 
        ( getShinyOption("table.export")) ) &
      ( isTruthy(export.table) | isTruthy(archeofrag.tables) ) ){
      h4(.term_switcher("header.export.data"))
    } else{  return() }
  })
  
  
  #  Reproducibility ----
  
  output$reproducibility <- reactive({
    
    class.values <- input$class.values
    
    if(length(input$class.values) == 1){
      class.values <- paste0("'", class.values, "'")
    }
    if(sum(input$class.values == .term_switcher("all"))){
      class.values <-  NULL
    }
    
    reactive.params <- list("home.text" = "' '",
                            "add.x.square.labels" = getShinyOption("add.x.square.labels"),
                            "add.y.square.labels" = getShinyOption("add.y.square.labels"),
                            "class.variable" = paste0("'", input$class.variable, "'"),
                            "class.values" = class.values, 
                            "default.group" = paste0("'", input$group.selection, "'"),
                            "location.mode" = paste0("'", input$location, "'"),
                            "map.z.val" = input$map.z.val,
                            "map.density" = paste0("'", input$map.density, "'"),
                            "map.refits" = input$map.refits,
                            "plot3d.ratio" = input$plot3d.ratio,
                            "plot3d.hulls" = input$plot3d.hulls,
                            "hulls.class.values" = input$hulls.selection,
                            "plot3d.surfaces" = input$plot3d.surfaces,
                            "plot3d.refits" = input$plot3d.refits,
                            "sectionX.x.val" = input$sectionX.x.val,
                            "sectionX.y.val" = input$sectionX.y.val,
                            "sectionX.refits" = input$sectionX.refits,
                            "sectionY.x.val" = input$sectionY.x.val,
                            "sectionY.y.val" = input$sectionY.y.val,
                            "sectionY.refits" = input$sectionY.refits
    )
    
    .do_r_command(reactive.params, refitting.df())
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
