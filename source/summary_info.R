#File to calculate summary info to be included in our report
# A source file that takes in a dataset and returns a list of info about it:


#NOTE:  wildfire data is called 'wildfire' and AQI is called 'US_AQ'!!!
summary_info <- list()
summary_info$num_observations <- nrow(my_dataframe)

#WILDFIRE DATA SUMMARY
#max wildfire size
summary_info$max_fire_size <- wildfire %>%
  filter(fire_size == max(fire_size, na.rm = T)) %>%
  select(fire_size)

#mean wildfire size
summary_info$mean_fire_size <- wildfire %>%
  summarise(mean_fire_size= mean(fire_size, na.rm=TRUE))

#most common wildfire class
#formula to find mode
find_mode <- function(x) {
  u <- unique(x)
  tab <- tabulate(match(x, u))
  u[tab == max(tab)]
}

summary_info$mode_fire_size_class <- wildfire %>%
  summarise(mode_fire_size_class = find_mode(fire_size_class)) 

#most common wildfire cause
summary_info$mode_fire_cause <- wildfire %>%
  summarise(mode_fire_cause = find_mode(stat_cause_descr))

#most common state for wildfires to occur
summary_info$mode_fire_state <- wildfire %>%
  summarise(mode_fire_state = find_mode(state))

#Washington only summary:
#mean wildfire size in Washington state 
summary_info$mean_fire_size_wa <- wildfire %>%
  filter(state =="WA") %>%
  summarise(mean_fire_size_wa= mean(fire_size, na.rm=TRUE))

#most common wildfire class in washington
summary_info$mode_fire_size_class_wa <- wildfire %>%
  filter(state== "WA") %>%
  summarise(mode_fire_size_class_wa = find_mode(fire_size_class))

#most common cause of wildfires in wa
summary_info$mode_fire_cause_wa <- wildfire %>%
  filter(state== "WA") %>%
  summarise(mode_fire_cause_wa = find_mode(stat_cause_descr))


#AIR QUALITY SUMMARY INFO
#max air quality index
summary_info$max_aqi <- US_AQ %>%
  filter(AQI == max(AQI, na.rm = T)) %>%
  select(AQI)


#mean air quality index
summary_info$mean_aqi <- US_AQ %>%
  summarise(mean_aqi= mean(AQI, na.rm=TRUE))


#most common AQI category
summary_info$mode_aqi_category <- US_AQ %>%
  summarise(mode_aqi_category = find_mode(Category))
