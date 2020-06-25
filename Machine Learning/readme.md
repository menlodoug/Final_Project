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
    - ACF (autocorrelation function) and PACF to plot autocorrelation
    - Add lags to remove autocorrelation
  - causality for multivariate models
    - grangers to test causality
    - Removing for feature with a lesser significance 
    - Drop feature

  Classical models in time series forecasting
  - ARIMA (Auto-Regressive Integrated Moving Average)
  - VAR (Vector Autoregressive)

Train and test:
  - in a time series order is important and a random sampling of data not an option
  - splitting data in 70 and 30% based in order

ARIMA - Lags of the stationarized series in the forecasting equation are called "autoregressive" terms, lags of the forecast errors are called "moving average" terms, and a time series which needs to be differenced to be made stationary is said to be an "integrated" version of a stationary series
- Data needs to be stationary 
- case data only
- 81% accuracy

Vector Autoregression (VAR) is a multivariate forecasting algorithm that is used when two or more time series influence each other. 
- Data needs to be stationary and causal 
- cases and mobility potentially a good fit
- 43% accuracy result

Future enhancements
  - Use a deep learning model that will take multivariate data and external regressors to make a prediction (LSTM as a candidate)
  - Make the modelling data agnostic and use it to forecast cases for different state and counties
  - Retrieve the data from an API instead of database to always get the freshest data 