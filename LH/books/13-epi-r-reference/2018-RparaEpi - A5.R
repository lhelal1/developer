## ----modestat, echo=FALSE, fig.align='center', out.width='80%', message=FALSE, warning=FALSE----
Y <- mtcars$hp
X <- mtcars$mpg

f1 <- lm(Y ~ X)
f2 <- lm(Y ~ X + I(X^2))

par(mfrow = c(1, 2))
plot(Y ~ X, pch = 16, col = "red")
lines(X[order(X)], f1$fitted.values[order(X)], col = "blue", lwd = 2)
text(x = 25, y = 250, labels = expression(f(X) == beta[0] + beta[1]*X), col = "darkgreen")
plot(Y ~ X, pch = 16, col = "red")
lines(X[order(X)], f2$fitted.values[order(X)], col = "blue", lwd = 2)
text(x = 25, y = 250, labels = expression(f(X) == beta[0] + beta[1]*X + beta[2]*X^2), col = "darkgreen")
par(mfrow = c(1, 1))

## ---- echo=TRUE, fig.align='center', out.width='90%', message=FALSE, warning=FALSE----
library(ggplot2)
library(Epi)
data(births)
sp <- ggplot(births,
             aes(x = gestwks,
                 y = bweight,
                 colour = I("red"))) +
  geom_point() +
  labs(x = "Tempo de gestação (semanas)",
       y = "Peso ao nascer (gramas)")
sp

## ----echo=FALSE, fig.align='center', message=FALSE, warning=FALSE, out.width='65%', paged.print=FALSE----
knitr::include_graphics('Figuras/RegLinear1.pdf')

## ----echo=FALSE, fig.align='center', message=FALSE, warning=FALSE, out.width='65%', paged.print=FALSE----
knitr::include_graphics('Figuras/RegLinear2.pdf')

## ----echo=FALSE, fig.align='center', message=FALSE, warning=FALSE, out.width='65%', paged.print=FALSE----
knitr::include_graphics('Figuras/RegLinear3.pdf')

## ----echo=FALSE, fig.align='center', message=FALSE, warning=FALSE, out.width='65%', paged.print=FALSE----
knitr::include_graphics('Figuras/RegLinear4.pdf')

## ---- echo=FALSE, message=FALSE, warning=FALSE, results='asis', fig.align='center', out.width="70%", out.height="60%"----

sp + geom_abline(intercept = -4000, slope = 200, colour = I("red")) +
  geom_abline(intercept = 6500, slope = -100, colour = I("blue")) +
  geom_abline(intercept = -4000, slope = 250) +
  geom_abline(intercept = 3000, slope = 0, colour = I("green"))


## ----echo=FALSE, fig.align='center', message=FALSE, warning=FALSE, out.width='70%', paged.print=FALSE----
knitr::include_graphics('Figuras/reg-erros.png')

## ---- echo=TRUE, message=FALSE, warning=FALSE----------------------------
mod.lm <- lm(bweight ~ gestwks,
             data = births)

## ---- echo=TRUE, message=FALSE, warning=FALSE----------------------------
print(mod.lm)

## ---- echo=TRUE, message=FALSE, warning=FALSE----------------------------
summary(mod.lm)

## ---- echo=TRUE, message=FALSE, warning=FALSE----------------------------
coef(mod.lm)
confint(mod.lm, level = 0.95)

## ---- echo=TRUE, fig.align='center', out.width='90%', message=FALSE, warning=FALSE----
par(mfrow = c(2,2))
plot(mod.lm)

## ---- echo=TRUE, fig.align='center', out.width='90%', message=FALSE, warning=FALSE----
par(mfrow = c(1,1))

sp + stat_smooth(method = "lm",
                 col = "blue",
                 se = FALSE)

## ---- echo=TRUE, message=FALSE, warning=FALSE----------------------------
summary(mod.lm)$coef

## ----echo=FALSE, fig.align='center', message=FALSE, warning=FALSE, out.width='45%', paged.print=FALSE----
knitr::include_graphics('Figuras/apresentralmres.png')

## ---- echo=TRUE, message=FALSE, warning=FALSE, results='asis'------------
mod.lm2 <- lm(bweight ~ gestwks + matage + factor(hyp),
             data = births)
library(knitr)
kable(x = summary(mod.lm2)$coef,
      format = "markdown",
      digits = c(2,2,3,4))

## ---- echo=TRUE, fig.align='center', out.width='60%', message=FALSE, warning=FALSE----
library(sjPlot)
plot_model(mod.lm2)

## ---- echo=TRUE, fig.align='center', out.width='60%', message=FALSE, warning=FALSE----
plot_model(mod.lm2,
           vline.color = "red")

## ---- echo=TRUE, fig.align='center', out.width='55%', message=FALSE, warning=FALSE----
plot_model(mod.lm2,
           show.values = TRUE, 
           value.offset = .3)

## ---- echo=TRUE, eval=FALSE, message=FALSE, warning=FALSE, results='asis'----
## tab_model(mod.lm2,
##           file = "tabela_lm_1.html")

## ---- echo=TRUE, eval=FALSE, message=FALSE, warning=FALSE, results='asis'----
## tab_model(mod.lm, mod.lm2,
##           file = "tabela_lm_1.html")

## ----echo=FALSE, fig.align='center', message=FALSE, warning=FALSE, out.width='50%', paged.print=FALSE----
knitr::include_graphics('Figuras/r4epi_sticker.png')

