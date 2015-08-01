BASE_DOCUMENT_NAME := vrml_engine

html_post = mkdir -p $(1)admonitions/ ; \
  cp -f /usr/share/xml/docbook/stylesheet/nwalsh/images/*.png \
        /usr/share/xml/docbook/stylesheet/nwalsh/images/*.gif \
        $(1)admonitions/ ; \
  mkdir -p $(1)examples/ ; \
  cp -f examples/*_mini.png $(1)examples/ ; \
  cp -f vrml_engine.css $(1) ; \
  mkdir -p $(1)images/ ; \
  cp -f images/frustum_box_nasty_case.png \
        images/ghost_shadow.png \
	images/ghost_lack_of_shadow.png \
	images/fountain_screen_0_no_shadows.png \
	images/fountain_screen_1_shadows.png \
	images/fountain_screen_2_edges.png \
	images/fountain_screen_3_only_edges.png \
	images/button_view*.png \
	images/sv_triangle_*.png \
        images/*_mini.png \
        $(1)images/

HTML_CHUNKS_XSL := xsl/html_chunks.xsl
HTML_NOCHUNKS_XSL := xsl/html_nochunks.xsl
FO_XSL := xsl/fo.xsl

FOP_JAVA_MAX_HEAP_SIZE := 512M

FOP_OPTIONS := -c fop/fonts/fop_config.xml

.PHONY: default
default: validate-xmllint html pdf

include Makefile-docbook

# ----------------------------------------------------------------------------

.PHONY: distclean
distclean:
	rm -f vrml_engine_doc.tar.gz output.tar.gz

.PHONY: dist
dist: clean distclean
	rm -Rf /tmp/vrml_engine_doc_dist/
	mkdir /tmp/vrml_engine_doc_dist/
	cp -R ./ /tmp/vrml_engine_doc_dist/vrml_engine_doc
	rm -Rf /tmp/vrml_engine_doc_dist/vrml_engine_doc/shadow_maps_x3d/
	dircleaner /tmp/vrml_engine_doc_dist/ clean -d '.svn'
	find /tmp/vrml_engine_doc_dist/ -type d -and -exec chmod 755 '{}' ';'
	find /tmp/vrml_engine_doc_dist/ -type f -and -exec chmod 644 '{}' ';'
	cd /tmp/vrml_engine_doc_dist/; tar czvf vrml_engine_doc.tar.gz vrml_engine_doc/
	mv /tmp/vrml_engine_doc_dist/vrml_engine_doc.tar.gz .

# upload ---------------------------------------------------------------------

SF_USERNAME=kambi
SF_HOST=web.sourceforge.net
SF_PATH=/home/project-web/castle-engine/htdocs/vrml_engine_doc/

SF_CONNECT=$(SF_USERNAME),castle-engine@$(SF_HOST):$(SF_PATH)
SCP_OPTIONS=

# Prepare and upload all the stuff referenced under
# [http://castle-engine.sourceforge.net/vrml_engine_doc.php].
# Calls "dist" first, as "dist" also does clean
# (avoiding any unnecessary stuff in output/ later).
.PHONY: upload
upload:
	sed -e 's|<!-- <xsl:import href="html_piwik.xsl"/> -->|<xsl:import href="html_piwik.xsl"/> <!-- enabled -->|' --in-place xsl/html_chunks.xsl
	$(MAKE) dist html html-nochunks pdf
	sed -e 's|<xsl:import href="html_piwik.xsl"/> <!-- enabled -->|<!-- <xsl:import href="html_piwik.xsl"/> -->|' --in-place xsl/html_chunks.xsl
	tar czvf output.tar.gz output/
	scp $(SCP_OPTIONS) output.tar.gz $(SF_CONNECT)
	scp $(SCP_OPTIONS) vrml_engine_doc.tar.gz $(SF_CONNECT)
	./sf_upload_finalize.sh $(SF_USERNAME) $(SF_PATH)
# Do not keep HTML version with Piwik enabled on local disk.
	rm -Rf output/xsl/html/ output/xsl/html-nochunks/
