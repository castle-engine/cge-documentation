.PHONY: rebuild
rebuild: clean shadow_maps_x3d.pdf

# "1" like a "process once". Links, biblio etc. is not resolved (correctly).
.PHONY: 1
1:
	pdflatex -file-line-error -interaction=nonstopmode shadow_maps_x3d.tex

shadow_maps_x3d.pdf: shadow_maps_x3d.tex
	pdflatex -file-line-error -interaction=nonstopmode shadow_maps_x3d.tex
	bibtex shadow_maps_x3d
	pdflatex -file-line-error -interaction=nonstopmode shadow_maps_x3d.tex
	pdflatex -file-line-error -interaction=nonstopmode shadow_maps_x3d.tex

# first make .eps files by
#  for F in *.png; do convert $F `basename $F .png`.eps; done
shadow_maps_x3d.ps: shadow_maps_x3d.tex
	latex -file-line-error -interaction=nonstopmode shadow_maps_x3d.tex
	bibtex shadow_maps_x3d
	latex -file-line-error -interaction=nonstopmode shadow_maps_x3d.tex
	latex -file-line-error -interaction=nonstopmode shadow_maps_x3d.tex
	dvips shadow_maps_x3d.dvi

.PHONY: clean
clean:
	rm -f shadow_maps_x3d.pdf \
	      shadow_maps_x3d.aux \
	      shadow_maps_x3d.log \
	      shadow_maps_x3d.out \
	      shadow_maps_x3d.bbl \
	      shadow_maps_x3d.blg \
	      shadow_maps_x3d.dvi \
	      shadow_maps_x3d.ps

# upload to http://michalis.ii.uni.wroc.pl/~michalis/shadow_maps_x3d.pdf
.PHONY: upload
upload:
	scp shadow_maps_x3d.pdf michalis@michalis.ii.uni.wroc.pl:/home/michalis/public_html/

# make zip for http://egmcp1.cgv.tugraz.at/SRM_WEB3D2010 submission
# of the "Final LaTeX sources"
.PHONY: zip
zip:
	rm -f shadow_maps_x3d_src.zip
	zip shadow_maps_x3d_src.zip \
	   $(shell find -maxdepth 1 -name '*.png' -not -name todo.png) \
	   shadow_maps_x3d.bib \
	   shadow_maps_x3d.tex \
	   Makefile README.txt
