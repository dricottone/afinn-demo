.PHONY: install
install:
	sudo pacman -S r-tidyr r-tidytext r-textdata
	@echo "Interactively run R and call the following commands:"
	@echo "> library(tidytext)"
	@echo "> get_sentiments(\"afinn\")"

.PHONY: run
run:
	Rscript main.r

