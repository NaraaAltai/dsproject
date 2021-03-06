% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/import.R
\name{import}
\alias{import}
\title{Import dataset}
\usage{
import(file, ...)
}
\arguments{
\item{file}{Path to data file.}

\item{...}{Additional arguments.}
}
\value{
A dataframe containing the dataset
}
\description{
import() lets the user import a dataset from given file path.
}
\details{
This function lets the user import dataset into R from Stata, SPSS, SAS,
excel, and delimited text files and returns a dataframe.
}
\examples{
\dontrun{import("./filename.csv")}

}
\seealso{
Functions used from other packages: \link[haven]{read_sas}, \link[haven]{read_stata},
\link[haven]{read_spss}, \link[vroom]{vroom},
\link[readxl]{read_excel}
}
