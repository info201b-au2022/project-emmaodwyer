# tab_panel_intro

library(shiny)

tab_panel_intro <-tabPanel(
  "Introduction",
  p("With the rise of wildfires in the United States, 
      air quality has been affected. While short exposure 
      to air pollution can cause irritation in the eyes, nose, 
      and throat, long term exposure to air pollutants can cause 
      more serious damages and diseases such as lung cancer, heart disease, 
      and strokes. With this project, we aim to analyze the relationships 
      between the changes in temperature and the environment due to 
      climate change and how that has affected the number of 
      wildfires in the United States, and in turn how those wildfires 
      affected the air quality. More specifically looking into the link 
      between the wildfires and air quality in the United States per year, 
      air quality average per year and comparing it to the number of wildfires 
      per year, and the cause of a wildfire looking at the specific causes and 
      the proportion of each cause."),
  img(src='wildfires.jpeg')
)
