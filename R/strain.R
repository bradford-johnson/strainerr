#' Title
#'
#' @param x A data frame
#' @param column_q The column name in "quotes"
#' @param column The column name
#'
#' @return
#' @export
#'
#' @examples
strain <- function(x,column_q,column) {

  Q <- quantile(x[[column_q]], probs = c(.25,.75), na.rm = FALSE)
  iqr <- IQR(x[[column_q]])

  up <- Q[2]+1.5*iqr
  low <- Q[1]-1.5*iqr

  strained_df <- x %>%
    filter(column > low & column < up)

  return(strained_df)
}