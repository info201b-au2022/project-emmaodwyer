library(tidyverse)
library(ggplot2)
library(plotly)

# loading data 
wildfires <- read.csv("https://raw.githubusercontent.com/info201b-au2022/project-emmaodwyer/main/data/FW_Veg_Rem_Combined.csv")


# finding number of duplicated causes 
causes <- table(wildfires$stat_cause_descr)

# making 'causes' a dataframe 
causes_df <- as.data.frame(causes)
causes_df <- causes_df %>%
  select("cause" = Var1, "num_of_causes" = Freq)

# proportion of causes of wildfires pie chart 
fig <- plot_ly() 
fig <- fig %>%
  add_trace(
    type = "pie",
    name = "",
    values = c(causes_df$num_of_causes),
    labels = c(causes_df$cause),
    text = c("Arson", "Campfire", "Children", "Debris Buring", "Equipment Use", "Fireworks", "Lighting", "Miscellaneous", "Unidentified", "Powerline", "Railroad", "Smoking", "Structure"),
    hovertemplate = "%{label}: <br>Popularity: %{percent} </br> %{text}")


fig