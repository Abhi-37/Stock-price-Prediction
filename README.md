# Time Series Analysis and Forecasting of Stock Prices

This repository contains an R script for the time series analysis and forecasting of TCS.NS stock prices. The analysis includes data fetching, time series conversion, differencing, stationarity checks, ARIMA modeling, and forecasting. 

This project demonstrates a complete workflow for analyzing and forecasting stock prices using the `TCS.NS` stock from Yahoo Finance. The steps involved are:
1. **Data Fetching**: Retrieve historical stock prices for TCS.NS from Yahoo Finance.
2. **Time Series Conversion**: Convert the fetched data into a `timeSeries` object for analysis.
3. **Differencing**: Calculate the first differences of the stock prices to make the time series stationary.
4. **Stationarity Check**: Perform the Augmented Dickey-Fuller test to confirm stationarity.
5. **Identifying AR and MA Processes**: Plot the Auto-Correlation Function (ACF) and Partial Auto-Correlation Function (PACF) to identify AR and MA components.
6. **ARIMA Modeling**: Use the `auto.arima` function to find the best fitting ARIMA model.
7. **Forecasting**: Forecast future stock prices using the identified ARIMA model.
8. **Visualization**: Plot the actual and forecasted values using `ggplot2`.

## Libraries Used

- `timeSeries`
- `timeDate`
- `quantmod`
- `fUnitRoots`
- `forecast`
- `ggplot2`

## Getting Started

### Prerequisites

Make sure you have the following R packages installed:

- timeSeries
- timeDate
- quantmod
- fUnitRoots
- forecast
- ggplot2

## Conclusion
This script provides a systematic approach to time series analysis and forecasting of stock prices. By modifying the stock symbol and date range, users can adapt the script to analyze and forecast the prices of other stocks. Ensure to follow the steps carefully and make necessary adjustments for different datasets.
