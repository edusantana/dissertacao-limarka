
<xsl:template match="para[@role]">
  <fo:block padding="3pt"
            xsl:use-attribute-sets="normal.para.spacing">
    <xsl:choose>
      <xsl:when test="@role = 'intro'">
        <xsl:attribute name="border">0.5pt solid blue</xsl:attribute>
      </xsl:when>
      <xsl:when test="@role = 'concept'">
        <xsl:attribute name="border">1pt solid black</xsl:attribute>
        <xsl:attribute name="margin-left">14pt</xsl:attribute>
        <xsl:attribute name="background-color">#EFEFEF</xsl:attribute>
      </xsl:when>
      ...
    </xsl:choose>
    <xsl:call-template name="anchor"/>
    <xsl:apply-templates/>
  </fo:block>
</xsl:template>


