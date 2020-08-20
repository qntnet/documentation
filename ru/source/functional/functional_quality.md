# Оценка качества стратегии

## Коэффициент шарпа
> Включите в ваш код данную функцию, для просмотра коэффициент шарпа. Это основной показатель эффективности стратегий. Чем выше значение, тем стабильней стратегия.
```python
import qnt.stats   as qnstats

def estimate_sharpe(data, weights_final):
    stat = qnstats.calc_stat(data, weights_final, slippage_factor=0.05)
    days = len(stat.coords["time"])
    returns = stat.loc[:, "relative_return"]
    
    sharpe_ratio = qnstats.calc_sharpe_ratio_annualized(
        returns,
        max_periods=days,
        min_periods=days).to_pandas().values[-1]
    
    print(f'Sharpe ratio = {sharpe_ratio}')
```
**Пример** использования. **Стратегия** - за **основу весов** портфеля **берутся цены открытия** ликвидных финансовых инструментов.

```python
import qnt.data    as qndata
import qnt.stats   as qnstats
import qnt.stepper as qnstepper
import datetime    as dt


data = qndata.load_data(tail = dt.timedelta(days = 4*365),
                        forward_order = True)

def estimate_sharpe(data, weights):
    stat = qnstats.calc_stat(data, weights, slippage_factor=0.05)
    days = len(stat.coords["time"])
    returns = stat.loc[:, "relative_return"]
    
    sharpe_ratio = qnstats.calc_sharpe_ratio_annualized(
        returns,
        max_periods=days,
        min_periods=days).to_pandas().values[-1]
    
    print(f'Sharpe ratio = {sharpe_ratio}')

def get_weights_strategy(data):
    
    strategy = data.sel(field="open") * data.sel(field="is_liquid")

    weights = strategy / abs(strategy).sum('asset')
    return weights


weights = get_weights_strategy(data)

estimate_sharpe(data, weights)


qnstats.print_correlation(weights, data)
qnstepper.write_output(weights)
```

```python

Sharpe ratio = 0.902248100035541

WARNING! This strategy correlates with other strategies.
The number of systems with a larger Sharpe ratio and correlation larger than 0.8: 1
The max correlation value (with systems with a larger Sharpe ratio): 0.9027474076009878
Current sharpe ratio(3y): 0.812552583846677

```


## Другие статистики


```python
def print_stat(stat):
    """Prints selected statistical key indicators:
       - the global Sharpe ratio of the strategy;
       - the global mean profit;
       - the global volatility;
       - the maximum drawdown.

       Note that Sharpe ratio, mean profit and volatility
       apply to  max simulation period, and not to the
       rolling basis of 3 years.
    """

    days = len(stat.coords["time"])

    returns = stat.loc[:, "relative_return"]

    equity = stat.loc[:, "equity"]

    sharpe_ratio = qnstats.calc_sharpe_ratio_annualized(
        returns,
        max_periods=days,
        min_periods=days).to_pandas().values[-1]

    profit = (qnstats.calc_mean_return_annualized(
        returns,
        max_periods=days,
        min_periods=days).to_pandas().values[-1])*100.0

    volatility = (qnstats.calc_volatility_annualized(
        returns,
        max_periods=days,
        min_periods=days).to_pandas().values[-1])*100.0

    max_ddown = (qnstats.calc_max_drawdown(
        qnstats.calc_underwater(equity)).to_pandas().values[-1])*100.0

    print("Sharpe Ratio         : ", "{0:.3f}".format(sharpe_ratio))
    print("Mean Return [%]      : ", "{0:.3f}".format(profit))
    print("Volatility [%]       : ", "{0:.3f}".format(volatility))
    print("Maximum Drawdown [%] : ", "{0:.3f}".format(-max_ddown))
```
Вызовем функцию из предыдущего примера

```python
print_stat(data, weights)
```

```python
Sharpe Ratio         :  0.902
Mean Return [%]      :  18.294
Volatility [%]       :  20.276
Maximum Drawdown [%] :  31.493
```