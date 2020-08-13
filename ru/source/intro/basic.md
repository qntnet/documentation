# Вasic concepts

Algorithmic trading means that the decision to buy or sell financial securities on the stock exchange is made based on a predetermined algorithm, with the intent to make a profit. On our platform, it is a python script that takes historical data as an input and gives a decision to buy/sell stock as output.

Say we have a capital $1M and want to invest in a portfolio consisting of three stocks: Apple Inc (AAPL), Alphabet Inc Class C (GOOG), Tesla Inc (TSLA). Let's have a look at the open price of these stocks for some period. Open is the price at which a security first trades upon the opening of an exchange on a trading day. We use historical data from the NASDAQ exchange as input:

| date         | AAPL   | GOOG     | TSLA   |
|:------------:| ------:| --------:| ------:|
| Mar 02, 2020 | 282.28 | 1,351.61 | 711.26 |
| Mar 03, 2020 | 303.67 | 1,399.42 | 805.00 |
| Mar 04, 2020 | 296.44 | 1,359.23 | 763.96 |

_Table 1: Stock open price in USD. NASDAQ exchange._


Now we need to come up with an algorithm by which our capital will be allocated between stocks. The algorithm is an intelligent search of some world event reflected in data. Usually, it is based on some idea. Suppose we have a hypothesis - invest more if open price is low. A hypothesis can be expressed through the formula:

\\\[ \frac{1}{open} \\\]

Hereinafter we will stand bold symbols for vectors. We can receive a matrix form of the algorithm by applying formula (2) to the table 1:

| date         | AAPL          | GOOG          | TSLA          |
|:------------:| -------------:| -------------:| -------------:|
| Mar 02, 2020 | 0.00354258183 | 0.00073985839 | 0.00140595562 |
| Mar 03, 2020 | 0.00329304837 | 0.00071458175 | 0.00124223602 |
| Mar 04, 2020 | 0.00337336391 | 0.00073571065 | 0.00130896905 |

 _Table 2: Matrix form of the algorithm._


Capital is distributed in proportion to the values of the matrix. To receive the shares of capital invested in each stock,
 the matrix (table 2) must be normalized ( \\\( l_1 \\\) norm) to one for each day:



| date         | AAPL   | GOOG   | TSLA   |
|:------------:| ------:| ------:| ------:|
| Mar 02, 2020 | 0.6228 | 0.1301 | 0.2472 |
| Mar 03, 2020 | 0.6273 | 0.1361 | 0.2366 |
| Mar 04, 2020 | 0.6226 | 0.1358 | 0.2416 |

_Table 3: Final weights of the algorithm._

Thus, $1M·0.6228 = $622,800 was allocated for AAPL on Mar 02, 2020; GOOG and TSLA received $130,100 and $247,200 
correspondingly. Matrix values (3) are called weights of the algorithm.

