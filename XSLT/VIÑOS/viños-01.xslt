<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:template match="/">
<html> 
<body>
  <h2>VIÑOS</h2>
  <table border="1">
    <tr bgcolor="#9acd32">
      <th style="text-align:left">Nome</th>
      <th style="text-align:left">Precio</th>
    </tr>
    <tr>
      <td><xsl:value-of select="viños/viño/nome[1]"/></td>
      <td><xsl:value-of select="viños/viño/prezo[1]"/></td>
    </tr>
  </table>
</body>
</html>
</xsl:template>
</xsl:stylesheet>

