#
# This is a Shiny web application. You can run the application by clicking
# the 'Run App' button above.
#
# Find out more about building applications with Shiny here:
#
#    http://shiny.rstudio.com/
#

library(shiny)

source("tabs/tab_panel_intro.R")
source("tabs/tab_panel_chart1.R")
source("tabs/tab_panel_chart2.R")
source("tabs/tab_panel_chart3.R")
source("tabs/tab_panel_summary.R")
source("tabs/tab_panel_report.R")

ui <- navbarPage(
  title = "U.S. Air Quality",
  position = "fixed-top",

  # A simple header
  header = list(
    tags$style(type = "text/css", "body {padding-top: 70px;}"),
    hr(),
    HTML(""),
    hr()
  ),

  # A simple footer
  footer = list(
    tags$style(type = "text/css", "body {padding-top: 70px;}"),
    hr(),
    HTML("U.S. Air Quality | Final Deliverable |Info 201 Autumn 2022 | Thanh Ly, Jennifer Gomez, Cole Meier, Emma O'Dwyer"),
    hr()
  ),

  # The project introduction
  tab_panel_intro,

  # The three charts
  tab_panel_chart1,
  tab_panel_chart2,
  tab_panel_chart3,

  # The project summary
  tab_panel_summary,

  # The project report
  tab_panel_report
)
