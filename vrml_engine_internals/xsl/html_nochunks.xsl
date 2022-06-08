<?xml version='1.0'?>
<xsl:stylesheet
  xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
<xsl:import
  href="/usr/share/sgml/docbook/stylesheet/xsl/nwalsh/html/docbook.xsl"/>

<xsl:import href="html_common.xsl"/>

<!-- The html_chunks.xsl also includes this, but through a different XSL template,
     to keep content on top. -->
<xsl:template name="user.header.content">CASTLE-BODY-BEGIN</xsl:template>
<xsl:template name="user.footer.content">CASTLE-BODY-END</xsl:template>

</xsl:stylesheet>
