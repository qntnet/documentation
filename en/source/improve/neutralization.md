Neutralization
--------------

 Let's analyse the stock performance of 500 large companies listed on
stock exchanges in the United States. The so called index S&P500. As
one can see, the market growth on average. S&P500 return varies widely
from a few percent to over 20% in some
[years](https://www.cnbc.com/2017/06/18/the-sp-500-has-already-met-its-average-return-for-a-full-year.html).
Does it mean that simply opening a long positions is a good idea?

![sp500](snp500.png)


Despite the growth, the Sharpe ratio of S&P500 is less than 1. One of
the main reason - periodic financial crises. There are some of them:

-   1987 year. "Black Monday." The Dow Jones Index fell 22.6% in the
    United States. The reason is the massive outflow of investors from
    regional markets.

-   2000-2003. The Crash of the Dotcoms. The crisis caused by the
    massive investment of money in Internet projects.

-   2007--2008. Great Recession. The combination of banks unable to
    provide funds to businesses, and homeowners paying down debt rather
    than borrowing and spending, resulted in the Great Recession that
    began in the U.S. officially in December 2007 and lasted until June
    2009, thus extending over 19 months.

The consequences of crises are visible on the chart and appear as market
drops of up to 30%. It is dangerous to think that the crisis is horror
stories from the past. The beginning of 2020 is marked by the fall of
the economy caused by Coronavirus.

**Neutralization**

We can exclude the market influence by balancing long/short positions
for our algorithm. So, it will be a market-neutral. The neutralization
could be done for the whole market or each industry (or smaller group).
Mathematically, market neutralization is elementary.

Say, we a have a vector of **weights<sub>i</sub>** for i day, given by
the algorithm. In order to make the algorithm a market-neutral, one
needs to apply the following equation for each day:

**neutralized\_weights<sub>i</sub>** = **weights<sub>i</sub>** - mean(**weights<sub>i</sub>**).

Now the mean of weights for each day is zero. It means that we neither
invest money nor withdraw it from the market.