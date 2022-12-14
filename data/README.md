# The `\data` Directory: Project Data Summary

In our project, we use the following data files and Application Programming Interfaces:

## Data files:
|Data File Name | Brief Description|
|---------------| -----------------|
|[Good.csv](./aqi_data/Good.csv)| All rows from the AQI dataset where category = "Good" <br /> **Note:** Original ataset is too large to be included as a file, it was instead broken down to several .csv files.
|[Hazardous.csv](./aqi_data/Hazardous.csv)| All rows from the AQI dataset where category = "Hazardous"
|[Moderate.csv](./aqi_data/Moderate.csv)| All rows from the AQI dataset where category = "Moderate"
|[Unhealthy_for_Sensitive_Groups.csv](./aqi_data/Unhealthy_for_Sensitive_Groups.csv)| All rows from the AQI dataset where category = "Unhealthy for Sensitive Groups"
|[Unhealthy.csv](./aqi_data/Unhealthy.csv)| All rows from the AQI dataset where category = "Unhealthy"
|[Very_Unhealthy.csv](./aqi_data/Very_Unhealthy.csv)| All rows from the AQI dataset where category = "Very Unhealthy"
|[FW_Veg_Rem_combined.cvs](./FW_Veg_Rem_combined.csv) | 50,000 randomized fires from a database of 1.8 million fires. Includes fire name, fire size, cause, location, date it started, and many other attributes.
|[1910-2022.csv](./1910-2022.csv) | U.S. Land temperature anomalies recorded in Celsius for every September from 1910-2022.

## Application Programming Interfaces (API) (TODO: Update/delete for your PROJECT)

* **New York Times Books API**. The _New York Times_ provides data for Best
Sellers lists and the books that have been reviewed in the New York Times. An overview of the API that we use in our project is available here: [Books API](https://developer.nytimes.com/docs/books-product/1/overview). For more about developing apps with New York Times data see: [NYTimes Developers](https://developer.nytimes.com/).

# Developer notes: About the `/data` Directory (TODO: Read and delete this section)

* Use the `/data` directory to store any data that you using in your project (for example, CSV files)
* Edit this `README.md` file and summarize your data files
* If you are using APIs to access data, summarize them, providing specific information
* See examples above.
* Please remember your audience (prospective employers, open source colleagues, TAs, Instructors). Therefore,
aim for clarity and conciseness.
* When done, be sure to delete these NOTE sections and the example CSV file (which are intended for you, of course, not your audience!)
