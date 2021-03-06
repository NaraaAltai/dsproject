% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/make_project.R
\name{make_project}
\alias{make_project}
\title{Create a new project}
\usage{
make_project(
  project,
  path = getwd(),
  folders = c("figures", "documentation", "data", "reports", "R"),
  readme = "README.md",
  git = FALSE
)
}
\arguments{
\item{project}{project path. If it already exists, the working directory is set to it.
If it does not exists, it is created.}

\item{path}{the path to the directory in which the project will be created in.}

\item{folders}{subdirectories under the project. Default is set to
figures, documentation, data, reports, and R.}

\item{readme}{a README.md file containing information about the project.}

\item{git}{adds a git. Default is FALSE.}
}
\value{
the project directory.
}
\description{
make_project() creates a new R project with subdirectories
}
\details{
This function lets the user create a directory to serve as a project,
subdirectories, which the user can rename or specify their own,
create a README.md file (containing Project Title, Author, Date, etc.).
The function creates a true RStudio project and opens it.
}
\examples{
\dontrun{make_project("MyProject")}
}
