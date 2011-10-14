BASE_DOCUMENT_NAME := compositing_shaders_doc

HTML_CHUNKS_XSL := xsl/html_chunks.xsl
HTML_NOCHUNKS_XSL := xsl/html_nochunks.xsl
FO_XSL := xsl/fo.xsl
FOP_JAVA_MAX_HEAP_SIZE := 512M

html_post = mkdir -p $(1)admonitions/ ; \
  cp -f /usr/share/xml/docbook/stylesheet/nwalsh/images/*.png \
        /usr/share/xml/docbook/stylesheet/nwalsh/images/*.gif \
        $(1)admonitions/ ; \
  cp -f $(BASE_DOCUMENT_NAME).css $(1)

.PHONY: default
default: validate-xmllint html pdf

include ../../vrml_engine_doc/Makefile-docbook
