
archeoViz <- function(objects.df=NULL, refits.df=NULL, timeline.df=NULL,
                      title=NULL, home.text=NULL, lang="en", set.theme="cosmo"){
  
  ui.terms <- .load_interface_terms(lang)
  
  shinyOptions("objects.df"  = objects.df,
               "refits.df"   = refits.df,
               "timeline.df" = timeline.df,
               "title"       = title,
               "home.text"   = home.text,
               "set.theme"   = set.theme,
               "ui.terms"    =  ui.terms)
  
  shinyApp(ui = app_ui, server = app_server)
}
