MAIN  = main
BUILD = build

.PHONY: all pdf watch clean distclean open

all pdf: $(MAIN).pdf

# latexmk handles pdflatex/biber reruns and dependency tracking
$(MAIN).pdf: FORCE
	latexmk $(MAIN).tex
	cp $(BUILD)/$(MAIN).pdf $(MAIN).pdf

FORCE:

watch:
	latexmk -pvc $(MAIN).tex

open: $(MAIN).pdf
	open $(MAIN).pdf

clean:
	latexmk -C $(MAIN).tex
	find $(BUILD) -mindepth 1 ! -name .gitkeep -delete

distclean: clean
	rm -f $(MAIN).pdf
