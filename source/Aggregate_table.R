library(readr)
library(tidyverse)
library(lubridate)

wildfires <- read_csv("https://raw.githubusercontent.com/info201b-au2022/project-emmaodwyer/main/data/FW_Veg_Rem_Combined.csv")
surface_temp <- read_csv("https://raw.githubusercontent.com/info201b-au2022/project-emmaodwyer/main/data/1910-2022.csv")
aqi <- list.files(path = "../data/aqi_data",
                      pattern = "*.csv", full.names = TRUE) %>%
  lapply(read_csv) %>%
  bind_rows 


wildfires <- wildfires %>% select(fire_size, fire_size_class, stat_cause_descr, state, disc_clean_date)
wildfire <- wildfires %>% 
  mutate(disc_clean_date = as.Date(disc_clean_date, format = "%d/%m/%Y")) %>% 
  mutate(year = year(disc_clean_date)) %>% 
  group_by(year) %>% 
  summarise(avg_num_fires = n(), mean_size = round(mean(fire_size)))
wildfire <- wildfire[-c(25), ]

aqi <- aqi %>% select(Date, AQI, state_id)
year_aqis <- aqi %>% mutate(year = year(Date)) %>% group_by(year) %>% summarise(median_aqi = median(AQI)) %>% filter(year < 2016) %>% filter(year > 1991)

surface_temps <- surface_temp %>% 
  filter(`North.America.Temperature.Anomalies` > 1991) %>% 
  filter(`North.America.Temperature.Anomalies` < 2016)

aggregate_table <- data.frame(surface_temps, year_aqis, wildfire)
aggregate_table <- aggregate_table %>% rename(temperature_anomalies = September, years = North.America.Temperature.Anomalies)
aggregate_table <- aggregate_table %>% select(years, temperature_anomalies, median_aqi, avg_num_fires, mean_size)


