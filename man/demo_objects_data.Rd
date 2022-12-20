\name{demo_objects_data}
\alias{demo_objects_data}

\title{Generates an "objects" data set populated with random values.}

\description{A convenient function to generate a data set to be used for the \code{objects.df} parameter of the \code{\link[archeoViz]{archeoViz}} function.}

\usage{
demo_objects_data(n.objects)
}
\arguments{
  \item{n.objects}{numerical, number of objects to include in the data set.}
}
 
\value{
A data.frame with 12 columns ("id",  "square_x", "square_y", "xmin", "xmax", "ymin", "ymax",  "zmin", "zmax", "layer", "object_type", "object_class_size").
}

\author{Sebastien Plutniak <sebastien.plutniak at posteo.net>}

 

\examples{
	\dontrun{demo_objects_data(n.objects.df=100)}
}
