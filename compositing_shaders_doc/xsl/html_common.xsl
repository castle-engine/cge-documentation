<?xml version='1.0'?>
<xsl:stylesheet
  xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">

<xsl:import href="common.xsl"/>

<xsl:param name="admon.graphics" select="1"/>
<xsl:param name="admon.graphics.path">admonitions/</xsl:param>

<xsl:param name="html.stylesheet">compositing_shaders_doc.css</xsl:param>

<!--
I removed
  qandaset  toc
I don't want to see qandaset table of contents.
-->
<xsl:param name="generate.toc">
appendix  toc,title
article/appendix  nop
article   toc,title
book      toc,title,figure,table,example,equation
chapter   toc,title
part      toc,title
preface   toc,title
qandadiv  toc
reference toc,title
sect1     toc
sect2     toc
sect3     toc
sect4     toc
sect5     toc
section   toc
set       toc,title
</xsl:param>

<!-- Make line break on <?lb?> in DocBook source.
  From [http://sourceware.org/ml/docbook/2004-04/msg00031.html]
  which is based on DocBook Def Guide -->
<xsl:template match="processing-instruction('lb')">
  <br/>
</xsl:template>

<!-- Insert alpha character. -->
<xsl:template match="processing-instruction('alpha')">&#x03B1;</xsl:template>

<xsl:param name="chunker.output.doctype-public">-//W3C//DTD HTML 4.01 Transitional//EN</xsl:param>
<xsl:param name="chunker.output.doctype-system">http://www.w3.org/TR/html4/loose.dtd</xsl:param>

</xsl:stylesheet>
