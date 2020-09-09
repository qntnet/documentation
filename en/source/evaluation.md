# Evaluation

## Statistics

**Function**

<pre lang="python">
qnt.stats.calc_stat(data, portfolio_history, slippage_factor=0.05, roll_slippage_factor=0.02,
              min_periods=1, max_periods=None,
              per_asset=False, points_per_year=None)
</pre>

**Parameters**

|Parameter|Explanation|
|---|---|
|data|xarray DataArray with market data of the companies your algorithm invests in.|
|portfolio_history|xarray DataArray filled with portfolio weights, corresponding to the investing algorithm.|
|slippage_factor|Transactions are punished with slippage equal to a given fraction of ATR14. We evaluate submissions using 5% of ATR14 for slippage. Read more about slippage [here]()|
|roll_slippage_factor| |
|min_periods| |
|max_periods| |
|per_asset| |
|points_per_year| |

**Output**

The output is the list of dicts with info for all tickers. For instance, the dict for 'IBIO INC' looks as follows:

|Parameter|Explanation|
|---|---|
|assets|list of ticker names to load|
|min_date|first date in data|
|max_date|last date of data|
|dims|tuple with ds.FIELD, ds.TIME, ds.ASSET in the specified order|
|forward_order|boolean, set true if you need the forward order of dates, otherwise the order is backward|
|tail|datetime.timedelta, tail size of data. min_date = max_date - tail|
