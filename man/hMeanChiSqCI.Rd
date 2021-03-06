% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/hMeanChiSqCI.R
\name{hMeanChiSqCI}
\alias{hMeanChiSqCI}
\title{Calculate confidence intervals based on the harmonic mean chi-squared test}
\usage{
hMeanChiSqCI(
  thetahat,
  se,
  level = 0.95,
  alternative = "none",
  wGamma = rep(1, length(unique(thetahat)) - 1),
  check_inputs = TRUE,
  pValueFUN = hMeanChiSqMu,
  ...
)
}
\arguments{
\item{thetahat}{Numeric vector of parameter estimates.}

\item{se}{Numeric vector of standard errors.}

\item{level}{Numeric vector of length 1 specifying the level of the confidence interval. Defaults to 0.95.}

\item{alternative}{Either \code{"greater"}, \code{"less"}, \code{"two.sided"}, or \code{"none"} (default).
Specifies the alternative to be considered in the computation of the p-value.}

\item{wGamma}{Numeric vector of length \code{unique(thetahat) - 1} specifying weights used to
summarize the gamma values, i.e.,
the local minima of the p-value function between the thetahats. Default is a vector of 1s.}

\item{check_inputs}{Either \code{TRUE} (default) or \code{FALSE}. Indicates whether or not to check the input arguments.
The idea of this argument is that if the function is called a large amount of times in an automated manner as for example
in simulations, performance might be increased by not checking inputs in every single iteration. However, setting the argument
to \code{FALSE} might be dangerous.}

\item{pValueFUN}{A function that calculates the p-value. Must have arguments \code{thetahat} and \code{se} as these are passed by this function.
Must further have an argument \code{mu} that specifies the null-hypothesis.
Defaults to \code{\link[hMean]{hMeanChiSqMu}}.}

\item{...}{Arguments passed to \code{pValueFUN}. Arguments \code{thetahat} and \code{se} are automatically passed to \code{pValueFUN}.}
}
\value{
Returns a list containing confidence interval(s)
obtained by inverting the harmonic mean chi-squared test based on study-specific
estimates and standard errors. The list contains:
\item{CI}{Confidence interval(s).}\cr\cr
If the \code{alternative} is "none", the list also contains:
\item{gamma}{Local minima of the p-value function between the thetahats.}
\item{gammaMean}{Mean of all gammas weighted by \code{wGamma}.}
\item{gammaHMean}{Harmonic mean of all gammas weighted by \code{wGamma}.}
}
\description{
Calculate confidence intervals based on the harmonic mean chi-squared test
}
