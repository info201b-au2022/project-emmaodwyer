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

View(states)
tab_panel_chart3 <-tabPanel(
    "The Number of Wildfires in the U.S and the Mean AQI per Year",
    sidebarLayout(
      sidebarPanel(
        selectInput(
          inputId ="state", label = h4("State"), choices = states, selected = "United States"
        ),
        h4("Average Air Quality Index and Number of Wildfires per Year"),
        
        p("This is the description of chart 3.")
     
         ),
        
        mainPanel(
          plotlyOutput(OutputId = "chart3")
      )
    )
    
)
