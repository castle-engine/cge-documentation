BASE_DOCUMENT_NAME := compositing_shaders_doc

HTML_CHUNKS_XSL := xsl/html_chunks.xsl
HTML_NOCHUNKS_XSL := xsl/html_nochunks.xsl
FO_XSL := xsl/fo.xsl
FOP_JAVA_MAX_HEAP_SIZE := 512M

# needed to recognize DejaVuSerif fonts,
# needed in turn for Polish chars on titlepage
FOP_OPTIONS := -c fop/fonts/fop_config.xml

html_post = mkdir -p $(1)admonitions/ && \
  cp -f /usr/share/xml/docbook/stylesheet/nwalsh/images/*.png \
        /usr/share/xml/docbook/stylesheet/nwalsh/images/*.gif \
        $(1)admonitions/ && \
  mkdir -p $(1)images/callouts/ && \
  cp -f /usr/share/xml/docbook/stylesheet/nwalsh/images/callouts/*.png \
    $(1)images/callouts/ && \
  cp -f images/html/*.png $(1)images/ && \
  cp -f $(BASE_DOCUMENT_NAME).css $(1) && \
  mkdir -p $(1)images/ && \
  cp -f images/html/*.png $(1)images/ && \
  mkdir -p $(1)formulas/ && \
  cp -f formulas/*.png $(1)formulas/

.PHONY: default
default: validate-xmllint html pdf

include ../../vrml_engine_doc/Makefile-docbook

# upload ---------------------------------------------------------------------

SF_USERNAME=kambi
SF_HOST=web.sourceforge.net
SF_PATH=/home/project-web/castle-engine/htdocs/compositing_shaders_doc/

SF_CONNECT=$(SF_USERNAME),castle-engine@$(SF_HOST):$(SF_PATH)
SCP_OPTIONS=

# Prepare and upload our output under
# [http://castle-engine.sourceforge.net/compositing_shaders_doc/].
.PHONY: upload
upload: clean default
	cd output/xsl/ && tar czvf ../../output.tar.gz *
	scp $(SCP_OPTIONS) output.tar.gz $(SF_CONNECT)
	./sf_upload_finalize.sh $(SF_USERNAME) $(SF_PATH)
	rm -f output.tar.gz
