\name{demo_refits_data}
\alias{demo_refits_data}

\title{Generates a "refits" data set populated with random values.}

\description{A convenient function to generate a data set to be used for the \code{refits.df} parameter of the \code{\link[archeoViz]{archeoViz}} function.}

\usage{
demo_refits_data(n.objects)
}
\arguments{
  \item{n.objects}{numerical, number of objects between which refitting relationships must be created.}
  
}
 
\value{
A matrix with 2 columns containing random pairs of numerica values (corresponding to the unique identifiers of the objects generated with the \code{\link[archeoViz]{demo_objects_data}} function).
}

\author{Sebastien Plutniak <sebastien.plutniak at posteo.net>}


\examples{
	\dontrun{demo_refits_data(n.objects.df=100)}
}
