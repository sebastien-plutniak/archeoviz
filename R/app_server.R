

app_server <- function(input, output, session) {

  # Interface title ----
  output$title.edited <- renderUI({
    archeoViz.label <- paste("<a href=https://github.com/sebastien-plutniak/archeoviz>archeoViz</a> v",
                             utils::packageVersion("archeoViz"), sep="")
    title <- shiny::getShinyOption("title")
    
    if(is.null(title)){
      title.edited <- paste("<h4>", archeoViz.label, "</h4>")
    } else if(is.character(title) & nchar(title) <= 20){
      title.edited <- paste("<h4>", title, "</h4>feat. ", archeoViz.label, sep="")
    } else{
      stop("The title parameter must be a character string (20 characters max).")
    }
    div(HTML(title.edited))
  })
  
  # Home text ----
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
      )# end HTML
      ) # end div
    } else{stop("'home.text' parameter must be a character string.")}
    
  })
  
  
  # hide instructions tab when using the package on a server
  if(! is.null(getShinyOption("objects.df"))){
    hideTab(inputId = "tabs", target = "Input data")
  }
  
  # Timeline preprocessing ----
  timeline.file <- reactive({
    # attente du fichier de l'utilisateur
    validate(need(input$timeline.file, message = ""))
    input$timeline.file
  })
  
  
  timeline.ui.df <- reactive({
    time.df <- utils::read.csv(timeline.file()$datapath,
                               header=T, #quote = "",
                               sep=input$sep2, stringsAsFactors = F)
  })
  
  timeline.data <- reactive({
    
    time.df <- getShinyOption("timeline.df")
    if (! is.null(time.df)){
      time.df <- getShinyOption("timeline.df")
    } else{
      if(input$demoData.n > 0){
        time.df <- .demo_timeline_data()
      } else if(! is.null(timeline.ui.df)){
        time.df <- timeline.ui.df()
      }
    }
    
    time.df <- data.frame(time.df)
    # file validation:
    colnames(time.df) <- tolower(colnames(time.df))
    if( sum(c("year", "square_x", "square_y") %in% colnames(time.df)) != 3 ){
      showNotification("Error. Some of the mandatory fields are absent. Please check the file.",
                       type = "error", duration = 10)
    } else{
      showNotification("Timeline file ok!", type="message", duration = 4)
    }
    # end of file validation
    time.df$excavation <- T
    time.df$year <- as.integer(time.df$year)
    
    time.grid <- expand.grid("square_x" = sort(unique(time.df$square_x)),
                             "square_y" = sort(unique(time.df$square_y)),
                             "year" = unique(time.df$year))
    
    time.df <- merge(time.grid,
                     time.df[c("square_x", "square_y", "year", "excavation")],
                     by = c("square_x", "square_y", "year"), all.x = T)
    
    time.df[ is.na(time.df$excavation), ]$"excavation" <- F
    time.df
  })
  
  # Refits preprocessing: ----
  refits.file <- reactive({
    # waiting refits csv file
    validate(need(input$refits.file, message = ""))
    input$refits.file
  })
  
  input.ui.refits <- reactive({
    refits.df <- utils::read.csv(refits.file()$datapath,
                                 header=T, #quote = "",
                                 sep=input$sep3, stringsAsFactors = F)
  })
  
  refitting.df <- reactive({
    req(dataset)
    refits <- getShinyOption("refits.df")
    if (! is.null(refits)){
      refits <- getShinyOption("refits.df")
    } else{
      if(input$demoData.n > 0){
        refits <- .demo_refits_data(input$demoData.n)
      } else if(! is.null(input.ui.refits)){
        refits <- input.ui.refits()
      }
    }
    
    refits <- c(t(refits))
    refits <- merge(data.frame("id" = refits),
                    dataset()[, c("id", "x", "y", "z")],
                    by="id", sort=F, all.x=T)
    refits$id <- rep(seq(1, nrow(refits) / 2), each=2)
    refits
  })  
  
  
  # Objects preprocessing: ----
  objects.file <- reactive({
    # waiting objects csv file
    validate(need(input$objects.file, message = ""))
    input$objects.file
  })
  
  input.ui.table <- reactive({
    df <- utils::read.csv(objects.file()$datapath, 
                          header=T, #quote = "",
                          sep=input$sep1, stringsAsFactors = F)
  })
  
  
  #  static preprocessing ----
  
  full.dataset <- reactive({
    # alternative between static deployement and generic use:
    objects.df <- getShinyOption("objects.df")
    if (! is.null(objects.df)){
      df <- getShinyOption("objects.df")
    } else{
      if(input$demoData.n > 0){
        df <- .demo_objects_data(input$demoData.n)
      } else if(! is.null(input.ui.table)){
        df <- input.ui.table()
      }
    }
    # file validation:
    colnames(df) <- tolower(colnames(df))
    
    required.fields <- c("id", "square_x", "square_y", "xmin", "ymin", "zmin", "layer", "object_type")
    
    if( sum(required.fields %in% colnames(df)) != 8 ){
      showNotification(.term_switcher("notif.objects.not.ok"),
                       type = "error", duration = 10)
    } else{
      showNotification(.term_switcher("notif.objects.ok"),
                       type="message", duration = 3)
    }
    # end of file validation
    #     tag location mode:
    df$location_mode <- "exact"
    #     generate random coordinates if needed:
    df <- .coordinates_sampling(df, "xmin", "xmax", "x")
    df <- .coordinates_sampling(df, "ymin", "ymax", "y")
    df <- .coordinates_sampling(df, "zmin", "zmax", "z")
    #    add square identifier:
    df$square <- paste(df$square_x, df$square_y, sep = "-")
    #     order layers by mean depth:
    sorted.layers <- dplyr::group_by(df, .data$layer)
    sorted.layers <- dplyr::summarize(sorted.layers, "zmean" = mean(z))
    sorted.layers <- dplyr::arrange(sorted.layers, .data$zmean)

    df$layer <- factor(df$layer, levels = sorted.layers$layer)
    
    #     add color:
    df$layer_color <- factor(df$layer,
                             levels = levels(df$layer),
                             labels = viridisLite::viridis(length(levels(df$layer))))
    df$square_x <- factor(df$square_x)
    df$square_y <- factor(df$square_y)

    df
  })
  
  # control panel 
  output$locationPanel <- reactive({is.data.frame(full.dataset())})
  outputOptions(output, "locationPanel", suspendWhenHidden = FALSE)
  
  #  squares list ----
  squares <- reactive({
    df <- full.dataset()
    squares <- list("square_x" = levels(df$square_x),
                    "square_y" = levels(df$square_y))
  })
  
  #  coords : get min/max coordinates ----
  coords <- reactive({
    df <- full.dataset()
    coords <- list("xmin" = min(df$x, na.rm = T),
                   "xmax" = max(df$x, na.rm = T),
                   "ymin" = min(df$y, na.rm = T),
                   "ymax" = max(df$y, na.rm = T),
                   "zmin" = min(df$z, na.rm = T),
                   "zmax" = max(df$z, na.rm = T))
  })
  
  
  # Dynamic preprocessing ----
  dataset <- reactive({
    input$goButton 
    req(input$class_variable)
    
    df <- full.dataset()
    
    isolate({
      # location mode selection:
      if(input$location != "exact-fuzzy"){
        df.sub <- df[df$location_mode %in% input$location, ]
      }else{
        df.sub <- df
      }
      
      # class selection:
      if( ! "All" %in% input$class_values)                        {
        selection <- eval(parse(text = paste0("df.sub$", input$class_variable))) %in% input$class_values[input$class_values != "All"]
        df.sub <- df.sub[selection, ]
      }

      df.sub  # return the subset dataframe
    }) #end isolate
  }) # end dataset subset
  
  output$tmp <- renderTable({dataset()})
  
  # Table: by object class ----
  classLocalStats <- eventReactive(input$goButton, {
    req(input$class_variable, input$class_values)
    dataset <- dataset()
    
    stats.df <- table(eval(parse(text = paste0("dataset$", input$class_variable))),
                      dataset$location_mode)
    
    if(nrow(stats.df) > 1 & ncol(stats.df) > 1){
      stats.df <- as.matrix(stats.df)
      stats.df <- stats.df[order(stats.df[,1], decreasing = T), ]
      stats.df <- rbind(stats.df, "Total" = apply(stats.df, 2, sum))
      stats.df <- cbind(stats.df, "Total" = apply(stats.df, 1, sum))
    }
    
    if(ncol(stats.df) == 1 & nrow(stats.df) > 1){
      stats.df <- stats.df[order(stats.df[,1], decreasing = T), ]
      stats.df <- c(stats.df, "Total" = sum(stats.df))
      stats.df <- as.data.frame(stats.df)
      colnames(stats.df) <- input$location
    } else {
      stats.df <- as.data.frame.matrix(stats.df)
    }
    stats.df
  })
  
  output$classLocalStats <- renderTable({classLocalStats()}, 
                                        rownames = T, digits=0)
  
  # Table: by layers ----
  layersStats <- eventReactive(input$goButton, {
    req(input$class_variable, input$class_values)
    dataset <- dataset()
    
    stats.df <- table(dataset$layer, dataset$location_mode)
    
    if(nrow(stats.df) > 1 & ncol(stats.df) > 1){
      stats.df <- as.matrix(stats.df)
      stats.df <- stats.df[order(stats.df[,1], decreasing = T), ]
      stats.df <- rbind(stats.df, "Total" = apply(stats.df, 2, sum))
      stats.df <- cbind(stats.df, "Total" = apply(stats.df, 1, sum))
    }
    if(ncol(stats.df) == 1 & nrow(stats.df) > 1){
      stats.df <- stats.df[order(stats.df[,1], decreasing = T), ]
      stats.df <- c(stats.df, "Total" = sum(stats.df))
      stats.df <- as.data.frame(stats.df)
      colnames(stats.df) <- input$location
    }
    stats.df
  })
  
  output$layersStats <- renderTable({layersStats()}, 
                                    rownames = T, digits=0)
  
  # Site map ----
  site.map <- reactive({
    
    coords <- coords()
    squares <- squares()
    
    range.x <- seq(floor(coords$xmin / 100) * 100, ceiling(coords$xmax / 100) * 100, 100)
    range.y <- seq(floor(coords$ymin / 100) * 100, ceiling(coords$ymax / 100) * 100, 100) 
    
    ggplot() +
      theme_minimal(base_size = 11) +
      geom_vline(xintercept =  range.x, colour = "darkgrey" ) +
      geom_hline(yintercept =  range.y, colour = "darkgrey" ) +
      coord_fixed() +
      scale_x_continuous(breaks = (range.x + 50)[ 1:length(squares$square_x) ],
                         labels = squares$square_x ) +
      scale_y_continuous(breaks = (range.y + 50)[ 1:length(squares$square_y) ],
                         labels = squares$square_y ) +
      xlab("") + ylab("")
  }) 
  
  # Timeline map ----
  timeline.map <- reactive({
    squares <- squares()
    
    map.grid <- expand.grid("square_x" = squares$square_x,
                            "square_y" = squares$square_y)
    ggplot() +
      theme_minimal(base_size = 11) +
      geom_tile(data = map.grid,
                aes_string(x="square_x", y="square_y"), alpha=0) +
      geom_vline(xintercept =  seq(0.5, length(squares$square_x) +.5, 1),
                 colour = "grey70" ) +
      geom_hline(yintercept =  seq(0.5, length(squares$square_y) + .5, 1),
                 colour = "grey70" ) +
      coord_fixed() +
      xlab("") + ylab("")
  })   
  
  # PLOT  3D ----
  plot3d <- eventReactive(input$goButton3D, {
    validate(need(input$class_values, 'Check at least one value (in the left side menu)'))
    req(input$class_values, full.dataset())
    
    dataset <- dataset()
    coords <- coords()
    squares <- squares()
    dataset$point.size <- input$point.size
    size.scale <- input$point.size
    
    # : plot initial ----
    fig <- plot_ly(dataset, x = ~x, y = ~y, z = ~z,
                   color = ~layer,
                   colors =  as.character(levels(full.dataset()$layer_color)),
                   size  = ~point.size,
                   sizes = size.scale,
                   marker = list(symbol = 'square', sizemode = 'diameter'),
                   text = ~paste('id:', id,
                                 '<br>Square:', square,
                                 '<br>Location:', location_mode,
                                 '<br>Class:', object_type)
    )
    
    fig <- config(fig,
                  toImageButtonOptions = list(
                    format = "svg",
                    filename = "archeoViz3D",
                    width = 600, height = 600
                  )
    )
    
    # : add points ----
    fig <- add_markers(fig)
    
    # : add refits lines  ----
    if(input$refits & nrow(refitting.df()) > 0){
      fig <- add_paths(fig, x= ~x, y= ~y, z= ~z, 
                       split = ~id, data = refitting.df(),
                       color = I("red"), showlegend=F,
                       hoverinfo = "skip",
                       inherit = F)
    }
    
    # : add surfaces ####
    if(input$surface){
      # filter the layers for which a regression surfaces must be computed:
      layers <- table(dataset$layer) 
      layers <- names(layers[layers > 100])
      
      # compute regression surfaces:
      surf.list <- lapply(layers, .get_surface_model, df=dataset)
      
      # add traces:
      for(i in 1:length(surf.list)){
        fig <- add_surface(fig,
                           z = surf.list[[i]]$z.matrix,
                           x = surf.list[[i]]$x,
                           y = surf.list[[i]]$y,
                           inherit = F,
                           colorscale = list(c(0, 1), c("black", surf.list[[i]]$color)),
                           hoverinfo="skip",
                           opacity = .7, showscale=F)
      }
    }
    
    # :  add convex hull ####
    if(input$cxhull){
      # filter the layers for which a convex hull must be computed:
      layers <- table(dataset$layer) 
      layers <- names(layers[layers > 9])
      
      # compute hulls:
      mesh.list <- lapply(layers, .get_cxhull_model, df=dataset)
      # add mesh:
      for(i in 1:length(mesh.list)){
        fig <-  add_mesh(fig,
                         x = mesh.list[[i]][[1]][,1] * -1,
                         y = mesh.list[[i]][[1]][,2] * -1,
                         z = mesh.list[[i]][[1]][,3] * -1,
                         facecolor = rep(mesh.list[[i]]$color, mesh.list[[i]]$nfaces),
                         hoverinfo="skip",  showscale=F,
                         opacity = 0.4, alphahull=0, inherit = F)
      }
    }    
    
    range.x <- seq(floor(coords$xmin / 100) * 100, ceiling(coords$xmax / 100) * 100, 100)
    range.y <- seq(floor(coords$ymin / 100) * 100, ceiling(coords$ymax / 100) * 100, 100)
    
    grid.coordx <- data.frame(
      "id" = c(rbind(c(1:length(range.x)), c(1:length(range.x)))),
      "x"  = c(rbind(seq(min(range.x), max(range.x), 100),
                     seq(min(range.x), max(range.x), 100))),
      "y"  = rep(c(min(range.y), max(range.y)), length(range.x)),
      "z"  = coords$zmax)
    
    grid.coordy <- data.frame(
      "id" = c(rbind(c(1:length(range.y)), c(1:length(range.y)))),
      "x"  = rep(c(min(range.x), max(range.x)), length(range.y)),
      "y"  =  c(rbind(seq(min(range.y), max(range.y), 100),
                      seq(min(range.y), max(range.y), 100))),
      "z"  = coords$zmax)
    
    
    fig <- add_paths(fig, x = ~x,   y = ~y, z = ~z, data=grid.coordx,
                     split = ~id,
                     color = I("grey50"), showlegend=F,
                     hoverinfo="skip",
                     inherit = F)  
    fig <- add_paths(fig, x = ~x,   y = ~y, z = ~z, data=grid.coordy,
                     split = ~id,
                     color = I("grey50"), showlegend=F,
                     hoverinfo="skip",
                     inherit = F)
    
    # : layout setting ----
    fig <- layout(fig,
                  scene = list(
                    xaxis = list(title = 'X',
                                 tickmode = "array",
                                 range = c(coords$xmax, coords$xmin),
                                 tickvals = (range.x + 50)[ 1:length(squares$square_x) ],
                                 ticktext = squares$square_x,
                                 # autorange = "reversed",
                                 zeroline=F, showline=F
                    ),
                    yaxis = list(title = 'Y',
                                 tickmode = "array",
                                 range =  c(coords$ymax, coords$ymin),
                                 tickvals = (range.y + 50)[ 1:length(squares$square_y) ],
                                 ticktext = squares$square_y
                    ),
                    zaxis = list(title = 'Depth',
                                 tickmode = "array",
                                 range = c(coords$zmax, coords$zmin)
                    ),
                    aspectmode = "manual", 
                    aspectratio = list(x = 1, 
                                       y = (coords$ymax - coords$ymin) / (coords$xmax - coords$xmin), 
                                       z = input$ratio * ((coords$zmax - coords$zmin) / (coords$xmax - coords$xmin)))
                  ))  #end layout
  }) # end plot3d
  
  
  output$plot3d <- plotly::renderPlotly(plot3d())
  
  click.selection <- reactive(plotly::event_data("plotly_click"))
  
  # Table: selected item ----
  output$id.tab <- renderTable({
    req(input$class_values)
    if (input$goButton == 0) return()
    
    dataset <- dataset()
    x <- click.selection()$x 
    y <- click.selection()$y 
    z <- click.selection()$z 
    id <- dataset[dataset$x == x & dataset$y == y &  dataset$z == z,]$id
    df.tab <- dataset[dataset$id == id, ]
    df.tab[, - which(colnames(df.tab) %in% c("x", "y", "z", "square_x", "square_y", "layer_color"))]
  }, digits=0)
  
  output$id.table <- renderUI({
    div(style = 'overflow-x: scroll; overflow: auto',
        p(.term_switcher("click.on.point")),
        tableOutput('id.tab'))
  })
  
  
  # X section view ----
  min.max.X <- eventReactive(input$goButtonX, {
    list("coordx" = seq(input$sectionXx[1], input$sectionXx[2]),
         "coordy" = seq(input$sectionXy[1], input$sectionXy[2]))
  })
  
  
  output$sectionXplot <- plotly::renderPlotly({
    dataset <- dataset()
    min.max.X <- min.max.X()
    
    sel <- (dataset$x %in% min.max.X$coordx) & (dataset$y %in% min.max.X$coordy)
    sectionX.df <- dataset[sel, ]
    
    sectionX.df$coordx <- sectionX.df$y
    
    sectionX <- plot_ly(sectionX.df, x = ~coordx, y = ~z,
                        color = ~layer,
                        colors = as.character(levels(sectionX.df$layer_color)),
                        size  = 1,
                        sizes = c(1,5),
                        marker = list(symbol = 'square', sizemode = 'diameter'),
                        text = ~paste('id:', id,
                                      '<br>x:', x, ', y:', y,
                                      '<br>Square:', square,
                                      '<br>Location:', location_mode,
                                      '<br>Class:', object_type)
    )
    sectionX <- config(sectionX,
                       toImageButtonOptions = list(
                         format = "svg",
                         filename = "SectionX",
                         width = 600, height = 600
                       )) 
    sectionX <- add_markers(sectionX)
    sectionX <- layout(sectionX,
                       xaxis = list(title="Y", 
                                    zeroline = FALSE, 
                                    range=c(coords()$ymin, coords()$ymax)
                       ),
                       yaxis = list(title="Depth",
                                    zeroline = T,
                                    range=c(coords()$zmax, coords()$zmin),
                                    scaleanchor="x"
                       )
    )
    sectionX
  })# end sectionX
  
  
  
  # Y section view ----
  
  min.max.Y <- eventReactive(input$goButtonY, {
    list("coordx" = seq(input$sectionYx[1], input$sectionYx[2]),
         "coordy" = seq(input$sectionYy[1], input$sectionYy[2]))
  })
  
  output$sectionYplot <- plotly::renderPlotly({
    dataset <- dataset()
    min.max.Y <- min.max.Y()
    
    sel <- (dataset$y %in% min.max.Y$coordy) & (dataset$x %in% min.max.Y$coordx)
    
    sectionY.df <- dataset[sel,  ]
    sectionY.df$coordx <- sectionY.df$x
    
    sectionY <- plot_ly(sectionY.df, x = ~coordx, y = ~z,
                        color = ~layer,
                        colors = as.character(levels(sectionY.df$layer_color)),
                        size  = 1,
                        sizes = c(1,5),
                        marker = list(symbol = 'square', sizemode = 'diameter'),
                        text = ~paste('id:', id,
                                      '<br>x:', x, ', y:', y,
                                      '<br>Square:', square,
                                      '<br>Location:', location_mode,
                                      '<br>Class:', object_type)
    )
    sectionY <- config(sectionY,
                       toImageButtonOptions = list(
                         format = "svg",
                         filename = "SectionY",
                         width = 600, height = 600))
    sectionY <- add_markers(sectionY)
    sectionY <- layout(sectionY,
                       xaxis = list(title="X", 
                                    zeroline = FALSE,
                                    range =  c(coords()$xmin, coords()$xmax)),
                       yaxis = list(title="Depth",
                                    zeroline = T,
                                    range=c(coords()$zmax, coords()$zmin),
                                    scaleanchor="x"
                       )
    )
    sectionY
  }) #end section Y
  
  
  # Map ####
  
  planZ <- eventReactive(input$goButtonZ, {
    dataset <- dataset()
    min.max.Z <- seq(input$planZ[1], input$planZ[2])
    dataset[dataset$z %in% min.max.Z, ]
  })
  
  map <- eventReactive(input$goButtonZ, {
    dataset <- dataset()
    planZ.df <- planZ()
    
    map <- site.map() +
      geom_point(data = planZ.df,
                 aes_string(x = "x", y = "y", color = "layer"),
                 size = input$map.point.size / 10) +
      scale_fill_manual("Layer",
                        values = as.character(unique(planZ.df$layer_color)) ) +
      scale_color_manual("Layer",
                         values = as.character(unique(planZ.df$layer_color)) ) +
      guides(fill = guide_legend(override.aes = list(size = 3, alpha=1) ) )
    
    if(input$map.density == "by.layer"){
      map <- map + 
        geom_density2d(data=planZ.df,
                       aes_string(x = "x", y = "y",
                                  group = "layer", color = "layer"),
                       size = .2)
    }
    
    if(input$map.density == "all"){
      map <- map + 
        geom_density2d(data=planZ.df,
                       aes_string(x = "x", y = "y"), size = .2, color = "red" )
    }  
    
    ggplotly(map)
  })
  
  output$map <- plotly::renderPlotly({ map() })
  
  
  # Mini-map  ----
  
  output$site.mapX <- renderPlot({
    
    rect.df <- data.frame(
      "ymin" = (input$sectionXy[1] - coords()$ymin), 
      "ymax" = (input$sectionXy[2] - coords()$ymin),
      "xmin" = (input$sectionXx[1] - coords()$xmin),
      "xmax" = (input$sectionXx[2] - coords()$xmin))
    
    site.map() +
      geom_rect(data = rect.df,
                aes_string(ymin = "ymin", ymax = "ymin",
                           xmin = "xmin", xmax = "xmin"),
                fill="red", alpha=.7
      )
  })
  
  
  output$site.mapY <- renderPlot({
    k <- 1
    site.map() +
      geom_rect(aes( 
        ymin= (input$sectionYy[2] - coords()$ymin) / k + .5,
        ymax= (input$sectionYy[1] - coords()$ymin) / k + .5,
        xmin= (input$sectionYx[2] - coords()$xmin) / k + .5),
        xmax= (input$sectionYx[1] - coords()$xmin) / k + .5,
        fill="red", alpha=.7)
  })
  
  
  # Conditionnal interface ----
  # : slider Map  ----
  output$sliderMap <- renderUI({
    z.mean <- mean(coords()$zmin:coords()$zmax)
    sliderInput("planZ", "Z: min/max",  width="100%", sep = "",
                min=coords()$zmin, max = coords()$zmax, round=T,
                value=c(z.mean - z.mean * 0.1,
                        z.mean + z.mean * 0.1)
    )
  })
  # : sliders X  ----
  output$sliderXx <- renderUI({
    Xx.mean <- mean(coords()$xmin:coords()$xmax)
    sliderInput("sectionXx", "X: min/max", width="100%", sep = "", step=1,
                min = coords()$xmin, max = coords()$xmax, round=T,
                value=c(Xx.mean - Xx.mean * 0.05,
                        Xx.mean + Xx.mean * 0.05)
    )
  })
  
  output$sliderXy <- renderUI({
    sliderInput("sectionXy", "Y: min/max", width="100%", sep = "", step=1,
                min = coords()$ymin, max = coords()$ymax, round=T,
                value = c(coords()$ymin, coords()$ymax))
  })
  
  # : sliders Y  ----
  output$sliderYx <- renderUI({
    sliderInput("sectionYx", "X: min/max", width="100%", sep = "", step=1,
                min = coords()$xmin, max = coords()$xmax, round=T,
                value = c(coords()$xmin, coords()$xmax))
  })
  
  output$sliderYy <- renderUI({
    Yy.mean <- mean(coords()$ymin:coords()$ymax)
    sliderInput("sectionYy", "Y: min/max",  width="100%",  sep = "", step=1,
                min = coords()$ymin, max = coords()$ymax, round=T,
                value=c(Yy.mean - Yy.mean * 0.05,
                        Yy.mean + Yy.mean * 0.05)
    )
  })
  
  # : slider timeline  ----
  output$sliderTimeline <- renderUI({
    time.df <- timeline.data()
    sliderInput("history.date", "Year", width="100%",  sep = "",
                min = min(time.df$year), max = max(time.df$year),
                value = min(time.df$year), step=1)
  })
  
  # : Object variable/values  ----
  output$class_variable <- renderUI({
    req(full.dataset())
    items <- colnames(full.dataset())[grep("object*", colnames(full.dataset()))]
    selectInput("class_variable", "Variable:", items)
  })
  
  # observeEvent(input$reset_input, {
  #   # class_values.saved <- input$class_values
  #   updateTextInput(session, "class_values")
  # })
  
  output$class_values <- renderUI({
    req(full.dataset(), input$class_variable)
    
    data <- full.dataset()
    
    values <- unique(eval(parse(text = paste0("data$", input$class_variable))))
    
    # times <- input$reset_input # reset selection
    div( 
      # actionButton("reset_input", "Reset values"),
      # br(), br(),
      checkboxGroupInput("class_values", .term_switcher("values"),
                         c("All", sort(values)),
                         selected = input$class_values)
    )
  })
  
  
  
  
  # : density selector  ----
  output$density_selector <- renderUI({
    density.modes <- structure(c("exact", "fuzzy", "exact-fuzzy"), 
                           .Names = c(.term_switcher("density.no"),
                                      .term_switcher("density.all.layers"),
                                      .term_switcher("density.by.layer")))  
    radioButtons("map.density",
                 .term_switcher("density"),
                 choices = density.modes,
                 selected = c("no"))
  })
  
  # : Location choice  ----
  output$location_choice <- renderUI({
    loc.modes <- structure(c("exact", "fuzzy", "exact-fuzzy"), 
                           .Names = c(.term_switcher("exact"),
                                      .term_switcher("fuzzy"),
                                      .term_switcher("exact.fuzzy")))  
    
    radioButtons("location", .term_switcher("location"),
                 choices = loc.modes,
                 selected = c("exact"))
  })
  
  #  Timeline ----
  
  output$timeline.map <- renderPlot({
    # 
    # if(is.null(timeline.data)){
    #   showNotification("Select a file in the “Input data” tab to use this function",
    #                    type = "message", duration = 10)
    # }
    
    req(timeline.data())
    time.df <- timeline.data()
    
    time.sub.df <- time.df[time.df$year == input$history.date, ]
    
    timeline.map() +
      geom_tile(data = time.sub.df,
                aes_string(x = "square_x", y = "square_y", fill = "excavation"),
                show.legend = F) +
      scale_fill_manual("State:", values = c(rgb(1,1,1,0), rgb(.4, .7, 0, .5)) ) 
  })
  
  
  output$download.timeline.map <- downloadHandler(
    filename = "timeline-map.svg",
    content = function(file) {
      ggsave(file, plot = timeline.map())
    }
  )
  
  output$timeline.map.grid <- renderPlot({
    req(timeline.data())
    time.df <- timeline.data()
    
    timeline.map() +
      geom_tile(data = time.df,
                aes_string(x = "square_x", y = "square_y", fill = "excavation"),
                show.legend = F)  +
      scale_fill_manual("State:", values = c(rgb(1,1,1,0), rgb(.4, .7, 0, .5)) ) +
      facet_wrap(~year) +
      theme(axis.text.x = element_text(size=.1),
            axis.text.y = element_text(size=.1))
  })
  
  
} # end of server.R
