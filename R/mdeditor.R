
#' @name mdeditor
#' @title Opens mdEditor to create and edit metadata
#'
#' @description A function to open mdEditor in a web browser from which to create or edit metadata.
#'
#' @examples
#'  \dontrun{
#'  mdeditor()}


mdeditor <- function(){
  utils::browseURL(url="https://go.mdeditor.org/#/dashboard",
            browser=NULL)
  message("Opening mdEditor...")
}
