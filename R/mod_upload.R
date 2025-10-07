#' upload UI Function
#'
#' @description A shiny Module.
#'
#' @param id,input,output,session Internal parameters for {shiny}.
#'
#' @noRd
#'
#' @importFrom shiny NS tagList
mod_upload_ui <- function(id) {
  ns <- NS(id)
  sidebar(
    checkboxInput(
      ns("use_example"),
      "Use example data",
      value = TRUE
    ),
    fileInput(
      ns("file"),
      "Upload a GPX file",
      accept = c(".gpx")
    ),
    textInput(
      ns("plot_title"),
      "Title",
      "Elevation profile"
    ),
    textInput(
      ns("x_title"),
      "X-axis title",
      "Distance (km)"
    ),
    textInput(
      ns("y_title"),
      "Y-axis title",
      "Elevation (m)"
    ),
    textInput(
      ns("color_title"),
      "Color title",
      "Elevation (m)"
    ),
    downloadButton(
      ns("download_plot"),
      "Download plot"
    )
  )
}

#' upload Server Functions
#'
#' @noRd
mod_upload_server <- function(id, r) {
  moduleServer(id, function(input, output, session) {
    ns <- session$ns

    observeEvent(
      input$use_example,
      {
        if (input$use_example) {
          r$gpx <- app_sys(
            "track.gpx"
          ) |>
            read_and_summarize_gpx()
        } else {
          r$gpx <- NULL
          r$plot <- NULL
          golem::invoke_js(
            "disableDownloadButton",
            paste0("#", ns("download_plot"))
          )
        }
      }
    )

    observeEvent(
      c(
        r$plot,
        r$gpx
      ),
      {
        if (any(is.null(r$plot), is.null(r$gpx))) {
          golem::invoke_js(
            "disableDownloadButton",
            paste0("#", ns("download_plot"))
          )
        } else {
          golem::invoke_js(
            "enableDownloadButton",
            paste0("#", ns("download_plot"))
          )
        }
      }
    )

    observe({
      r$options$plot_title <- input$plot_title
      r$options$color_option <- input$color_option
    })

    observeEvent(input$file, {
      req(input$file)
      r$gpx <- input$file$datapath |>
        read_and_summarize_gpx()
    })

    observeEvent(
      r$gpx,
      {
        r$plot <- visualize_gpx(
          r$gpx,
          options = list(
            plot_title = input$plot_title,
            x_title = input$x_title,
            y_title = input$y_title
          )
        )
      }
    )
    output$download_plot <- downloadHandler(
      filename = function() {
        paste0("gpx-plot-", Sys.Date(), ".png")
      },
      content = function(file) {
        ggsave(
          file,
          plot = r$plot,
          device = "png",
          bg = "white",
          width = 8,
          height = 6
        )
      }
    )
  })
}

## To be copied in the UI
# mod_upload_ui("upload_1")

## To be copied in the server
# mod_upload_server("upload_1")
