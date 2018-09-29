.PHONY: clean install

all: instructions.pdf install

instructions.pdf: instructions.tex
	texi2pdf --shell-escape instructions.tex

install:
	cp instructions.pdf ..

clean:
	$(RM) -r *.pyg *.aex *.log *.rtf *.toc *.out *.aux *.pdf *.fls *.fdb_latexmk _minted-instructions
