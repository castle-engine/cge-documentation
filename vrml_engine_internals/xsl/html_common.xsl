<?xml version='1.0'?>
<xsl:stylesheet
  xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">

<xsl:import href="common.xsl"/>

<xsl:param name="admon.graphics" select="1"/>
<xsl:param name="admon.graphics.path">admonitions/</xsl:param>

<xsl:param name="html.stylesheet">vrml_engine.css</xsl:param>

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

<!-- Don't generate warnings about elems without an ID.

  Why these warnings are done?

    svn diff -r5387:5388 https://svn.sourceforge.net/svnroot/docbook/trunk/

  with log message

    "New parameter: id.warnings. If non-zero, warnings are generated
     for titled objects that don't have titles. True by default;
     I wonder if this will be too aggressive?"

  Note that this log message talks about titled objects
  without titles, but it's triggered on titled objects without IDs.
  I guess, these are done because IDs are used for HTML for URLs
  (as html filenames or anchor names), so IDs should be stable and look nice.
-->
<xsl:param name="id.warnings" select="0"></xsl:param>

</xsl:stylesheet>