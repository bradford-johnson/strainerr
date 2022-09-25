#' Titlr
#'
#' @param p Plot name
#' @param title "Title text" in quotes
#' @param x.axis "X axis text" in quotes
#' @param y.axis "Y axis text" in quotes
#'
#' @return
#' @export
#'
#' @examples titlr(plot,"MPG and Weight", "MPG", "Weight")
titlr <- function(p, title, x.axis, y.axis) {

  p + labs(title = title, x = x.axis, y = y.axis)

}

