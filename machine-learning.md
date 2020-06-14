Testing verious regression model to predict COVID-19 cases and deaths


* Case prediction

Make the date as datetime and add it as index 


* Starting with a simple linear regression model

* Testing ARIMA (AutoRegressive Integrated Moving Average)

Autoregressive (AR) models operate under the premise that past values have an effect on current values. As long as the assumption holds, we can build a linear regression model that attempts to predict value of a dependent variable today, given the values it had on previous days.

-- The order of the AR model corresponds to the number of days incorporated in the formula.

Moving Average Model (MA) - Assumes the value of the dependent variable on the current day depends on the previous days error terms. 

-- The value of q is called the order of the MA model

 - using statsmodels to work with time series data
 - determine if the data is stationary
 - Test different techniques to make the data stationary


 Using RandomForest to predict cases(maybe death)
  -- We need to transform the data to be able to use a time series data into a classification model
     Ways to transform the data:
        * Statistical transformations (Box-Cox transform, log transform, etc.)
        * Detrending (differencing, STL, SEATS, etc.)
        * Time Delay Embedding (more on this below)
        * Feature engineering (lags, rolling statistics, Fourier terms, time dummies, etc.)
  

  # Scaling the data
  Box-Cox transform -- took logs of the data to stabilize the variance

  # Normalizing the data (removing trends in input variables)
  Differencing -- way to make non-stationary time series data stationary by stabalizing the mean

  # Adding lagging variables 

  Time delay embedding - adding lag to our data. Time delay embedding represents a time series in a Euclidean space with the embedding dimension K.

  # Establishing benchmark
    - Using the the current data
    - using the average traffic for n timeframe


  # Backtesting strategy timeseries
    - Sliding window 
    - Expanding window 



Downside of the  data we use
- there are not to many data points