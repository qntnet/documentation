Is and Os
-------

  Overfitting is easy. If one tries a significant amount of algorithm
  configurations, backtest can be fitted to any desired performance. The
  number of guidelines can help to avoid overfitting and estimate a real
  algorithm value.

## In sample

  By \"sample\" we mean a data sample. Thus, *in-sample* (IS) is an
  observed historical data, an analogue of the training set in machine
  learning. In order to prevent overfitting, one can test the model using
  a longer history or improve *in-sample* requirements.

## Out of sample

  The *out-of-sample* (OS) is an analogue of the testing set in machine
  learning. It is real-time data. We take each algorithm, test it day by
  day in a real environment and monitor its performance. It is wrong when
  an algorithm changes its strategy with time. All conditions must be
  consistent.

## Competition

  Say you are participating in QuantNet Contest in the 6 months competition and create an algorithm for stock trading. According to the rules, you have a good Sharpe (>1) and low correlation (<0.9) over the previous 3 years. The backtest for this 3 years is in-sample (Fig.3). Say we measure SR in-sample - SR_IS. The real time test for 6 months is out-of-sample and gives SR_OS. All strategies are rated by min(SR_IS, SR_OS). The larger the better.

![IS OS](isos.png)