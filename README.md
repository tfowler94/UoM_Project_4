# Financing Healthcare

-- Project Status: Completed

## Project Objective
For this analysis we looked to use machine learning to understand the significance between a country's wealth, healthcare expenditure, and percent of government subsidized healthcare against a country's infant mortality rate. By using Kaggle's "Financing Health" datasets, we were looking to accurately predict if a country's infant mortality rate would be high or low.

### Methods Used
- Data Visualizations
- Inferential Statistics

### Technologies Used
- Python
- Jupyter
- Machine Learning
- Pandas
- Tableau
- SQL

## Limitations
Inconsistencies in some of the yearly data by country. Not all countries had data for the timeframe we selected to identify (2000-2018).

## Overview of Steps Taken
- Preprocessing the Data
   - Dropped any null values and unnecessary columns from the original datasets
   - Consolidated the timeframe to have more consistent data by country
   - Using SQL, creating tables for each dataset and joining all tables together to use for modeling

- Modeling/Optimizing the Data 
   - Went through several iterations of modeling in order to create a predictive model that had high statistical significance
   - Initial iteration used Linear Regression to understand if we could accurately extrapolate our data, but the data was not conducive to linear regression
   - Final iteration used RandomForestRegressor as a non-linear regression analysis of the data, which led to positive results

## Visualizations Created
- Link to tableau files: https://public.tableau.com/app/profile/amy.baker6569/viz/Project4_16861804758910/InternationalpopulationcoveredbyinsuranceovertheyearsandthepercentageofHealthExpenditureincountrysGDP?publish=yes

## Contributing Members
Amy Baker, Lexie Fallow, Alkida Frroku, Tyler Fowler, Tymber Hamilton

## Data Sources
- Kaggle: https://www.kaggle.com/datasets/programmerrdai/financing-healthcare
  -    Narrowed down to 4 datasets out of available 18
