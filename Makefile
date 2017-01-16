Complete: Glossary Double Clean
Glossary:
	pdflatex -file-line-error STeleco.tex
	makeglossaries STeleco
Clean:
	rm *.aux *.gl* *.log *.toc *.xdy .*.swp *.out
Double:
	pdflatex -file-line-error STeleco.tex
	pdflatex -file-line-error STeleco.tex

