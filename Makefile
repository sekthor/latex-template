LC = pdflatex
GL = makeglossaries
TARGET = main

all: $(TARGET).tex
	pdflatex $?
	makeglossaries $(TARGET)
	pdflatex $?

clean:
	rm *.glo *.aux *.glg *.gls *.ist *.log *.toc
