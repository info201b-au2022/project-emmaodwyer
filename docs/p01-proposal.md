# The Effects of Climate Change on Wildfires and Air Quality
**Code name** - Wildfire

**Authors:** Cole Meier | Jennifer Gomez | Emma O’Dwyer | Thanh Ly

**Contact:** ctm41804@uw.edu |  jngomez@uw.edu |  emmaod@uw.edu  |  thanhly3@uw.edu

**Affiliation:** INFO-201: Technical Foundations of Informatics - The Information School - University of Washington

**Date:** Autumn 2022

## Abstract:
Our main question is how wildfires have been worsening over the past 40 years and what effect this is having on air quality. This topic is of interest to us since it is an area that has been increasingly more relevant to our daily lives with recent hazardous air quality warnings in and around Seattle. To address this question, we plan to look at nationwide data regarding the cause, location and severity of various US wildfires and the air quality in these locations on the associated dates.

## Keywords:
***Climate Change, Wildfires, Air Quality, Environment, Rising Temperatures***

## Introduction:
With the rise of wildfires in the United States, air quality has been affected. While short exposure to air pollution can cause irritation in the eyes, nose, and throat, long term exposure to air pollutants can cause more serious damages and diseases such as lung cancer, heart disease, and strokes. With this project, we aim to analyze the relationships between the changes in temperature and the environment due to climate change and how that has affected the number of wildfires in the United States, and in turn how those wildfires affected the air quality.

## Problem Domain:
### Direct and Indirect Stakeholders:
**Direct Stakeholders:** The research undertaken during this project may be used to help predict the length or severity of a given wildfire based on the weather conditions leading up to the fire, the cause of the fire or the location. The U.S. forest service or the National Centers for Environmental Information may be direct stakeholders.  
**Indirect Stakeholders:** The general public may be indirect stakeholders for this project as they are affected by wildfires through unsafe air conditions without interacting directly with the wildfire or the system itself. Aside from the general public, wildfires and air pollutants can also affect plants and animals, constituting them as indirect stakeholders as well.

### Human Values:
As humans, we are concerned with the safety, well-being, and health of ourselves, our loved ones, and the environment we live in. As students who believe in civic responsibility and environmental justice, this project allows us to play a role in protecting the world we live in through finding trends and building models on a topic that has long-lasting and severe consequences for us and for future generations.

### Potential Benefits and Harm:
**Benefits:** This research project may potentially help predict and thus better prevent future wildfires. With the relationships we devise from our analysis of our datasets, we hope more attention and awareness will be raised on the uptick of wildfires, and in general, climate change.

**Harms:** This research project can potentially harm government officials, as people would become more aware of the crisis going on and will want change. Informing citizens will empower them with knowledge and in turn, citizens may apply more and more pressure on government officials to listen to them and make changes.

### Related Works and More Details

**Wildfire Smoke Is Erasing Progress on Clean Air**
https://www.nytimes.com/interactive/2022/09/22/climate/wildfire-smoke-pollution.html
The Clean Air Act has aided in the improvement of air quality in Western U.S. for decades. Research is now coming out showing that the increase in wildfires has reversed the progress the Clean Air Act has made. Over the past decade, the number of people who experienced extreme smoke days in the U.S, which are days where the air quality is deemed as unhealthy for all, has increased by 27-folds.

**Why WIldfire Smoke is a Health Concern**
https://www.epa.gov/wildfire-smoke-course/why-wildfire-smoke-health-concern
Wildfire smokes are composed of a mixture of various pollutants and chemicals, with particulate matter being the main threat. Larger and more coarse particles are unable to enter the lungs and heart, thus unable to cause serious harm but they can irritate the eyes, nose,and throat. On the other hand, smaller, finer, particles can affect the lungs and heart, causing serious illness. There has been research done that links the increase risk in cardiovascular and respiratory diseases with more exposure to wildfire smoke.

**Climate Scientist Warn of a ‘Global Fire Crisis’**
https://www.nytimes.com/2022/02/23/climate/climate-change-un-wildfire-report.html
According to a United Nations report, the risk of devastating wildfires will increase as climate change further intensifies. The United Nations report had named this the ‘global fire crisis’. It is estimated that with moderate global warming, the risk of catastrophic wildfires will increase by a third by 2050, and up to 52 percent by the end of the century.



## Research Questions:
- **What is the link between the wildfires and  air quality in the United States?** As wildfires become increasingly frequent, the linkage between wildfires and air quality becomes increasingly important. The main motivation behind this question is concern of the effects of poor air quality on the general population. Poor air quality has been linked to increased cases of respiratory issues and in extreme cases can lead to diseases such as lung cancer.
- **What is the role of the initial weather conditions in the severity or length of time a wildfire burns for?** We are interested in seeing the relationship between temperature, windspeed, precipitation and the time a wildfire burns for,  to be able to model the expected length of future wildfires. As average temperatures are increasing and precipitation patterns are becoming more irregular, we believe that this question could show some very important insights into wildfires and the damage they cause.
- **Does the cause of a wildfire impact how long or severe the wildfire will be?**  We are interested in answering this question in order to be able to better predict wildfires and their behavior. It would be interesting to find out whether wildfires sparked by natural or non-natural events have different trends.


## DataSets

| Data File Name| Num of Rows | num of Cols |
| ------------- | ----------- | ----------- |
| U.S. Air Quality Data | 5,617,325 | 15 |
| U.S. Wildfire Data | 55,367 | 43 |
| Global Surface Temperature Data | 117 | 2 |

**US Air Quality Data:**

Reigada, C. (1980-2022). _US Air Quality 1980-Present_ [DataSet]. Kaggle.
https://www.kaggle.com/datasets/383fd6c01526595f6446edb3a19352967a4343e2025ccdd40b40aa7b6c241801?select=US_AQI.csv

“AirData Website File Download Page.” EPA, Environmental Protection Agency, https://aqs.epa.gov/aqsweb/airdata/download_files.html.

**US Wildfire Data:**

Capcloudcoder. “U.S. Wildfire Data (plus Other Attributes).” Kaggle, 6 Oct. 2020, https://www.kaggle.com/datasets/capcloudcoder/us-wildfire-data-plus-other-attributes.
Short, Karen C. 2017. Spatial wildfire occurrence data for the United States, 1992-2015 [FPA_FOD_20170508]. 4th Edition. Fort Collins, CO: Forest Service Research Data Archive. https://doi.org/10.2737/RDS-2013-0009.4

U.S. Wildfire data (plus other attributes) | Kaggle

**US Climate Change Data:**

https://www.ncei.noaa.gov/cag/global/time-series/northAmerica/land/1/9/1910-2022

We are focusing on two main datasets, one of which measures the air quality in each U.S. state every day over the last 40 years, a random sampling of ~50,000 U.S. wildfire samples combined with weather data from 1992-2015, and the last one is a sampling of global surface temperature anomalies dating back to 1910 with respect to average dating between 1910-2000. The wildfire dataset displays the cause of every fire documented, this allows us to document how the cause affects the intensity of the fire. Air quality and wildfire datasets will allow us to compare the air quality in areas affected by recent wildfire events. The wildfire and global surface temperature datasets allow us to compare the frequency of wildfires with the global warming connection. These datasets allow us to gather an analysis of climate change’s effect on wildfires and air quality for the general public's well-being. This issue has a direct connection with public health because poor air quality has been linked to an increase in respiratory issues. The intersectionality in our datasets allows us to determine our main question, how does the effect of climate change on wildfire frequency and intensity impact the air quality of the United States? The data from the U.S. air quality from 1980-present is the EPA’s raw data on air quality compiled into a consumable format by a Kaggle user by the name of Caleb Reigada. The dataset on U.S. wildfires is a compiled version of the U.S. Department of Agriculture data on wildfires, by a user by the name of CapCloudCoder. The third dataset for global surface temperatures is from the National Centers for Environmental Information. The collection of all the data comes from government-funded programs, all with the intention of the benefit of mankind's safety and health. The data is held and updated in government databases, this is filtered and brought down to the server and then extracted and sorted onto the Kaggle website. All the databases are from credible sources, they come from a variety of government-funded resources that employ thousands of scientists to accurately capture and update this data for public use. The only non-government-funded source is Kaggle, which is a reliable data science company that allows users to publish datasets and build various models. The U.S. wildfire and air quality datasets were obtained on Kaggle, and the global surface temperature dataset was obtained directly on the National Centers of Environmental Information website. Both the interface in which the datasets were obtained and the source of the data have been credited in our study.


## Expected Implications:
The implications of our research questions are to educate the general population on the effects of climate change and show how much has really changed throughout the years. This helps people be aware of the effects and could be used as a tool to influence politicians into creating legislation to reduce the effects of climate change. Our research questions also educate people on the severity of wildfires and what has contributed to the growth in wildfires. They are encouraging policy makers to put more funding into wildfire prevention, to reduce their harmful and hazardous effects. We are also looking at the connection between wildfires and bad air quality, along with the connection of wildfires and climate change. This has possible implications for scientists and technologists to be able to aim their field of study to the prevention of climate change which in return could also help the prevention of wildfires and bad air quality.

## Limitations:
One limitation that will need to be addressed is the air quality measurements. These daily measurements are taken only in one location for each state and so looking at larger states, such as Texas or California. This makes it harder to see the true scope of the effects of a wildfire and may not be able to be seen through these measurements if the wildfire affected area is far from the air quality measurement station. Another limitation that will need to be addressed is the size of the dataset. The datasets we are currently looking at are focused only on the U.S., yet they are still very large and may be difficult and time-consuming to clean and filter through as we try to pull the data from the dataset. This may force us to choose a small focus such as looking at specific states or a couple of states together only or taking a random sampling of the dataset.

## Appendix A: Questions
No questions at the moment
