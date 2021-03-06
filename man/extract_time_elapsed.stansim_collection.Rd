% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/extract_time_elapsed-methods.R
\name{extract_time_elapsed.stansim_collection}
\alias{extract_time_elapsed.stansim_collection}
\title{Extract time_elapsed from a stansim_collection object}
\usage{
\method{extract_time_elapsed}{stansim_collection}(object, sim_names = "all",
  datasets = "all", chains = "all", stages = "all", elapsed = NULL, ...)
}
\arguments{
\item{object}{An object of S3 class stansim_collection.}

\item{sim_names}{Either a character vector containing the names of the
\code{stansim_simulation} objects grouped in the collection, or the string
\code{"all"}. The former will only return values for the corresponding
simulations, the latter applies no filtering on stansim simulations.}

\item{datasets}{Either a character vector containing the names of datasets
(as provided to the original \code{fit_models()} calls) fitted, or the
string \code{"all"}. The former will only return values for the
corresponding datasets, the latter applies no filtering on datasets}

\item{chains}{Either a character vector containing the numbers of the stan model
chains to return, or the string \code{"all"} The former will only return
values for the corresponding chains, the latter applies no filtering on
chains.}

\item{stages}{Either a character vector containing the names of model fitting
stages, \code{c("warmup", "sample", "total")}, or the string \code{"all"}.
The former will only return values for the corresponding stages, the latter
applies no filtering on estimates.}

\item{elapsed}{Either a function taking a single numeric argument that
returns a Boolean value, or \code{NULL}. The former will only return
elapsed times for which the provided function is \code{TRUE}, the latter
applies no filtering on elapsed times}

\item{...}{other arguments not used by this method}
}
\value{
A dataframe containing the specified data.
}
\description{
Applied to an object of type stansim_collection,
  \code{extract_time_elapsed()} will return the time taken to fit the
  models contained within the object a dataframe, subject to the filtering
  specified by the function arguments.
}
\examples{
\dontrun{
# extract full dataset
extract_time_elapsed(simulation)

# extract all rows for dataset "data_file-12.rds"
extract_time_elapsed(simulation, datasets = "data_file-12.rds")

# extract results for chains 1 and 3
extract_time_elapsed(simulation, chains = c(1, 3))

# extract results for only the warmup stage
extract_time_elapsed(simulation, stages = "warmup")

# extract all elapsed times greater than 60 seconds
extract_time_elapsed(simulation,
                     elapsed = function(x) x > 60)
}

}
