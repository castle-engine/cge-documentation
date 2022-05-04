# See comments in ../../../../vrml_engine_doc/fop/fonts/Makefile,
# in short: use latest version of FOP to make this.
#
# When upgrading FOP, you may need to rerun this, to have the output
# from the fop-ttfreader version matching the fop version.

ALL_OUTPUT := dejavuserif.xml dejavuserif-bold.xml \
  dejavusans-bold.xml dejavusans.xml \
  myserif.xml myserif-bold.xml myserif-italic.xml myserif-bold-italic.xml \
  mymonospace.xml mymonospace-bold.xml mymonospace-italic.xml mymonospace-bold-italic.xml \
  mysans.xml mysans-bold.xml mysans-italic.xml mysans-bold-italic.xml \
  mysymbol.xml

all: $(ALL_OUTPUT)

dejavuserif.xml: /usr/share/fonts/truetype/dejavu/DejaVuSerif.ttf
	fop-ttfreader $< $@
dejavuserif-bold.xml: /usr/share/fonts/truetype/dejavu/DejaVuSerif-Bold.ttf
	fop-ttfreader $< $@

dejavusans.xml: /usr/share/fonts/truetype/dejavu/DejaVuSans.ttf
	fop-ttfreader $< $@
dejavusans-bold.xml: /usr/share/fonts/truetype/dejavu/DejaVuSans-Bold.ttf
	fop-ttfreader $< $@

myserif.xml: /usr/share/fonts/truetype/liberation/LiberationSerif-Regular.ttf
	fop-ttfreader $< $@
myserif-bold.xml: /usr/share/fonts/truetype/liberation/LiberationSerif-Bold.ttf
	fop-ttfreader $< $@
myserif-italic.xml: /usr/share/fonts/truetype/liberation/LiberationSerif-Italic.ttf
	fop-ttfreader $< $@
myserif-bold-italic.xml:/usr/share/fonts/truetype/liberation/LiberationSerif-BoldItalic.ttf
	fop-ttfreader $< $@

mymonospace.xml: /usr/share/fonts/truetype/liberation/LiberationMono-Regular.ttf
	fop-ttfreader $< $@
mymonospace-bold.xml: /usr/share/fonts/truetype/liberation/LiberationMono-Bold.ttf
	fop-ttfreader $< $@
mymonospace-italic.xml: /usr/share/fonts/truetype/liberation/LiberationMono-Italic.ttf
	fop-ttfreader $< $@
mymonospace-bold-italic.xml: /usr/share/fonts/truetype/liberation/LiberationMono-BoldItalic.ttf
	fop-ttfreader $< $@

mysans.xml: /usr/share/fonts/truetype/liberation/LiberationSans-Regular.ttf
	fop-ttfreader $< $@
mysans-bold.xml: /usr/share/fonts/truetype/liberation/LiberationSans-Bold.ttf
	fop-ttfreader $< $@
mysans-italic.xml: /usr/share/fonts/truetype/liberation/LiberationSans-Italic.ttf
	fop-ttfreader $< $@
mysans-bold-italic.xml: /usr/share/fonts/truetype/liberation/LiberationSans-BoldItalic.ttf
	fop-ttfreader $< $@

mysymbol.xml: /usr/share/fonts/truetype/libreoffice/opens___.ttf
	fop-ttfreader $< $@

clean:
	rm -f $(ALL_OUTPUT)
