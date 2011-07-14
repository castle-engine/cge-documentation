.PHONY: rebuild
rebuild: clean compositing_shaders.pdf

# "1" like a "process once". Links, biblio etc. is not resolved (correctly).
.PHONY: 1
1:
	pdflatex -file-line-error -interaction=nonstopmode compositing_shaders.tex

compositing_shaders.pdf: compositing_shaders.tex
	pdflatex -file-line-error -interaction=nonstopmode compositing_shaders.tex
	bibtex compositing_shaders
	pdflatex -file-line-error -interaction=nonstopmode compositing_shaders.tex
	pdflatex -file-line-error -interaction=nonstopmode compositing_shaders.tex

.PHONY: clean
clean:
	rm -f compositing_shaders.pdf \
	      compositing_shaders.aux \
	      compositing_shaders.log \
	      compositing_shaders.out \
	      compositing_shaders.bbl \
	      compositing_shaders.blg \
	      compositing_shaders.dvi \
	      compositing_shaders.ps \
	      compositing_shaders.zip

# make screenshots_targz, to submit screenshots as PNG
.PHONY: screenshots_targz
screenshots_targz:
	rm -f compositing_shaders_screenshots.tar.gz
	tar czvf compositing_shaders_screenshots.tar.gz *.png

# make zip for submission of the "Final LaTeX sources"
.PHONY: zip
zip:
	rm -f compositing_shaders_src.zip
	zip compositing_shaders_src.zip \
	   $(shell find -maxdepth 1 -name '*.png') \
	   compositing_shaders.bib \
	   compositing_shaders.tex \
	   Makefile README.txt
