app_ui <- function(){
shiny::addResourcePath("archeoViz", system.file("R", package="archeoViz"))

ui <- shinyUI(
  fluidPage(
    tags$head(tags$style(HTML(".tabclass 
                              th { padding: 0 1em 1em ;}
                              td { padding: 0 1em 1em ;}
                              "))),
    
    theme = shinythemes::shinytheme(getShinyOption("set.theme")),
    # Sidebar ----
    sidebarLayout(
      sidebarPanel(
        uiOutput("title.edited"),
        conditionalPanel(condition = 'output.locationPanel',
            uiOutput("location_choice"),
            uiOutput("group.selector"),
            uiOutput("class.variable"),
            actionButton("goButton", .term_switcher("validate")),
            br(),br(),
            uiOutput("class.values"),
            ), # end conditionnal panel
        width=2), # end sidebarpanel

      mainPanel(
        tabsetPanel(id="tabs",
        tabPanel(.term_switcher("tab.home"), # Home ----                   
                   column(12, align="center",
                          br(),
                          uiOutput("home.text"),
                   ) # end column
          ),   #end tabPanel

          tabPanel(.term_switcher("tab.input"), # Input data ----
                   column(12, align="left",
                          br(),
                          h2(.term_switcher("header.simul.data")),
                          sliderInput("demoData.n", .term_switcher("use.demo"),
                                       value = 0, min = 0, max=10000, step=100),
                          h2(.term_switcher("header.objects.table")),
                          fluidRow(
                            column(4, fileInput('objects.file', .term_switcher("choose.csv"),
                                                accept=c('text/csv', 'text/comma-separated-values, text/plain')),
                            ),
                            column(2, radioButtons(inputId = 'sep1',
                                                   label = .term_switcher("separator"),
                                                   choices = c("," =',', ";"=';',"tab"='\t'),
                                                   inline=T, selected = ',')),
                            column(2, radioButtons(inputId = 'dec.sep1',
                                                   label = .term_switcher("decimal"),
                                                   choices = c("." ='.', ","),
                                                   inline=T, selected = '.'))
                          ), # end fluidRow
                          uiOutput("sliderRotation"),
                          uiOutput("objects.preview.table"),
                          tags$div(
                            HTML(paste("<div style=width:80%;, align=left>",
                                       .term_switcher("input.objects"),
                                 "</div>"))
                          ), # end div()

                          h2(.term_switcher("header.refits.table")),
                          fluidRow(
                            column(4, fileInput('refits.file', .term_switcher("choose.csv"),
                                                accept=c('text/csv', 'text/comma-separated-values, text/plain')),
                            ),
                            column(2, radioButtons(inputId = 'sep3',
                                                   label = .term_switcher("separator"),
                                                   choices = c("," =',' , ";"=';',"tab"='\t'),
                                                   inline=T, selected = ',')),
                            column(2, radioButtons(inputId = 'dec.sep3',
                                                   label = .term_switcher("decimal"),
                                                   choices = c("." ='.', ","),
                                                   inline=T, selected = '.'))
                          ), # end fluidRow
                          
                          tags$div(
                            HTML(paste("<div style=width:80%;, align=left>",
                                       .term_switcher("input.refits"),
                                 "</div>"))
                          ), # end div()
                          uiOutput("refits.preview.table"),

                          h2(.term_switcher("header.timeline.table")),
                          
                          fluidRow(
                            column(4, fileInput('timeline.file', .term_switcher("choose.csv"),
                                                accept=c('text/csv', 'text/comma-separated-values, text/plain')),
                            ),
                            column(2,  radioButtons(inputId = 'sep2',
                                                    label = .term_switcher("separator"),
                                                    choices = c("," =',' , ";"=';',"tab"='\t'),
                                                    inline=T, selected = ',')),
                            column(2, radioButtons(inputId = 'dec.sep2',
                                                   label = .term_switcher("decimal"),
                                                   choices = c("." ='.', ","),
                                                   inline=T, selected = '.'))
                            ), # end fluidRow
                          
                          
                          tags$div(
                            HTML(paste("<div style=width:80%;, align=left>",
                                       .term_switcher("input.timeline"),
                              "</div>"))
                            ) #end div()
                   ) # end column
          ),      #end tabPanel

          tabPanel(.term_switcher("tab.plot3d"), # 3D plot ----
                   fluidRow(
                     column(10,
                            plotly::plotlyOutput("plot3d",  width = "100%", height = 650),
                            p(.term_switcher("click.on.point")),
                            uiOutput("plot3d.selection.tab"),
                            br()
                     ),
                     column(2,
                            br(),
                            actionButton("goButton3D", .term_switcher("refresh")),
                            br(),
                            br(),
                            uiOutput("plot3d.point.size"),
                            uiOutput("ratio3D"), 
                            uiOutput("download.button.html.export.3d"),
                            uiOutput("show.3d.refits"),
                            h4(.term_switcher("header.3d.options")),
                            uiOutput("show.surfaces"),
                            checkboxInput("plot3d.hulls", .term_switcher("hulls"),
                                          value = getShinyOption("params")$plot3d.hulls ),
                            uiOutput("select.hulls")
                     )  # end column
                   ),  # end fluid row
          ),      #end tabPanel

          tabPanel(.term_switcher("tab.map"),  # map ----
                   fluidRow(
                     column(10,
                            uiOutput("sliderMap"),
                            plotly::plotlyOutput("map", width = "100%", height = 500)
                     ),
                     column(2,
                            br(),
                            actionButton("goButtonZ", .term_switcher("refresh")),
                            br(), br(),
                            uiOutput("density_selector"),
                            uiOutput("show.map.refits"),
                            uiOutput("map.point.size"),
                            uiOutput("download.button.html.export.map")
                            )#end column
                   ), #end fluid row
                   fluidRow(column(12,
                                   p(.term_switcher("click.on.point")),
                                   uiOutput("map.selection.tab"),
                                   br()
                   )) # end colums, end fluidrow                   
          ), # end tabPanel

          tabPanel(.term_switcher("tab.section.x"),  # section X ----
                   fluidRow(
                     column(10,
                            uiOutput("sliderXx"),
                            uiOutput("sliderXy")
                     ),
                     column(1,
                            br(), actionButton("goButtonX", .term_switcher("refresh")))
                   ),
                   fluidRow(
                     column(9,
                            plotly::plotlyOutput("sectionXplot", width = "100%", height = 500)
                     ),
                     column(3, align="center",
                            uiOutput("show.sectionX.refits"),
                            uiOutput("sectionX.point.size"),
                            downloadLink("downloadMinimapX", 
                                         paste(.term_switcher("download"),
                                               tolower(.term_switcher("tab.map"))) ),
                            br(),
                            plotOutput("site.mapX"),
                            uiOutput("download.button.html.export.sectionX")
                     )
                   ), #end fluid row
                   fluidRow(column(12,
                                   p(.term_switcher("click.on.point")),
                                   uiOutput("sectionY.selection.tab"),
                                   br()
                   )) # end colums, end fluidrow   
          ), # end tabPanel

          tabPanel(.term_switcher("tab.section.y"),  #section Y ----
                   fluidRow(
                     column(10,
                            uiOutput("sliderYx"),
                            uiOutput("sliderYy")
                     ),
                     column(1, br(),
                            actionButton("goButtonY", .term_switcher("refresh")),)
                   ),
                   fluidRow(
                     column(9,
                            plotly::plotlyOutput("sectionYplot", width = "100%", height = 500)
                     ),
                     column(3, align="center",
                            uiOutput("show.sectionY.refits"),
                            uiOutput("sectionY.point.size"),
                            downloadLink("downloadMinimapY", 
                                         paste(.term_switcher("download"),
                                               tolower(.term_switcher("tab.map"))) ),
                            br(),
                            plotOutput("site.mapY"),
                            uiOutput("download.button.html.export.sectionY")
                     )
                   ), #end fluid row
                   fluidRow(column(12,
                                   p(.term_switcher("click.on.point")),
                                   uiOutput("sectionX.selection.tab"),
                                   br()
                   )) # end colums, end fluidrow  
          ), # end tabPanel

          tabPanel(.term_switcher("tab.statistics"),  #  statistics ----
                   fluidRow(
                     column(12,
                            uiOutput("export.header"),
                            uiOutput("run.seriograph"),
                            uiOutput("run.amado"),
                            uiOutput("run.archeofrag"),
                            uiOutput("run.explor.ca"),
                            br()
                     )
                   ),
                   fluidRow(
                     column(6,
                            h4(.term_switcher("tab.variable.loc")),
                            tableOutput("by.variable.table")
                     ),
                     column(6,
                            h4(.term_switcher("tab.layer.loc")),
                            tableOutput("by.layer.table")
                     ),
                   ) #end fluidrow
          ), #end tabPanel

          tabPanel(.term_switcher("tab.timeline"),  # Timeline ----
                   uiOutput("sliderTimeline"),
                   fluidRow(
                     column(7, align="center",
                            imageOutput("timeline.map"), #,  height = "500px", width = "100%",
                            br(),
                            uiOutput("download.button.timeline.map")
                            ),
                            
                     column(5,  align="center",
                            imageOutput("timeline.map.grid"), #, width = "100%", height = "400px"
                            br(),
                            uiOutput("download.button.timeline.map.grid")
                     )
                   ), #end fluidrow
          ), #end tabPanel
        
        tabPanel(.term_switcher("tab.reproducibility"), # Reproducibility ----
                 column(12, align="center",
                        br(),
                          HTML(paste("<div style=width:40%;, align=left>",
                                     .term_switcher("reproducibility"),
                                     "<br><div style=\"font-family:Courier; width:100%;\", align=left>",
                                       htmlOutput("reproducibility"),
                                  "</div>",
                                "</div>"
                        ) # end paste
                        )  # end HTML
                 ) # end column
        ), #end tabPanel
        
        tabPanel(.term_switcher("tab.guidelines"), # Guidelines ----
               column(12, align="left",
                      tags$div(
                        HTML(paste("<div style=width:70%;, align=left>",
                       .term_switcher("guidelines"),
                       "</div>"
                          ))# end HTML
                         )# end div
                       ) # end column
              ) #end tabPanel
        ), # end  tabsetPanel
        width=10) # end mainPanel
    ) #sidebarLayout
  ) #endfluidPage
) #end  shinyUI

}
