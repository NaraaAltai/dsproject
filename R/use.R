#' Installing/Attaching an add-on package
#'
#' use() installs and attaches add-on packages
#'
#' @details use() checks and updates the list of currently
#' attached packages and do not reload a namespace which
#' is already loaded. If not already installed,
#' the function asks the user whether they want to install the package.
#'
#'
#' @param pkg the name of a package given as a name or character string.
#'
#' @export
#' @return returns (invisibly) a logical indicating whether
#' the required package is available
#'
#' @examples
#' \dontrun{use(vroom)}
#' \dontrun{use("ggplot2")}
use <- function(pkg) {
  pkg <- as.character(substitute(pkg))
  if (!suppressWarnings(require(pkg, character.only = TRUE))) {
    msg <- paste("Install package", pkg, "(y/n)? ")
    answer <- readline(msg)
    answer <- substr(tolower(trimws(answer)), 1, 1)
    if (answer == "y") {
      install.packages(pkg)
      require(pkg, character.only = TRUE)
    } else {
      msg <- paste("Package", pkg, "not loaded.")
      message(msg)
    }
  }
}
