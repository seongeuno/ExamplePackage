#' Diamond Plot
#'
#'This function produces a ggpot plot of \cod{vary} versus \code{varx}
#'with diamond markers.
#'
#' @param df a dataframe
#' @param varx a sting name for variable x in the dataframe df
#' @param vary a string name for variable y ni the dataframe df
#'
#' @return
#' @export
#'
#' @importFrom ggplot2 ggplot
#' @importFrom ggplot2 geom_points
#'
#' @examples
#' df.test <- data.frame(x = rnorm(10),
#'                       y = rnomr(10))
#'
#'diamond_plot(df.test, 'x', 'y')
#'
#'
diamond_plot <- function(df, varx, vary) {
  ggplot(df, aes(x = get(varx), y = get(vary))) +
    geom_point(shape = 23,
               fill = "blue",
               color = "darkred",
               size = 3)
}

