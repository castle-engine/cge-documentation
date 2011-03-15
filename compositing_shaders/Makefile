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
	      compositing_shaders.ps

# make screenshots_targz, to submit screenshots as PNG
.PHONY: screenshots_targz
screenshots_targz:
	rm -f compositing_shaders_screenshots.tar.gz
	tar czvf compositing_shaders_screenshots.tar.gz *.png
