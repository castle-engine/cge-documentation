BASE_DOCUMENT_NAME := compositing_shaders_doc

HTML_CHUNKS_XSL := xsl/html_chunks.xsl
HTML_NOCHUNKS_XSL := xsl/html_nochunks.xsl
FO_XSL := xsl/fo.xsl
FOP_JAVA_MAX_HEAP_SIZE := 512M

# needed to recognize DejaVu* fonts,
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

include ../vrml_engine_internals/Makefile-docbook

# upload ---------------------------------------------------------------------

SSH_USERNAME=michalis
SSH_HOST=ssh.castle-engine.io
SSH_PATH=/home/michalis/cge-www/htdocs/compositing_shaders_doc/

SCP_TARGET=$(SSH_USERNAME)@$(SSH_HOST):$(SSH_PATH)
SCP_OPTIONS=

# Prepare and upload our output to be visible on
# https://castle-engine.io/compositing_shaders.php
.PHONY: upload
upload: clean
	sed -e 's|<!-- <xsl:import href="html_piwik.xsl"/> -->|<xsl:import href="html_piwik.xsl"/> <!-- enabled -->|' --in-place xsl/html_chunks.xsl
	$(MAKE) default
	sed -e 's|<xsl:import href="html_piwik.xsl"/> <!-- enabled -->|<!-- <xsl:import href="html_piwik.xsl"/> -->|' --in-place xsl/html_chunks.xsl
	cd output/xsl/ && tar czvf ../../output.tar.gz *
	scp $(SCP_OPTIONS) output.tar.gz $(SCP_TARGET)
	./upload_finalize.sh $(SSH_USERNAME) $(SSH_HOST) $(SSH_PATH)
	rm -f output.tar.gz
# Do not keep HTML version with Piwik enabled on local disk.
	rm -Rf output/xsl/html/
