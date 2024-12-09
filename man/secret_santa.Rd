% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/secret_santa.R
\name{secret_santa}
\alias{secret_santa}
\title{Secret Santa}
\usage{
secret_santa(names, seed = 2512)
}
\arguments{
\item{names}{Vector of names for the participants. You should have 4 or more player names to
create a Secret Santa allocation that can remain secret.}

\item{seed}{Random seed. Default 2512.}
}
\value{
Data frame of names providing the gift giver and their gift recipient's name.
}
\description{
Create Secret Santa gift giving allocations.
}
\examples{
secret_santa(c("Dasher", "Dancer", "Prancer", "Vixen"))
}
