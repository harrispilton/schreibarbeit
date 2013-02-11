# where to look for .tex files
#vpath %.tex ./ ./chapters/

#DEPENDS=diskussion.tex messungen.tex theorie.tex proben.tex refs.bib
RUBBER = rubber -f --pdf -s

.PHONY: all
da: da.pdf
all: da

tidy :	rm -f doc.ps *.out *.bbl *.blg *.aux *.toc *.idx *.log *.idx

%.pdf : %.tex
	$(RUBBER) $<
	rubber-info --check $<
#include ~/Documents/Tools/latex.mk
clean : rm -f *.out *.bbl *.blg *.aux *.toc *.idx *.log
