pkgload::load_all(export_all = FALSE, helpers = FALSE, attach_testthat = FALSE)

# To deploy the package on a server with your data, edit the following variables:
archeoViz::archeoViz(objects.df = NULL,    # data.frame with data about the objects
                     refits.df = NULL,     # (optional) data.frame for refitting data
                     timeline.df = NULL,   # (optional) data.frame for the excavation timeline
                     title = NULL,         # title of the site / data set
                     home.text = NULL,     # html content to display on the home page
                     lang = "en",          # language of the app interface
                     set.theme = "cosmo")  # graphic theme for the Shiny interface
                                           # see https://rstudio.github.io/shinythemes for possible values
