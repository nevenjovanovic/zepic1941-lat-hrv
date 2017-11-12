<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
<!-- copy.xslt: kopira sve xml elemente i sadržaj. Zovi iz svih drugih. -->
    <!-- Izvor: Mangano s. 274-275, "overriding copy idiom" -->
    <!-- 24. lis 2009 -->
        
        <xsl:template match="node() | @*"> 
            <xsl:copy> 
                <xsl:apply-templates select="@* | node()"/> 
            </xsl:copy> 
        </xsl:template> 
        
</xsl:stylesheet>
