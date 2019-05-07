
#' @name create.dir
#' @title Creates a file directory for a new refuge I&M project
#'
#' @description A function to create a new file directory structure. The directory structure is based off the Alaska I&M biometric project directory template.
#'
#' @param dir Location to create new project folder.
#' @param proj The name of the project, to be used as the name of the root folder.
#'
#' @examples create.dir(getwd(), "bear_survey")

create.dir <- function(dir, proj) {

  # root folder
  dir <- dir
  setwd(dir)

  dir.create(proj)

  dir.proj <- paste0(dir,"/", proj)
  setwd(dir.proj)

  f <- c("admin", "code", "data", "incoming", "output", "products",
         "protocols", "resources")
  lapply(f, dir.create)

  # /admin
  setwd(paste0(dir.proj,"/admin"))
  f <- c("contracts", "meetings", "proposals", "purchasing", "training", "travel")
  lapply(f, dir.create)

  # /code
  setwd(paste0(dir.proj,"/code"))
  f <- c("functions")
  lapply(f, dir.create)

  # /data
  setwd(paste0(dir.proj,"/data"))
  f <- c("derived", "raw")
  lapply(f, dir.create)

  # /output
  setwd(paste0(dir.proj,"/output"))
  f <- c("figures", "raw_analysis", "tables")
  lapply(f, dir.create)

  # /products
  setwd(paste0(dir.proj,"/products"))
  f <- c("conceptual_model", "posters", "presentations", "publications",
         "reports")
  lapply(f, dir.create)

  # /protocols
  setwd(paste0(dir.proj,"/protocols"))
  f <- c("draft_elements")
  lapply(f, dir.create)

  # /resources
  setwd(paste0(dir.proj,"/resources"))
  f <- c("data", "geodata", "images", "publications", "reports")
  lapply(f, dir.create)

  setwd(dir)

}



