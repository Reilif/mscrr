.PHONY: all usage clean


##
## macrodefinitions
##
LATEX        = pdflatex
LATEXOPTS    = -interaction=nonstopmode
TEXDIR       = tex
REMOVE       = *.tex~ *.aux *.glo *.gls *.cb *.dvi *.log *.toc *.lof *.bbl *.blg *.ilg *.pkt *.opts *.nav *.out *.snm *.tpt *.tex.flc *.vrb *.synctex.gz *.loa *.lot
#
txtfiles     = $(wildcard $(TEXDIR)/*.txt)
texfiles     = $(txtfiles:.txt=.tex)



##
## rules
##
all:	usage

usage:
	@echo "Bitte mit make <filename> aufrufen, keine Endung"

.tex:
	echo "Running pdflatex" && \
	${LATEX} ${LATEXOPTS} $@.tex && \
	${LATEX} ${LATEXOPTS} $@.tex && \
	${LATEX} ${LATEXOPTS} $@.tex 

clean:
	rm -vf $(REMOVE)
	cd $(TEXDIR) && rm -vf $(REMOVE)


