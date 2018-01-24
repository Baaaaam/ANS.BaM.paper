
paper=paper.pdf

all: ${paper} 

${paper}: paper.tex bibliography.bib 
	pdflatex paper.tex
	pdflatex paper.tex
	pdflatex paper.tex

bib:
	pdflatex paper.tex               
	bibtex paper
	pdflatex paper.tex
	pdflatex paper.tex

tidy:
	rm -vf *.aux *.log *.blg *.bbl

clean: tidy
	rm -vf paper.pdf
