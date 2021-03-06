% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/skeleton_weight.R
\name{skeleton_weight}
\alias{skeleton_weight}
\title{Compute the skeleton weight with the buoyant weight}
\usage{
skeleton_weight(buoyant_weight, S, T, P = 0, rho_aragonite = 2930)
}
\arguments{
\item{buoyant_weight}{buoyant weight in gramme}

\item{S}{salinity in PSU}

\item{T}{temperature in  degree Celsius}

\item{P}{Hydrostatic pressure in bar (surface = 0)}

\item{rho_aragonite}{density of the  aragonite}
}
\value{
skeleton weight
}
\description{
The buoyant weight is a simply tools. This method reduces the stress during the manipulation of the coral's nubbins. The buoyant weight is used to calculate the skeleton weight. The evolution of skeleton weight can bu used to monitor the growth of the coral's nubbins.
}
\examples{

skeleton_weight(buoyant_weight = 25, S = 35, T = 25, P = 0, rho_aragonite = 2930)

}
