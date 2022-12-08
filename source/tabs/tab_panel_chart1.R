# tab_panel_chart1

library(shiny)
library(tidyverse)
library(plotly)
# loading data set
US_AQI <- list.files(path = "../data/aqi_data",
                     pattern = "*.csv", full.names = TRUE) %>%
  lapply(read_csv) %>%
  bind_rows 

states <- unique(US_AQI$state_name)
states <- append(states, "United States")
states <- sort(states)

tab_panel_chart1 <-tabPanel(
    "U.S. and its States' Mean AQI per Year",
    sidebarLayout(
      sidebarPanel(
        selectInput(
          inputId = "state", label = h4("State"), choices = states, selected = "United States"
        ),
        h4("Average Air Quality Index each Year"),
        p("We chose to analyze this relationship because we wanted to observe
          how the air quality in the United States changes each year for each
          state and for the country. The x-axis of this interactive plot
          is the years and the y-axis is the AQI, where lower numbers correspond
          with better air quality (and therefore higher numbers are worse).
          Users are able to select to view a specific state, or to view
          information about the entire United States.", br(), br(),
          "From the United States'
          chart, we see that there is a ever so slightly increase in the AQI.
          When viewing other states, such as Hawaii for example, there is a very
          apparent increase in the AQI, meaning that Hawaii's air quality has
          worsen over the years. On the other hand, if we look at Oregon for
          example, the AQI has decreased, meaning the air quality has
          gotten better.")
      ),
      mainPanel(
        br(), 
        br(),
        plotlyOutput(outputId = "chart1")
      )
    )
)

