
.term_switcher <- function(term){
  eval(parse(text = paste0("shiny::getShinyOption('ui.terms')$", term)))
}