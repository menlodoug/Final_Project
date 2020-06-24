Machine learning overview:
  - Initial question: Determine the vulnerability index per individual based on the county, social and economic profile.
  - Problem: Lack of sufficient data 
  - What data we have enough to train a model
    - case and death per date 
    - mobility per day
    - testing per day 
  - Question to answer
    - Forecast cases a month ahead

Time series forecasting
  - time add an explicit order dependence between observation: a time dimension
  - fit model on historical data to predict future data

Time series forecasting data characteristics
  - Level
  - Trend
  - Seasonality 
  - Noise
  - Correlation between observations

Data analysis and feature engineering
  - Render data stationary (mean and variance are constant, trend removed)
    - Dickey-Fuller to test stationarity
    - Add differencing 
    - Log transforms
  - remove autocorrelation
    - ACF and PACF to plot autocorrelation
    - Add lags to remove autocorrelation
  - causality for multivariate models
    - grangers to test causality
    - Removing for feature with a lesser significance 
    - Drop feature
  - ARIMA and VAR classical models in time series forecasting

Train and test:
  - in a time series order is important and a random sampling of data not an option
  - splitting data in 70 and 30% based in order

ARIMA
  - univariate time series forecasting model
  - data analysis is used to tune the model parameters (p, d, q)
  - raw data or log of raw data is passed to the model
  - forecasts the values base on historic values values
  - residuals analysis to diagnostic the model
      - plot ACF for autocorrelation
      - histogram for variance
  - with a model accuracy of 70%, we can conclude that the model is not very good at predicting future case. More data and extra features need to be factored in to better predict.

VAR
  - multivariate data (multiple features)
  - the feature need to influence each other
  - the data needs to be stationary and the features are transformed
    - Add 2 levels of differentiation 
  - Identify the model's order value
  - fit the model and forecast
  - invert the data to the original state
  - plot the forecast values against the test values
  - even less model accuracy and mess  

Future enhancements
  - Use a deep learning model that will take multivariate data and external regressors to make a prediction (LSTM as a candidate)
  - Make the modelling data agnostic and use it to forecast cases for different state and counties
  - Retrieve the data from an API instead of database to always get the freshest data 