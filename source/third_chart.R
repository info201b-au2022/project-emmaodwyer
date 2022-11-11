#source file that creates third chart

#load packages
library(tidyverse)
library(ggplot2)
#reading in Air Quality data
US_AQ <- read.csv("US_AQI.csv")
#reading in random sample of wildfire data
wildfire <- read.csv("FW_Veg_Rem_Combined.csv")

getwd()

#filter AQ to 1992 and above
US_AQ <- US_AQ %>%
 filter(Date > "1991-12-31" & Date < "2016 -01-01")


# creating year column
US_AQ <- US_AQ %>%
  mutate(Year = format(as.Date(Date, format="%Y-%m-%d"),"%Y"))
# finding mean AQ by year
US_AQ_mean <- US_AQ %>%
  group_by(Year) %>%
  summarise_at(vars(AQI), list(mean_aqi_per_year = mean))
#removing 2016 year
US_AQ_mean <- US_AQ_mean %>%
  filter(Year < 2016)

#find number of wildfires per year (from random sample of total data)
wildfire <- wildfire %>%
  mutate(Year1 = format(as.Date(disc_clean_date, format = "%m/%d/%Y"), "%Y")) 
  
wildfire_by_year <- wildfire %>%
  group_by(Year1) %>%
  summarise(count_fires = n())



plot_data <- cbind(US_AQ_mean, wildfire_by_year)
#remove second year column - has removed both year columns
plot_data <- plot_data %>%
  select(-Year)

  
#Scatterplot of Mean AQI per Year vs. Number of Wildfires per Year
scatterplot <- plot_data %>%
  ggplot(aes(x=count_fires, y=mean_aqi_per_year)) +
  geom_point(size=3, colour = "steelblue") +
  labs(title="The Effect of the Number of Wildfires on Mean Air Quality Index in the U.S.", 
       x="Number of Wildfires per Year in the US", 
       subtitle = "*Number of wildfires is based off of a random sampling ", 
       y="Mean Air Quality Index")+
  geom_text(aes(label = Year1), 
            size = 2.5, 
            position = position_dodge(width = 1),
            vjust = -0.8, hjust = 1)

plot(scatterplot)




