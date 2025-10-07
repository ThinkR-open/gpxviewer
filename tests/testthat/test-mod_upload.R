testServer(
  mod_upload_server,
  # Add here your module params
  args = list(
    r = reactiveValues()
  ),
  {
    session$setInputs(use_example = FALSE)
    session$elapse(1000)
    expect_null(r$gpx)
    expect_null(r$plot)
    session$setInputs(use_example = TRUE)
    session$elapse(1000)
    expect_equal(
      r$gpx,
      read_and_summarize_gpx(app_sys("track.gpx"))
    )
  }
)
