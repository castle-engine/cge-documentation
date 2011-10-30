SOURCE := $(wildcard *.mml)
ALL_OUTPUT := $(subst .mml,.png,$(SOURCE)) $(subst .mml,.svg,$(SOURCE))

.PHONY: all
all: $(ALL_OUTPUT)

.PHONY: clean
clean:
	rm -f $(ALL_OUTPUT)

# We generate 1st huge file (large fontSize) them scale it down,
# otherwise upper sum bar of 1.mml is lost.
%.png: %.mml
	jeuclid-cli -fontSize 100 $< $@
	convert $@ -geometry 20% $@

%.svg: %.mml
	jeuclid-cli $< $@
