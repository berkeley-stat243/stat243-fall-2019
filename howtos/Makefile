.PHONY: gitInstall RandRStudioInstall windowsInstall 

all: gitInstall RandRStudioInstall windowsInstall 

clean:
	rm -rf *.md *.html 

%.html: %.Rmd
	echo $(<)
	Rscript -e "library(knitr); knit2html('$(<)')"

accessingUnixCommandLine.html: accessingUnixCommandLine.md
	echo $(<)
	pandoc -s -o accessingUnixCommandLine.html accessingUnixCommandLine.md
