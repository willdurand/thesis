TARGET=thesis
BIBFILES=bib-refs.bib

PDFLATEX       = /Library/TeX/texbin/pdflatex -halt-on-error -file-line-error
BIBTEX         = /Library/TeX/texbin/bibtex
MAKEGLOSSARIES = /Library/TeX/texbin/makeglossaries

include Makefile.include
