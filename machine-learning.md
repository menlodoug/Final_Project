## Testing various regression model to predict COVID-19 cases in state in California. 
The winning model will be used to predict the cases at the county level in CA

### Description of preliminary data preprocessing
The CA state data per date for cases, death and mobility will be used to predict the 
a number of future case.

###  Description of preliminary feature engineering and preliminary feature selection, including their decisionmaking process 
Since the problem is a time series problem and the data in time series tends to have trends, cycliality and seasonality, several data transformation will be necessary to render the data stationary:
  - Box-Cox transform
  - log transform
  - Differencing
  - lags
  - rolling statistics
  - time dummies

All the existing columns on the mobility dataset will be used as features to train the model.

### Description of how data was split into training and testing sets

In time series data depends on the previous values as a result splitting the data randomly into train and test is not an option.

I use the first 70% of the data as train data and the last 30% as test data.

### Explanation of model choice, including limitations and benefits

The initial model prediction is done with ARIMA, a classic univariant model in solving time series problems. The model performs poorly at predicting the future case due to the low number of data points and the lack of any other features besides the previous cases data.

Next, the RandomForestRegressor will be tested to predict the cases. Data transformation will be applied to render the data static. The reason why RandomForest was chosen in this case is the general robustness of the model and the feature importance feature.

Update: I wasn't able to make the RandomForestRegressor model work for the problem in hand. I end up using the VAR model and used the case and mobility data to fit it. 
