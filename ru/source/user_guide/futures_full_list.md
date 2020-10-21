# Фьючерсы
Quantnet предоставляет данные по 39 глобальным деривативам. Базовым активом которых являются валюты, кросс-курсы валют, индексы, облигации, энергия и металлы с мировых фьючерсных бирж.

##  Список фьючерсов
Выгрузим информацию о доступных фьючерсах:

```python
import qnt.data as qndata
future_list = qndata.load_futures_list()
```

Полный список доступных деривативов:
```python
[{'id': 'ZN', 'name': '10-Year T-Note Futures'},
 {'id': 'N1U', 'name': '10-Year USD MAC Swap Futures'},
 {'id': 'ZT', 'name': '2-Year T-Note Futures'},
 {'id': 'ZQ', 'name': '30 Day Federal Funds Futures'},
 {'id': 'ZF', 'name': '5-Year T-Note Futures'},
 {'id': 'F1U', 'name': '5-Year USD MAC Swap Futures'},
 {'id': 'BRN', 'name': 'Brent Last Day Financial Futures'},
 {'id': '6B', 'name': 'British Pound Futures'},
 {'id': '6C', 'name': 'Canadian Dollar Futures'},
 {'id': 'CONF', 'name': 'CONF Futures'},
 {'id': 'CL', 'name': 'Crude Oil Futures'},
 {'id': 'FDAX', 'name': 'DAX Futures'},
 {'id': 'YM', 'name': 'E-mini Dow ($5) Futures'},
 {'id': 'E7', 'name': 'E-mini Euro FX Futures'},
 {'id': 'J7', 'name': 'E-mini Japanese Yen Futures'},
 {'id': 'NQ', 'name': 'E-mini Nasdaq-100 Futures'},
 {'id': 'ES', 'name': 'E-mini S&P 500 Futures'},
 {'id': 'EMD', 'name': 'E-mini S&P MidCap 400 Futures'},
 {'id': 'FGBM', 'name': 'Euro-Bobl Futures'},
 {'id': 'FGBL', 'name': 'Euro-Bund Futures'},
 {'id': 'FGBX', 'name': 'Euro-Buxl Futures'},
 {'id': 'GE', 'name': 'Eurodollar Time Deposit Futures'},
 {'id': '6E', 'name': 'Euro FX Futures'},
 {'id': 'FGBS', 'name': 'Euro-Schatz Futures'},
 {'id': 'FESX', 'name': 'EURO STOXX 50 Index Futures'},
 {'id': 'GC', 'name': 'Gold Futures'},
 {'id': '6J', 'name': 'Japanese Yen Futures'},
 {'id': 'F2MX', 'name': 'MDAX Futures'},
 {'id': 'FDXM', 'name': 'Mini-DAX Futures'},
 {'id': 'NKD', 'name': 'Nikkei/USD Futures'},
 {'id': 'SI', 'name': 'Silver Futures'},
 {'id': 'FSMI', 'name': 'SMI Futures'},
 {'id': 'SP', 'name': 'S&P 500 Futures'},
 {'id': 'GD', 'name': 'S&P GSCI Commodity Index Futures'},
 {'id': 'FSTX', 'name': 'STOXX Europe 50 Index Futures'},
 {'id': '6S', 'name': 'Swiss Franc Futures CHF/USD'},
 {'id': 'FTDX', 'name': 'TecDAX Futures'},
 {'id': 'FEU3', 'name': 'Three-Month EURIBOR Futures'},
 {'id': 'ZB', 'name': 'U.S. Treasury Bond Futures'}]
 ```