all: thesis.pdf

# thesis.pdf: thesis.tex references.bib
#       pdflatex thesis; bibtex thesis; pdflatex thesis; pdflatex thesis;

thesis.pdf: thesis.tex
		pdflatex thesis; bibtex thesis; pdflatex thesis; pdflatex thesis;

tidy:
		rm -fr *.toc *.aux *.bbl *.blg *.idx *.log *.out *~

clean: tidy
		rm -fr thesis.pdf
