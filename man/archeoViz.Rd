\name{archeoViz}
\alias{archeoViz}

\title{archeoViz}
\description{Launch the archeoViz application to visualise, interactive explore, and expose on the web archaeological data from excavation}

\usage{
archeoViz(objects.df=NULL, refits.df, timeline.df=NULL,
          title=NULL, home.text=NULL, lang="en", set.theme="cosmo")
}
\arguments{
  \item{objects.df}{data frame, with data documenting the location and type of archaeological remains.}
  \item{refits.df}{data frame, with two columns containin the ids of refitting objects.}
  \item{timeline.df}{data frame, with data documenting the year of excavation of the site's squares.}
  \item{reverse.axis.values}{character. Whether to reverse the values of one or several axes ('x', 'y', 'z').}
  \item{reverse.square.names}{character. Whether to reverse the square names on the 'x', 'y' axes, or both ('xy').}
  \item{add.x.square.labels}{character. Additional square labels on the x axis.}
  \item{add.y.square.labels}{character. Additional square labels on the y axis.}
  \item{params}{list. List of parameters to use to initialise the application.}
  \item{title}{character. Title to display on the application.}
  \item{home.text}{character. Html content to display on the home page of the application.}
  \item{lang}{character. Inteface language, either "en" (English) or "fr" (French).}
  \item{set.theme}{character. Name of the shinytheme to use.}
}
\details{

This function launches the `archeoViz` application.
It can be used without parameter, allowing the user to input data through the "Input data" tab.
Alternatively, the `objects.df` parameter, and the optional `refits.df` and `timeline.df` parameters, can be used to input data.frames about the archaeological objects, the refitting relationships between these objects, and the chronology of the excavation, respectively. 

The aspect of the application can be modified using the `title`, `home.text`, and `set.theme` parameters.
Possible values for the `set.theme` parameter includes the allowed values for the `shinytheme()` function (i.e., "cerulean", "cosmo", "cyborg", "darkly", "flatly", "journal", "lumen", "paper", "readable", "sandstone", "simplex", "slate", "spacelab", "superhero", "united", "yeti").

}
\value{
	Launch the `archeoViz` Shiny application.
}
\author{Sebastien Plutniak <sebastien.plutniak at posteo.net>}

\seealso{
	\code{shiny}
    \code{\link[shinythemes]{shinytheme}}
	\code{plotly}
	\code{ggplot2}
    \code{\link[mgcv]{gam}}
    \code{\link[cxhull]{cxhull}}
    \code{\link[cxhull]{hullMesh}}
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
