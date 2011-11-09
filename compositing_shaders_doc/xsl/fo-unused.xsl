<!-- Make ulink (but not other xrefs) in FO output blue.
  Based on [http://www.sagehill.net/docbookxsl/CustomXrefs.html#CustomXrefStyle]. -->
<xsl:attribute-set name="xref.properties">
  <xsl:attribute name="color">
    <xsl:choose>
      <xsl:when test="self::ulink">blue</xsl:when>
      <xsl:otherwise>inherit</xsl:otherwise>
    </xsl:choose>
  </xsl:attribute>
</xsl:attribute-set>

<!-- ======================================================================= -->

<xsl:attribute-set name="xref.properties">
  <!-- Make ulink using monospace font, looks nicer in print?
       Resigned, we have enough monospace things in our paper? -->
  <xsl:attribute name="font-family">
    <xsl:choose>
      <xsl:when test="self::ulink">monospace</xsl:when>
      <xsl:otherwise>inherit</xsl:otherwise>
    </xsl:choose>
  </xsl:attribute>
</xsl:attribute-set>

<!-- ======================================================================= -->

<!-- Make <phrase role="polish-characters"> use font with Polish characters. -->
<xsl:template match="phrase[@role= 'polish-characters']">
  <fo:inline font-family="DejaVuSerif">
    <xsl:apply-templates/>
  </fo:inline>
</xsl:template>

<!-- ======================================================================= -->

<xsl:attribute-set name="shade.verbatim.style">
  <xsl:attribute name="background-color">#FAFAFA</xsl:attribute>
  <xsl:attribute name="border">0.5pt solid black</xsl:attribute>

  <!-- We want larger padding around <screen>, to make it nicely stand out.
       Usually we want it from all sides (vertical and horizontal),
       but for <screen> inside an <orderedlist> we want to be able to disable
       vertical padding (as it causes ugly look then, list number baseline
       is shifted).

       This allows you to use db-no-vertical-padding processing instruction
       inside <screen> to disable vertical padding.

       (Not used after all: we do use <screen> inside listitems after all.) -->

  <xsl:attribute name="padding">
    <xsl:choose>
      <xsl:when test="processing-instruction('db-no-vertical-padding')">0in 0.05in 0in 0.05in</xsl:when>
      <xsl:otherwise>0.05in</xsl:otherwise>
    </xsl:choose>
  </xsl:attribute>
</xsl:attribute-set>

<!-- ======================================================================= -->

<!-- Set title font to serif (by default it's sans-serif in DocBook).
     Not sure which is better - - - default for TeX is serif titles,
     but many books use sans-serif for titles.
     Maybe stay with DocBook default for now here. -->
<xsl:param name="title.font.family">serif</xsl:param>

<!-- ======================================================================= -->

<!-- Indent the first line of each paragraph.
     This isn't perfect - - - paragraphs inside <figure> should not be indented,
     and the first paragraphs inside sections / chapters should not be indented.
     But it's close. -->

<!-- To make more space between lines, just like in TeX PDF version. -->
<xsl:param name="line-height">1.3</xsl:param>

<xsl:template match="chapter/para|section/para|preface/para|appendix/para">
  <fo:block text-indent="1.8em"
    space-before.optimum="0.8em"
    space-before.minimum="0.6em"
    space-before.maximum="1.0em">
    <xsl:call-template name="anchor"/>
    <xsl:apply-templates/>
  </fo:block>
</xsl:template>

<!-- Lists look best when they are indented too, just like first lines
     of normal paragraphs above. -->
<xsl:template match="chapter/itemizedlist|section/itemizedlist|chapter/orderedlist|section/orderedlist">
  <fo:block margin-left="2em">
    <xsl:apply-imports/>
  </fo:block>
</xsl:template>

<!-- ======================================================================= -->

<!-- A little larger top/bottom margins, make text nicely separated
     from header/footer. Other papers also seem to have larger margins
     than what DocBook generates by default.

     (Not used after all... defaults are actually better?) -->
<xsl:param name="body.margin.top">0.7in</xsl:param>
<xsl:param name="body.margin.bottom">0.7in</xsl:param>
