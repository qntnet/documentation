**Important notification**

В этом разделе содержится подробная справочная документация по API. Он предназначен для людей, уже знакомых с платформой QuantNet. Для первого посещения предпочтительней начать с [этого раздела](https://quantnet.ai/documentation/en/getting-started/first/first.html).

# Data loading

## Assets

Доступные финансовые инструменты с краткой информацией можно скачать с помощью следующей функции:

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

На выход функция подаёт список словарей с информацией по всем тикерам. Например, словарь для «IBIO INC» выглядит следующим образом:

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

Его можно использовать, задав временной интервал:

<pre lang="python">
import qnt.data as qndata          # data loading and manipulation
assets = qndata.load_assets(min_date = '2015-01-01', max_date = '2018-01-01') # two boundaries

# one boundary
# assets = qndata.load_assets(min_date = '2018-01-01')
# assets = qndata.load_assets(max_date = '2020-01-01')
</pre>

Или загрузить информацию за последние несколько лет:

<pre lang="python">
import qnt.data as qndata          # data loading and manipulation
assets = qndata.load_assets(tail = dt.timedelta(days=4*365))
</pre>


## Market data

Рыночные данные в основном связаны с дневными ценами акций. [Этот] (https://quantnet.ai/referee/template/14262139/html) шаблон показывает, как загружать рыночные данные.

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

На выход функция подаёт массив xarray DataArray с историческими данными для выбранных активов.

|asset<br/>time|NASDAQ:AAPL<br/> |NASDAQ:GOOGL<br/> |
|---|---|---|
|2016-09-09|2929.92|798.77|
|2016-09-12|2874.20|784.52|
|2016-09-13|3010.28|794.01|
|2016-09-14|3044.44|787.53|
|2016-09-15|3188.08|790.01|

**Example**
Например, можно загрузить рыночные данные для Apple Inc и Google Inc за последние 4 года:

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

[Этот] (https://quantnet.ai/referee/template/15325118/html) шаблон показывает, как загрузить подготовленные фундаментальные данные.

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

**Output**

На выход функция подаёт массив данных xarray DataArray с историческими фундаментальными данными.

**Example**

Мы собрали и обработали большой объем фундаментальных данных для пользователей. Список подготовленных данных можно найти [здесь] (https://quantnet.ai/documentation/ru/functional/functional_data.html). Ниже приведены два способа загрузки подготовленных данных.

Первый способ - просто перечислить наименования подготовленных фундаментальных показателей.

<pre lang="python">
data_lbls = ['assets', 'liabilities']
# One can load corresponding data
fun_data1 = qnt.data.secgov_load_indicators(assets,time_coord = data.time, standard_indicators = data_lbls)
</pre>

Второй способ загрузки фундаментальных данных более сложен, но дает пользователю больше возможностей. Каждый отчет для [комиссии по ценным бумагам и биржам](https://www.sec.gov/) содержит "факты", которые перечислены [здесь](http://xbrlview.fasb.org/yeti/). Можно сделать свой собственный конструктор, который состоит из названия данных и список соответствующих "фактов".

Некоторые индикаторы отображают текущее состояние и регулярно обновляются в каждом отчете.

<pre lang="python">
instant_data_list = [InstantIndicatorBuilder('assets' , ['us-gaap:Assets'], True),
                     InstantIndicatorBuilder('liabilities', ['us-gaap:Liabilities'], True),
                    InstantIndicatorBuilder('shares', ['us-gaap:CommonStockSharesOutstanding',
                                                       'us-gaap:CommonStockSharesIssued'], True)]
</pre>

Остальные соответствуют определенному периоду. Например, операционные расходы и продажи. Для периодических индикаторов вы можете получать информацию с квартальной, годовой периодичностью или значением за последние двенадцать месяцев - "ltm". Для этих целей поставьте соответственно qf, af или ltm:

<pre lang="python">
period_data_list = [PeriodIndicatorBuilder('operating_expense', ['us-gaap:OperatingExpenses'], True, 'qf'),
                   PeriodIndicatorBuilder('sales_revenue', ['us-gaap:SalesRevenueGoodsNet',
                                                            'us-gaap:SalesRevenueNet',
                                                            'us-gaap:RevenueFromContractWithCustomerIncludingAssessedTax'
                                                           ], True, 'af'),
                    PeriodIndicatorBuilder('sga_expense', ['us-gaap:SellingGeneralAndAdministrativeExpense'], True, 'ltm')]
</pre>
