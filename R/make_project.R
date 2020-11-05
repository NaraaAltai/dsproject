#' Create a new project
#'
#' make_project() creates a new R project with subdirectories
#'
#' @details
#' This function lets the user create a directory to serve as a project,
#' subdirectories, which the user can rename or specify their own,
#' create a README.md file (containing Project Title, Author, Date, etc.).
#' The function creates a true RStudio project and opens it.
#'
#'
#' @param project project path. If it already exists, the working directory is set to it.
#'     If it does not exists, it is created.
#' @param path the path to the directory in which the project will be created in.
#' @param folders subdirectories under the project. Default is set to
#'    figures, documentation, data, reports, and R.
#' @param readme a README.md file containing information about the project.
#' @param git adds a git. Default is FALSE.
#'
#' @export
#' @return the project directory.
#' @examples
#' \dontrun{make_project("MyProject")}
#' @importFrom usethis create_project use_git proj_activate
make_project <- function (project,
                          path = getwd(),
                          folders = c("figures", "documentation",
                                      "data", "reports", "R"),
                          readme = "README.md",
                          git = FALSE) {


  # change to path location
  if(!dir.exists(path)) stop("No such path")
  setwd(path)

  # project directory
  if(!missing(project)) {
    dir.create(project)
    setwd(project)
  }

  # create subdirectories
  for (i in folders){
    dir.create(i)
  }


  # create README.md
  today <- Sys.Date()
  user  <- Sys.info()[["user"]]
  project <- basename(getwd())
  cat("# Project: ", project, "\n\n",
      "## Author: ", user, "\n\n",
      "## Date: ",   format(today, format="%B %d %Y"), "\n\n",
      "## Purpose: \n\n",
      "## Data Sources: \n\n",
      "## Stakeholders: \n\n",
      file = readme,
      sep = "")

  # create RStudio project
  usethis::create_project(".", open=FALSE)

  # add git
  if (git){
    usethis::use_git()
  }


  # activate project
  usethis::proj_activate(".")

}
