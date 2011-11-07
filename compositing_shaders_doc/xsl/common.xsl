<?xml version='1.0'?>
<xsl:stylesheet
  xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">

<!-- I don't want the "draft" watermark.
     Besides this causes many fop warnings that it cannot
     handle background-position-xxx parameters (they are
     harmless, but clutter the output). -->
<xsl:param name="draft.mode">no</xsl:param>

<xsl:param name="section.autolabel" select="1"></xsl:param>

<xsl:param name="section.label.includes.component.label" select="1"></xsl:param>

</xsl:stylesheet>
