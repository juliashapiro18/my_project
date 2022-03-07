FROM rocker/tidyverse


# install R packages like this
# put as close to top of script as possible to make best 
# use of caching and speed up builds
RUN R -e "install.packages('here', repos = c(CRAN = 'https://cloud.r-project.org'))"



# make a project directory in the container
# we will mount our local project directory to this directory
RUN mkdir /finalproject


# copy contents of local folder to project folder in container
COPY ./ /finalproject/

WORKDIR /project
RUN R -e "renv::deactivate()"

# make R scripts executable
RUN chmod +x /finalproject/R/*.R

# make container entry point bash
CMD make output/report.html 