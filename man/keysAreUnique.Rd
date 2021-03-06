% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/joinController.R
\name{keysAreUnique}
\alias{keysAreUnique}
\title{Check uniqueness of rows with respect to keys.}
\usage{
keysAreUnique(tDesc)
}
\arguments{
\item{tDesc}{description of tables, from \code{\link{tableDescription}} (and likely altered by user).}
}
\value{
logical TRUE if keys are unique
}
\description{
Can be an expensive operation.
}
\examples{

d <- data.frame(x=c(1,1,2,2,3,3), y=c(1,2,1,2,1,2))
tDesc1 <- tableDescription('d1', d)
tDesc2 <- tableDescription('d2', d)
tDesc <- rbind(tDesc1, tDesc2)
tDesc$keys[[2]] <- c(x='x')
keysAreUnique(tDesc)

}
\seealso{
\code{\link{tableDescription}}
}
