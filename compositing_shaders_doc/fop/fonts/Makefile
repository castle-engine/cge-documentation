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

dejavuserif.xml: /usr/share/fonts/truetype/ttf-dejavu/DejaVuSerif.ttf
	fop-ttfreader $< $@
dejavuserif-bold.xml: /usr/share/fonts/truetype/ttf-dejavu/DejaVuSerif-Bold.ttf
	fop-ttfreader $< $@

dejavusans.xml: /usr/share/fonts/truetype/ttf-dejavu/DejaVuSans.ttf
	fop-ttfreader $< $@
dejavusans-bold.xml: /usr/share/fonts/truetype/ttf-dejavu/DejaVuSans-Bold.ttf
	fop-ttfreader $< $@

myserif.xml: /usr/share/fonts/truetype/msttcorefonts/Times_New_Roman.ttf
	fop-ttfreader $< $@
myserif-bold.xml: /usr/share/fonts/truetype/msttcorefonts/Times_New_Roman_Bold.ttf
	fop-ttfreader $< $@
myserif-italic.xml: /usr/share/fonts/truetype/msttcorefonts/Times_New_Roman_Italic.ttf
	fop-ttfreader $< $@
myserif-bold-italic.xml:/usr/share/fonts/truetype/msttcorefonts/Times_New_Roman_Bold_Italic.ttf
	fop-ttfreader $< $@

mymonospace.xml: /usr/share/fonts/truetype/ttf-liberation/LiberationMono-Regular.ttf
	fop-ttfreader $< $@
mymonospace-bold.xml: /usr/share/fonts/truetype/ttf-liberation/LiberationMono-Bold.ttf
	fop-ttfreader $< $@
mymonospace-italic.xml: /usr/share/fonts/truetype/ttf-liberation/LiberationMono-Italic.ttf
	fop-ttfreader $< $@
mymonospace-bold-italic.xml: /usr/share/fonts/truetype/ttf-liberation/LiberationMono-BoldItalic.ttf
	fop-ttfreader $< $@

mysans.xml: /usr/share/fonts/truetype/msttcorefonts/Arial.ttf
	fop-ttfreader $< $@
mysans-bold.xml: /usr/share/fonts/truetype/msttcorefonts/Arial_Bold.ttf
	fop-ttfreader $< $@
mysans-italic.xml: /usr/share/fonts/truetype/msttcorefonts/Arial_Italic.ttf
	fop-ttfreader $< $@
mysans-bold-italic.xml: /usr/share/fonts/truetype/msttcorefonts/Arial_Bold_Italic.ttf
	fop-ttfreader $< $@

mysymbol.xml: /usr/share/fonts/truetype/openoffice/opens___.ttf
	fop-ttfreader $< $@

clean:
	rm -f $(ALL_OUTPUT)
