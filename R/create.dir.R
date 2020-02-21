
#' Creates a File Directory for a New Refuge I&M Project
#'
#' @description A function to create a new file directory structure. The directory structure is based off the Alaska I&M biometric project directory template.
#'
#' @param dir.name Location to create new root project folder. Default is the current working directory.
#' @param proj.name The name of the project to be used as the name of the root project folder.
#' @param more.folders List or vector containing character strings specifying full directory paths for additional
#' folders to be included in project directory.
#'
#' @export
#'
#' @examples 
#' \dontrun{
#' create.dir(proj.name = "bear_survey", dir.name = "./put_it_here", more.folders = NULL)}

create.dir <- function(proj.name = NULL, dir.name = NULL, more.folders = NULL) {

    ## project name
    if(is.null(proj.name))proj.name = "myproject"

    ## root project folder
    if(is.null(dir.name))dir.name = "."
    root.dir = paste0(dir.name, "/", proj.name)
    dir.create(root.dir)

    ## primary project subfolders
    f <- paste0(root.dir, "/", c("admin", "code", "data", "incoming", "metadata", "output", "products",
                                 "protocols", "resources"))
    lapply(f, dir.create)

    ## /admin
    f <- paste0(root.dir, "/admin/", c("contracts", "meetings", "proposals", "purchasing", "training", "travel"))
    lapply(f, dir.create)

    ## /code
    f <- paste0(root.dir, "/code/", c("functions"))
    lapply(f, dir.create)

    ## /data
    f <- paste0(root.dir, "/data/", c("derived", "raw"))
    lapply(f, dir.create)

    ## /output
    f <- paste0(root.dir, "/output/", c("figures", "raw_analysis", "tables"))
    lapply(f, dir.create)

    ## /products
    f <- paste0(root.dir, "/products/", c("conceptual_model", "posters", "presentations", "publications",
                                          "reports"))
    lapply(f, dir.create)

    ## /protocols
    f <- paste0(root.dir, "/protocols/", c("draft_elements"))
    lapply(f, dir.create)

    ## /resources
    f <- paste0(root.dir, "/resources/", c("data", "geodata", "images", "publications", "reports"))
    lapply(f, dir.create)

    f <- paste0(root.dir, "/resources/", c("data", "geodata", "images", "publications", "reports"))
    lapply(f, dir.create)

    ## user-provided additional folders to be created
    if(!is.null(more.folders)) lapply(more.folders, dir.create)
}
