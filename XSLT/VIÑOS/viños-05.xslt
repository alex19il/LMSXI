<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0"
xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:template match="/">
  <html>
  <body>
    <h2>Viños</h2>
    <table border="1">
      <tr bgcolor="#9acd32">
      <th>Nome</th>
      <th>Prezo</th>
    </tr>
    <xsl:for-each select="viños/viño">
    <xsl:sort select="prezo" data-type="number" order="descending"/>
      <tr>
        <td><xsl:value-of select="nome"/></td>
          <xsl:choose>
        <xsl:when test="prezo > ;30">
          <td bgcolor="#FF0000">
          <xsl:value-of select="prezo"/></td>
          </xsl:when>
        <xsl:when test="prezo < ;10">
         <td bgcolor="#008f39">
        <xsl:value-of select="prezo"/>
        </xsl:when>
        <xsl:otherwise>
          <td><xsl:value-of select="prezo"/></td>
        </xsl:otherwise>
      </xsl:choose>
      </tr>
    </xsl:if>
    </xsl:for-each>
    </table>
  </body>
  </html>
</xsl:template>
</xsl:stylesheet>
