DOCUMENT := compositing_shaders_sem_dokt_polish

$(DOCUMENT).pdf: $(DOCUMENT).tex
	pdflatex -file-line-error -interaction=nonstopmode $(DOCUMENT).tex
	pdflatex -file-line-error -interaction=nonstopmode $(DOCUMENT).tex

.PHONY: 1
1:
	pdflatex -file-line-error -interaction=nonstopmode $(DOCUMENT).tex

.PHONY: clean
clean:
	rm -f $(DOCUMENT).pdf \
	      $(DOCUMENT).aux \
	      $(DOCUMENT).log \
	      $(DOCUMENT).out \
	      $(DOCUMENT).dvi \
	      $(DOCUMENT).ps \
	      $(DOCUMENT).nav \
	      $(DOCUMENT).toc \
	      $(DOCUMENT).snm \
	      $(DOCUMENT).vrb
