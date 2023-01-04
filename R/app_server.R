

app_server <- function(input, output, session) {
  
  # Interface ----
  # : title ----
  output$title.edited <- renderUI({
    archeoViz.label <- paste(" <a href=https://github.com/sebastien-plutniak/archeoviz target=_blank>archeoViz</a> v",
                             utils::packageVersion("archeoViz"), sep="")
    title <- shiny::getShinyOption("title")
    
    if(is.null(title)){
      title.edited <- paste("<h4>", archeoViz.label, "</h4>")
    } else if(is.character(title) & nchar(title) <= 20){
      title.edited <- paste("<h4>", title, "</h4>", .term_switcher("through"), archeoViz.label, "<br><br>", sep="")
    } else{
      stop("The title parameter must be a character string (20 characters max).")
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
      )# end HTML
      ) # end div
    } else{stop("'home.text' parameter must be a character string.")}
    
  })
  
  
  # hide instructions tab when using the package on a server
  if(! is.null(getShinyOption("objects.df"))){
    hideTab(inputId = "tabs", target =  .term_switcher("tab.input"))
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
                               timeline.ui.df)
    showNotification(.term_switcher(timeline$notif.text),
                     type = timeline$notif.type)
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
  
  
  refitting.df <- eventReactive(input$goButton, {
    req(objects.subdataset)
    refits <- data.frame()

    if(! is.null(getShinyOption("refits.df")) ){
     refits <- data.frame(getShinyOption("refits.df"))
    } else if(input$demoData.n > 0){
      refits <- demo_refits_data(input$demoData.n)
    } else if( ! is.null(input$refits.file)){
      refits <- input.ui.refits()
    } 
    
    if(nrow(refits) > 0){
      refits <- .do_refits_preprocessing(refits, objects.subdataset())
    }
    refits
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
      input.ui.table       = objects.ui.input)
    
    showNotification(.term_switcher(result$notif.text),
                     type = result$notif.type)
    result$data
  })
  
  # : dynamic preprocessing ----
  objects.subdataset <- reactive({
    req(input$class_variable)
    
    df <- objects.dataset()
    
    # location mode selection:
    if(input$location != .term_switcher("exact.fuzzy")){
      df.sub <- df[df$location_mode %in% input$location, ]
    }else{
      df.sub <- df
    }
    
    # class selection:
    if( ! .term_switcher("all") %in% input$class_values){
      selection <- eval(parse(text = paste0("df.sub$", input$class_variable))) %in% input$class_values[input$class_values != .term_switcher("all")]
      df.sub <- df.sub[selection, ]
    }
    
    df.sub  # return the subset of the dataframe
  }) # end dataset subset
  
  
  # Coordinate system ----
  
  # : squares list ----
  squares <- reactive({
    df <- objects.dataset()
    square_x <- c()
    square_y <- c()
    if( ! length(table(df$square_x)) == 0){square_x <- levels(df$square_x)}
    if( ! length(table(df$square_y)) == 0){square_y <- levels(df$square_y)}
    
    list("square_x" = square_x, "square_y" = square_y)
  })
  
  # : coords min/max coordinates ----
  coords.min.max <- reactive({
    df <- objects.dataset()
    .do_coords_minmax(df)
  })
  
  # : ranges ----
  square.coords.ranges <- reactive({
    coords <- coords.min.max()
    range.x <- seq(floor(coords$xmin / 100) * 100, ceiling(coords$xmax / 100) * 100, 100)
    range.y <- seq(floor(coords$ymin / 100) * 100, ceiling(coords$ymax / 100) * 100, 100)
    
    list("range.x" = range.x, "range.y" = range.y)
  })
  
  # : grid coordinates ----
  grid.coordx <- reactive({
    square.coords <- square.coords.ranges()
    coords <- coords.min.max()
    
    data.frame(
      "id" = c(rbind(seq_len(length(square.coords$range.x)),
                     seq_len(length(square.coords$range.x)))),
      "x"  = c(rbind(seq(coords$xmin, coords$xmax, 100),
                     seq(coords$xmin, coords$xmax, 100))),
      "y"  = rep(c(coords$ymin, coords$ymax), length(square.coords$range.x)),
      "z"  = coords$zmax)
  })
  
  grid.coordy <- reactive({
    square.coords <- square.coords.ranges()
    coords <- coords.min.max()
    
    data.frame(
      "id" = c(rbind(seq_len(length(square.coords$range.y)),
                     seq_len(length(square.coords$range.y)))),
      "x"  = rep(c(coords$xmin, coords$xmax),
                 length(square.coords$range.y)),
      "y"  = c(rbind(seq(coords$ymin, coords$ymax, 100),
                     seq(coords$ymin, coords$ymax, 100))),
      "z"  = coords$zmax)
  })
  
  # : colors ----
  colors.list <- reactive({
    as.character(levels(objects.dataset()$layer_color))
  })
  
  # : axis labels ----
  axis.labels <- reactive({
    square.coords <- square.coords.ranges()
    squares <- squares()
    
    list(
      "xaxis" = list(
        "breaks" = (square.coords$range.x + 50)[ 1:length(squares$square_x) ],
        "labels" =  squares$square_x 
      ),
      "yaxis" = list(
        "breaks" = (square.coords$range.y + 50)[ 1:length(squares$square_y) ],
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
  
  # : selected item ----
  output$id.tab <- renderTable({
    req(input$class_values)
    if (input$goButton == 0) return()
    
    dataset <- objects.subdataset()
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
  
  # : by variable ----
  by.variable.table <- eventReactive(input$goButton, {
    req(input$class_variable, input$class_values)
    dataset <- objects.subdataset()
    
    .do_by_variable_table(dataset, input$class_variable, input$location)
  })
  # render:
  output$by.variable.table <- renderTable({by.variable.table()}, 
                                          rownames = T, digits=0)
  
  # : by layer ----
  by.layer.table <- eventReactive(input$goButton, {
    req(input$class_variable, input$class_values)
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
    
    ggplot() +
      theme_minimal(base_size = 11) +
      geom_vline(xintercept = square.coords$range.x, colour = "darkgrey" ) +
      geom_hline(yintercept = square.coords$range.y, colour = "darkgrey" ) +
      coord_fixed() +
      scale_x_continuous(breaks = axis.labels$xaxis$breaks,
                         labels = axis.labels$xaxis$labels) +
      scale_y_continuous(breaks = axis.labels$yaxis$breaks,
                         labels = axis.labels$yaxis$labels) +
      xlab("") + ylab("")
  }) 
  
  #  : mini-map X ----
  output$site.mapX <- renderPlot({
    req(input$sectionXy)
    coords <- coords.min.max()
    
    rect.df <- data.frame(
      "ymin" = input$sectionXy[1], 
      "ymax" = input$sectionXy[2],
      "xmin" = input$sectionXx[1],
      "xmax" = input$sectionXx[2])
    
    site.map() +
      geom_rect(data = rect.df,
                aes_string(ymin = "ymin", ymax = "ymax",
                           xmin = "xmin", xmax = "xmax"),
                fill="red", alpha=.7
      )
  })
  
  #  : mini-map Y ----
  output$site.mapY <- renderPlot({
    req(input$sectionYy)
    coords <- coords.min.max()
    
    rect.df <- data.frame(
      "ymin" = input$sectionYy[1], 
      "ymax" = input$sectionYy[2],
      "xmin" = input$sectionYx[1],
      "xmax" = input$sectionYx[2])
    
    site.map() +
      geom_rect(data = rect.df,
                aes_string(ymin = "ymin", ymax = "ymax",
                           xmin = "xmin", xmax = "xmax"),
                fill="red", alpha=.7
      )
  })
  
  # : timeline map ----
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
    validate(need(input$class_values, .term_switcher("notif.tick.value")))
    req(input$class_values, objects.dataset())
    
    dataset <- objects.subdataset()
    coords <- coords.min.max()
    squares <- squares()
    axis.labels <- axis.labels()
    dataset$point.size <- input$point.size
    size.scale <- input$point.size
    
    # : plot initial ----
    fig <- plot_ly(dataset, x = ~x, y = ~y, z = ~z,
                   color = ~layer,
                   colors =  colors.list(),
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
    if(input$refits){
      refitting.df <- refitting.df()
        # if(nrow(refitting.df) > 0){
          fig <- add_paths(fig, x= ~x, y= ~y, z= ~z, 
                           split = ~id, data = refitting.df,
                           color = I("red"), showlegend = FALSE,
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
      layers <- names(layers[layers > 19])
      
      # compute hulls:
      mesh.list <- lapply(layers, .get_cxhull_model, df=dataset)
      # add mesh:
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
    fig <- layout(fig,
                  scene = list(
                    xaxis = list(title = 'X',
                                 tickmode = "array",
                                 range = c(coords$xmax, coords$xmin),
                                 tickvals = axis.labels$xaxis$breaks,
                                 ticktext = axis.labels$xaxis$labels,
                                 zeroline=F, showline=F
                    ),
                    yaxis = list(title = 'Y',
                                 tickmode = "array",
                                 range =  c(coords$ymax, coords$ymin),
                                 tickvals = axis.labels$yaxis$breaks,
                                 ticktext = axis.labels$yaxis$labels
                    ),
                    zaxis = list(title = .term_switcher("depth"),
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
  
  
  # PLOTS 2D ----
  # :  X section plot ----
  
  sectionXplot <- shiny::eventReactive(input$goButtonX, {
    req(input$class_variable, input$class_values)
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
                     xaxis = "y")
  })# end sectionX
  
  output$sectionXplot <- plotly::renderPlotly({sectionXplot()})
  
  
  # : Y section plot ----
  sectionYplot <- shiny::eventReactive(input$goButtonY, {
    req(input$class_variable, input$class_values)
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
                     xaxis = "x")
  }) #end section Y
  
  output$sectionYplot <- plotly::renderPlotly({sectionYplot()})
  
  # : Map plot ####
  
  map <- eventReactive(input$goButtonZ, {
    req(input$class_variable, input$class_values)
    dataset <- objects.subdataset()
    
    sel <- dataset$z >= input$planZ[1] & dataset$z <= input$planZ[2]
    
    planZ.df <- dataset[sel, ]
    
    col <- unique(planZ.df[, c("layer", "layer_color")])
    col <- structure(as.character(col$layer_color),
                     .Names = as.character(col$layer))
    
    map <- site.map() +
      geom_point(data = planZ.df,
                 aes_string(x = "x", y = "y", color = "layer"),
                 size = input$map.point.size / 10) +
      scale_color_manual("Layer", values=col) 
    
    if(input$map.density == "by.layer"){
      # only layers with > 30 points
      layers.sel <- table(planZ.df$layer)
      layers.sel <- names(layers.sel[layers.sel >= 30])
      planZ.df.sub <- planZ.df[planZ.df$layer %in% layers.sel, ]
      
      map <- map + 
        geom_density2d(data=planZ.df.sub,
                       aes_string(x = "x", y = "y",
                                  group = "layer", color = "layer"),
                       size = .2)
    }
    
    if(input$map.density == "all.layers"){
      map <- map + 
        geom_density2d(data=planZ.df,
                       aes_string(x = "x", y = "y"),
                       size = .2, color = "grey30")
    }  
    
    # add refits:
    if(input$refits.map){
      
      refitting.df <- refitting.df()
      
      # if(nrow(refitting.df) > 0){
        # subset refitting data set:
        sel <- (refitting.df[, 1] %in% planZ.df$id) | (refitting.df[, 2] %in% planZ.df$id)
        refitting.df <- refitting.df[which(sel), ]
        
        refitting.df <- cbind(
          refitting.df[seq(1, nrow(refitting.df)-1, by=2), c(2, 3)],
          refitting.df[seq(2, nrow(refitting.df),   by=2), c(2, 3)])
        colnames(refitting.df) <- c("x", "y", "xend", "yend")
        
        map <- map +
          geom_segment(data = refitting.df,
                       aes_string(x="x", xend="xend", y="y", yend="yend"),
                       color = "red", linewidth=.3)
  } 
    
    ggplotly(map)
  })
  
  output$map <- plotly::renderPlotly({ map() })
  
  
  
  # Conditionnal interface ----
  
  # : slider Map  ----
  output$sliderMap <- renderUI({
    coords <- coords.min.max()
    
    z.mean <- mean(seq(coords$zmin, coords$zmax))
    sliderInput("planZ", "Z: min/max",  width="100%", sep = "",
                min=coords$zmin, max = coords$zmax, round=T,
                value=c(z.mean - z.mean * 0.1,
                        z.mean + z.mean * 0.1)
    )
  })
  # : sliders X  ----
  output$sliderXx <- renderUI({
    coords <- coords.min.max()
    
    Xx.mean <- mean(seq(coords$xmin, coords$xmax))
    sliderInput("sectionXx", "X: min/max", width="100%", sep = "", step=1,
                min = coords$xmin, max = coords$xmax, round=T,
                value=c(Xx.mean - Xx.mean * 0.05,
                        Xx.mean + Xx.mean * 0.05)
    )
  })
  
  output$sliderXy <- renderUI({
    coords <- coords.min.max()
    
    sliderInput("sectionXy", "Y: min/max", width="100%", sep = "", step=1,
                min = coords$ymin, max = coords$ymax, round=T,
                value = c(coords$ymin, coords$ymax))
  })
  
  # : sliders Y  ----
  output$sliderYx <- renderUI({
    coords <- coords.min.max()
    
    sliderInput("sectionYx", "X: min/max", width="100%", sep = "", step=1,
                min = coords$xmin, max = coords$xmax, round=T,
                value = c(coords$xmin, coords$xmax))
  })
  
  output$sliderYy <- renderUI({
    coords <- coords.min.max()
    
    Yy.mean <- mean(seq(coords$ymin, coords$ymax))
    sliderInput("sectionYy", "Y: min/max",  width="100%",  sep = "", step=1,
                min = coords$ymin, max = coords$ymax, round=T,
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
    req(objects.dataset())
    items <- colnames(objects.dataset())[grep("object*", colnames(objects.dataset()))]
    selectInput("class_variable", "Variable", items)
  })
  
  # observeEvent(input$reset_input, {
  #   # class_values.saved <- input$class_values
  #   updateTextInput(session, "class_values")
  # })
  
  output$class_values <- renderUI({
    req(objects.dataset(), input$class_variable)
    
    data <- objects.dataset()
    
    values <- unique(eval(parse(text = paste0("data$", input$class_variable))))
    
    # times <- input$reset_input # reset selection
    div( 
      # actionButton("reset_input", "Reset values"),
      # br(), br(),
      checkboxGroupInput("class_values", .term_switcher("values"),
                         c(.term_switcher("all"), sort(values)),
                         selected = input$class_values)
    )
  })
  
  
  # : Density selector  ----
  output$density_selector <- renderUI({
    density.modes <- structure(c("no", "all.layers", "by.layer"), 
                               .Names = c(.term_switcher("density.no"),
                                          .term_switcher("density.all.layers"),
                                          .term_switcher("density.by.layer")))  
    radioButtons("map.density",
                 .term_switcher("density"),
                 choices = density.modes,
                 selected = "no")
  })
  
  # : Location selector  ----
  output$locationPanel <- reactive({is.data.frame(objects.dataset())})
  outputOptions(output, "locationPanel", suspendWhenHidden = FALSE)
  
  output$location_choice <- renderUI({
    loc.modes <- c(.term_switcher("exact"), 
                   .term_switcher("fuzzy"), 
                   .term_switcher("exact.fuzzy"))
    loc.modes <- structure(loc.modes, .Names = loc.modes)  
    
    radioButtons("location", .term_switcher("location"),
                 choices = loc.modes,
                 selected = .term_switcher("exact"))
  })
  
  # : Refitting display selectors  ----
  output$show.refits <- renderUI({
    if(nrow(refitting.df() ) > 0){
      checkboxInput("refits", .term_switcher("refits"))
    }
  })
  
  output$show.refits.map <- renderUI({
    if(nrow(refitting.df() ) > 0){
      checkboxInput("refits.map", .term_switcher("refits"))
    }
  })
  
  output$show.refits.sectionX <- renderUI({
    if(nrow(refitting.df() ) > 0){
      checkboxInput("refits.sectionX", .term_switcher("refits"))
    }
  })
  
  output$show.refits.sectionY <- renderUI({
    if(nrow(refitting.df() ) > 0){
      checkboxInput("refits.sectionY", .term_switcher("refits"))
    }
  })
  
  #  Timeline ----
  
  output$timeline.map <- renderPlot({
    req(timeline.data)
    
    time.df <- timeline.data()
    
    time.sub.df <- time.df[time.df$year == input$history.date, ]
    
    timeline.map() +
      geom_tile(data = time.sub.df,
                aes_string(x = "square_x", y = "square_y", fill = "excavation"),
                show.legend = F, alpha=.8) +
      scale_fill_manual("State:", values = c("white", "darkolivegreen4") ) 
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
      scale_fill_manual("State:", values = c("white", "darkolivegreen4") ) +
      facet_wrap(~year) +
      theme(axis.text.x = element_text(size=.1),
            axis.text.y = element_text(size=.1))
  })
  
  
} # end of server.R




