# Stock-price-Prediction
Find stock price Prediction in real time

In this code:

You load necessary libraries like timeSeries, quantmod, and forecast.
We fetch TCS.NS stock data from Yahoo Finance (2015-01-01 to 2024-05-07).
You convert adjusted close prices to a timeSeries object and plot it.
We calculate first differences to ensure stationarity.
You perform an Augmented Dickey-Fuller test for stationarity.
We identify AR and MA processes using ACF and PACF plots.
You select an ARIMA model using auto.arima and check residuals.
We generate and plot a 30-day forecast.
You can change the ticker symbol (e.g., "AAPL, HCL.NS, BEL.NS") and dates for your analysis.
