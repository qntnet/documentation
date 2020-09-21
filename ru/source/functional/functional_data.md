# Финансовые данные

## Доступные инструменты
Выгрузим финансовые данные по акциям.
<p class="tip">Рекомендуем использовать данные начиная с 2015 года. Рыночные цены акций доступны с 2000 года</p>

```python
import qnt.data    as qndata
import datetime    as dt
data = qndata.load_data(tail = dt.timedelta(days = 4*365),
                        forward_order = True)
```
или

```python
import qnt.data    as qndata
data = qndata.load_data(min_date="2017-01-01",
                        forward_order = True)
```

```python
print(data.asset)
```
Доступно 953 финансовых инструмента

```python
<xarray.DataArray 'asset' (asset: 953)>
array(['AMEX:APT', 'AMEX:IBIO', 'AMEX:IGC', ..., 'NYSE:ZBH', 'NYSE:ZEN',
       'NYSE:ZTS'], dtype='<U12')
Coordinates:
  * asset    (asset) <U12 'AMEX:APT' 'AMEX:IBIO' ... 'NYSE:ZEN' 'NYSE:ZTS'
```

```python
data.asset.to_pandas().tail().to_list()
```

```python
['NYSE:YUMC', 'NYSE:ZAYO', 'NYSE:ZBH', 'NYSE:ZEN', 'NYSE:ZTS']
```
> С полным списком вы можете ознакомится по [ссылке](/documentation/ru/functional/functional_data_market_full_list.html)

## Выгрузка определённых компаний
В переменной **company_names** укажите **компании**, которыми хотите **торговать**.
```python

import qnt.data    as qndata
import datetime    as dt

company_names=['NASDAQ:AAPL', 'NASDAQ:GOOGL']

data = qndata.load_data(tail = dt.timedelta(days = 4*365),
                        assets=company_names,
                        forward_order = True)

```

или

```python

import qnt.data    as qndata
import datetime    as dt

company_names=['NASDAQ:AAPL', 'NASDAQ:GOOGL']

def get_data(instruments_names):
    return qndata.load_data(
                            tail = dt.timedelta(days=3*380),
                        forward_order = True,
                        dims=("time", "field", "asset"),
                         assets=instruments_names)

data = get_data(company_names)
```

или

```python


import qnt.data    as qndata

data = qndata.load_data(min_date="2017-01-01",
                        forward_order = True)

company_names = ['NASDAQ:AAPL', 'NASDAQ:GOOGL']
filter_data = data.sel(asset=company_names)
```

или

```python

def get_company_filter_by(data_all, company_names):
    filler = data_all.sel(asset=company_names)
    return filler

filter_data = get_company_filter_by(data, company_names)
```

## Market data

Подробную инструкцию как скачать рыночные данные можно получить в
[этом](https://quantnet.ai/referee/template/14262139/html) шаблоне.

| Наименование данных | Описание |
| ------------------ | -------- |
| open               | Open это цена, по которой ценные бумаги впервые торгуются после открытия биржи. Цена на момент открытия биржи. |
| close              | Цена закрытия. |
| high               | Наибольшая дневная цена. |
| low                | Наименьшая цена. |
| vol                | Дневной объем торговли. Выражается в количестве акций. |
| divs               | Дивиденды от акций. |
| split              | Указывает на дробление акций. Дробление = 2.0 означает, что в этот день произошло разделение акций как 2 к 1: количество акций удвоилось, а их цена снизилась вдвое. |
| split\_cumprod     | Произведение показателей дробления. Используется для восстановления первоначальных цен. |
| is\_liquid         | Мы торгуем только ликвидными акциями, поэтому этот параметр определяет, можно ли торговать конкретными акциями. Это топ-500 самых ликвидных акций за последний месяц (они отсортированы по объему торгов volume = sum (close \* vol)). Меняется раз в месяц. |

_Таблица 1. Доступные данные._

Более детальное описание данных можно найти
[здесь](https://quantnet.ai/blog/%d0%b2%d1%85%d0%be%d0%b4%d0%bd%d1%8b%d0%b5-%d0%b4%d0%b0%d0%bd%d0%bd%d1%8b%d0%b5-%d0%b4%d0%bb%d1%8f-%d1%81%d1%82%d1%80%d0%b0%d1%82%d0%b5%d0%b3%d0%b8%d0%b8-%d1%86%d0%b5%d0%bd%d0%b0-%d0%be%d1%82%d0%ba/).

```python

import qnt.data    as qndata
import datetime    as dt

assets_for_load=['NASDAQ:AAPL', 'NASDAQ:GOOGL']

data = qndata.load_data(tail = dt.timedelta(days = 4*365),
                        assets=assets_for_load,
                        forward_order = True)

price_open = data.sel(field="open")
price_close = data.sel(field="close")
price_high = data.sel(field="high")
price_low = data.sel(field="low")
volume_day = data.sel(field="vol")
is_liquid = data.sel(field="is_liquid")
```


```python
price_open.to_pandas().tail()
```




<div>
<style scoped>
    .dataframe tbody tr th:only-of-type {
        vertical-align: middle;
    }

    .dataframe tbody tr th {
        vertical-align: top;
    }

    .dataframe thead th {
        text-align: right;
    }
</style>
<table border="1" class="dataframe">
  <thead>
    <tr style="text-align: right;">
      <th>asset</th>
      <th>NASDAQ:AAPL</th>
      <th>NASDAQ:GOOGL</th>
    </tr>
    <tr>
      <th>time</th>
      <th></th>
      <th></th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <th>2020-08-13</th>
      <td>12816.160</td>
      <td>1508.21</td>
    </tr>
    <tr>
      <th>2020-08-14</th>
      <td>12860.820</td>
      <td>1513.61</td>
    </tr>
    <tr>
      <th>2020-08-17</th>
      <td>12999.000</td>
      <td>1515.97</td>
    </tr>
    <tr>
      <th>2020-08-18</th>
      <td>12807.480</td>
      <td>1526.12</td>
    </tr>
    <tr>
      <th>2020-08-19</th>
      <td>12990.124</td>
      <td>1552.49</td>
    </tr>
  </tbody>
</table>
</div>




```python
volume_day.to_pandas().tail()

```




<div>
<style scoped>
    .dataframe tbody tr th:only-of-type {
        vertical-align: middle;
    }

    .dataframe tbody tr th {
        vertical-align: top;
    }

    .dataframe thead th {
        text-align: right;
    }
</style>
<table border="1" class="dataframe">
  <thead>
    <tr style="text-align: right;">
      <th>asset</th>
      <th>NASDAQ:AAPL</th>
      <th>NASDAQ:GOOGL</th>
    </tr>
    <tr>
      <th>time</th>
      <th></th>
      <th></th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <th>2020-08-13</th>
      <td>1.803128e+06</td>
      <td>1114479.0</td>
    </tr>
    <tr>
      <th>2020-08-14</th>
      <td>1.455773e+06</td>
      <td>1090490.0</td>
    </tr>
    <tr>
      <th>2020-08-17</th>
      <td>1.051122e+06</td>
      <td>998010.0</td>
    </tr>
    <tr>
      <th>2020-08-18</th>
      <td>9.294262e+05</td>
      <td>1399978.0</td>
    </tr>
    <tr>
      <th>2020-08-19</th>
      <td>1.290599e+06</td>
      <td>1515515.0</td>
    </tr>
  </tbody>
</table>
</div>



## Fundamental data


Подробную инструкцию как скачать фундаментальные данные можно получить
в [этом](https://quantnet.ai/referee/template/15325118/html) шаблоне.

### Instant indicators.

Такие данные отражают текущее состояние компании. Значение обновляется с
каждым выпущенным отчетом компании.

| Наименование данных    | Описание                                                                                                                                                        |
| ---------------------- | --------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| assets                 | Total Assets                                                                                                                                                    |
| assets\_curr           | Current Assets                                                                                                                                                  |
| equity                 | Common equity                                                                                                                                                   |
| liabilities            | Total liabilities                                                                                                                                               |
| liabilities\_curr      | Current liabilities                                                                                                                                             |
| debt\_lt               | Long term debt                                                                                                                                                  |
| debt\_st               | Short term debt                                                                                                                                                 |
| goodwill               | Goodwill                                                                                                                                                        |
| inventory              | Total inventory                                                                                                                                                 |
| ivestment\_short\_term | Short-Term investments                                                                                                                                          |
| invested\_capital      | Invested capital                                                                                                                                                |
| shares                 | Total shares outstanding. Если в отчете не содержится соответствующей информации, мы используем issued shares.                                                  |
| ppent                  | Property Plant and Equipment Net                                                                                                                                |
| cash\_equivalent       | Cash equivalents это инвестиционные ценные бумаги, предназначенные для краткосрочного инвестирования; у них высокое кредитное качество и высокая ликвидность.   |

_Таблица 1. Instant indicators._

### Periodical indicators.

Такие данные соответствуют определенному периоду. Например, доход. Для
периодических индикаторов вы можете получать информацию с квартальной,
годовой периодичностью или получить значение «за последние двенадцать
месяцев».

|  Наименование данных  | Описание                                  |
| ------------------- | ----------------------------------------- |
| sales\_revenue\_ltm / sales\_revenue\_af / sales\_revenue\_qf     | Revenue from sales |
| total\_revenue\_ltm / total\_revenue\_af / total\_revenue\_qf     | Total revenue |
| cashflow\_op\_ltm / cashflow\_op\_af / cashflow\_op\_qf    | Cashflow from operating activities |
| cogs\_ltm / cogs\_af / cogs\_qf | Cost of goods sold |
| divs\_ltm / divs\_af / divs\_qf | Dividends |
| eps\_ltm / eps\_af / eps\_qf | Earnings per share |
| income\_ltm / income\_af / income\_qf /  | Income |
| interest\_expense\_ltm / interest\_expense\_af / interest\_expense\_qf | Interest expense |
| operating\_expense\_ltm / operating\_expense\_af / operating\_expense\_qf | Operating expenses |
| operating\_income\_ltm / operating\_income\_af / operating\_income\_qf | Operating income |
| rd\_expense\_ltm / rd\_expense\_af / rd\_expense\_qf | Research and development expense |
| sales\_ps\_ltm / sales\_ps\_af / sales\_ps\_qf | sales per share |
| sga\_expense\_ltm / sga\_expense\_af / sga\_expense\_qf   | Selling, general & administrative expense |

_Таблица 2. Periodical indicators._

Мы используем фундаментальные данные из отчетов компании, хранящиеся в
базе данных EDGAR. Информацию можно найти вручную, введя ticket компании
на [сайте](https://www.sec.gov/edgar/searchedgar/companysearch.html)
комиссии по ценным бумагам и биржам США. Отчеты состоят из фактов
(facts), представленных в основном в формате XBRL. Наименование фактов
можно найти [здесь](http://xbrlview.fasb.org/yeti).