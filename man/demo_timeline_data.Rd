\name{demo_timeline_data}
\alias{demo_timeline_data}

\title{Generates a "timeline" data set populated with random values.}

\description{A convenient function to generate a data set to be used for the \code{timeline.df} parameter of the \code{\link[archeoViz]{archeoViz}} function.}

\usage{
demo_timeline_data()
}

\details{
Note that there is no correspondance between the data generated with \code{demo_timeline_data} and the data generated with \code{demo_objects_data} and \code{demo_refits_data}.

}
\value{
A data frame with 3 columns containing random data ("year", "square_x", "square_y").
}

\author{Sebastien Plutniak <sebastien.plutniak at posteo.net>}


\examples{
	\dontrun{demo_timeline_data()}
}
