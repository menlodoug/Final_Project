# Technologies Used
## Data Cleaning and Analysis
Pandas will be used to clean the data and perform exploratory analysis. Further analysis will be completed using Python. A random forest machine learning model will be created to determine the probability of individuals contracting COVID-19, which draw data from a Postgres database.  

## Database Storage
A Postgres database will hold the data used to predict COVID-19 impact by for individuals.  We will integrate data from the database into our machine learning model.  Also, the data tables will be exported as csv files to use in Tableau to display the data in a dashboard.

## Machine Learning
SciKitLearn is the Machine Learning library we'll be using to create a classifier, encode data, split data in to test and train data sets, scale the data, and test varying machine learning models for making future data predictions. 

## Dashboard
Tableau will be used to display the data in a fully functioning interactive dashboard. It will be hosted on https://public.tableau.com.  Users may visit the Tableau dashboard to view their likelihood of contracting COVID-19 based on their individual data; 1. county of residence, 2. age, 3. gender, and 4. income.

