FROM bioconductor/bioconductor_docker:RELEASE_3_23-R-4.6.0

RUN apt-get update && \
    apt-get install -y \
        libcairo2-dev \
        libnetcdf-dev \
        libxml2 \
        libxt-dev \
        libssl-dev \
        curl \
        && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/*

COPY install_packages.R /tmp/
RUN Rscript /tmp/install_packages.R && \
    rm /tmp/install_packages.R

WORKDIR /home/rstudio

HEALTHCHECK --interval=30s --timeout=10s --start-period=5s --retries=3 \
    CMD R -e "cat('R is running\n')" || exit 1

CMD ["/init"]
