Available functions
----------------

**Data download**



**Operators**

|Operator| Description | Return |
|---|---|---|
|ts_sum(df, window=10)|Wrapper function to estimate rolling sum.<br/>:param df: a pandas DataFrame.<br/> :param window: the rolling window.|pandas DataFrame with the time-series sum over the past 'window' days.|
|sma(df, window=10)| Wrapper function to estimate simple moving average (SMA).<br/>:param df: a pandas DataFrame.<br/>:param window: the rolling window.|pandas DataFrame with the time-series sma over the past 'window' days|
|stddev(df, window=10)|Wrapper function to estimate rolling standard deviation.<br/>:param df: a pandas DataFrame.<br/>:param window: the rolling window.|pandas DataFrame with the time-series standard deviation over the past 'window' days|
|correlation(x, y, window=10)|Wrapper function to estimate rolling corelations.<br/>:param df: a pandas DataFrame.<br/>:param window: the rolling window.|pandas DataFrame with the time-series correlation over the past 'window' days|
|covariance(x, y, window=10)|Wrapper function to estimate rolling covariance.<br/>:param df: a pandas DataFrame.<br/>:param window: the rolling window.|pandas DataFrame with the time-series covariance over the past 'window' days|
|rolling_rank(na)|Auxiliary function to be used in pd.rolling_apply<br/>:param na: numpy array.<br/>:return: The rank of the last value in the array.|pandas DataFrame with the time-series rolling rank over the past 'window' days|
|ts_rank(df, window=10)|Wrapper function to estimate rolling rank.<br/>:param df: a pandas DataFrame.<br/>:param window: the rolling window.|pandas DataFrame with the time-series ts_rank over the past 'window' days|
|rolling_prod(na)|Auxiliary function to be used in pd.rolling_apply<br/>:param na: numpy array.|The product of the values in the array|
|product(df, window=10)|Wrapper function to estimate rolling product.<br/>:param df: a pandas DataFrame.<br/>:param window: the rolling window.|pandas DataFrame with the time-series product over the past 'window' days.|
|ts_min(df, window=10)|Wrapper function to estimate rolling min.<br/>:param df: a pandas DataFrame.<br/>:param window: the rolling window.|pandas DataFrame with the time-series min over the past 'window' days.|
|ts_max(df, window=10)|Wrapper function to estimate rolling min.<br/>:param df: a pandas DataFrame.<br/>:param window: the rolling window.|pandas DataFrame with the time-series max over the past 'window' days.|
|delta(df, period=1)|Wrapper function to estimate difference.<br/>:param df: a pandas DataFrame.<br/>:param period: the difference grade.|pandas DataFrame with today’s value minus the value 'period' days ago.|
|delay(df, period=1)|Wrapper function to estimate lag.<br/>:param df: a pandas DataFrame.<br/>:param period: the lag grade.|pandas DataFrame with lagged time series|
|rank(df)|Cross sectional rank<br/>:param df: a pandas DataFrame.|pandas DataFrame with rank along columns.|
|scale(df, k=1)|Scaling time serie.<br/>:param df: a pandas DataFrame.<br/>:param k: scaling factor.|pandas DataFrame rescaled df such that sum(abs(df)) = k|
|ts_argmax(df, window=10)|Wrapper function to estimate which day ts_max(df, window) occurred on<br/>:param df: a pandas DataFrame.<br/>:param window: the rolling window.|pandas series with day number, indicates the time-series max over the past 'window' days.|
|ts_argmin(df, window=10)|Wrapper function to estimate which day ts_min(df, window) occurred on<br/>:param df: a pandas DataFrame.<br/>:param window: the rolling window.|pandas series with day number, indicates the time-series min over the past 'window' days.|
|decay_linear(df, period=10)|Linear weighted moving average implementation.<br/>:param df: a pandas DataFrame.<br/>:param period: the LWMA period|a pandas DataFrame with the LWMA.|
