SOURCE_PNG := $(wildcard *_screen.png)

PNG_MINI_OUTPUT := $(SOURCE_PNG:screen.png=screen_mini.png)

EPS_OUTPUT := $(SOURCE_PNG:screen.png=screen.eps)

ALL_OUTPUT := $(PNG_MINI_OUTPUT)
# Do not automatically generate EPS images (see ../vrml_engine.xml comments)
# $(EPS_OUTPUT)

.PHONY: all
all: $(ALL_OUTPUT)

.PHONY: info
info:
	@echo 'Source PNG: $(SOURCE_PNG)'
	@echo 'PNG mini output: $(PNG_MINI_OUTPUT)'
	@echo 'EPS output: $(EPS_OUTPUT)'

.PHONY: clean
clean:
	rm -f $(ALL_OUTPUT)

# The size generated here must be synchronized with CSS
# width setting for figure in ../vrml_engine.css
DEFAULT_CONVERT = convert $< -geometry 300 $@

%_mini.png: %.png
	$(DEFAULT_CONVERT)

# The size generated here must be synchronized with CSS
# width setting for figure (within para_with_larger_screen_mini)
# in ../vrml_engine.css
CONVERT_TO_LARGER_MINI = convert $< -geometry 600 $@

over_triangulating_opengl_screen_mini.png: over_triangulating_opengl_screen.png
	$(CONVERT_TO_LARGER_MINI)

over_triangulating_wire_screen_mini.png: over_triangulating_wire_screen.png
	$(CONVERT_TO_LARGER_MINI)

over_triangulating_raytr_screen_mini.png: over_triangulating_raytr_screen.png
	$(CONVERT_TO_LARGER_MINI)

octree_example_screen_mini.png: octree_example_screen.png
	$(CONVERT_TO_LARGER_MINI)

CONVERT_PNG_TO_EPS = convert $< $@

%.eps: %.png
	$(CONVERT_PNG_TO_EPS)
