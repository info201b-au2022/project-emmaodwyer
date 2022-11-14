# source file that creates first chart

# loading packages 
library("tidyverse")
library(ggplot2)
library(readr)

# get data for chart 1
US_AQI <- list.files(path = "../data/aqi_data",
                    pattern = "*.csv", full.names = TRUE) %>%
  lapply(read_csv) %>%
  bind_rows 
View(US_AQI)

# filter 'US_AQI' to the beginning of 1992 
US_AQI <- US_AQI %>%
  filter(Date > "1991-12-31")

# create year column
US_AQI <- US_AQI %>%
  mutate(Year = format(as.Date(Date, format="%Y-%m-%d"),"%Y"))

# find mean AQI by year
US_AQI_mean <- US_AQI %>%
  group_by(Year) %>%
  summarise_at(vars(AQI), list(mean_aqi_per_year = mean))
View(US_AQI_mean)

# making 'US_AQI_mean' into dataframe
mean_df <- as.data.frame(US_AQI_mean)
View(mean_df)

# bar chart of mean AQI by year 
bar_chart <- 
  ggplot(mean_df, aes(x=Year, y=mean_aqi_per_year))+
  labs(title="Mean AQI in the United States by Year", x="Year", y="Mean Air Quality Index") +
  geom_bar(width = 1, stat = "identity") 
bar_chart

