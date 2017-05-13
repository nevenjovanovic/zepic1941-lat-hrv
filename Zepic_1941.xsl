<xsl:stylesheet version="2.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xpath-default-namespace="http://www.tei-c.org/ns/1.0">
<xsl:output method="html" version="5.0" encoding="UTF-8" indent="no" />
<!-- Adapted by Neven Jovanović to work on Žepić 1941 edition -->
<!-- Adapté par Philippe Verkerk pour l'affichage du Lewis&Short dans Collatinus.  -->

<!-- Adapted from Andromeda lsteiconv.xsl
https://code.google.com/p/andromeda-mac/
thanks to harry.sc...@gmail.com -->
<xsl:template match="/">
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    </head>
    <body>
        <xsl:apply-templates/>
    </body>
</xsl:template>
    
<!-- delete unnecessary parts -->

<xsl:template match="/TEI/text/front//*">
</xsl:template>
    
<xsl:template match="/TEI/teiHeader//*">
</xsl:template>
    
    <xsl:template match="/TEI/text/body/div/head">
    </xsl:template>

<!-- La balise entryFree est en principe la première que l'on rencontre.  -->
<!-- Elle déclenche l'entête (header) et le corps (body) du html.  -->
<!-- Je fais apparaître en petits caractères rouges le type de l'entrée, 
(sauf pour le type main) : hapax, spur, greek, etc…  -->

<xsl:template match="//entryFree"> 
<div class="body">
    <!-- what to do if the entry contains hyphens? -->
    <xsl:choose>
        <xsl:when test="matches(hi[1], '.+-')"><b><xsl:value-of select="./@ana"/></b><xsl:text> </xsl:text></xsl:when>
    <xsl:otherwise/>
    </xsl:choose>
<xsl:apply-templates />
</div>
</xsl:template>
    


<!-- La balise orth donne le lemme : comme c'est important, je le mets en gras.  -->
<xsl:template match="//entryFree/hi">
<b><xsl:value-of select="." /></b>
</xsl:template>

<!-- La balise gram : en italique.  -->
<xsl:template match="gram">
<i><xsl:apply-templates /></i>
</xsl:template>
</xsl:stylesheet>

