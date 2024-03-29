% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/clean_.R
\name{clean_cte501}
\alias{clean_cte501}
\alias{clean_mrfss}
\title{Clean RecFIN data}
\usage{
clean_cte501(data)

clean_mrfss(data)
}
\arguments{
\item{data}{A data frame.}
}
\value{
A data frame with standardized columns.
}
\description{
Clean RecFIN data to provide data in a similar format with consistent
column names and values. For example, states are standardized to be
state abbreviations rather than single letters or full names and are
available in the column called \code{state}.
}
\section{Missing years}{

MRFSS data is incomplete and will not contain information for the years
1990 to 1992. Most often, linear interpolation is performed to estimate
catches during these years because it can be assumed that they were not
zero if the surrounding years were also non-zero.

todo: create a function to estimate catches for 1990-1922
}

\section{AGENCY_CODE}{

\itemize{
\item 6: California
\item 41: Oregon
\item 53: Washington
}
}

\section{RECFIN_SUB_REGION_NAME}{

\itemize{
\item Washington: Canada-US border to Washington-Oregon border
\item Oregon: Washington-Oregon border to Oregon-California border
\item Northern California: North of Point Conception and south of Oregon-California border
\item Southern California: South of Point Conception
}
}

\seealso{
See the data object \code{recfin_coldefs} for more complete descriptions of
column names and their contents.
}
\author{
Kelli Faye Johnson
}
