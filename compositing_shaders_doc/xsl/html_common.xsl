<?xml version='1.0'?>
<xsl:stylesheet
  xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">

<xsl:import href="common.xsl"/>

<xsl:param name="admon.graphics" select="1"/>
<xsl:param name="admon.graphics.path">admonitions/</xsl:param>

<xsl:template name="user.head.content">
<meta charset="utf-8"/>
<meta http-equiv="X-UA-Compatible" content="IE=edge"/>
<meta name="viewport" content="width=device-width, initial-scale=1"/>
<meta name="Author" content="Michalis Kamburelis"/>
CASTLE-HEAD
</xsl:template>

<xsl:param name="html.stylesheet">compositing_shaders_doc.css</xsl:param>

<!-- Surround <abbrev> (but only inside the bibliography list,
     not in xrefs to bibliography entries) in bold.
     This template comes from
     /usr/share/sgml/docbook/stylesheet/xsl/nwalsh/html/biblio.xsl,
     it's also simplified since we know we always use abbrev for label. -->
<xsl:template name="biblioentry.label">
  <xsl:param name="node" select="."/>
  <b>
    <xsl:text>[</xsl:text>
    <xsl:apply-templates select="$node/abbrev[1]"/>
    <xsl:text>] </xsl:text>
  </b>
</xsl:template>

<!-- Our titlepage customization -->
<xsl:include href="html-titlepage/mytitlepage.xsl"/>

</xsl:stylesheet>
