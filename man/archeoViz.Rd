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
	\dontrun{archeoViz()}
}
