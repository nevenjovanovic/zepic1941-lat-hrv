<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet
    xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="2.0">
    <xsl:output method = "xml" indent="yes" omit-xml-declaration="no" /> 
    <!-- transform entryFree to div -->
    <xsl:include href="copy.xsl"/>
    
    <xsl:template match="//*:entryFree">
        <xsl:element name="div" namespace="http://www.tei-c.org/ns/1.0">
            <xsl:attribute name="type">entryFree</xsl:attribute>
            <xsl:apply-templates select="@*"/>
            <xsl:element name="head" namespace="http://www.tei-c.org/ns/1.0"><xsl:value-of select="./@ana"/></xsl:element>
            <xsl:element name="p" namespace="http://www.tei-c.org/ns/1.0">
            <xsl:apply-templates select="node()" />
            </xsl:element>
        </xsl:element>
    </xsl:template>
    <xsl:template match="//*:gram">
        <xsl:element name="span" namespace="http://www.tei-c.org/ns/1.0">
            <xsl:attribute name="ana">gram</xsl:attribute>
            <xsl:apply-templates select="@*|node()" />
        </xsl:element>
    </xsl:template>
</xsl:stylesheet>

