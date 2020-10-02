## Improvement: Exposure

Если инвестиционная стратегия не проходит фильтр на максимальный вес инструмента в портфеле, 
можно использовать один из двух вариантов приведенных ниже что бы исправить алгоритм:

```python
import qnt.exposure as qne # расположены в этом пакете
```

### Remove days with high exposures

**Function**
```python
def rm_bad_days(weights, max_weight = 0.049):
```

**Parameters**

|Parameter|Explanation|
|---|---|
|weights|xarray DataArray with weights of the algorithm.|
|max_weight|the maximum stock exposure. Default value  = 0.049|

**Output**

На выходе получается xarray DataArray с исправленными весами, удовлетворяющими критерям фильтра, 
где занулены дни, когда exposure был больше max_weight.

**Example**

```python
fixed_output = qne.rm_bad_days(output)
qnstats.check_exposure(fixed_output)
```


### Mix weights

**Function**
```python
def mix_weights(primary, secondary, max_weight = 0.049):
```

**Parameters**

|Parameter|Explanation|
|---|---|
|primary|xarray DataArray with weights of the algorithm that is need to be improved.|
|secondary|xarray DataArray with weights of the algorithm that passes the maximum stock weight filter.|
|max_weight|the maximum stock exposure. Default value  = 0.049|

**Output**

На выходе получается xarray DataArray с исправленными весами, удовлетворяющими критерям фильтра,
сформированный из смеси весов primary и secondary. 

**Example**

```python 
mean_weights = data.sel(field='is_liquid')
mean_weights = mean_weights/abs(mean_weights).sum('asset')

improved_output = qne.mix_weights(output, mean_weights)

qnstats.check_exposure(improved_output)
```