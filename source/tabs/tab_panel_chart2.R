# tab_panel_chart2

library(shiny)

# finding number of duplicated causes 
causes <- table(wildfires$stat_cause_descr)

# making 'causes' a dataframe 
causes_df <- as.data.frame(causes)
causes_df <- causes_df %>%
  select("cause" = Var1, "num_of_causes" = Freq)

chart2 <- chart2 <- plot_ly()
  chart2 <- chart2 %>%
  add_trace(
    type = "pie",
    name = "",
    values = c(causes_df$num_of_causes),
    labels = c(causes_df$cause),
    text = c("Arson", "Campfire", "Children", "Debris Buring", "Equipment Use", "Fireworks", "Lighting", "Miscellaneous", "Unidentified", "Powerline", "Railroad", "Smoking", "Structure"),
    hovertemplate = "%{label}: <br>Popularity: %{percent} </br> %{text}")

tab_panel_chart2 <-tabPanel(
    "Chart 2",
    p("This is chart 2."),
    mainPanel(
      plotlyOutput(outputId = "chart2")
    )
)
