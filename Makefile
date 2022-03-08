#Rule for cleaning the data
R/finaldata.txt: R/clean_data.R rawdata.txt
	Rscript R/clean_data.R


#Rule for making the figure
figs/barplot_suicidalthoughts.png: R/make_barplot_suicidalthoughts.R R/finaldata.txt
	Rscript R/make_barplot_suicidalthoughts.R

#Rule for making the report
output/report.html: Rmd/report.html R/finaldata.txt Rmd/report.Rmd figs/barplot_suicidalthoughts.png
	Rscript -e "rmarkdown::render('Rmd/report.Rmd')"
	mv Rmd/report.html output/report.html