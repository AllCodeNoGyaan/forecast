\name{autoplot.ts}
\alias{autoplot.ts}
\alias{autoplot.mts}
\alias{autolayer.ts}
\alias{autolayer.mts}
\alias{fortify.ts}
\title{Automatically create a ggplot for time series objects}
\usage{\method{autoplot}{ts}(object, series = NULL, ...)
\method{autoplot}{mts}(object, colour=TRUE, facets=FALSE, ...)
\method{autolayer}{ts}(object, colour=TRUE, series=NULL, ...)
\method{autolayer}{mts}(object, colour=TRUE, series=NULL, ...)
\method{fortify}{ts}(model,data, ...)
}

\arguments{
\item{object}{Object of class \dQuote{ts} or \dQuote{mts}.}
\item{series}{Identifies the timeseries with a colour, which integrates well with the functionality of \link{geom_forecast}.}
\item{facets}{If TRUE, multiple time series will be faceted (and unless specified, colour is set to FALSE). If FALSE, each series will be assigned a colour.}
\item{colour}{If TRUE, the time series will be assigned a colour aesthetic}
\item{model}{Object of class \dQuote{ts} to be converted to \dQuote{data.frame}.}
\item{data}{Not used (required for \link{fortify} method)}
\item{...}{Other plotting parameters to affect the plot.}
}

\description{\code{autoplot} takes an object of type \code{ts} or \code{mts} and creates a ggplot object suitable for usage with \code{stat_forecast}.

\code{fortify.ts} takes a \code{ts} object and converts it into a data frame (for usage with ggplot2).}

\value{None. Function produces a ggplot graph.}

\seealso{\code{\link[stats]{plot.ts}}, \code{\link[ggplot2]{fortify}}}

\author{Mitchell O'Hara-Wild}
\examples{
library(ggplot2)
autoplot(USAccDeaths)

lungDeaths <- cbind(mdeaths, fdeaths)
autoplot(lungDeaths)
autoplot(lungDeaths, facets=TRUE)
}
