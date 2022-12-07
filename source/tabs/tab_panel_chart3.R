# tab_panel_chart3

library(shiny)

# loading data set
US_AQI <- list.files(path = "../data/aqi_data",
                     pattern = "*.csv", full.names = TRUE) %>%
  lapply(read_csv) %>%
  bind_rows 


states <- unique(US_AQI$state_name)
states <- append(states, "United States")
states <- sort(states)


tab_panel_chart3 <-tabPanel(
    "The Number of Wildfires in the U.S and the Mean AQI per Year",
    sidebarLayout(
      sidebarPanel(
        selectInput(
          inputId ="state2", label = h4("State"), choices = states, selected = "United States"
        ),
        h4("Number of Wildfires and Average Air Quality Index per Year"),
        
        p("This chart shows the relationship between the number of wildfires 
          in a year and the mean air quality index (AQI) of that year both on a 
          national and state level. It aims to see how wildfires are affecting
          air quality in the U.S.. The x-axis of this scatterplot shows the number
          of wildfires in a year, based off of a random sampling of 50,000 U.S. wildfires.
          The y-axis is the AQI. Users of the application can select to view this 
          data for specific states or for the whole of the U.S using the widget above.", 
          br(), br(), 
          "Looking at the whole of the U.S, we can see that there is a weak positive relationship 
          between the number of wildfires per year and the mean AQI for that year,
          which is that more wildfires results in a higher AQI (worse air quality).")
     
         ),
        
        mainPanel(
          plotlyOutput(outputId = "chart3")
      )
    )
    
)
