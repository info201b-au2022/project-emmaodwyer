# tab_panel_chart2

library(shiny)
library(tidyverse)

tab_panel_chart2 <-tabPanel(
    "Pie Chart of the Causes of the Wildfires in the United States",
    sidebarLayout(
      sidebarPanel(
        h4("The Proportion of Different Causes of Wildfires in the U.S."),
        p("We included this chart because we were interested in what the main causes for wildfires are. 
          It is important to know what the causes are as it can help us tailor solutions to help prevent 
          wildfires being created from those major causes. From this pie chart, we see that debris burning 
          most wildfires are caused by debris burning, followed closely by arson, lightning, and miscellaneous reasons, 
          where all 3 causes are quite close in number. This knowledge can assist in creating effective legislation to combat wildfires. 
          For example, setting regulations on debris burning, as that is the leading cause of wildfires.")
      ),
      mainPanel(
        plotlyOutput(outputId = "chart2")
    )
    )
)
