# tab_panel_summary

library(shiny)

tab_panel_summary <- tabPanel(
    "Summary",
    h3("Key Points and Takeaways"),
    
    br(),
    
    # summary for chart 1 
    
    h4("Air Quality in the United States"),
    p("From analyzing our mean AQI chart, we've concluded that the air quality
      in the United States overall hasn't changed much. While some states
      such as Hawaii and Washington saw some considerable changes, most states
      and the United States overall, maintained a pretty consistent AQI with
      only slight fluctuations that relatively balance themselves out after a
      few years. Changes in AQI overall were not that significant, differing
      by only a few digits."),
    img(src='unitedStatesChart1.png'),
    p("As seen, the United States' mean AQI over the years barely changed."),
    img(src='hawaiiChart1.png'),
    p("Here, we see that Hawaii's air quality had more apparent changes;
      unfortunately the air quality there has worsened."),
    img(src='massachusettsChart1.png'),
    p("Massachusetts's mean AQI has gotten a bit better, but the changes are not as
      drastic as Hawaii's."),
    
    br(),
    
    # summary for Chart 3 
    
    h4("Number of Wildfires and Air Quality"), 
    p("As seen by selecting different states as input for the scatterplot, the 
      relationship between mean AQI and the number of wildfires in a year has no 
      consistent pattern across states."), 
    img(src = 'Chart3.Arkansas.png'), 
    p("The scatterplot above shows that there is a strong positive relationship
      between mean AQI and the number of wildfires in a year in the state of Arkansas.
      In comparison, the plot below shows that there is no evidence of a trend 
      between these two variables in Illinois."), 
    img(src = 'Chart3.Illinois.png')
)
