#' visualize_gpx
#'
#' @description A fct function
#'
#' @return The return value, if any, from executing the function.
#'
#' @noRd
#' @import ggplot2
visualize_gpx <- function(
  gpx,
  options = list()
) {
  ggplot(gpx) +
    geom_path(
      aes(
        x = cumdist,
        y = ele
      )
    ) +
    labs(
      title = options$plot_title %||% "Elevation profile",
      x = options$x_title %||% "Distance (km)",
      y = options$y_title %||% "Elevation (m)"
    ) +
    theme_minimal()
}
