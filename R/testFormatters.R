#' @title Proper case
#' @description Converts 1st character of string to upper case and all other characters to lower case. Refer to https://stackoverflow.com/questions/24956546/capitalizing-letters-r-equivalent-of-excel-proper-function
#' @param x the string to be formatted
#' @return the string in proper case
#' @examples
#' to_proper_case(x = "An Example String")
#' @export
# initial cap
#
to_proper_case <- function(x){
  paste0(toupper(substr(x, 1, 1)), tolower(substring(x, 2)))
}
