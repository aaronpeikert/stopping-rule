FROM rocker/verse:4.5.1

# Install additional LaTeX packages
RUN tlmgr update --self && \
    tlmgr install \
        apa7 \
        amscls \
        amsmath \
        amsfonts \
        float \
        babel-english \
        biblatex-apa \
        booktabs \
        csquotes \
        biblatex \
        amsfonts \
        biber \
        multido \
        listings \
        amsmath \
        algorithms \
        pstricks \
        pst-plot \
        pst-node \
        pstricks-add \
        pst-arrow \
        pst-3d \
        pst-math \
        pst-tools \
        scalerel \
        pgf \
        caption \
        threeparttable \
        fancyhdr \
        endfloat \
        l3packages \
        geometry \
        framed \
        xcolor \
        upquote \ 
        l3packages
RUN Rscript -e "install.packages(c('knitr', 'kableExtra', 'ggplot2'))"
# Set working directory
WORKDIR /home/rstudio

# Default command
CMD ["R", "--interactive"]