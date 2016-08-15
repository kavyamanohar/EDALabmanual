default: pdf
all: clean pdf html

pdf: clean EDALabmanual.pdf

html:
	latex2html -html_version 4.0,latin1,unicode EDALabmanual.tex

%.pdf: EDALabmanual.tex
	xelatex $<
	xelatex $<	# to include generated ToC

clean:
	rm -f EDALabmanual.pdf EDALabmanual.aux EDALabmanual.toc EDALabmanual.log
