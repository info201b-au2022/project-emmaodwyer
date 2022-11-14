# source file that creates first chart

# loading packages 
library("tidyverse")
library(ggplot2)
library(readr)

# get data for chart 1
US_AQI <- read_csv("Downloads/US_AQI.csv")
View(US_AQI)

# filter 'US_AQI' to the beginning of 1992 
US_AQI <- US_AQI %>%
  filter(Date > "1991-12-31")

# create year column
US_AQI <- US_AQI %>%
  mutate(Year = format(as.Date(Date, format="%Y-%m-%d"),"%Y"))

# extract year
year <- table(US_AQI$Year)
View(year)

#making year into dataframe
year_df <- as.data.frame(year)
View(year_df)

# find mean AQI by year
US_AQI_mean <- US_AQI %>%
  group_by(Year) %>%
  summarise_at(vars(AQI), list(mean_aqi_per_year = mean))

# gathering data
data <- data.frame("num" = year_df$Freq, "year" = US_AQI_mean$Year)
  View(data)
  
# bar chart of mean AQI by year 
bar_chart <- 
  ggplot(data, aes(x=year, y=num))+
  geom_bar(width = 1, stat = "identity") 
bar_chart

