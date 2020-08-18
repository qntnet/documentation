### Basic requirements.

-   The Sharpe Ration over the last 3 years should be >1$.

-   The Correlation coefficient over the last 3 years should be <0.9$
    with the algorithms of the same Sharpe Ratio or bigger.

-   Each user can submit no more than 20 algorithms. The good thing is
    that you can choose up to 20 algorithms for submission before the
    deadline.

-   Your algorithm should use only liquid stocks. We estimate the top
    500 liquid stocks every month (by sorting trading volume =
    sum(close\*vol)). See *is\_liquid* data in data section for more
    details.

-   The mean daily relative return must be positive.

-   The deadline to submit the algorithm is the end of each month -
    midnight $(00:00 \text{UTC})$ of the first day in the next month.