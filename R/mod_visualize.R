#' visualize UI Function
#'
#' @description A shiny Module.
#'
#' @param id,input,output,session Internal parameters for {shiny}.
#'
#' @noRd
#'
#' @importFrom shiny NS tagList
mod_visualize_ui <- function(id) {
  ns <- NS(id)
  tagList(
    layout_columns(
      col_widths = c(10, 2),
      plotOutput(
        ns("plot")
      ),
      uiOutput(ns("info"))
    )
  )
}

#' visualize Server Functions
#'
#' @noRd
mod_visualize_server <- function(id, r) {
  moduleServer(id, function(input, output, session) {
    ns <- session$ns
    output$plot <- renderPlot({
      validate(
        need(
          r$plot,
          "No GPX data available. Please upload a GPX file or use the example data."
        )
      )
      r$plot
    })
    output$info <- renderUI({
      validate(
        need(
          r$gpx,
          ""
        )
      )
      tagList(
        h3("GPX file summary"),
        p(
          paste0(
            "Total distance: ",
            round(max(r$gpx$cumdist), 2),
            " km"
          )
        ),
        p(
          paste0(
            "Altitude min: ",
            round(min(r$gpx$ele, na.rm = TRUE), 0),
            " m"
          )
        ),
        p(
          paste0(
            "Altitude max: ",
            round(max(r$gpx$ele, na.rm = TRUE), 0),
            " m"
          )
        )
      )
    })
  })
}

## To be copied in the UI
# mod_visualize_ui("visualize_1")

## To be copied in the server
# mod_visualize_server("visualize_1")
