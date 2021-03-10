LC = pdflatex
GL = makeglossaries
BI = bibtex
TARGET = main

all: $(TARGET).tex
	$(LC) $?
	$(BI) $(TARGET)
	$(GL) $(TARGET)
	$(LC) $?

clean:
	rm *.glo *.aux *.glg *.gls *.ist *.log *.toc
