# FOP version required by this is > 0.20.5 !
#
# ttfreader from FOP version 0.20.5 doesn't work correctly
# with Java 1.5. This is already fixed in unstable version 0.92.
# You have to use FOP >= 0.92 to generate font XML files for FOP, they are
# compatible to use from FOP 0.20.5 too.
# See [http://threebit.net/mail-archive/fop-users/msg00220.html].
# I used this trick at some time (when writing my master's thesis):
# I generated fonts by FOP 0.92, and used them with older FOP 0.20.5.
#
# Note that for FOP 0.93, fonts are not compatible
# (see [http://xmlgraphics.apache.org/fop/0.93/upgrading.html]
# where they mention "If you are using font metrics files for
# version 0.20.5 or 0.92 or earlier, you have to regenerate
# them in the new format). You should
# generate fonts using FOP 0.93 only if you want to use them in FOP 0.93.
#
# Fortunately, FOP 0.93 is stable now, so you should just drop using
# any older FOP and don't worry about anything.

ALL_OUTPUT := dejavusans-bold.xml dejavuserif-italic.xml dejavusans.xml

all: $(ALL_OUTPUT)

dejavusans-bold.xml: /usr/share/fonts/truetype/dejavu/DejaVuSans-Bold.ttf
	fop-ttfreader $< $@

dejavuserif-italic.xml: /usr/share/fonts/truetype/dejavu/DejaVuSerif-Italic.ttf
	fop-ttfreader $< $@

dejavusans.xml: /usr/share/fonts/truetype/dejavu/DejaVuSans.ttf
	fop-ttfreader $< $@

clean:
	rm -f $(ALL_OUTPUT)
