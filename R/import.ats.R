#' @name import.ats
#' @title  Import and format ATS Globalstar GPS collar data
#'
#' @description \code{import.ats()} imports ATS Globalstar data (txt) and reformats it for visualization and analyses.
#'
#' @param file.in The file directory path to a folder containing Iridium csv file to reformat.
#' @param dir.out The file directory path where to save the formated Rdata file.
#'
#' @return
#'
#' @examples
#' \dontrun{
#' import.ats("./data/raw/atsdata.txt", "./data/derived/atsdata.Rdata")}


import.ats <- function(file.in, dir.out) {

  message("Importing ATS collar data...")

  df <- read.csv(file.in, header = TRUE, sep = ",")

  colnames(df) <- c("SerialNum", "Year", "Day", "Hour", "Lat", "Long",
                       "Hdop", "NumSats", "FixTime", "Fix2D3D")
  df$Year <- factor(paste(20, df$Year, sep =""))  # Convert Year to a factor
  df$SerialNum <- factor(df$SerialNum)  # Convert SerialNum to a factor
  df$Fix2D3D <- factor(df$Fix2D3D)  # Convert 2D3D to a factor
  df$Date <- as.factor(format(strptime(df$Day, format = "%j"),
                                 format = "%m/%d"))
  df$Date <- as.factor(paste(df$Date, df$Year, sep = "/"))
  df$Date <- strptime(paste(df$Date, df$Hour, sep = " "), "%m/%d/%Y %H")
  df$Date <- as.POSIXct(df$Date)
  df$Date <- lubridate::round_date(df$Date, unit="hour")

  df <- subset(df, Date >= "2015-08-01")  # subset dates after collaring
  df <- unique(df)  # removes any duplicate values

  # Clean up:
  df$Year <- NULL
  df$Hour <- NULL
  df$Day <- NULL

  # Add a variable for the type of collar (Telonics/ATS)
  df$Collar <- "ATS"

  ## 4. Save it
  message(paste("Saving to", dir.out))
  save(df, file=dir.out)
}

