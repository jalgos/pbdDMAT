% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/ddmatrix_head.r
\name{headsortails}
\alias{headsortails}
\alias{head.ddmatrix}
\alias{tail.ddmatrix}
\title{Head and Tail of a Distributed Matrix}
\usage{
\method{head}{ddmatrix}(x, n = 6L, ...)

\method{tail}{ddmatrix}(x, n = 6L, ...)
}
\arguments{
\item{x}{numeric distributed matrix.}

\item{n}{a single integer. If positive, size for the resulting object:
number of elements for a vector (including lists), rows for a matrix or data
frame or lines for a function. If negative, all but the \code{n} last/first
number of elements of \code{x}.}

\item{...}{additional arguments.}
}
\value{
Returns a distributed matrix.
}
\description{
The functions rely on reblocking across different BLACS contexts.  If
\code{i} is not empty, then the input distributed matrix will be
redistributed along context 1, where extracting/deleting rows does not
destroy block-cyclicality. Likewise, if \code{j} is not empty, then the
input distributed matrix will be redistributed along context 2. When
extraction is complete, the matrix will be redistributed across its input
context.
}
\examples{
\dontrun{
# Save code in a file "demo.r" and run with 2 processors by
# > mpiexec -np 2 Rscript demo.r

library(pbdDMAT, quiet = TRUE)
init.grid()

x <- ddmatrix(1:9, 3, bldim=2)

y <- head(y, 2)
print(y)

finalize()
}

}
\keyword{Extraction}
\keyword{Methods}
