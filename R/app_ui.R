app_ui <- function(){
shiny::addResourcePath("archeoViz", system.file("R", package="archeoViz"))

ui <- shinyUI(
  fluidPage(
    theme = shinythemes::shinytheme(getShinyOption("set.theme")),
    # Sidebar ----
    sidebarLayout(
      sidebarPanel(
        uiOutput("title.edited"),
        conditionalPanel(condition = 'output.locationPanel',
            uiOutput("location_choice"),
            uiOutput("group.selector"),
            uiOutput("class_variable"),
            actionButton("goButton", .term_switcher("validate")),
            br(),br(),
            uiOutput("class_values"),
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
                                                accept=c('text/csv', 'text/comma-separated-values, text/plain'))
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
                            uiOutput("id.table"), 
                     ),
                     column(2,
                            br(),
                            actionButton("goButton3D", .term_switcher("refresh")),
                            br(),
                            h4(.term_switcher("header.3d.options")),
                            uiOutput("show.surfaces"),
                            checkboxInput("cxhull", .term_switcher("hulls"),
                                          value = getShinyOption("params")$cxhull ),
                            uiOutput("show.refits"),
                            sliderInput("point.size", .term_switcher("point.size"), width="100%", sep = "",
                                        min=1, max=5, value=2, step=1),
                            uiOutput("ratio3D"), 
                            downloadButton("download.3d.plot", .term_switcher("download"))
                     )  # end column
                   )  # end fluid row
          ),      #end tabPanel

          tabPanel(.term_switcher("tab.map"),  # map ----
                   fluidRow(
                     column(10,
                            uiOutput("sliderMap"),
                            plotly::plotlyOutput("map", width = "100%", height = 500),
                     ),
                     column(2,
                            br(),
                            actionButton("goButtonZ", .term_switcher("refresh")),
                            br(), br(),
                            uiOutput("density_selector"),
                            uiOutput("show.refits.map"),
                            sliderInput("map.point.size", .term_switcher("point.size"),
                                        width="100%", sep = "",
                                        min=1, max=10, value=2, step=1),
                            )#end column
                   ) #end fluid row
          ), # end tabPanel

          tabPanel("Section X",  # section X ----
                   fluidRow(
                     column(10,
                            uiOutput("sliderYx"),
                            uiOutput("sliderYy")
                     ),
                     column(1,
                            br(), actionButton("goButtonY", .term_switcher("refresh")))
                   ),
                   fluidRow(
                     column(9,
                            plotly::plotlyOutput("sectionYplot", width = "100%", height = 500)
                     ),
                     column(3,
                            uiOutput("show.refits.sectionY"),
                            sliderInput("sectionY.point.size", .term_switcher("point.size"),
                                        width="100%", sep = "",
                                        min=1, max=10, value=5, step=1),
                            plotOutput("site.mapY")
                     )
                   )#end fluidrow
          ), # end tabPanel

          tabPanel("Section Y",  #section Y ----
                   fluidRow(
                     column(10,
                            uiOutput("sliderXx"),
                            uiOutput("sliderXy")
                     ),
                     column(1, br(),
                            actionButton("goButtonX", .term_switcher("refresh")),)
                   ),
                   fluidRow(
                     column(9,
                            plotly::plotlyOutput("sectionXplot", width = "100%", height = 500)
                     ),
                     column(3,
                            uiOutput("show.refits.sectionX"),
                            sliderInput("sectionX.point.size", .term_switcher("point.size"),
                                        width="100%", sep = "",
                                        min=1, max=10, value=5, step=1),
                            plotOutput("site.mapX")
                     )
                   ) #end fluidrow
          ), # end tabPanel

          tabPanel(.term_switcher("tab.tables"),  #  tables ----
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
                     column(7,
                            imageOutput("timeline.map", width = "100%", height = "500px")),
                     column(5,
                            imageOutput("timeline.map.grid", width = "100%", height = "400px"),
                            downloadButton("download.timeline.map", .term_switcher("download"))),
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
