Market data
-----------

[This](https://quantnet.ai/referee/template/14262139/html) template
shows how to download market data.

| Наименование данных | Описание |
| ------------------ | -------- |
| open               | Open is the price at which a security first trades upon the opening of an exchange on a trading day. Daily open price.|
| close              | Daily close price. |
| high               | Daily high price. |
| low                | Daily low price. |
| vol                | Daily volume of trading in number of shares. |
| divs               | Dividends from shares. |
| split              | УIt indicates stock split. Split = 2.0 means that on this day there was a split of shares 2 to 1: the number of shares doubled, and their price halved. |
| split\_cumprod     | The product of split values from the very beginning. Used to restore original prices |
| is\_liquid         | We trade only liquid stocks, so this option determines whether this stock can be traded. This is top 500 most liquid stocks over the last month (sorted by trading volume = sum(close\*vol) ). It changes once a month. |

_Available market data._

One can find detailed data explanation
[here](https://quantnet.ai/blog/%d0%b2%d1%85%d0%be%d0%b4%d0%bd%d1%8b%d0%b5-%d0%b4%d0%b0%d0%bd%d0%bd%d1%8b%d0%b5-%d0%b4%d0%bb%d1%8f-%d1%81%d1%82%d1%80%d0%b0%d1%82%d0%b5%d0%b3%d0%b8%d0%b8-%d1%86%d0%b5%d0%bd%d0%b0-%d0%be%d1%82%d0%ba/).
