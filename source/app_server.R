#
# This is a Shiny web application. You can run the application by clicking
# the 'Run App' button above.
#
# Find out more about building applications with Shiny here:
#
#    http://shiny.rstudio.com/
#

library(shiny)
library("tidyverse")
library(ggplot2)
library(plotly)

# Code for chart 1 ------------------------------------------
# get data for chart 1
US_AQI <- list.files(path = "../data/aqi_data",
                     pattern = "*.csv", full.names = TRUE) %>%
  lapply(read_csv) %>%
  bind_rows 

# filter 'US_AQI' to the beginning of 1992 
US_AQI <- US_AQI %>%
  filter(Date > "1991-12-31")

# create year column
US_AQI <- US_AQI %>%
  mutate(Year = format(as.Date(Date, format="%Y-%m-%d"),"%Y"))

# getting each year avg for each state
US_AQI <- US_AQI %>%
  group_by(state_name, Year) %>%
  summarize(Mean = mean(AQI, na.rm=TRUE))



server <- function(input, output) {
  # code for chart 1 output -----------------------
  output$chart1 <- renderPlotly({
    
    # creating chart
    # condensing all states to get whole country data
    if (input$state == "United States") {
      filtered <- US_AQI %>%
        group_by(Year) %>%
        summarize(Mean = mean(Mean, na.rm=TRUE))
    } else {
      # filtering to user selected state
      filtered <- US_AQI %>%
        filter(state_name == input$state)
    }
    
    bar_chart <- ggplot(filtered, aes(x = Year, y = Mean)) +
      labs(title = paste0("Mean AQI in ", input$state, " per Year"),
           x = "Year", y = "Mean Air Quality Index") +
      geom_bar(width = 0.8, stat = "identity")
    
    chart <- ggplotly(bar_chart)
    return(chart)
  })
  
    # TBD
}


