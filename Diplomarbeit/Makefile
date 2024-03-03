
NAME=diplomarbeit

MARKDOWNDIR := markdown
MARKDOWNFILES  := $(wildcard $(MARKDOWNDIR)/*.md)

MARKDOWNTEXFILES := $(patsubst %.md,%.md.tex,$(MARKDOWNFILES))
TEXFILES :=$(wildcard text/*.tex) $(MARKDOWNTEXFILES)

LATEX=latexmk
LATEXOPT=-shell-escape -silent -use-make- -pdf -f


all: tex pdf

.PHONY: tex
.PRECIOUS: $(MARKDOWNTEXFILES)

tex $(MARKDOWNTEXFILES): $(MARKDOWNFILES)
	cd $(MARKDOWNDIR) && make $(notdir $(MARKDOWNTEXFILES))

pdf: diplomarbeit.tex $(TEXFILES)
	${LATEX} ${LATEXOPT} ${NAME}.tex  || grep -Pzo '(?s)! \N*\.\n.*?\n\n' ${NAME}.log
	makeglossaries ${NAME}
	# makeindex -c -q ${NAME}.idx
	# bibtex ${NAME}
	${LATEX} ${LATEXOPT} ${NAME}.tex  || grep -Pzo '(?s)! \N*\.\n.*?\n\n' ${NAME}.log

clean: cleanlatex cleantex

cleanlatex:
	${LATEX} -c ${NAME}.tex
	rm -rf *.gl* *.ist *.dvi *.bbl *.acr *.alg *.acn svg-inkscape/ res/*/*-converted-to.pdf *.out.ps

cleantex:
	rm -rf $(MARKDOWNTEXFILES)


showvar:
	@echo MARDOWNFILES: $(MARKDOWNFILES)
	@echo MARKDOWNTEXFILES: $(MARKDOWNTEXFILES)
	@echo TEXFILES: $(TEXFILES)

inotify:
	make ${WHAT} || true
	while inotifywait -e close_write diplomarbeit.tex $(MARKDOWNTEXFILES) $(TEXFILES) Makefile; do make ${WHAT} || true ; date; done
