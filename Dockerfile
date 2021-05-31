FROM r-base
COPY . /ribiosMath
WORKDIR /ribiosMath

# Install packages
RUN apt-get update -y && \
    apt-get install -y libssl-dev libcurl4-openssl-dev libfontconfig1-dev libxml2-dev libgit2-dev libharfbuzz-dev libfribidi-dev libfreetype6-dev libpng-dev libtiff5-dev libjpeg-dev r-cran-httr && \ 
    apt-get clean && rm -rf /var/lib/apt/lists/;

# Start R
# CMD [ "R --vanilla" ]

# Install devtools
RUN R -e "install.packages('devtools', dependencies=TRUE, repo='http://cran.rstudio.com/');" && \
    rm -rf /tmp/downloaded_packages/ /tmp/*.rds

# Install ribiosMath
RUN R -e "library(devtools); devtools::install_github('bedapub/ribiosMath');"

#Make check
RUN make check
