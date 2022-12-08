# tab_panel_chart2

library(shiny)
library(tidyverse)

# data for chart 2
wildfires <- read.csv("https://raw.githubusercontent.com/info201b-au2022/project-emmaodwyer/main/data/FW_Veg_Rem_Combined.csv")
causes <- table(wildfires$stat_cause_descr, year = wildfires$disc_pre_year)
causes_df <- as.data.frame(causes)
causes_df <- causes_df %>%
  select(year, "cause" = Var1, "num_of_causes" = Freq)

tab_panel_chart2 <- tabPanel(
  "Pie Chart of the Causes of the Wildfires in the United States",
  sidebarLayout(
    sidebarPanel(
      selectInput(
        inputId = "selectedyear", 
        label = "Years", 
        choices = causes_df$year, 
        selected = "2021"
      ),
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
