testServer(
  mod_visualize_server,
  # Add here your module params
  args = list(
    r = reactiveValues(
      plot = app_sys(
        "track.gpx"
      ) |>
        read_and_summarize_gpx() |>
        visualize_gpx(
          options = list(
            plot_title = "input$plot_title",
            x_title = "input$x_title",
            y_title = "input$y_title"
          )
        )
    )
  ),
  {
    session$elapse(1000)
    expect_snapshot(
      output$plot$src
    )
  }
)

test_that("module ui works", {
  ui <- mod_visualize_ui(id = "test")
  golem::expect_shinytaglist(ui)
  # Check that formals have not been removed
  fmls <- formals(mod_visualize_ui)
  for (i in c("id")) {
    expect_true(i %in% names(fmls))
  }
})
