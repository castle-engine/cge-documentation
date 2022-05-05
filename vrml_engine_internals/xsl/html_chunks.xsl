<?xml version='1.0'?>
<xsl:stylesheet
  xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
<xsl:import
  href="/usr/share/sgml/docbook/stylesheet/xsl/nwalsh/html/chunk.xsl"/>

<xsl:import href="html_common.xsl"/>

<!-- Keep Piwik code in a separate, optional file.
     Will be used only for HTML version that will be uploaded online.

     For offline version, don't use Piwik, for privacy.. -->
<!-- <xsl:import href="html_piwik.xsl"/> -->

<xsl:param name="navig.graphics" select="1"/>
<xsl:param name="navig.graphics.path">admonitions/</xsl:param>
<!-- PNG versions look bad (they are just a text rendered on an image...
     not sensible at all) -->
<!-- xsl:param name="navig.graphics.extension">.png</xsl:param> -->

<!-- This is useful, as this makes URLs to parts of chunked output
  more "stable" (i.e., if you keep the id of the chapter/section etc.,
  you can freely move it around, and URL stays the same) -->
<xsl:param name="use.id.as.filename">1</xsl:param>

</xsl:stylesheet>
