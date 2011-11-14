<?xml version='1.0'?>
<xsl:stylesheet
  xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
<xsl:import
  href="/usr/share/sgml/docbook/stylesheet/xsl/nwalsh/html/chunk.xsl"/>

<xsl:import href="html_common.xsl"/>

<!-- Keep Piwik code in a separate, optional file.
     Will be used only for HTML version that will be uploaded online.

     For offline version, don't use Piwik, as it can eat too much bandwidth
     on SF webspace... I managed to get "This project has been temporarily blocked
     for exceeding its bandwidth threshold" on 2011-11-08, when heavily
     browsing this. -->
<!-- <xsl:import href="html_piwik.xsl"/> -->

<!-- For now, leave text navigation, looks simpler -->
<xsl:param name="navig.graphics" select="0"/>

<!-- This is useful, as this makes URLs to parts of chunked output
  more "stable" (i.e., if you keep the id of the chapter/section etc.,
  you can freely move it around, and URL stays the same) -->
<xsl:param name="use.id.as.filename">1</xsl:param>

</xsl:stylesheet>
