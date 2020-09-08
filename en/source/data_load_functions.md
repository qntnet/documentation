**Important notification**

This section contains detailed API reference documentation. It is intended for people who are already familiar with QuantNet platform. One may prefer to visit [Getting started page](https://quantnet.ai/documentation/en/getting-started/first/first.html) for the first time.

# Data loading

## Assets

Available financial instruments with brief information can be downloaded using the following function:

**Function**

<pre lang="python">
qnt.data.load_assets(
        min_date: tp.Union[str, datetime.date] = '2007-01-01',
        max_date: tp.Union[str, datetime.date, None] = None,
        tail: tp.Union[datetime.timedelta, None] = None)
</pre>

**Parameters**

|Parameter|Explanation|
|---|---|
|min_date|first date in data|
|max_date|last date of data|
|tail|datetime.timedelta, tail size of data. min_date = max_date - tail|

**Output**

The output is the list of dicts with info for all tickers. For instance, the dict for 'IBIO INC' looks as follows:

<pre lang="python">
{'name': 'IBIO INC',
 'sector': 'Health Technology',
 'symbol': 'IBIO',
 'exchange': 'AMEX',
 'industry': 'Biotechnology',
 'id': 'AMEX:IBIO',
 'cik': '1420720',
 'FIGI': 'BBG000D5F2L9'}
</pre>

**Example** 

One can use it by setting the time interval:

<pre lang="python">
import qnt.data as qndata          # data loading and manipulation
assets = qndata.load_assets(min_date = '2015-01-01', max_date = '2018-01-01') # two boundaries

# one boundary
# assets = qndata.load_assets(min_date = '2018-01-01')
# assets = qndata.load_assets(max_date = '2020-01-01')
</pre>

Or load last several years information:

<pre lang="python">
import qnt.data as qndata          # data loading and manipulation
assets = qndata.load_assets(tail = dt.timedelta(days=4*365))
</pre>


## Market data

Market data is mainly connected to stocks daily prices. [This](https://quantnet.ai/referee/template/14262139/html) template shows how to download market data.

**Function**

<pre lang="python">
qnt.data.load_data(
        assets: tp.List[tp.Union[dict,str]] = None,
        min_date: tp.Union[str, datetime.date] = '2007-01-01',
        max_date: tp.Union[str, datetime.date, None] = None,
        dims: tp.Tuple[str, str, str] = (ds.FIELD, ds.TIME, ds.ASSET),
        forward_order: bool = False,
        tail: tp.Union[datetime.timedelta, None] = None) 
</pre>

**Parameters**

|Parameter|Explanation|
|---|---|
|assets|list of ticker names to load|
|min_date|first date in data|
|max_date|last date of data|
|dims|tuple with ds.FIELD, ds.TIME, ds.ASSET in the specified order|
|forward_order|boolean, set true if you need the forward order of dates, otherwise the order is backward|
|tail|datetime.timedelta, tail size of data. min_date = max_date - tail|

**Output**

The output is xarray DataArray with historical data for selected assets.
		
|asset<br/>time|NASDAQ:AAPL<br/> |NASDAQ:GOOGL<br/> |
|---|---|---|
|2016-09-09|2929.92|798.77|
|2016-09-12|2874.20|784.52|
|2016-09-13|3010.28|794.01|
|2016-09-14|3044.44|787.53|
|2016-09-15|3188.08|790.01|

**Example** 
One can load market data for Apple Inc and Google Inc for the past 4 years:

<pre lang="python">
import qnt.data as qndata          # data loading and manipulation
data = qnt.data.load_data(tail = dt.timedelta(days=4*365),
                        dims=("time", "field", "asset"),
                        assets=['NASDAQ:AAPL', 'NASDAQ:GOOGL'],
                        forward_order=True)
</pre>

<pre lang="python">
open_price = data.sel(field = 'open')
close_price = data.sel(field = 'close')
low_price = data.sel(field = 'low')
high_price = data.sel(field = 'high')

open_price.to_pandas().head()
</pre>

|asset<br/>time|NASDAQ:AAPL<br/> |NASDAQ:GOOGL<br/> |
|---|---|---|
|2016-09-09|2929.92|798.77|
|2016-09-12|2874.20|784.52|
|2016-09-13|3010.28|794.01|
|2016-09-14|3044.44|787.53|
|2016-09-15|3188.08|790.01|
		
		
## Fundamental data

[This](https://quantnet.ai/referee/template/15325118/html) template shows how to download prepared fundamental data.

**Function**

<pre lang="python">
qnt.data.secgov_load_indicators(assets, time_coord, standard_indicators=None, builders = None,
                           start_date_offset = datetime.timedelta(days=365*2),
                           fill_strategy=lambda xarr: xarr.ffill('time'))
</pre>

**Parameters**

|Parameter|Explanation|
|---|---|
|assets|the list of dicts with info for the desired tickers|
|time_coord|xarray DataArray with the time interval|
|standard_indicators|the list of standart fundamental indicators|
|builders|list of IndicatorBuilder or PeriodIndicatorBuilder classes. This parameter is designed for the custom uploading of the sec.gov facts|
|start_date_offset|datetime.timedelta, tail size of data. min_date = max_date - tail|
|fill_strategy|function, filling strategy|

