# source file that creates second chart

# loading packages 
library("tidyverse")
library(ggplot2)

# loading data 
wildfires <- read.csv("https://raw.githubusercontent.com/info201b-au2022/project-emmaodwyer/main/data/FW_Veg_Rem_Combined.csv")


# finding number of duplicated causes 
causes <- table(wildfires$stat_cause_descr)

# making 'causes' a dataframe 
causes_df <- as.data.frame(causes)
causes_df <- causes_df %>%
  select("cause" = Var1, "num_of_causes" = Freq)

# proportion of causes of wildfires pie chart 
pie <-  
  ggplot(causes_df, aes(x="", y=num_of_causes, fill=cause)) +
  geom_bar(stat="identity", width=1, color = "white") +
  labs(title="The Proportion of Different Causes of Wildfires in the United States") +
  coord_polar(theta = "y", start=0) +
  theme_void()
pie

#plot(pie)

