<?xml version='1.0'?>
<xsl:stylesheet
  xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
<xsl:import
  href="/usr/share/sgml/docbook/stylesheet/xsl/nwalsh/html/chunk.xsl"/>

<xsl:import href="html_common.xsl"/>

<!-- For now, leave text navigation, looks simpler -->
<xsl:param name="navig.graphics" select="0"/>

<!-- This is useful, as this makes URLs to parts of chunked output
  more "stable" (i.e., if you keep the id of the chapter/section etc.,
  you can freely move it around, and URL stays the same) -->
<xsl:param name="use.id.as.filename">1</xsl:param>

<xsl:template name="user.footer.content">

<!-- Piwik -->
<script type="text/javascript">
var pkBaseURL = (("https:" == document.location.protocol) ? "https://castle-engine.sourceforge.net/piwik/" : "http://castle-engine.sourceforge.net/piwik/");
document.write(unescape("%3Cscript src='" + pkBaseURL + "piwik.js' type='text/javascript'%3E%3C/script%3E"));
</script><script type="text/javascript">
try {
var piwikTracker = Piwik.getTracker(pkBaseURL + "piwik.php", 1);
piwikTracker.trackPageView();
piwikTracker.enableLinkTracking();
} catch( err ) {}
</script><noscript><p><img src="http://castle-engine.sourceforge.net/piwik/piwik.php?idsite=1" style="border:0" alt="" /></p></noscript>
<!-- End Piwik Tracking Code -->

</xsl:template>

</xsl:stylesheet>
