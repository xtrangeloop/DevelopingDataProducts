---
  
title: "Plotly Presentation"
date: "October 14, 2019"
output: presentation
---
  
  ## Code
  
  Attempt to graph the closing prices of major European stock indices from 1991 to 1998.

```{r, echo=TRUE, eval=FALSE}
library(plotly)
library(tidyr)
library(dplyr)
data("EuStockMarkets")
stocks <- as.data.frame(EuStockMarkets) %>%
  gather(index, price) %>%
  mutate(time = rep(time(EuStockMarkets), 4))
plot_ly(stocks, x = ~time, y = ~price, color = ~index, mode = "lines")
```

## Plot

```{r, echo=FALSE, eval=TRUE, message=FALSE}
library(plotly)
library(tidyr)
library(dplyr)
data("EuStockMarkets")
stocks <- as.data.frame(EuStockMarkets) %>%
  gather(index, price) %>%
  mutate(time = rep(time(EuStockMarkets), 4))
plot_ly(stocks, x = ~time, y = ~price, color = ~index, mode = "lines")
```
