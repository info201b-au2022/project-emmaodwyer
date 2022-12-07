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


# Code for chart 3 --------------------------------------------------------------
#Using US_AQI from above also
wildfire <- read.csv("https://raw.githubusercontent.com/info201b-au2022/project-emmaodwyer/main/data/FW_Veg_Rem_Combined.csv")

# find number of wildfires per year (from random sample of total data)
wildfire <- wildfire %>%
  mutate(Year = format(as.Date(disc_clean_date, format = "%m/%d/%Y"), "%Y")) 

wildfire_by_year <- wildfire %>%
  group_by(state, Year) %>%
  summarise(count_fires = n())

# Binding state abbreviations and full state names together to be able
# to merge the AQI and wildfire data
state_full_names <- c("Alabama","Alaska","Arizona","Arkansas", "California",
                "Colorado","Connecticut","Delaware","District of Columbia",
                "Florida","Georgia","Hawaii","Idaho","Illinois","Indiana",
                "Iowa","Kansas","Kentucky","Louisiana","Maine","Maryland",
                "Massachusetts","Michigan","Minnesota", "Mississippi",
                "Missouri", "Montana","Nebraska","Nevada","New Hampshire",
                "New Jersey","New Mexico","New York","North Carolina",
                "North Dakota","Ohio", "Oklahoma","Oregon","Pennsylvania","Puerto Rico",
                "Rhode Island","South Carolina","South Dakota","Tennessee","Texas", "Utah",
                "Vermont","Virginia","Washington","West Virginia","Wisconsin","Wyoming")

state <- c("AL", "AK", "AZ", "AR", "CA", "CO", "CT", "DE", "DC", "FL", "GA", "HI", 
               "ID", "IL", "IN", "IA", "KS", "KY", "LA", "ME", "MD", 
               "MA", "MI", "MN", "MS", "MO", "MT", "NE", "NV", "NH", "NJ", "NM", 
               "NY", "NC", "ND", "OH", "OK","OR", "PA", "PR", "RI", "SC", "SD", 
               "TN", "TX", "UT", "VT", "VA", "WA", "WV", "WI", "WY")
state_info <- cbind(state_full_names, state)

# adding state name to wildfire data
wildfire_by_year <- merge(wildfire_by_year, state_info, by = "state" )
------------------------------------------------------------------------------------------------








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
  
  
  #code for chart 3 output ------------------------------------
  output$chart3 <- renderPlotly({
    
    # creating the scatterplot
    # condensing all states to get whole country data
    #for AQI
    if (input$state == "United States") {
      filtered_AQI <- US_AQI %>%
        group_by(Year) %>%
        summarize(Mean = mean(Mean, na.rm=TRUE))
    } else {
      # filtering to user selected state
      filtered_AQI <- US_AQI %>%
        filter(state_name == input$state)
    }
    
    
    # condensing all states to get whole country data
    #for number of wildfires
    if (input$state == "United States") {
      filtered_wildfire <- wildfire_by_year %>%
        group_by(Year) %>%
        summarize(count_fires = n())
    } else {
      # filtering to user selected state
      filtered_wildfire <- wildfire_by_year %>%
        filter(state_full_names == input$state)
    }
    
    plot_data <- merge(filtered_AQI, filtered_wildfire, by = "Year")
    
    scatterplot <- plot_data %>%
      ggplot(aes(x = count_fires, y = Mean ))+
      geom_point(size = 3, colour = "steelblue") +
      labs(title = paste0("The Effect of the Number of Wildfires on Mean Air Quality Index in ", input$state), 
           x = "Number of Wildfires in a Year", 
           y = "Mean Air Quality Index")
      
    
  })
  
  
  
  
  
  
  
}


