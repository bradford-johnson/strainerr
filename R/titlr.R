#' Titlr
#'
#' @param p Plot name
#' @param title "Title text" in quotes
#' @param x.axis "X axis text" in quotes
#' @param y.axis "Y axis text" in quotes
#'
#' @import tidyverse
#' @return
#' @export
#'
#' @examples titlr(plot,"MPG and Weight", "MPG", "Weight")
titlr <- function(p, title, x.axis, y.axis) {

  p + tidyverse::labs(title = title, x = x.axis, y = y.axis)

}

