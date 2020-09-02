#!/bin/bash
pdflatex main
bibtex main
makeglossaries main
pdflatex main
pdflatex main
