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
 - 