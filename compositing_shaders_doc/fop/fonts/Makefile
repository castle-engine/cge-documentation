# See comments in ../../../../vrml_engine_doc/fop/fonts/Makefile,
# in short: use latest version of FOP to make this.
#
# When upgrading FOP, you may need to rerun this, to have the output
# from the fop-ttfreader version matching the fop version.

ALL_OUTPUT := dejavuserif.xml dejavuserif-bold.xml dejavusans-bold.xml dejavusans.xml

all: $(ALL_OUTPUT)

dejavuserif.xml: /usr/share/fonts/truetype/ttf-dejavu/DejaVuSerif.ttf
	fop-ttfreader $< $@

dejavuserif-bold.xml: /usr/share/fonts/truetype/ttf-dejavu/DejaVuSerif-Bold.ttf
	fop-ttfreader $< $@

dejavusans.xml: /usr/share/fonts/truetype/ttf-dejavu/DejaVuSans.ttf
	fop-ttfreader $< $@

dejavusans-bold.xml: /usr/share/fonts/truetype/ttf-dejavu/DejaVuSans-Bold.ttf
	fop-ttfreader $< $@

clean:
	rm -f $(ALL_OUTPUT)
