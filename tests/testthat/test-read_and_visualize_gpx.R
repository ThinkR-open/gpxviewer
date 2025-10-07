test_that("read_and_visualize_gpx works", {
  gpx_path <- app_sys(
    "track.gpx"
  )
  input <- list(
    plot_title = "input$plot_title",
    x_title = "input$x_title",
    y_title = "input$y_title"
  )
  plot <- gpx_path |>
    read_and_summarize_gpx() |>
    visualize_gpx(
      options = list(
        plot_title = input$plot_title,
        x_title = input$x_title,
        y_title = input$y_title
      )
    )
  expect_true(
    inherits(plot, "ggplot")
  )
})
