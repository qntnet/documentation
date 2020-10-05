# Forward looking 

При разработке своей стратегии вы, скорее всего, столкнетесь с проблемой forward looking.

Суть ее заключается в том, что при распределении весов ваша стратегия использует данные 
из будущего. В результате, вам будет казаться, что вы разработали хорошую стратегию с 
высоким Sharpe Ratio, но при подневном расчете ваша стратегия будет быстро деградировать
и Sharpe Ratio станет очень низким.

Есть несколько вспомогательных инструментов и подходов для решения этой проблемы.

## Stepper

Первый подход - это вести пошаговый расчет с отсечением хвоста данных на каждом шагу так, 
чтобы при расчете весов текущего дня данные из будущего были бы недоступны.

Для этого есть qnt.stepper. Вот пример для buy and hold:

```python
import qnt.data as qndata
import qnt.stats as qnstats
import qnt.xr_talib as qnxrtalib

import xarray as xr
import pandas as pd
from qnt.stepper import test_strategy
import datetime as dt
import qnt.exposure as qne

import xarray.ufuncs as xrf

# loads data
data = qndata.load_data(tail=dt.timedelta(days=4*365), dims=("time", "field", "asset"), forward_order=True)

# calculates TA indicators, they must not contain "forward looking"
wma = qnxrtalib.WMA(data.sel(field='close'), 120)
sroc = qnxrtalib.ROCP(wma, 60)
stoch = qnxrtalib.STOCH(data, 8, 3, 3)
k = stoch.sel(field='slowk')
d = stoch.sel(field='slowd')

# attaches TA indicators to the src data (you can add other data features)
data_ext = xr.concat([wma, sroc, k, d], pd.Index(['wma', 'sroc', 'k', 'd'], name='field'))
data_ext = xr.concat([data, data_ext], 'field')

# this is a global variable for the last day weights
weights = data.isel(time=0, field=0)
weights[:] = 0

# this function will be called step-by-step:
# first step: the data array contains a minimal number of days
# next step: the data array contains a one day more
# the process continues until data contains all days
def step(data):
    # extracts the last day
    latest = data.isel(time=-1)
    
    is_liquid = latest.sel(field="is_liquid")
    sroc = latest.sel(field='sroc')
    k = latest.sel(field='k')
    d = latest.sel(field='d')

    # calculate signals
    need_open = xrf.logical_and(sroc > 0.05, xrf.logical_and(k < 31, d < 31))
    need_close = xrf.logical_or(xrf.logical_or(sroc < -0.05, is_liquid == 0), xrf.logical_and(k > 92, d > 92))

    # modify weights accourding signals
    global weights
    weights.loc[need_open] = 1
    weights.loc[need_close] = 0

    # return normalized days for one day only
    return (weights / weights.sum('asset')).fillna(0)


# this line runs step-by-step calculation
output = test_strategy(
    data_ext, # data array for slicing
    step=step, # step function
    init_data_length=200 # data offset for the first step
)

# calc stats
stat = qnstats.calc_stat(data, output, max_periods=252 * 3)
print(stat.to_pandas())


qndata.write_output(output)
```

Однако, на практике этот подход может быть довольно медленным. 
К тому же, можно допустить ошибку и добавить фичу с "forward looking" в массив данных.
Потому, стоит ознакомиться с другими подходами.

## Forward looking test

Этот подход базируется на допущении, что, если стратегия не содержит "forward looking",
то при двух прогонах на полном наборе данных и наборе данных с отсечением последнего года
веса за пересекающийся промежуток времени будут одинаковы.

Вспомогательные функции реализованы в qnt.forward_looking и вот пример использования:

```python
import qnt.data as qndata
import qnt.stats as qnstats
import qnt.xr_talib as qnxrtalib
import qnt.forward_looking as qnfl


data = qndata.load_data(min_date="2010-01-01", max_date=None, forward_order=True, dims=("time", "field", "asset"))

# this function will be called twice
# - with the entire data
# - with the data excluding last year
def strategy(data):
    wma = qnxrtalib.WMA(data.sel(field='close'), 290)
    sroc = qnxrtalib.ROCP(wma, 35)

    is_liquid = data.sel(field="is_liquid")
    weights = is_liquid.where(sroc > 0.0125)

    weights = weights / weights.sum("asset", skipna=True)
    return weights.fillna(0.0)

# this function calculte 2 passes and compare overlapping outputs
output = qnfl.calc_output_and_check_forward_looking(data, strategy)

stat = qnstats.calc_stat(data, output, max_periods=252 * 3)
print(stat.to_pandas())

qndata.write_output(output)
```

Этот подход работает хорошо с техническим анализом и с предобученными нейронными сетями.
Но он работает плохо, если вы используете переобучение(или дообучение) нейронных сетей 
или если вы динамически решаете задачу оптимизации используя последние свежие данные.

В этом случае веса будут разниться и без реального пошагового прогона узнать 
значение In-Sample Sharpe ratio не получится.

## Отсечение Out Sample

Этот подход используется в machine learning.

Еще один подход, это выделить период, на котором вы будете проверять вашу модель 
(к примеру, последний год), и не использовать его для обучения вашей модели.

Когда вы обучите вашу модель на старых данных, вы можете проверить как ваша модель 
работает на out sample. Так вы сможете примерно оценить качество вашей модели.

Хороший пример использования данного подхода: стратегия Trend Following with Adjasting.
Эта стратегия использует оптимизацию параметров, это работает очень похоже на то,
как работают нейронные сети.

## precheck.ipynb

Последний подход - использовать precheck.ipynb. Эта вспомогательная книга позволяет 
позволяет проводить процесс пошаговой проверки стратегии также, как это происходит
после отправки вашей стратегии в соревнование.
Если вы поставите количество проходов 1000 или более, in-sample sharpe ratio будет такой же.

Этот инструмент похож на stepper, но обеспечивает наилучшую изоляцию данных при прогонах 
(лишние данные просто не будут загружены). Однако, такой процесс довольно затратный по времени.

Но даже 100 прогонов могут дать вам полезную информацию 
о реальной производительности вашей стратегии.

Также, можно в личном кабинете зарезервировать jupyter инстанс на сутки для проведения 
подобной проверки.

