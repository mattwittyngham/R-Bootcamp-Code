```{r}
y <- seq(-111,111,24)
y
for (i in 1:length(y)) {
  if(y[i] < 0) { # Instead of the index number, it looks at the value and the index number per iteration with []
    y[i] = y[i] * 0 }
}
```
