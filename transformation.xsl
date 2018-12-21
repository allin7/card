<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform"> 

<xsl:template match="/"> 
<html> 
<head> 
<title>You card</title> 
</head> 
<style> 
table { 
border-style: dashed; 
} 
</style> 
<body align="center"> 
<h1>Статистика ваших затрат</h1> 
<h4>Ваши затраты за первую неделю текущего месяца</h4> 
<table align="center"> 
<xsl:apply-templates select="operation[@week=1][@name=Sasha]"/> 
</table> 
<h4>Сколько вы потратили в сумме за вторую неделю</h4> 
<h4>Статистика ваших друзей за месяц</h4> 
<table align="center"> 
<xsl:apply-templates select="operation[@name=Liza]"/> 
<xsl:apply-templates select="operation[@name=Masha]"/> 
</table> 
</body> 
</html> 
</xsl:template> 

<xsl:template match="operation"> 
<tr> 
<td><xsl:value-of select="@name"/></td> 
<td><xsl:value-of select="@week"/></td> 
<td><xsl:value-of select="@day"/></td> 
<td><xsl:value-of select="@cost"/></td> 
<td><xsl:value-of select="@product"/></td> 
</tr> 
</xsl:template> 


</xsl:stylesheet>