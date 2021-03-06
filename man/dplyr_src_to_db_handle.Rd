% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/serviceName.R
\name{dplyr_src_to_db_handle}
\alias{dplyr_src_to_db_handle}
\title{get the db handle from a dplyr src}
\usage{
dplyr_src_to_db_handle(dplyr_src)
}
\arguments{
\item{dplyr_src}{remote data handle}
}
\value{
database connection
}
\description{
Spark2 handles are DBIConnection
SQLite are not
this distinciton is going away post dplyr 0.5.0
}
\examples{

my_db <- DBI::dbConnect(RSQLite::SQLite(), ":memory:")
# my_db <- sparklyr::spark_connect(master = "local")
d <- replyr_copy_to(my_db, data.frame(x=c(1,2)), 'd',
     overwrite=TRUE, temporary=TRUE)
dplyr_src_to_db_handle(replyr_get_src('d'))

}
