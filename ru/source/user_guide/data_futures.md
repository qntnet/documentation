# Фьючерсы
Quantnet предоставляет данные по 39 глобальным деривативам. Базовым активом которых являются валюты, кросс-курсы валют, индексы, облигации, энергия и металлы с мировых фьючерсных бирж.

##  Список фьючерсов
Выгрузим информацию о доступных фьючерсах:

```python
import qnt.data as qndata
future_list = qndata.load_futures_list()
```

Для каждого фьючерса предоставляется краткая информация:
```python
fut_list[0]
```
```python
{'id': 'ZN', 'name': '10-Year T-Note Futures'}
```

> С полным списком вы можете ознакомится по [ссылке](https://quantnet.ai/documentation/ru/user_guide/futures_full_list.html)

##  Данные базовых активов

Выгрузим данные за последние 5 лет. Для этого достаточно воспользоваться следующей функцией:

```python
import qnt.data    as qndata
import datetime    as dt

futures_data = qndata.load_futures_data(tail = dt.timedelta(days = 5*365),
                        forward_order = True)

futures_open = futures_data.sel(field="open")
futures_close = futures_data.sel(field="close")
futures_high = futures_data.sel(field="high")
futures_low = futures_data.sel(field="low")
volume_day = futures_datasel(field="vol")
open_interest = futures_data.sel(field="oi")
contracts_roll_over = futures_data.sel(field="roll")
```

| Наименование данных | Описание |
| ------------------ | -------- |
| open               | Цена на момент открытия биржи.|
| close              | Цена закрытия. |
| high               | Наибольшая дневная цена. |
| low                | Наименьшая цена. |
| vol                | Дневной объем торговли. Количество выполненных за день сделок.|
| oi                 | Количество фьючерсных контрактов в настоящее время находящихся в обращении на рынке.|
| roll              | Перенос фьючерсных контрактов.|

Допустим, нас интересуют фьючерсы на британский фунт. Они позволяют трейдерам оценивать стоимость фунтов стерлигнов по отношению к доллару США, а также возможность снизить риск колебаний валютных курсов на других внешнеторговых рынках. Код фьючерса согласно [CME Globex](https://www.cmegroup.com/globex.html):6B. 

Значит, интересующий нас массив с дневными данными о валютной паре на момент закрытия биржи выглядит следующим образом:

```python
GBP_USD = fut_data.sel(asset = '6B').sel(field = 'close')
```

Визуализируем данные.

```python
import plotly.graph_objs as go         # lib for charts
trend_fig = [
    go.Scatter(
        x = GBP_USD.to_pandas().index,
        y = GBP_USD,
        line = dict(width=1,color='black'))]

# draw chart
fig = go.Figure(data = trend_fig)
fig.update_yaxes(fixedrange=False) # unlock vertical scrolling
fig.show()
```

![GBP_USD](./pictures/GBD_USD.PNG)
