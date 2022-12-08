# The Effects of Climate Change on Wildfires and Air Quality

Cole Meier (ctm41804@uw.edu)         
Jennifer Gomez (jngomez@uw.edu)     
Emma O'Dwyer (emmaod@uw.edu)         
Thanh Ly (thanhly3@uw.edu)

*INFO-201: Technical Foundations of Informatics*  
*The Information School*   
*University of Washington*      
*Autumn 2022*  

## Abstract

Our main question is how wildfires have been worsening over the past 40 years and what effect this is having on air quality. This topic is of interest to us since it is an area that has been increasingly more relevant to our daily lives with recent hazardous air quality warnings in and around Seattle. To address this question, we plan to look at nationwide data regarding the cause, location and severity of various US wildfires and the air quality in these locations on the associated dates. 

**Keywords:** Climate Change, Wildfires, Air Quality, Environment, Rising Temperatures

## Introduction

With the rise of wildfires in the United States, air quality has been affected. While short exposure to air pollution can cause irritation in the eyes, nose, and throat, long term exposure to air pollutants can cause more serious damages and diseases such as lung cancer, heart disease, and strokes. With this project, we aim to analyze the relationships between the changes in temperature and the environment due to climate change and how that has affected the number of wildfires in the United States, and in turn how those wildfires affected the air quality. More specifically looking into the link between the wildfires and air quality in the United States per year, air quality average per year and comparing it to the number of wildfires per year, and the cause of a wildfire looking at the specific causes and the proportion of each cause. 

## Design Situation
**Direct Stakeholders:** The research undertaken during this project may be used to help predict the length or severity of a given wildfire based on the weather conditions leading up to the fire, the cause of the fire or the location. The U.S. forest service or the National Centers for Environmental Information may be direct stakeholders. 

**Indirect Stakeholders:** The general public may be indirect stakeholders for this project as they are affected by wildfires through unsafe air conditions without interacting directly with the wildfire or the system itself. Aside from the general public, wildfires and air pollutants can also affect plants and animals, constituting them as indirect stakeholders as well.

>  **Wildfire Smoke Is Erasing Progress on Clean Air**
The Clean Air Act has aided in the improvement of air quality in Western U.S. for decades. Research is now coming out showing that the increase in wildfires has reversed the progress the Clean Air Act has made. Over the past decade, the number of people who experienced extreme smoke days in the U.S, which are days where the air quality is deemed as unhealthy for all, has increased by 27-folds. The map shows increase in average wildfire smoke from 2006-2010 to 2016-2020. The darker the spots the more PM2.5 has grown in that area. 

<img src="reportimage1.jpeg" alt="Where Wildfire Smoke Pollution Increased Over the Past Decade" width="200"/>

> **Why Wildfire Smoke is a Health Concern**
Wildfire smokes are composed of a mixture of various pollutants and chemicals, with particulate matter being the main threat. Larger and more coarse particles are unable to enter the lungs and heart, thus unable to cause serious harm but they can irritate the eyes, nose,and throat. On the other hand, smaller, finer, particles can affect the lungs and heart, causing serious illness. There has been research done that links the increased risk in cardiovascular and respiratory diseases with more exposure to wildfire smoke.

<img src="reportimage2.jpeg" alt="Human hair and how much can get stick in it" width="200"/>

> **Climate Scientist Warn of a ‘Global Fire Crisis**
According to a United Nations report, the risk of devastating wildfires will increase as climate change further intensifies. The United Nations report had named this the ‘global fire crisis’. It is estimated that with moderate global warming, the risk of catastrophic wildfires will increase by a third by 2050, and up to 52 percent by the end of the century.

**NOTE:** the images are located in ```https://www.nytimes.com/interactive/2022/09/22/climate/wildfire-smoke-pollution.html```

```https://www.epa.gov/wildfire-smoke-course/why-wildfire-smoke-health-concern```

```https://www.nytimes.com/2022/02/23/climate/climate-change-un-wildfire-report.html```

**Human Values:** As humans, we are concerned with the safety, well-being, and health of ourselves, our loved ones, and the environment we live in. As students who believe in civic responsibility and environmental justice, this project allows us to play a role in protecting the world we live in through finding trends and building models on a topic that has long-lasting and severe consequences for us and for future generations. 

**Benefits:** This research project may potentially help predict and thus better prevent future wildfires. With the relationships we devise from our analysis of our datasets, we hope more attention and awareness will be raised on the uptick of wildfires, and in general, climate change.

**Harms:** This research project can potentially harm government officials, as people would become more aware of the crisis going on and will want change. Informing citizens will empower them with knowledge and in turn, citizens may apply more and more pressure on government officials to listen to them and make changes. 

## Research questions:

* What is the link between the wildfires and  air quality in the United States? As wildfires become increasingly frequent, the linkage between wildfires and air quality becomes increasingly important. The main motivation behind this question is concern of the effects of poor air quality on the general population. Poor air quality has been linked to increased cases of respiratory issues and in extreme cases can lead to diseases such as lung cancer.

* What is the role of the initial weather conditions in the severity or length of time a wildfire burns for? We are interested in seeing the relationship between temperature, windspeed, precipitation and the time a wildfire burns for,  to be able to model the expected length of future wildfires. As average temperatures are increasing and precipitation patterns are becoming more irregular, we believe that this question could show some very important insights into wildfires and the damage they cause.

* Does the cause of a wildfire impact how long or severe the wildfire will be?  We are interested in answering this question in order to be able to better predict wildfires and their behavior. It would be interesting to find out whether wildfires sparked by natural or non-natural events have different trends. 

## The Dataset

We are focusing on two main datasets, one of which measures the air quality in each U.S. state every day over the last 40 years, a random sampling of ~50,000 U.S. wildfire samples combined with weather data from 1992-2015, and the last one is a sampling of global surface temperature anomalies dating back to 1910 with respect to average dating between 1910-2000. The wildfire dataset displays the cause of every fire documented, this allows us to document how the cause affects the intensity of the fire. Air quality and wildfire datasets will allow us to compare the air quality in areas affected by recent wildfire events. The wildfire and global surface temperature datasets allow us to compare the frequency of wildfires with the global warming connection. These datasets allow us to gather an analysis of climate change’s effect on wildfires and air quality for the general public's well-being. This issue has a direct connection with public health because poor air quality has been linked to an increase in respiratory issues. The intersectionality in our datasets allows us to determine our main question, how does the effect of climate change on wildfire frequency and intensity impact the air quality of the United States? The data from the U.S. air quality from 1980-present is the EPA’s raw data on air quality compiled into a consumable format by a Kaggle user by the name of Caleb Reigada. The dataset on U.S. wildfires is a compiled version of the U.S. Department of Agriculture data on wildfires, by a user by the name of CapCloudCoder. The third dataset for global surface temperatures is from the National Centers for Environmental Information. The collection of all the data comes from government-funded programs, all with the intention of the benefit of mankind's safety and health. The data is held and updated in government databases, this is filtered and brought down to the server and then extracted and sorted onto the Kaggle website. All the databases are from credible sources, they come from a variety of government-funded resources that employ thousands of scientists to accurately capture and update this data for public use. The only non-government-funded source is Kaggle, which is a reliable data science company that allows users to publish datasets and build various models. The U.S. wildfire and air quality datasets were obtained on Kaggle, and the global surface temperature dataset was obtained directly on the National Centers of Environmental Information website. Both the interface in which the datasets were obtained and the source of the data have been credited in our study. 

| Data File Name                  | Number of Rows | Number of Columns |
| ------------------------------- | -------------- | ----------------- |
| U.S. Air Quality Data           | 5,617,325      | 15                |
| ------------------------------- | -------------- | ----------------- |
| U.S. Wildfire Data              | 55,387         | 43                |
| ------------------------------- | -------------- | ----------------- |
| Global Surface Temperature Data | 117            | 2                 |

## Findings 

As we look to answer the research questions stated above, it can be shown that the link between wildfires and air quality in the United States is a result of bad air quality. As more and more wildfires start to form in certain places in the United States the data shows the decline in air quality in those places. That decline can lead to giving the general public more unwanted problems and issues regarding public health. Wildfire smoke increases fine particulate matter in the air and the heat combines the smoke and other pollutants to create more ground-level ozone. Along with this, wildfires can also release large amounts of carbon dioxide, black carbon, brown carbon, and ozone precursors into the atmosphere.

Weather has a big impact on a wildfire's length, as irregular temperatures and weather patterns become the new normal, the data shows that places with forest areas where rain is the normal are getting more and more affected by the weather changes. High temperatures and low humidity also dry out fuel sources, causing them to ignite and burn faster. As temperatures start to rise we are beginning to see less and less of rainy days, so this will overall effect the rise in wildfires as high temperatures is where they thrive. Another weather impact that can affect the spread of wildfires is high wind speed, if a wildfire starts somewhere where high wind speed is happening it can cause it to be more severe than it started. 

The cause of a wildfire can say a lot on how bad a wildfire can get, if the wildfire is started naturally it can be harder to detect on time and can grow out of nowhere. While it was started by unnatural causes if not detected on time can spread just as fast as a naturally made wildfire. Causes like a cigarette being thrown out the car window can lead to devastating effects, but since the fire would be started near a roadway there will be at least one person who can see it and be able to call it in. While if it is a naturally caused wildfire that can happen in the middle of the woods, dispatchers won’t be able to see it or detect it until its grown big enough to be able to be detected. 

## Discussion

The implications of our research questions are designed to raise awareness of the effects wildfires are having on the world today and how it’s grown throughout the years. Our data focuses on the United States, but can help give a general world summary on how wildfires are affecting places where they happen. We hope to show the general population how much has changed throughout the years. In our research it also implies and demonstrates how wildfires are taking an effect on climate change and as we know climate change is affecting communities all over the world. We want people to become more aware of the effects wildfires are having on society today. By looking at these issues together, we hope to show that there is a connection between wildfires and bad air quality, as well as a connection between wildfires and climate change. Air quality is another major problem in the world and is also being affected and caused by wildfires, whenever wildfires happen it can affect multiple states and even countries at a time. Smoke from the wildfires is uncontrollable and windstream's push it to other locations affecting and making the air quality in those locations hazardous. Health of the general public is important, as bad air quality can become difficult for people with breathing complications and can lead to the development of health decline. This decline will need to be put on policy makers. Urging policy makers to dedicate more funding to preventing wildfires and improving air quality in those areas where they occur is a necessity and with the data shown we hope it will give an urge to propel your own policy makers to make a change in helping the fight of wildfires. This data can also encourage scientists and technologists into wanting to add to the fight, aiming their work and field of studies to the prevention of wildfires, as it will also help the fight of air quality and the world crisis of climate change. The world is undoubtedly changing and our goal is to help spread some of the reasons for the change the world is going through. In order to create new ways to slow the advancement of climate change to give scientists and technologists time to create new methods and technologies that can prevent this change from happening. 

## Conclusion 

Our project aims to show the public how wildfires are harming people and the world, along with the causes of wildfires and the factors that lead to their occurrence in order to help spread awareness about the issue and support efforts aimed at helping stop the problem. Wildfires can be caused by a range of factors, including debris burning, arson, lightning and other factors. Wildfires can be pretty unpredictable when caused naturally and can grow in a matter of minutes, stopping them is important as they are a factor in the growth of air pollution, which affects public health. As stated before, air pollution can create health problems for some and worsen symptoms for others. Having bad air quality year around is something nobody wants to be experiencing. This makes stopping wildfires that much more crucial for the general public as it’s a series that can save their future health and overall world. Wildfires can be as stated above a significant contributor to air pollution, but it is also a contributor to climate change, which is a major environmental and social issue currently happening. Climate change is a major issue that has the capability of changing the world as we know it to an unknown place to the point where nobody can live on the planet. Scientists and technologists are working hard to find new ways to prevent the growth of climate change but it seems like climate change is already on its way to no return and already has unreturnable effects on the world today. The crisis has effects that impact our food sources, water sources, and overall health. Everyday a new world problem is happening that needs to be addressed, wildfires along with their cause and effect is one of them. The rise in greenhouse emissions bringing warmer temperatures and shifting participation patterns needs to be thoroughly looked at so we will have a chance to stop wildfires from causing more permanent damage to our planet and home. Wildfires also add to the rise in greenhouse gases to the atmosphere and the spread of carbon dioxide and carbon monoxide, making peatlands and rainforests become “tinderboxes”, from where they are supposed to be  helping control the world's temperature, but in return igniting more ways for global warming/climate change to continue growing. 

## References 
- Reigada, C. (2022, June 20). US Air Quality 1980-Present. Kaggle. Retrieved December 7, 2022, from https://www.kaggle.com/datasets/383fd6c01526595f6446edb3a19352967a4343e2025ccdd40b40aa7b6c241801?select=US_AQI.csv 

- Capcloudcoder. (2020, October 6). U.S. wildfire data (plus other attributes). Kaggle. Retrieved December 7, 2022, from https://www.kaggle.com/datasets/capcloudcoder/us-wildfire-data-plus-other-attributes 

- NCEI.Monitoring.Info@noaa.gov. (n.d.). Global time series: Climate at a glance. Global Time Series | Climate at a Glance | National Centers for Environmental Information (NCEI). Retrieved December 7, 2022, from https://www.ncei.noaa.gov/access/monitoring/climate-at-a-glance/global/time-series/northAmerica/land/1/9/1992-2015 


