# Uniqueness

  Every good trading algorithm is a signal that reflects the imperfection of the market. The more capital involved in the signal, the less marginal this signal. A good algorithm must minimize intersection with well-known and already existing signals. Uniqueness can be defined as a maximum correlation of the algorithm to the pool of the existing algorithms: 

```math
r_{XY} = \frac{\text{cov}_{\textbf{X}\textbf{Y}}}{\sigma_{\textbf{X}} \sigma_{\textbf{Y}}} = \frac{\sum (\textbf{X} - \overline{\textbf{X}})(\textbf{Y} - \overline{\textbf{Y}})}{\sqrt{\sum (\textbf{X} - \overline{\textbf{X}})^2(\textbf{Y} - \overline{\textbf{Y}})^2}}
```

where ``$` \textbf{X}, \textbf{Y} `$`` are daily relative returns. The lower the correlation, the better. According to the rules, your algorithm must have a correlation coefficient lower than 0.9 over the last 3 years; otherwise, you need to have the largest Sharpe ratio among the correlated algorithms.