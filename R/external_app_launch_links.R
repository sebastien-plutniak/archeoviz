# function to generate UI outputs with links to launch 3rd party apps: 
  external_app_launch_links <- function(table, app.name, app.url, methods, session){
    data.url <- session$registerDataObj(name = "table",
                                        data = table,
                                        filterFunc = function(data, req) { 
                                          httpResponse(200, "text/csv",
                                               write.csv(data, row.names = TRUE)
                                          )
                                        })
    object.id <- gsub(".*w=(.*)&nonce.*", "\\1", data.url)
    
    data.url <- paste0(session$clientData$url_protocol, "//",
                       session$clientData$url_hostname,
                       session$clientData$url_pathname,
                       object.id, 
                       "session/", session$token,
                       "/download/download.", app.name)
    
    data.url <- paste0(app.url, data.url)
    
    tagList(
      "> ", .term_switcher("export.to"),
      actionLink(paste0("run.", app.name),
                 label = app.name,
                 onclick = paste("window.open('",
                                 data.url, "', '_blank')")),
      ": ",
      methods,
      "-",
      .term_switcher("download"), 
      downloadLink(paste0("download.", app.name), " CSV")
    )
  }
