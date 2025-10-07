test_that(" read_and_summarize_gpx", {
  gpx_path <- app_sys(
    "track.gpx"
  )
  gpx <- read_and_summarize_gpx(gpx_path)
  expect_true(
    all(
      c(
        "dist",
        "cumdist",
        "ele"
      ) %in%
        colnames(gpx)
    )
  )
})
