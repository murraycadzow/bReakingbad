#' @title Proper case
#' @description Converts 1st character of string to upper case and all other characters to lower case
#' @param x the string to be formatted
#' @export
# initial cap
# refer to https://stackoverflow.com/questions/24956546/capitalizing-letters-r-equivalent-of-excel-proper-function
to_proper_case <- function(x){
  paste0(toupper(substr(x, 1, 1)), tolower(substring(x, 2)))
}
