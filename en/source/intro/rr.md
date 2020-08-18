# Relative returns


## Basic information
The investment portfolio is redistributed according to the algorithm
once a day (the exchange has 252 working days a year). Redistribution
occurs at the beginning of the day. For our platform, we assume that the
purchase of shares occurs at the *open* price.

Equity grows with the correct prediction of price changes. The daily
change in equity is estimated after the end of the trading day and
strongly depends on the *close* price. *Close* is the price at which a
security last trades on a trading day.

Algorithm results, calculated on historical data, are usually presented
on an equity graph in order to understand the behaviour of the
cumulative profit. In our platform, we set initial equity to 1, so it
can be scaled easily.


![pnl](pnl.png)
_Pic. 1_


Relative returns simply indicate how much the capital has changed. For
the ``$`i^{th}`$`` day we introduce the relative returns (rr) in unit
fractions:

```math
\label{equity1}
    \text{rr}[i] = \frac{\text{equity}[i]}{\text{equity}[i-1]} - 1,
```

## Details

Sometimes it's important to understand how equity (cumulative profit,
PnL) is calculated. Say we allocate our capital in a proportion to the
vector of *weights* for the ``$`i^{th}`$`` day. Thus we buy shares at *open*
price and receive the following positions:

```math
\label{position}
    \textbf{pos}[i] = \left( \textbf{weights}[i]\cdot\text{equity}[i] \right)/\textbf{open}[i],
```

where bold variables stand for vectors in the space of shares; division
is elementwise. For the next day, an algorithm will generate a new
vector of ``$`\textit{weigths}[i+1]`$`` that will redistribute our capital
into new positions. Redistribution of portfolio instruments leads to
capital losses associated mainly with the broker's commission and the
*slippage*.

It is quite clear that the greater part of the capital we must
redistribute, the more broker's commission affects our profit. For real
trading, slippage has a more significant impact on profit than the
commission, so in our platform, we only consider slippage.

What is the slippage? We need a buyer/seller to sell/buy any shares. If
there is no offer on the exchange, the order is opened at a new price.
Thus, we buy the desired number of shares in parts, using offers to
buy/sell a specific number of shares at a specific price. We calculate
*slippage* according to the following formula:

```math
\label{slappage}
    \text{slippage}[i] = abs(\textbf{pos}[i] - \textbf{pos}[i-1])\cdot \textbf{ATR}(14) \cdot 0.05,
```
where ``$` \textbf{ATR}(14) `$`` - is a market volatility indicator. The Average True Range (``$` \textbf{ATR}(N) `$``) indicator is a moving average (MA) over N
days of the true range (**TR**) values:

```math
\begin{gathered}
\label{ATR}
    \textbf{TR}[i] = max(
\textbf{high}[i] - \textbf{low}[i]; \textbf{high}[i] - \textbf{close}[i-1]; \textbf{close}[i-1] - \textbf{low}[i]), \end{gathered}
```

```math
\label{ATR2}
    \textbf{ATR}(N) = MA(\textbf{TR},N).
```

Now we can introduce the equity formula for the i day:

```math
\begin{gathered}
    \text{equity}[i] = \text{equity}[i - 1] + (\textbf{open}[i] - \textbf{close}[i-1]) \cdot \\ \textbf{pos}[i-1] + (\textbf{close}[i] - \textbf{open}[i]) \cdot \textbf{pos}[i] - \text{slippage}[i]
    \label{equity}\end{gathered}
```