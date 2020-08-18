Long Position vs. Short Position
----------------------------------

## Basic information
To sell a stock, one just needs to assign it a negative weight in the algorithm.Assume, you have the following weights:

|date          | AAPL | GOOG | TSLA |
| ------------ | ---- | ---- | ---- |
| Mar 02, 2020 | 0.4  |  0.4 | -0.2 |


The positive sign means that we hold a long position (buy shares); the
negative sign means we hold a short position (sell shares). Thus, the
capital 1M will be allocated in the following proportions:
$400,000$ to AAPL; $400,000$ to GOOG; $-200,000$ to TSLA.

## Details

For our platform, we use a simplified treatment of short positions and
mirror long positions. For a real-environment trading one needs to
remember that short positions are associated with higher risks. An
investor selling shares that he does not yet own (as a rule, from his
broker's account) is obligated to buy them back after a while. Thus, the
investor expects a fall in prices and plays against the market. It leads
to several risks:

-   Some stocks are hard to borrow. The reason is high demand, a limited
    number of securities and so on. For a short position for such
    securities, the broker charges an additional fee.

-   The short seller is responsible for paying dividends on shares to
    the person from whom they were borrowed.

-   The potential losses in a short sale can be endless, because
    theoretically the maximum price of shares is unlimited. On the other
    hand, the share price will not fall below zero, so the maximum
    profit is limited.

-   Even if the estimate is correct, the moment may be inappropriate. It
    is extremely unprofitable to hold a short position at a rising price
    for a long time.