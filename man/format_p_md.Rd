% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/numberFormatters.R
\name{format_p_md}
\alias{format_p_md}
\title{format_p_md}
\usage{
format_p_md(p, sci = TRUE, digits = 3, sci_thres = 0.001, format = "html")
}
\arguments{
\item{p}{numeric atom}

\item{sci}{use scientific x10 format}

\item{digits}{number of decimal places to display}

\item{sci_thres}{threshold below which to apply scientific format [0,1]}

\item{format}{language used to do formatting ("html" or "latex")}
}
\value{
character atom
}
\description{
format_p_md
}
\details{
if format = "latex', use knitr::kable( format = 'latex', escape = FALSE)
}
\examples{
format_p_md(p= 0.1234, sci = TRUE, digits = 3, sci_thres = 1e-3, format = 'html')
}
