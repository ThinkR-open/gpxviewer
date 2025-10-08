#' read_and_summarize_gpx
#'
#' @description A fct function
#'
#' @return The return value, if any, from executing the function.
#'
#' @noRd
read_and_summarize_gpx <- function(path) {
  gpx <- sf::read_sf(
    path,
    layer = "track_points"
  ) |>
    dplyr::mutate(
      x = purrr::map_dbl(geometry, 1),
      y = purrr::map_dbl(geometry, 2)
    )
  dist <- sf::st_distance(
    utils::tail(gpx, -1),
    utils::head(gpx, -1),
    by_element = TRUE
  ) |>
    units::set_units("km")
  gpx$dist <- c(0, dist)
  gpx$cumdist <- cumsum(gpx$dist)

  gpx
}
