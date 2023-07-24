\name{archeoViz}
\alias{archeoViz}

\title{archeoViz}
\description{Launch the archeoViz application to visualise, interactive explore, and expose on the web archaeological data from excavation}

\usage{
archeoViz(objects.df=NULL, refits.df=NULL, timeline.df=NULL,
          title=NULL, home.text=NULL, lang="en", set.theme="cosmo",
          square.size = 100,
          reverse.axis.values = NULL, reverse.square.names = NULL,
          add.x.square.labels = NULL, add.y.square.labels = NULL,
          class.variable = NULL, class.values = NULL,
          default.group = "by.layer", location.mode = NULL,
          map.z.val = NULL, map.density = "no", map.refits = NULL,
          plot3d.ratio = 1, plot3d.hulls = NULL, plot3d.surfaces = NULL,
          plot3d.refits = NULL,
          sectionX.x.val = NULL, sectionX.y.val = NULL, sectionX.refits = NULL, 
          sectionY.x.val = NULL, sectionY.y.val = NULL, sectionY.refits = NULL,
          camera.center = c(0, 0, 0), camera.eye = c(1.25, 1.25, 1.25),
          run.plots = FALSE, html.export = TRUE, table.export = TRUE
          )
}
\arguments{
  \item{objects.df}{data frame, with data documenting the location and type of archaeological remains.}
  \item{refits.df}{data frame, with two columns containin the ids of refitting objects.}
  \item{timeline.df}{data frame, with data documenting the year of excavation of the site's squares.}
  \item{title}{character. Title to display on the application.}
  \item{home.text}{character. Html contents to display on the home page of the application.}
  \item{lang}{character. Language of the interface, one of 'en' (English), 'fr' (French), 'it' (Italian), 'pt' (Portuguese).}
  \item{set.theme}{character. Name of the shinytheme to use.}
  \item{square.size}{integer. Size (width and height) in centimeter of the squares in the grid system. Default value is 100 cm.}
  \item{reverse.axis.values}{character. Name of the axis or axes to be reversed (any combination of 'x', 'y', 'z').}
  \item{reverse.square.names}{character. Name of the axis or axes for which to reverse the order of the square labels (any combination of 'x', 'y', 'z').}
  \item{add.x.square.labels}{character. Additional square labels for the 'x' axis.}
  \item{add.y.square.labels}{character. Additional square labels for the 'y' axis.}
  \item{class.variable}{character. At the launch of the app, name of the variable to preselect.}
  \item{class.values}{character. At the launch of the app, names of the values to preselect.}
  \item{default.group}{character. At the launch of the app, preselection of the variable used to group data (one of 'by.layer' or 'by.variable').}
  \item{location.mode}{character. At the launch of the app, preselection of the location methods (any combination of 'exact', 'fuzzy', 'show.uncertainty').}
  \item{map.z.val}{double. Minimal and maximal Z depth coordinates values to display in the map plot, e.g. c(0, 30).}
  \item{map.density}{character. At the launch of the app, whether to compute and show density contours in the map plot (one of 'no', 'overall', 'by.variable').}
  \item{map.refits}{logical. Whether to show refits in the map plot.}
  \item{plot3d.ratio}{double. At the launch of the app, ratio of the vertical axis in the 3D plot.}
  \item{plot3d.hulls}{logical. At the launch of the app, whether to compute and show convex hulls in the 3D plot.}
  \item{plot3d.surfaces}{logical. At the launch of the app, whether to compute and show regression in the 3D plot.}
  \item{plot3d.refits}{logical. At the launch of the app, whether to show refits on the 3D section plot.}
  \item{sectionX.x.val}{double. At the launch of the app, minimal and maximal X coordinates values to display in the X section plot, e.g. c(10, 20).}
  \item{sectionX.y.val}{double. At the launch of the app, minimal and maximal Y coordinates values to display in the X section plot, e.g. c(10, 20).}
  \item{sectionX.refits}{logical. At the launch of the app, whether to show refits in the X section plot.}
  \item{sectionY.x.val}{double. At the launch of the app, minimal and maximal X coordinates values to display in the Y section plot, e.g. c(10, 20).}
  \item{sectionY.y.val}{double. At the launch of the app, minimal and maximal Y coordinates values to display in the Y section plot, e.g. c(10, 20).}
  \item{sectionY.refits}{logical. At the launch of the app, whether to show refits in the Y section plot.}
  \item{camera.center}{double. In 3D plot, x,y,z coordinates of the point to which the camera is oriented, to pass to the `plotly::layout()` function. Default value: c(x=0, y=0, z=0).}
  \item{camera.eye}{double. In 3D plot, x,y,z coordinates of the camera's view point, to pass to the `plotly::layout()` function. Default value: c(x=1.25, y=1.25, z=1.25).}
  \item{run.plots}{logical. Whether to immediately compute and show plots (without requiring the user to click on the buttons in the interface).}
  \item{html.export}{logical. Whether or not to allow figures to be exported as HTML widgets.}
  \item{table.export}{logical. Allow or disallow data transfer to third-party applications.}
}
\details{

This function launches the `archeoViz` application.
It can be used without parameter, allowing the user to input data through the "Input data" tab.
Alternatively, the `objects.df` parameter, and the optional `refits.df` and `timeline.df` parameters, can be used to input data.frames about the archaeological objects, the refitting relationships between these objects, and the chronology of the excavation, respectively. 

The aspect of the application can be modified using the `title`, `home.text`, and `set.theme` parameters.
Possible values for the `set.theme` parameter includes the allowed values for the `shinytheme()` function (i.e., "cerulean", "cosmo", "cyborg", "darkly", "flatly", "journal", "lumen", "paper", "readable", "sandstone", "simplex", "slate", "spacelab", "superhero", "united", "yeti").

Note that the `SEAHORS` package includes interactive features to format a dataset in `archeoViz` format, export it or send it to an online `archeoViz` instance.

}
\value{
	Launch the `archeoViz` Shiny application.
}
\author{Sebastien Plutniak <sebastien.plutniak at posteo.net>}

\seealso{
  \code{shiny}
  \code{\link[shinythemes]{shinytheme}}
  \code{plotly}
  \code{\link[plotly]{layout}}
  \code{ggplot2}
  \code{\link[mgcv]{gam}}
  \code{\link[cxhull]{cxhull}}
  \code{\link[cxhull]{hullMesh}}
  \code{SEAHORS}
}

\examples{
	\dontrun{
	# running the app with no particular data and settings:
	archeoViz()
	
	# running the app with a particular data set:
	objects <- demo_objects_data(1000)
	refits <- demo_refits_data(1000)
	archeoViz(objects.df=objects, refits.df=refits, title="My data set")
	}
}
