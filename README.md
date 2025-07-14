# Stopping Rule Sampling Procedures do not Jeopardize Generalizability

How to reproduce:

```
docker build --platform linux/amd64 -t stopping-rule .
docker run --rm --platform linux/amd64 -it -v "$(PWD)":/home/rstudio stopping-rule bash
Rscript -e "knitr::knit('main.Rnw')"
pdflatex main.tex
```