% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/ddmatrix_scale.r
\docType{methods}
\name{ddmatrix-scale}
\alias{ddmatrix-scale}
\alias{scale}
\alias{scale,ddmatrix-method}
\title{Scale}
\usage{
scale(x, center = TRUE, scale = TRUE)

\S4method{scale}{ddmatrix}(x, center = TRUE, scale = TRUE)
}
\arguments{
\item{x}{numeric distributed matrix.}

\item{center}{logical value, determines whether or not columns are zero
centered}

\item{scale}{logical value, determines whether or not columns are rescaled
to unit variance}
}
\value{
Returns a distributed matrix.
}
\description{
Centers and/or scales the columns of a distributed matrix.
}
\examples{
\dontrun{
# Save code in a file "demo.r" and run with 2 processors by
# > mpiexec -np 2 Rscript demo.r

library(pbdDMAT, quiet = TRUE)
init.grid()

comm.set.seed(diff=T)

x <- ddmatrix("rnorm", 10, 10)
y <- scale(x)

print(y)

finalize()
}

}
\keyword{Methods}
