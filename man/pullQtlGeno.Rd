% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/pullGeno.R
\name{pullQtlGeno}
\alias{pullQtlGeno}
\title{Pull QTL genotypes}
\usage{
pullQtlGeno(pop, trait = 1, chr = NULL, asRaw = FALSE, simParam = NULL)
}
\arguments{
\item{pop}{an object of \code{\link{Pop-class}}}

\item{trait}{an integer. Indicates which trait's
QTL genotypes to retrieve.}

\item{chr}{a vector of chromosomes to retrieve. If NULL,
all chromosome are retrieved.}

\item{asRaw}{return in raw (byte) format}

\item{simParam}{an object of \code{\link{SimParam}}}
}
\value{
Returns a matrix of QTL genotypes.
}
\description{
Retrieves QTL genotype data
}
\examples{
#Create founder haplotypes
founderPop = quickHaplo(nInd=10, nChr=1, segSites=15)

#Set simulation parameters
SP = SimParam$new(founderPop)
SP$addTraitA(10)
SP$addSnpChip(5)

#Create population
pop = newPop(founderPop, simParam=SP)
pullQtlGeno(pop, simParam=SP)

}
