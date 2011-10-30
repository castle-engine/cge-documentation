SOURCE := $(wildcard ../*.png)
HTML_OUTPUT := $(subst ../,,$(SOURCE))

.PHONY: all
all: $(HTML_OUTPUT)

.PHONY: clean
clean:
	rm -f $(HTML_OUTPUT)

# The size generated here must be synchronized with CSS
# width setting for figure in ../../compositing_shaders_doc.css
%.png: ../%.png
	convert $< -geometry 400 $@
