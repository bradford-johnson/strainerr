#' Title
#'
#' @param x A data frame
#' @param column_q The column name in "quotes"
#' @param column_x The column name
#' @import tidyverse
#' @return
#' @export
#'
#' @examples strain(data_df, "ages", ages)
strain <- function(x,column_q,column_x) {
  library(tidyverse)
  Q <- quantile(x[[column_q]], probs = c(.25,.75), na.rm = FALSE)
  iqr <- IQR(x[[column_q]])

  up <- Q[2]+1.5*iqr
  low <- Q[1]-1.5*iqr

  x <- x %>%
    dplyr::filter(column_x > low & column_x < up)

  return(x)
}
