# tab_panel_report

library(shiny)
library("markdown")

tab_panel_report <-tabPanel(
  "Report",

  fluidRow(
    column(
      6,
      includeMarkdown("tabs/report.md")
    ),
    column(
      3,
      p("")
    ),
    column(
      3,
      p("Code Name - wildfire")
    )
  )


)

