<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<xsl:stylesheet xmlns:dv="http://dfg-viewer.de/"
                xmlns:iso="http://purl.oclc.org/dsdl/schematron"
                xmlns:maps="dcg:maps"
                xmlns:mets="http://www.loc.gov/METS/"
                xmlns:mods="http://www.loc.gov/mods/v3"
                xmlns:oai="http://www.openarchives.org/OAI/2.0/"
                xmlns:saxon="http://saxon.sf.net/"
                xmlns:schold="http://www.ascc.net/xml/schematron"
                xmlns:xhtml="http://www.w3.org/1999/xhtml"
                xmlns:xlink="http://www.w3.org/1999/xlink"
                xmlns:xs="http://www.w3.org/2001/XMLSchema"
                xmlns:xsd="http://www.w3.org/2001/XMLSchema"
                xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance"
                xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
                version="2.0"><!--Implementers: please note that overriding process-prolog or process-root is 
    the preferred method for meta-stylesheets to use where possible. -->
   <xsl:param name="archiveDirParameter"/>
   <xsl:param name="archiveNameParameter"/>
   <xsl:param name="fileNameParameter"/>
   <xsl:param name="fileDirParameter"/>
   <xsl:variable name="document-uri">
      <xsl:value-of select="document-uri(/)"/>
   </xsl:variable>
   <!--PHASES-->
   <!--PROLOG-->
   <xsl:output xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
               method="xml"
               omit-xml-declaration="no"
               standalone="yes"
               indent="yes"/>
   <!--XSD TYPES FOR XSLT2-->
   <!--KEYS AND FUNCTIONS-->
   <xsl:key name="mets_ids" match="mets:*[@ID]" use="@ID"/>
   <xsl:key name="dmdsec_ids" match="mets:dmdSec" use="@ID"/>
   <xsl:key name="structLink_from_ids"
            match="mets:structLink/mets:smLink"
            use="@xlink:from"/>
   <xsl:key name="structLink_to_ids"
            match="mets:structLink/mets:smLink"
            use="@xlink:to"/>
   <xsl:key name="structMap_PHYSICAL_ids"
            match="mets:structMap[@TYPE='PHYSICAL']//mets:div"
            use="@ID"/>
   <xsl:key name="structMap_PHYSICAL_fptr_FILEID"
            match="mets:structMap[@TYPE='PHYSICAL']//mets:fptr"
            use="@FILEID"/>
   <xsl:key name="structMap_LOGICAL_dmdids"
            match="mets:structMap[@TYPE='LOGICAL']//mets:div[@DMDID]"
            use="tokenize(@DMDID, ' ')"/>
   <xsl:key name="license_uris"
            match="maps:license_uris/maps:license_uri"
            use="text()"/>
   <xsl:key name="mets_ap_dv_license_values"
            match="maps:mets_ap_dv_license_values/maps:mets_ap_dv_license_value"
            use="text()"/>
   <xsl:key name="iso639-1_codes"
            match="maps:iso639-1_codes/maps:iso639-1_code"
            use="text()"/>
   <xsl:key name="iso639-2_codes"
            match="maps:iso639-2_codes/maps:iso639-2_code"
            use="text()"/>
   <!--DEFAULT RULES-->
   <!--MODE: SCHEMATRON-SELECT-FULL-PATH-->
   <!--This mode can be used to generate an ugly though full XPath for locators-->
   <xsl:template match="*" mode="schematron-select-full-path">
      <xsl:apply-templates select="." mode="schematron-get-full-path"/>
   </xsl:template>
   <!--MODE: SCHEMATRON-FULL-PATH-->
   <!--This mode can be used to generate an ugly though full XPath for locators-->
   <xsl:template match="*" mode="schematron-get-full-path">
      <xsl:apply-templates select="parent::*" mode="schematron-get-full-path"/>
      <xsl:text>/</xsl:text>
      <xsl:choose>
         <xsl:when test="namespace-uri()=''">
            <xsl:value-of select="name()"/>
         </xsl:when>
         <xsl:otherwise>
            <xsl:text>*:</xsl:text>
            <xsl:value-of select="local-name()"/>
            <xsl:text>[namespace-uri()='</xsl:text>
            <xsl:value-of select="namespace-uri()"/>
            <xsl:text>']</xsl:text>
         </xsl:otherwise>
      </xsl:choose>
      <xsl:variable name="preceding"
                    select="count(preceding-sibling::*[local-name()=local-name(current())                                   and namespace-uri() = namespace-uri(current())])"/>
      <xsl:text>[</xsl:text>
      <xsl:value-of select="1+ $preceding"/>
      <xsl:text>]</xsl:text>
   </xsl:template>
   <xsl:template match="@*" mode="schematron-get-full-path">
      <xsl:apply-templates select="parent::*" mode="schematron-get-full-path"/>
      <xsl:text>/</xsl:text>
      <xsl:choose>
         <xsl:when test="namespace-uri()=''">@<xsl:value-of select="name()"/>
         </xsl:when>
         <xsl:otherwise>
            <xsl:text>@*[local-name()='</xsl:text>
            <xsl:value-of select="local-name()"/>
            <xsl:text>' and namespace-uri()='</xsl:text>
            <xsl:value-of select="namespace-uri()"/>
            <xsl:text>']</xsl:text>
         </xsl:otherwise>
      </xsl:choose>
   </xsl:template>
   <!--MODE: SCHEMATRON-FULL-PATH-2-->
   <!--This mode can be used to generate prefixed XPath for humans-->
   <xsl:template match="node() | @*" mode="schematron-get-full-path-2">
      <xsl:for-each select="ancestor-or-self::*">
         <xsl:text>/</xsl:text>
         <xsl:value-of select="name(.)"/>
         <xsl:if test="preceding-sibling::*[name(.)=name(current())]">
            <xsl:text>[</xsl:text>
            <xsl:value-of select="count(preceding-sibling::*[name(.)=name(current())])+1"/>
            <xsl:text>]</xsl:text>
         </xsl:if>
      </xsl:for-each>
      <xsl:if test="not(self::*)">
         <xsl:text/>/@<xsl:value-of select="name(.)"/>
      </xsl:if>
   </xsl:template>
   <!--MODE: SCHEMATRON-FULL-PATH-3-->
   <!--This mode can be used to generate prefixed XPath for humans 
	(Top-level element has index)-->
   <xsl:template match="node() | @*" mode="schematron-get-full-path-3">
      <xsl:for-each select="ancestor-or-self::*">
         <xsl:text>/</xsl:text>
         <xsl:value-of select="name(.)"/>
         <xsl:if test="parent::*">
            <xsl:text>[</xsl:text>
            <xsl:value-of select="count(preceding-sibling::*[name(.)=name(current())])+1"/>
            <xsl:text>]</xsl:text>
         </xsl:if>
      </xsl:for-each>
      <xsl:if test="not(self::*)">
         <xsl:text/>/@<xsl:value-of select="name(.)"/>
      </xsl:if>
   </xsl:template>
   <!--MODE: GENERATE-ID-FROM-PATH -->
   <xsl:template match="/" mode="generate-id-from-path"/>
   <xsl:template match="text()" mode="generate-id-from-path">
      <xsl:apply-templates select="parent::*" mode="generate-id-from-path"/>
      <xsl:value-of select="concat('.text-', 1+count(preceding-sibling::text()), '-')"/>
   </xsl:template>
   <xsl:template match="comment()" mode="generate-id-from-path">
      <xsl:apply-templates select="parent::*" mode="generate-id-from-path"/>
      <xsl:value-of select="concat('.comment-', 1+count(preceding-sibling::comment()), '-')"/>
   </xsl:template>
   <xsl:template match="processing-instruction()" mode="generate-id-from-path">
      <xsl:apply-templates select="parent::*" mode="generate-id-from-path"/>
      <xsl:value-of select="concat('.processing-instruction-', 1+count(preceding-sibling::processing-instruction()), '-')"/>
   </xsl:template>
   <xsl:template match="@*" mode="generate-id-from-path">
      <xsl:apply-templates select="parent::*" mode="generate-id-from-path"/>
      <xsl:value-of select="concat('.@', name())"/>
   </xsl:template>
   <xsl:template match="*" mode="generate-id-from-path" priority="-0.5">
      <xsl:apply-templates select="parent::*" mode="generate-id-from-path"/>
      <xsl:text>.</xsl:text>
      <xsl:value-of select="concat('.',name(),'-',1+count(preceding-sibling::*[name()=name(current())]),'-')"/>
   </xsl:template>
   <!--MODE: GENERATE-ID-2 -->
   <xsl:template match="/" mode="generate-id-2">U</xsl:template>
   <xsl:template match="*" mode="generate-id-2" priority="2">
      <xsl:text>U</xsl:text>
      <xsl:number level="multiple" count="*"/>
   </xsl:template>
   <xsl:template match="node()" mode="generate-id-2">
      <xsl:text>U.</xsl:text>
      <xsl:number level="multiple" count="*"/>
      <xsl:text>n</xsl:text>
      <xsl:number count="node()"/>
   </xsl:template>
   <xsl:template match="@*" mode="generate-id-2">
      <xsl:text>U.</xsl:text>
      <xsl:number level="multiple" count="*"/>
      <xsl:text>_</xsl:text>
      <xsl:value-of select="string-length(local-name(.))"/>
      <xsl:text>_</xsl:text>
      <xsl:value-of select="translate(name(),':','.')"/>
   </xsl:template>
   <!--Strip characters-->
   <xsl:template match="text()" priority="-1"/>
   <!--SCHEMA SETUP-->
   <xsl:template match="/">
      <svrl:schematron-output xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                              title="Validierung der Fachstelle Bibliothek der Deutschen Digitalen Bibliothek für das METS/MODS-Anwendungsprofil für Zeitungen"
                              schemaVersion="v2026-10-15T08:13:20">
         <xsl:comment>
            <xsl:value-of select="$archiveDirParameter"/>   
		 <xsl:value-of select="$archiveNameParameter"/>  
		 <xsl:value-of select="$fileNameParameter"/>  
		 <xsl:value-of select="$fileDirParameter"/>
         </xsl:comment>
         <svrl:ns-prefix-in-attribute-values uri="http://www.loc.gov/METS/" prefix="mets"/>
         <svrl:ns-prefix-in-attribute-values uri="http://www.loc.gov/mods/v3" prefix="mods"/>
         <svrl:ns-prefix-in-attribute-values uri="http://www.w3.org/1999/xlink" prefix="xlink"/>
         <svrl:ns-prefix-in-attribute-values uri="http://dfg-viewer.de/" prefix="dv"/>
         <svrl:ns-prefix-in-attribute-values uri="http://www.w3.org/2001/XMLSchema-instance" prefix="xsi"/>
         <svrl:ns-prefix-in-attribute-values uri="dcg:maps" prefix="maps"/>
         <svrl:ns-prefix-in-attribute-values uri="http://www.openarchives.org/OAI/2.0/" prefix="oai"/>
         <svrl:active-pattern>
            <xsl:attribute name="document">
               <xsl:value-of select="document-uri(/)"/>
            </xsl:attribute>
            <xsl:apply-templates/>
         </svrl:active-pattern>
         <xsl:apply-templates select="/" mode="M28"/>
         <svrl:active-pattern>
            <xsl:attribute name="document">
               <xsl:value-of select="document-uri(/)"/>
            </xsl:attribute>
            <xsl:apply-templates/>
         </svrl:active-pattern>
         <xsl:apply-templates select="/" mode="M29"/>
         <svrl:active-pattern>
            <xsl:attribute name="document">
               <xsl:value-of select="document-uri(/)"/>
            </xsl:attribute>
            <xsl:apply-templates/>
         </svrl:active-pattern>
         <xsl:apply-templates select="/" mode="M30"/>
         <svrl:active-pattern>
            <xsl:attribute name="document">
               <xsl:value-of select="document-uri(/)"/>
            </xsl:attribute>
            <xsl:apply-templates/>
         </svrl:active-pattern>
         <xsl:apply-templates select="/" mode="M31"/>
         <svrl:active-pattern>
            <xsl:attribute name="document">
               <xsl:value-of select="document-uri(/)"/>
            </xsl:attribute>
            <xsl:apply-templates/>
         </svrl:active-pattern>
         <xsl:apply-templates select="/" mode="M32"/>
         <svrl:active-pattern>
            <xsl:attribute name="document">
               <xsl:value-of select="document-uri(/)"/>
            </xsl:attribute>
            <xsl:apply-templates/>
         </svrl:active-pattern>
         <xsl:apply-templates select="/" mode="M33"/>
         <svrl:active-pattern>
            <xsl:attribute name="document">
               <xsl:value-of select="document-uri(/)"/>
            </xsl:attribute>
            <xsl:apply-templates/>
         </svrl:active-pattern>
         <xsl:apply-templates select="/" mode="M34"/>
         <svrl:active-pattern>
            <xsl:attribute name="document">
               <xsl:value-of select="document-uri(/)"/>
            </xsl:attribute>
            <xsl:apply-templates/>
         </svrl:active-pattern>
         <xsl:apply-templates select="/" mode="M35"/>
         <svrl:active-pattern>
            <xsl:attribute name="document">
               <xsl:value-of select="document-uri(/)"/>
            </xsl:attribute>
            <xsl:apply-templates/>
         </svrl:active-pattern>
         <xsl:apply-templates select="/" mode="M36"/>
         <svrl:active-pattern>
            <xsl:attribute name="document">
               <xsl:value-of select="document-uri(/)"/>
            </xsl:attribute>
            <xsl:apply-templates/>
         </svrl:active-pattern>
         <xsl:apply-templates select="/" mode="M37"/>
         <svrl:active-pattern>
            <xsl:attribute name="document">
               <xsl:value-of select="document-uri(/)"/>
            </xsl:attribute>
            <xsl:apply-templates/>
         </svrl:active-pattern>
         <xsl:apply-templates select="/" mode="M38"/>
         <svrl:active-pattern>
            <xsl:attribute name="document">
               <xsl:value-of select="document-uri(/)"/>
            </xsl:attribute>
            <xsl:apply-templates/>
         </svrl:active-pattern>
         <xsl:apply-templates select="/" mode="M39"/>
         <svrl:active-pattern>
            <xsl:attribute name="document">
               <xsl:value-of select="document-uri(/)"/>
            </xsl:attribute>
            <xsl:apply-templates/>
         </svrl:active-pattern>
         <xsl:apply-templates select="/" mode="M40"/>
         <svrl:active-pattern>
            <xsl:attribute name="document">
               <xsl:value-of select="document-uri(/)"/>
            </xsl:attribute>
            <xsl:apply-templates/>
         </svrl:active-pattern>
         <xsl:apply-templates select="/" mode="M41"/>
         <svrl:active-pattern>
            <xsl:attribute name="document">
               <xsl:value-of select="document-uri(/)"/>
            </xsl:attribute>
            <xsl:apply-templates/>
         </svrl:active-pattern>
         <xsl:apply-templates select="/" mode="M42"/>
         <svrl:active-pattern>
            <xsl:attribute name="document">
               <xsl:value-of select="document-uri(/)"/>
            </xsl:attribute>
            <xsl:apply-templates/>
         </svrl:active-pattern>
         <xsl:apply-templates select="/" mode="M43"/>
         <svrl:active-pattern>
            <xsl:attribute name="document">
               <xsl:value-of select="document-uri(/)"/>
            </xsl:attribute>
            <xsl:apply-templates/>
         </svrl:active-pattern>
         <xsl:apply-templates select="/" mode="M44"/>
         <svrl:active-pattern>
            <xsl:attribute name="document">
               <xsl:value-of select="document-uri(/)"/>
            </xsl:attribute>
            <xsl:apply-templates/>
         </svrl:active-pattern>
         <xsl:apply-templates select="/" mode="M45"/>
         <svrl:active-pattern>
            <xsl:attribute name="document">
               <xsl:value-of select="document-uri(/)"/>
            </xsl:attribute>
            <xsl:apply-templates/>
         </svrl:active-pattern>
         <xsl:apply-templates select="/" mode="M46"/>
         <svrl:active-pattern>
            <xsl:attribute name="document">
               <xsl:value-of select="document-uri(/)"/>
            </xsl:attribute>
            <xsl:apply-templates/>
         </svrl:active-pattern>
         <xsl:apply-templates select="/" mode="M47"/>
         <svrl:active-pattern>
            <xsl:attribute name="document">
               <xsl:value-of select="document-uri(/)"/>
            </xsl:attribute>
            <xsl:apply-templates/>
         </svrl:active-pattern>
         <xsl:apply-templates select="/" mode="M48"/>
         <svrl:active-pattern>
            <xsl:attribute name="document">
               <xsl:value-of select="document-uri(/)"/>
            </xsl:attribute>
            <xsl:apply-templates/>
         </svrl:active-pattern>
         <xsl:apply-templates select="/" mode="M49"/>
         <svrl:active-pattern>
            <xsl:attribute name="document">
               <xsl:value-of select="document-uri(/)"/>
            </xsl:attribute>
            <xsl:apply-templates/>
         </svrl:active-pattern>
         <xsl:apply-templates select="/" mode="M50"/>
         <svrl:active-pattern>
            <xsl:attribute name="document">
               <xsl:value-of select="document-uri(/)"/>
            </xsl:attribute>
            <xsl:apply-templates/>
         </svrl:active-pattern>
         <xsl:apply-templates select="/" mode="M51"/>
         <svrl:active-pattern>
            <xsl:attribute name="document">
               <xsl:value-of select="document-uri(/)"/>
            </xsl:attribute>
            <xsl:apply-templates/>
         </svrl:active-pattern>
         <xsl:apply-templates select="/" mode="M52"/>
         <svrl:active-pattern>
            <xsl:attribute name="document">
               <xsl:value-of select="document-uri(/)"/>
            </xsl:attribute>
            <xsl:apply-templates/>
         </svrl:active-pattern>
         <xsl:apply-templates select="/" mode="M53"/>
         <svrl:active-pattern>
            <xsl:attribute name="document">
               <xsl:value-of select="document-uri(/)"/>
            </xsl:attribute>
            <xsl:apply-templates/>
         </svrl:active-pattern>
         <xsl:apply-templates select="/" mode="M54"/>
         <svrl:active-pattern>
            <xsl:attribute name="document">
               <xsl:value-of select="document-uri(/)"/>
            </xsl:attribute>
            <xsl:apply-templates/>
         </svrl:active-pattern>
         <xsl:apply-templates select="/" mode="M55"/>
         <svrl:active-pattern>
            <xsl:attribute name="document">
               <xsl:value-of select="document-uri(/)"/>
            </xsl:attribute>
            <xsl:apply-templates/>
         </svrl:active-pattern>
         <xsl:apply-templates select="/" mode="M56"/>
         <svrl:active-pattern>
            <xsl:attribute name="document">
               <xsl:value-of select="document-uri(/)"/>
            </xsl:attribute>
            <xsl:apply-templates/>
         </svrl:active-pattern>
         <xsl:apply-templates select="/" mode="M57"/>
         <svrl:active-pattern>
            <xsl:attribute name="document">
               <xsl:value-of select="document-uri(/)"/>
            </xsl:attribute>
            <xsl:apply-templates/>
         </svrl:active-pattern>
         <xsl:apply-templates select="/" mode="M58"/>
         <svrl:active-pattern>
            <xsl:attribute name="document">
               <xsl:value-of select="document-uri(/)"/>
            </xsl:attribute>
            <xsl:apply-templates/>
         </svrl:active-pattern>
         <xsl:apply-templates select="/" mode="M59"/>
         <svrl:active-pattern>
            <xsl:attribute name="document">
               <xsl:value-of select="document-uri(/)"/>
            </xsl:attribute>
            <xsl:apply-templates/>
         </svrl:active-pattern>
         <xsl:apply-templates select="/" mode="M60"/>
         <svrl:active-pattern>
            <xsl:attribute name="document">
               <xsl:value-of select="document-uri(/)"/>
            </xsl:attribute>
            <xsl:apply-templates/>
         </svrl:active-pattern>
         <xsl:apply-templates select="/" mode="M61"/>
         <svrl:active-pattern>
            <xsl:attribute name="document">
               <xsl:value-of select="document-uri(/)"/>
            </xsl:attribute>
            <xsl:apply-templates/>
         </svrl:active-pattern>
         <xsl:apply-templates select="/" mode="M62"/>
         <svrl:active-pattern>
            <xsl:attribute name="document">
               <xsl:value-of select="document-uri(/)"/>
            </xsl:attribute>
            <xsl:apply-templates/>
         </svrl:active-pattern>
         <xsl:apply-templates select="/" mode="M63"/>
         <svrl:active-pattern>
            <xsl:attribute name="document">
               <xsl:value-of select="document-uri(/)"/>
            </xsl:attribute>
            <xsl:apply-templates/>
         </svrl:active-pattern>
         <xsl:apply-templates select="/" mode="M64"/>
         <svrl:active-pattern>
            <xsl:attribute name="document">
               <xsl:value-of select="document-uri(/)"/>
            </xsl:attribute>
            <xsl:apply-templates/>
         </svrl:active-pattern>
         <xsl:apply-templates select="/" mode="M65"/>
         <svrl:active-pattern>
            <xsl:attribute name="document">
               <xsl:value-of select="document-uri(/)"/>
            </xsl:attribute>
            <xsl:apply-templates/>
         </svrl:active-pattern>
         <xsl:apply-templates select="/" mode="M66"/>
         <svrl:active-pattern>
            <xsl:attribute name="document">
               <xsl:value-of select="document-uri(/)"/>
            </xsl:attribute>
            <xsl:apply-templates/>
         </svrl:active-pattern>
         <xsl:apply-templates select="/" mode="M67"/>
         <svrl:active-pattern>
            <xsl:attribute name="document">
               <xsl:value-of select="document-uri(/)"/>
            </xsl:attribute>
            <xsl:apply-templates/>
         </svrl:active-pattern>
         <xsl:apply-templates select="/" mode="M68"/>
         <svrl:active-pattern>
            <xsl:attribute name="document">
               <xsl:value-of select="document-uri(/)"/>
            </xsl:attribute>
            <xsl:apply-templates/>
         </svrl:active-pattern>
         <xsl:apply-templates select="/" mode="M69"/>
         <svrl:active-pattern>
            <xsl:attribute name="document">
               <xsl:value-of select="document-uri(/)"/>
            </xsl:attribute>
            <xsl:apply-templates/>
         </svrl:active-pattern>
         <xsl:apply-templates select="/" mode="M70"/>
         <svrl:active-pattern>
            <xsl:attribute name="document">
               <xsl:value-of select="document-uri(/)"/>
            </xsl:attribute>
            <xsl:apply-templates/>
         </svrl:active-pattern>
         <xsl:apply-templates select="/" mode="M71"/>
         <svrl:active-pattern>
            <xsl:attribute name="document">
               <xsl:value-of select="document-uri(/)"/>
            </xsl:attribute>
            <xsl:apply-templates/>
         </svrl:active-pattern>
         <xsl:apply-templates select="/" mode="M72"/>
         <svrl:active-pattern>
            <xsl:attribute name="document">
               <xsl:value-of select="document-uri(/)"/>
            </xsl:attribute>
            <xsl:apply-templates/>
         </svrl:active-pattern>
         <xsl:apply-templates select="/" mode="M73"/>
         <svrl:active-pattern>
            <xsl:attribute name="document">
               <xsl:value-of select="document-uri(/)"/>
            </xsl:attribute>
            <xsl:apply-templates/>
         </svrl:active-pattern>
         <xsl:apply-templates select="/" mode="M74"/>
         <svrl:active-pattern>
            <xsl:attribute name="document">
               <xsl:value-of select="document-uri(/)"/>
            </xsl:attribute>
            <xsl:apply-templates/>
         </svrl:active-pattern>
         <xsl:apply-templates select="/" mode="M75"/>
         <svrl:active-pattern>
            <xsl:attribute name="document">
               <xsl:value-of select="document-uri(/)"/>
            </xsl:attribute>
            <xsl:apply-templates/>
         </svrl:active-pattern>
         <xsl:apply-templates select="/" mode="M76"/>
         <svrl:active-pattern>
            <xsl:attribute name="document">
               <xsl:value-of select="document-uri(/)"/>
            </xsl:attribute>
            <xsl:apply-templates/>
         </svrl:active-pattern>
         <xsl:apply-templates select="/" mode="M77"/>
         <svrl:active-pattern>
            <xsl:attribute name="document">
               <xsl:value-of select="document-uri(/)"/>
            </xsl:attribute>
            <xsl:apply-templates/>
         </svrl:active-pattern>
         <xsl:apply-templates select="/" mode="M78"/>
         <svrl:active-pattern>
            <xsl:attribute name="document">
               <xsl:value-of select="document-uri(/)"/>
            </xsl:attribute>
            <xsl:apply-templates/>
         </svrl:active-pattern>
         <xsl:apply-templates select="/" mode="M79"/>
      </svrl:schematron-output>
   </xsl:template>
   <!--SCHEMATRON PATTERNS-->
   <svrl:text xmlns:svrl="http://purl.oclc.org/dsdl/svrl">Validierung der Fachstelle Bibliothek der Deutschen Digitalen Bibliothek für das METS/MODS-Anwendungsprofil für Zeitungen</svrl:text>
   <xsl:variable name="license_uris">
      <license_uris xmlns="dcg:maps" xmlns:sch="http://purl.oclc.org/dsdl/schematron">
         <license_uri>http://creativecommons.org/publicdomain/mark/1.0/</license_uri>
         <license_uri>https://creativecommons.org/publicdomain/mark/1.0/</license_uri>
         <license_uri>http://creativecommons.org/publicdomain/zero/1.0/</license_uri>
         <license_uri>https://creativecommons.org/publicdomain/zero/1.0/</license_uri>
         <license_uri>http://creativecommons.org/licenses/by/3.0/</license_uri>
         <license_uri>https://creativecommons.org/licenses/by/3.0/</license_uri>
         <license_uri>http://creativecommons.org/licenses/by-sa/3.0/</license_uri>
         <license_uri>https://creativecommons.org/licenses/by-sa/3.0/</license_uri>
         <license_uri>http://creativecommons.org/licenses/by-nd/3.0/</license_uri>
         <license_uri>https://creativecommons.org/licenses/by-nd/3.0/</license_uri>
         <license_uri>http://creativecommons.org/licenses/by-nc/3.0/</license_uri>
         <license_uri>https://creativecommons.org/licenses/by-nc/3.0/</license_uri>
         <license_uri>http://creativecommons.org/licenses/by-nc-sa/3.0/</license_uri>
         <license_uri>https://creativecommons.org/licenses/by-nc-sa/3.0/</license_uri>
         <license_uri>http://creativecommons.org/licenses/by-nc-nd/3.0/</license_uri>
         <license_uri>https://creativecommons.org/licenses/by-nc-nd/3.0/</license_uri>
         <license_uri>http://creativecommons.org/licenses/by/3.0/de/</license_uri>
         <license_uri>https://creativecommons.org/licenses/by/3.0/de/</license_uri>
         <license_uri>http://creativecommons.org/licenses/by-sa/3.0/de/</license_uri>
         <license_uri>https://creativecommons.org/licenses/by-sa/3.0/de/</license_uri>
         <license_uri>http://creativecommons.org/licenses/by-nd/3.0/de/</license_uri>
         <license_uri>https://creativecommons.org/licenses/by-nd/3.0/de/</license_uri>
         <license_uri>http://creativecommons.org/licenses/by-nc/3.0/de/</license_uri>
         <license_uri>https://creativecommons.org/licenses/by-nc/3.0/de/</license_uri>
         <license_uri>http://creativecommons.org/licenses/by-nc-sa/3.0/de/</license_uri>
         <license_uri>https://creativecommons.org/licenses/by-nc-sa/3.0/de/</license_uri>
         <license_uri>http://creativecommons.org/licenses/by-nc-nd/3.0/de/</license_uri>
         <license_uri>https://creativecommons.org/licenses/by-nc-nd/3.0/de/</license_uri>
         <license_uri>http://creativecommons.org/licenses/by/4.0/</license_uri>
         <license_uri>https://creativecommons.org/licenses/by/4.0/</license_uri>
         <license_uri>http://creativecommons.org/licenses/by-sa/4.0/</license_uri>
         <license_uri>https://creativecommons.org/licenses/by-sa/4.0/</license_uri>
         <license_uri>http://creativecommons.org/licenses/by-nd/4.0/</license_uri>
         <license_uri>https://creativecommons.org/licenses/by-nd/4.0/</license_uri>
         <license_uri>http://creativecommons.org/licenses/by-nc/4.0/</license_uri>
         <license_uri>https://creativecommons.org/licenses/by-nc/4.0/</license_uri>
         <license_uri>http://creativecommons.org/licenses/by-nc-sa/4.0/</license_uri>
         <license_uri>https://creativecommons.org/licenses/by-nc-sa/4.0/</license_uri>
         <license_uri>http://creativecommons.org/licenses/by-nc-nd/4.0/</license_uri>
         <license_uri>https://creativecommons.org/licenses/by-nc-nd/4.0/</license_uri>
         <license_uri>http://rightsstatements.org/vocab/InC/1.0/</license_uri>
         <license_uri>https://rightsstatements.org/vocab/InC/1.0/</license_uri>
         <license_uri>http://rightsstatements.org/vocab/InC-EDU/1.0/</license_uri>
         <license_uri>https://rightsstatements.org/vocab/InC-EDU/1.0/</license_uri>
         <license_uri>http://rightsstatements.org/vocab/InC-OW-EU/1.0/</license_uri>
         <license_uri>https://rightsstatements.org/vocab/InC-OW-EU/1.0/</license_uri>
         <license_uri>http://rightsstatements.org/vocab/CNE/1.0/</license_uri>
         <license_uri>https://rightsstatements.org/vocab/CNE/1.0/</license_uri>
         <license_uri>http://rightsstatements.org/vocab/NoC-NC/1.0/</license_uri>
         <license_uri>https://rightsstatements.org/vocab/NoC-NC/1.0/</license_uri>
         <license_uri>http://rightsstatements.org/vocab/NoC-OKLR/1.0/</license_uri>
         <license_uri>https://rightsstatements.org/vocab/NoC-OKLR/1.0/</license_uri>
         <license_uri>http://rightsstatements.org/vocab/UND/1.0/</license_uri>
         <license_uri>https://rightsstatements.org/vocab/UND/1.0/</license_uri>
      </license_uris>
   </xsl:variable>
   <xsl:variable name="iso639-1_codes">
      <iso639-1_codes xmlns="dcg:maps" xmlns:sch="http://purl.oclc.org/dsdl/schematron">
         <iso639-1_code>aa</iso639-1_code>
         <iso639-1_code>ab</iso639-1_code>
         <iso639-1_code>ae</iso639-1_code>
         <iso639-1_code>af</iso639-1_code>
         <iso639-1_code>ak</iso639-1_code>
         <iso639-1_code>am</iso639-1_code>
         <iso639-1_code>an</iso639-1_code>
         <iso639-1_code>ar</iso639-1_code>
         <iso639-1_code>as</iso639-1_code>
         <iso639-1_code>av</iso639-1_code>
         <iso639-1_code>ay</iso639-1_code>
         <iso639-1_code>az</iso639-1_code>
         <iso639-1_code>ba</iso639-1_code>
         <iso639-1_code>be</iso639-1_code>
         <iso639-1_code>bg</iso639-1_code>
         <iso639-1_code>bh</iso639-1_code>
         <iso639-1_code>bi</iso639-1_code>
         <iso639-1_code>bm</iso639-1_code>
         <iso639-1_code>bn</iso639-1_code>
         <iso639-1_code>bo</iso639-1_code>
         <iso639-1_code>br</iso639-1_code>
         <iso639-1_code>bs</iso639-1_code>
         <iso639-1_code>ca</iso639-1_code>
         <iso639-1_code>ce</iso639-1_code>
         <iso639-1_code>ch</iso639-1_code>
         <iso639-1_code>co</iso639-1_code>
         <iso639-1_code>cr</iso639-1_code>
         <iso639-1_code>cs</iso639-1_code>
         <iso639-1_code>cu</iso639-1_code>
         <iso639-1_code>cv</iso639-1_code>
         <iso639-1_code>cy</iso639-1_code>
         <iso639-1_code>da</iso639-1_code>
         <iso639-1_code>de</iso639-1_code>
         <iso639-1_code>dv</iso639-1_code>
         <iso639-1_code>dz</iso639-1_code>
         <iso639-1_code>ee</iso639-1_code>
         <iso639-1_code>el</iso639-1_code>
         <iso639-1_code>en</iso639-1_code>
         <iso639-1_code>eo</iso639-1_code>
         <iso639-1_code>es</iso639-1_code>
         <iso639-1_code>et</iso639-1_code>
         <iso639-1_code>eu</iso639-1_code>
         <iso639-1_code>fa</iso639-1_code>
         <iso639-1_code>ff</iso639-1_code>
         <iso639-1_code>fi</iso639-1_code>
         <iso639-1_code>fj</iso639-1_code>
         <iso639-1_code>fo</iso639-1_code>
         <iso639-1_code>fr</iso639-1_code>
         <iso639-1_code>fy</iso639-1_code>
         <iso639-1_code>ga</iso639-1_code>
         <iso639-1_code>gd</iso639-1_code>
         <iso639-1_code>gl</iso639-1_code>
         <iso639-1_code>gn</iso639-1_code>
         <iso639-1_code>gu</iso639-1_code>
         <iso639-1_code>gv</iso639-1_code>
         <iso639-1_code>ha</iso639-1_code>
         <iso639-1_code>he</iso639-1_code>
         <iso639-1_code>hi</iso639-1_code>
         <iso639-1_code>ho</iso639-1_code>
         <iso639-1_code>hr</iso639-1_code>
         <iso639-1_code>ht</iso639-1_code>
         <iso639-1_code>hu</iso639-1_code>
         <iso639-1_code>hy</iso639-1_code>
         <iso639-1_code>hz</iso639-1_code>
         <iso639-1_code>ia</iso639-1_code>
         <iso639-1_code>id</iso639-1_code>
         <iso639-1_code>ie</iso639-1_code>
         <iso639-1_code>ig</iso639-1_code>
         <iso639-1_code>ii</iso639-1_code>
         <iso639-1_code>ik</iso639-1_code>
         <iso639-1_code>io</iso639-1_code>
         <iso639-1_code>is</iso639-1_code>
         <iso639-1_code>it</iso639-1_code>
         <iso639-1_code>iu</iso639-1_code>
         <iso639-1_code>ja</iso639-1_code>
         <iso639-1_code>jv</iso639-1_code>
         <iso639-1_code>ka</iso639-1_code>
         <iso639-1_code>kg</iso639-1_code>
         <iso639-1_code>ki</iso639-1_code>
         <iso639-1_code>kj</iso639-1_code>
         <iso639-1_code>kk</iso639-1_code>
         <iso639-1_code>kl</iso639-1_code>
         <iso639-1_code>km</iso639-1_code>
         <iso639-1_code>kn</iso639-1_code>
         <iso639-1_code>ko</iso639-1_code>
         <iso639-1_code>kr</iso639-1_code>
         <iso639-1_code>ks</iso639-1_code>
         <iso639-1_code>ku</iso639-1_code>
         <iso639-1_code>kv</iso639-1_code>
         <iso639-1_code>kw</iso639-1_code>
         <iso639-1_code>ky</iso639-1_code>
         <iso639-1_code>la</iso639-1_code>
         <iso639-1_code>lb</iso639-1_code>
         <iso639-1_code>lg</iso639-1_code>
         <iso639-1_code>li</iso639-1_code>
         <iso639-1_code>ln</iso639-1_code>
         <iso639-1_code>lo</iso639-1_code>
         <iso639-1_code>lt</iso639-1_code>
         <iso639-1_code>lu</iso639-1_code>
         <iso639-1_code>lv</iso639-1_code>
         <iso639-1_code>mg</iso639-1_code>
         <iso639-1_code>mh</iso639-1_code>
         <iso639-1_code>mi</iso639-1_code>
         <iso639-1_code>mk</iso639-1_code>
         <iso639-1_code>ml</iso639-1_code>
         <iso639-1_code>mn</iso639-1_code>
         <iso639-1_code>mr</iso639-1_code>
         <iso639-1_code>ms</iso639-1_code>
         <iso639-1_code>mt</iso639-1_code>
         <iso639-1_code>my</iso639-1_code>
         <iso639-1_code>na</iso639-1_code>
         <iso639-1_code>nb</iso639-1_code>
         <iso639-1_code>nd</iso639-1_code>
         <iso639-1_code>ne</iso639-1_code>
         <iso639-1_code>ng</iso639-1_code>
         <iso639-1_code>nl</iso639-1_code>
         <iso639-1_code>nn</iso639-1_code>
         <iso639-1_code>no</iso639-1_code>
         <iso639-1_code>nr</iso639-1_code>
         <iso639-1_code>nv</iso639-1_code>
         <iso639-1_code>ny</iso639-1_code>
         <iso639-1_code>oc</iso639-1_code>
         <iso639-1_code>oj</iso639-1_code>
         <iso639-1_code>om</iso639-1_code>
         <iso639-1_code>or</iso639-1_code>
         <iso639-1_code>os</iso639-1_code>
         <iso639-1_code>pa</iso639-1_code>
         <iso639-1_code>pi</iso639-1_code>
         <iso639-1_code>pl</iso639-1_code>
         <iso639-1_code>ps</iso639-1_code>
         <iso639-1_code>pt</iso639-1_code>
         <iso639-1_code>qu</iso639-1_code>
         <iso639-1_code>rm</iso639-1_code>
         <iso639-1_code>rn</iso639-1_code>
         <iso639-1_code>ro</iso639-1_code>
         <iso639-1_code>ru</iso639-1_code>
         <iso639-1_code>rw</iso639-1_code>
         <iso639-1_code>sa</iso639-1_code>
         <iso639-1_code>sc</iso639-1_code>
         <iso639-1_code>sd</iso639-1_code>
         <iso639-1_code>se</iso639-1_code>
         <iso639-1_code>sg</iso639-1_code>
         <iso639-1_code>si</iso639-1_code>
         <iso639-1_code>sk</iso639-1_code>
         <iso639-1_code>sl</iso639-1_code>
         <iso639-1_code>sm</iso639-1_code>
         <iso639-1_code>sn</iso639-1_code>
         <iso639-1_code>so</iso639-1_code>
         <iso639-1_code>sq</iso639-1_code>
         <iso639-1_code>sr</iso639-1_code>
         <iso639-1_code>ss</iso639-1_code>
         <iso639-1_code>st</iso639-1_code>
         <iso639-1_code>su</iso639-1_code>
         <iso639-1_code>sv</iso639-1_code>
         <iso639-1_code>sw</iso639-1_code>
         <iso639-1_code>ta</iso639-1_code>
         <iso639-1_code>te</iso639-1_code>
         <iso639-1_code>tg</iso639-1_code>
         <iso639-1_code>th</iso639-1_code>
         <iso639-1_code>ti</iso639-1_code>
         <iso639-1_code>tk</iso639-1_code>
         <iso639-1_code>tl</iso639-1_code>
         <iso639-1_code>tn</iso639-1_code>
         <iso639-1_code>to</iso639-1_code>
         <iso639-1_code>tr</iso639-1_code>
         <iso639-1_code>ts</iso639-1_code>
         <iso639-1_code>tt</iso639-1_code>
         <iso639-1_code>tw</iso639-1_code>
         <iso639-1_code>ty</iso639-1_code>
         <iso639-1_code>ug</iso639-1_code>
         <iso639-1_code>uk</iso639-1_code>
         <iso639-1_code>ur</iso639-1_code>
         <iso639-1_code>uz</iso639-1_code>
         <iso639-1_code>ve</iso639-1_code>
         <iso639-1_code>vi</iso639-1_code>
         <iso639-1_code>vo</iso639-1_code>
         <iso639-1_code>wa</iso639-1_code>
         <iso639-1_code>wo</iso639-1_code>
         <iso639-1_code>xh</iso639-1_code>
         <iso639-1_code>yi</iso639-1_code>
         <iso639-1_code>yo</iso639-1_code>
         <iso639-1_code>za</iso639-1_code>
         <iso639-1_code>zh</iso639-1_code>
         <iso639-1_code>zu</iso639-1_code>
      </iso639-1_codes>
   </xsl:variable>
   <xsl:variable name="iso639-2_codes">
      <iso639-2_codes xmlns="dcg:maps" xmlns:sch="http://purl.oclc.org/dsdl/schematron">
         <iso639-2_code>aar</iso639-2_code>
         <iso639-2_code>abk</iso639-2_code>
         <iso639-2_code>ace</iso639-2_code>
         <iso639-2_code>ach</iso639-2_code>
         <iso639-2_code>ada</iso639-2_code>
         <iso639-2_code>ady</iso639-2_code>
         <iso639-2_code>afa</iso639-2_code>
         <iso639-2_code>afh</iso639-2_code>
         <iso639-2_code>afr</iso639-2_code>
         <iso639-2_code>ain</iso639-2_code>
         <iso639-2_code>aka</iso639-2_code>
         <iso639-2_code>akk</iso639-2_code>
         <iso639-2_code>alb</iso639-2_code>
         <iso639-2_code>sqi</iso639-2_code>
         <iso639-2_code>ale</iso639-2_code>
         <iso639-2_code>alg</iso639-2_code>
         <iso639-2_code>alt</iso639-2_code>
         <iso639-2_code>amh</iso639-2_code>
         <iso639-2_code>ang</iso639-2_code>
         <iso639-2_code>anp</iso639-2_code>
         <iso639-2_code>apa</iso639-2_code>
         <iso639-2_code>ara</iso639-2_code>
         <iso639-2_code>arc</iso639-2_code>
         <iso639-2_code>arg</iso639-2_code>
         <iso639-2_code>arm</iso639-2_code>
         <iso639-2_code>hye</iso639-2_code>
         <iso639-2_code>arn</iso639-2_code>
         <iso639-2_code>arp</iso639-2_code>
         <iso639-2_code>art</iso639-2_code>
         <iso639-2_code>arw</iso639-2_code>
         <iso639-2_code>asm</iso639-2_code>
         <iso639-2_code>ast</iso639-2_code>
         <iso639-2_code>ath</iso639-2_code>
         <iso639-2_code>aus</iso639-2_code>
         <iso639-2_code>ava</iso639-2_code>
         <iso639-2_code>ave</iso639-2_code>
         <iso639-2_code>awa</iso639-2_code>
         <iso639-2_code>aym</iso639-2_code>
         <iso639-2_code>aze</iso639-2_code>
         <iso639-2_code>bad</iso639-2_code>
         <iso639-2_code>bai</iso639-2_code>
         <iso639-2_code>bak</iso639-2_code>
         <iso639-2_code>bal</iso639-2_code>
         <iso639-2_code>bam</iso639-2_code>
         <iso639-2_code>ban</iso639-2_code>
         <iso639-2_code>baq</iso639-2_code>
         <iso639-2_code>eus</iso639-2_code>
         <iso639-2_code>bas</iso639-2_code>
         <iso639-2_code>bat</iso639-2_code>
         <iso639-2_code>bej</iso639-2_code>
         <iso639-2_code>bel</iso639-2_code>
         <iso639-2_code>bem</iso639-2_code>
         <iso639-2_code>ben</iso639-2_code>
         <iso639-2_code>ber</iso639-2_code>
         <iso639-2_code>bho</iso639-2_code>
         <iso639-2_code>bih</iso639-2_code>
         <iso639-2_code>bik</iso639-2_code>
         <iso639-2_code>bin</iso639-2_code>
         <iso639-2_code>bis</iso639-2_code>
         <iso639-2_code>bla</iso639-2_code>
         <iso639-2_code>bnt</iso639-2_code>
         <iso639-2_code>tib</iso639-2_code>
         <iso639-2_code>bod</iso639-2_code>
         <iso639-2_code>bos</iso639-2_code>
         <iso639-2_code>bra</iso639-2_code>
         <iso639-2_code>bre</iso639-2_code>
         <iso639-2_code>btk</iso639-2_code>
         <iso639-2_code>bua</iso639-2_code>
         <iso639-2_code>bug</iso639-2_code>
         <iso639-2_code>bul</iso639-2_code>
         <iso639-2_code>bur</iso639-2_code>
         <iso639-2_code>mya</iso639-2_code>
         <iso639-2_code>byn</iso639-2_code>
         <iso639-2_code>cad</iso639-2_code>
         <iso639-2_code>cai</iso639-2_code>
         <iso639-2_code>car</iso639-2_code>
         <iso639-2_code>cat</iso639-2_code>
         <iso639-2_code>cau</iso639-2_code>
         <iso639-2_code>ceb</iso639-2_code>
         <iso639-2_code>cel</iso639-2_code>
         <iso639-2_code>cze</iso639-2_code>
         <iso639-2_code>ces</iso639-2_code>
         <iso639-2_code>cha</iso639-2_code>
         <iso639-2_code>chb</iso639-2_code>
         <iso639-2_code>che</iso639-2_code>
         <iso639-2_code>chg</iso639-2_code>
         <iso639-2_code>chi</iso639-2_code>
         <iso639-2_code>zho</iso639-2_code>
         <iso639-2_code>chk</iso639-2_code>
         <iso639-2_code>chm</iso639-2_code>
         <iso639-2_code>chn</iso639-2_code>
         <iso639-2_code>cho</iso639-2_code>
         <iso639-2_code>chp</iso639-2_code>
         <iso639-2_code>chr</iso639-2_code>
         <iso639-2_code>chu</iso639-2_code>
         <iso639-2_code>chv</iso639-2_code>
         <iso639-2_code>chy</iso639-2_code>
         <iso639-2_code>cmc</iso639-2_code>
         <iso639-2_code>cnr</iso639-2_code>
         <iso639-2_code>cop</iso639-2_code>
         <iso639-2_code>cor</iso639-2_code>
         <iso639-2_code>cos</iso639-2_code>
         <iso639-2_code>cpe</iso639-2_code>
         <iso639-2_code>cpf</iso639-2_code>
         <iso639-2_code>cpp</iso639-2_code>
         <iso639-2_code>cre</iso639-2_code>
         <iso639-2_code>crh</iso639-2_code>
         <iso639-2_code>crp</iso639-2_code>
         <iso639-2_code>csb</iso639-2_code>
         <iso639-2_code>cus</iso639-2_code>
         <iso639-2_code>wel</iso639-2_code>
         <iso639-2_code>cym</iso639-2_code>
         <iso639-2_code>dak</iso639-2_code>
         <iso639-2_code>dan</iso639-2_code>
         <iso639-2_code>dar</iso639-2_code>
         <iso639-2_code>day</iso639-2_code>
         <iso639-2_code>del</iso639-2_code>
         <iso639-2_code>den</iso639-2_code>
         <iso639-2_code>ger</iso639-2_code>
         <iso639-2_code>deu</iso639-2_code>
         <iso639-2_code>dgr</iso639-2_code>
         <iso639-2_code>din</iso639-2_code>
         <iso639-2_code>div</iso639-2_code>
         <iso639-2_code>doi</iso639-2_code>
         <iso639-2_code>dra</iso639-2_code>
         <iso639-2_code>dsb</iso639-2_code>
         <iso639-2_code>dua</iso639-2_code>
         <iso639-2_code>dum</iso639-2_code>
         <iso639-2_code>dut</iso639-2_code>
         <iso639-2_code>nld</iso639-2_code>
         <iso639-2_code>dyu</iso639-2_code>
         <iso639-2_code>dzo</iso639-2_code>
         <iso639-2_code>efi</iso639-2_code>
         <iso639-2_code>egy</iso639-2_code>
         <iso639-2_code>eka</iso639-2_code>
         <iso639-2_code>gre</iso639-2_code>
         <iso639-2_code>ell</iso639-2_code>
         <iso639-2_code>elx</iso639-2_code>
         <iso639-2_code>eng</iso639-2_code>
         <iso639-2_code>enm</iso639-2_code>
         <iso639-2_code>epo</iso639-2_code>
         <iso639-2_code>est</iso639-2_code>
         <iso639-2_code>ewe</iso639-2_code>
         <iso639-2_code>ewo</iso639-2_code>
         <iso639-2_code>fan</iso639-2_code>
         <iso639-2_code>fao</iso639-2_code>
         <iso639-2_code>per</iso639-2_code>
         <iso639-2_code>fas</iso639-2_code>
         <iso639-2_code>fat</iso639-2_code>
         <iso639-2_code>fij</iso639-2_code>
         <iso639-2_code>fil</iso639-2_code>
         <iso639-2_code>fin</iso639-2_code>
         <iso639-2_code>fiu</iso639-2_code>
         <iso639-2_code>fon</iso639-2_code>
         <iso639-2_code>fre</iso639-2_code>
         <iso639-2_code>fra</iso639-2_code>
         <iso639-2_code>frm</iso639-2_code>
         <iso639-2_code>fro</iso639-2_code>
         <iso639-2_code>frr</iso639-2_code>
         <iso639-2_code>frs</iso639-2_code>
         <iso639-2_code>fry</iso639-2_code>
         <iso639-2_code>ful</iso639-2_code>
         <iso639-2_code>fur</iso639-2_code>
         <iso639-2_code>gaa</iso639-2_code>
         <iso639-2_code>gay</iso639-2_code>
         <iso639-2_code>gba</iso639-2_code>
         <iso639-2_code>gem</iso639-2_code>
         <iso639-2_code>geo</iso639-2_code>
         <iso639-2_code>kat</iso639-2_code>
         <iso639-2_code>gez</iso639-2_code>
         <iso639-2_code>gil</iso639-2_code>
         <iso639-2_code>gla</iso639-2_code>
         <iso639-2_code>gle</iso639-2_code>
         <iso639-2_code>glg</iso639-2_code>
         <iso639-2_code>glv</iso639-2_code>
         <iso639-2_code>gmh</iso639-2_code>
         <iso639-2_code>goh</iso639-2_code>
         <iso639-2_code>gon</iso639-2_code>
         <iso639-2_code>gor</iso639-2_code>
         <iso639-2_code>got</iso639-2_code>
         <iso639-2_code>grb</iso639-2_code>
         <iso639-2_code>grc</iso639-2_code>
         <iso639-2_code>grn</iso639-2_code>
         <iso639-2_code>gsw</iso639-2_code>
         <iso639-2_code>guj</iso639-2_code>
         <iso639-2_code>gwi</iso639-2_code>
         <iso639-2_code>hai</iso639-2_code>
         <iso639-2_code>hat</iso639-2_code>
         <iso639-2_code>hau</iso639-2_code>
         <iso639-2_code>haw</iso639-2_code>
         <iso639-2_code>heb</iso639-2_code>
         <iso639-2_code>her</iso639-2_code>
         <iso639-2_code>hil</iso639-2_code>
         <iso639-2_code>him</iso639-2_code>
         <iso639-2_code>hin</iso639-2_code>
         <iso639-2_code>hit</iso639-2_code>
         <iso639-2_code>hmn</iso639-2_code>
         <iso639-2_code>hmo</iso639-2_code>
         <iso639-2_code>hrv</iso639-2_code>
         <iso639-2_code>hsb</iso639-2_code>
         <iso639-2_code>hun</iso639-2_code>
         <iso639-2_code>hup</iso639-2_code>
         <iso639-2_code>iba</iso639-2_code>
         <iso639-2_code>ibo</iso639-2_code>
         <iso639-2_code>ice</iso639-2_code>
         <iso639-2_code>isl</iso639-2_code>
         <iso639-2_code>ido</iso639-2_code>
         <iso639-2_code>iii</iso639-2_code>
         <iso639-2_code>ijo</iso639-2_code>
         <iso639-2_code>iku</iso639-2_code>
         <iso639-2_code>ile</iso639-2_code>
         <iso639-2_code>ilo</iso639-2_code>
         <iso639-2_code>ina</iso639-2_code>
         <iso639-2_code>inc</iso639-2_code>
         <iso639-2_code>ind</iso639-2_code>
         <iso639-2_code>ine</iso639-2_code>
         <iso639-2_code>inh</iso639-2_code>
         <iso639-2_code>ipk</iso639-2_code>
         <iso639-2_code>ira</iso639-2_code>
         <iso639-2_code>iro</iso639-2_code>
         <iso639-2_code>ita</iso639-2_code>
         <iso639-2_code>jav</iso639-2_code>
         <iso639-2_code>jbo</iso639-2_code>
         <iso639-2_code>jpn</iso639-2_code>
         <iso639-2_code>jpr</iso639-2_code>
         <iso639-2_code>jrb</iso639-2_code>
         <iso639-2_code>kaa</iso639-2_code>
         <iso639-2_code>kab</iso639-2_code>
         <iso639-2_code>kac</iso639-2_code>
         <iso639-2_code>kal</iso639-2_code>
         <iso639-2_code>kam</iso639-2_code>
         <iso639-2_code>kan</iso639-2_code>
         <iso639-2_code>kar</iso639-2_code>
         <iso639-2_code>kas</iso639-2_code>
         <iso639-2_code>kau</iso639-2_code>
         <iso639-2_code>kaw</iso639-2_code>
         <iso639-2_code>kaz</iso639-2_code>
         <iso639-2_code>kbd</iso639-2_code>
         <iso639-2_code>kha</iso639-2_code>
         <iso639-2_code>khi</iso639-2_code>
         <iso639-2_code>khm</iso639-2_code>
         <iso639-2_code>kho</iso639-2_code>
         <iso639-2_code>kik</iso639-2_code>
         <iso639-2_code>kin</iso639-2_code>
         <iso639-2_code>kir</iso639-2_code>
         <iso639-2_code>kmb</iso639-2_code>
         <iso639-2_code>kok</iso639-2_code>
         <iso639-2_code>kom</iso639-2_code>
         <iso639-2_code>kon</iso639-2_code>
         <iso639-2_code>kor</iso639-2_code>
         <iso639-2_code>kos</iso639-2_code>
         <iso639-2_code>kpe</iso639-2_code>
         <iso639-2_code>krc</iso639-2_code>
         <iso639-2_code>krl</iso639-2_code>
         <iso639-2_code>kro</iso639-2_code>
         <iso639-2_code>kru</iso639-2_code>
         <iso639-2_code>kua</iso639-2_code>
         <iso639-2_code>kum</iso639-2_code>
         <iso639-2_code>kur</iso639-2_code>
         <iso639-2_code>kut</iso639-2_code>
         <iso639-2_code>lad</iso639-2_code>
         <iso639-2_code>lah</iso639-2_code>
         <iso639-2_code>lam</iso639-2_code>
         <iso639-2_code>lao</iso639-2_code>
         <iso639-2_code>lat</iso639-2_code>
         <iso639-2_code>lav</iso639-2_code>
         <iso639-2_code>lez</iso639-2_code>
         <iso639-2_code>lim</iso639-2_code>
         <iso639-2_code>lin</iso639-2_code>
         <iso639-2_code>lit</iso639-2_code>
         <iso639-2_code>lol</iso639-2_code>
         <iso639-2_code>loz</iso639-2_code>
         <iso639-2_code>ltz</iso639-2_code>
         <iso639-2_code>lua</iso639-2_code>
         <iso639-2_code>lub</iso639-2_code>
         <iso639-2_code>lug</iso639-2_code>
         <iso639-2_code>lui</iso639-2_code>
         <iso639-2_code>lun</iso639-2_code>
         <iso639-2_code>luo</iso639-2_code>
         <iso639-2_code>lus</iso639-2_code>
         <iso639-2_code>mac</iso639-2_code>
         <iso639-2_code>mkd</iso639-2_code>
         <iso639-2_code>mad</iso639-2_code>
         <iso639-2_code>mag</iso639-2_code>
         <iso639-2_code>mah</iso639-2_code>
         <iso639-2_code>mai</iso639-2_code>
         <iso639-2_code>mak</iso639-2_code>
         <iso639-2_code>mal</iso639-2_code>
         <iso639-2_code>man</iso639-2_code>
         <iso639-2_code>mao</iso639-2_code>
         <iso639-2_code>mri</iso639-2_code>
         <iso639-2_code>map</iso639-2_code>
         <iso639-2_code>mar</iso639-2_code>
         <iso639-2_code>mas</iso639-2_code>
         <iso639-2_code>may</iso639-2_code>
         <iso639-2_code>msa</iso639-2_code>
         <iso639-2_code>mdf</iso639-2_code>
         <iso639-2_code>mdr</iso639-2_code>
         <iso639-2_code>men</iso639-2_code>
         <iso639-2_code>mga</iso639-2_code>
         <iso639-2_code>mic</iso639-2_code>
         <iso639-2_code>min</iso639-2_code>
         <iso639-2_code>mis</iso639-2_code>
         <iso639-2_code>mkh</iso639-2_code>
         <iso639-2_code>mlg</iso639-2_code>
         <iso639-2_code>mlt</iso639-2_code>
         <iso639-2_code>mnc</iso639-2_code>
         <iso639-2_code>mni</iso639-2_code>
         <iso639-2_code>mno</iso639-2_code>
         <iso639-2_code>moh</iso639-2_code>
         <iso639-2_code>mon</iso639-2_code>
         <iso639-2_code>mos</iso639-2_code>
         <iso639-2_code>mul</iso639-2_code>
         <iso639-2_code>mun</iso639-2_code>
         <iso639-2_code>mus</iso639-2_code>
         <iso639-2_code>mwl</iso639-2_code>
         <iso639-2_code>mwr</iso639-2_code>
         <iso639-2_code>myn</iso639-2_code>
         <iso639-2_code>myv</iso639-2_code>
         <iso639-2_code>nah</iso639-2_code>
         <iso639-2_code>nai</iso639-2_code>
         <iso639-2_code>nap</iso639-2_code>
         <iso639-2_code>nau</iso639-2_code>
         <iso639-2_code>nav</iso639-2_code>
         <iso639-2_code>nbl</iso639-2_code>
         <iso639-2_code>nde</iso639-2_code>
         <iso639-2_code>ndo</iso639-2_code>
         <iso639-2_code>nds</iso639-2_code>
         <iso639-2_code>nep</iso639-2_code>
         <iso639-2_code>new</iso639-2_code>
         <iso639-2_code>nia</iso639-2_code>
         <iso639-2_code>nic</iso639-2_code>
         <iso639-2_code>niu</iso639-2_code>
         <iso639-2_code>nno</iso639-2_code>
         <iso639-2_code>nob</iso639-2_code>
         <iso639-2_code>nog</iso639-2_code>
         <iso639-2_code>non</iso639-2_code>
         <iso639-2_code>nor</iso639-2_code>
         <iso639-2_code>nqo</iso639-2_code>
         <iso639-2_code>nso</iso639-2_code>
         <iso639-2_code>nub</iso639-2_code>
         <iso639-2_code>nwc</iso639-2_code>
         <iso639-2_code>nya</iso639-2_code>
         <iso639-2_code>nym</iso639-2_code>
         <iso639-2_code>nyn</iso639-2_code>
         <iso639-2_code>nyo</iso639-2_code>
         <iso639-2_code>nzi</iso639-2_code>
         <iso639-2_code>oci</iso639-2_code>
         <iso639-2_code>oji</iso639-2_code>
         <iso639-2_code>ori</iso639-2_code>
         <iso639-2_code>orm</iso639-2_code>
         <iso639-2_code>osa</iso639-2_code>
         <iso639-2_code>oss</iso639-2_code>
         <iso639-2_code>ota</iso639-2_code>
         <iso639-2_code>oto</iso639-2_code>
         <iso639-2_code>paa</iso639-2_code>
         <iso639-2_code>pag</iso639-2_code>
         <iso639-2_code>pal</iso639-2_code>
         <iso639-2_code>pam</iso639-2_code>
         <iso639-2_code>pan</iso639-2_code>
         <iso639-2_code>pap</iso639-2_code>
         <iso639-2_code>pau</iso639-2_code>
         <iso639-2_code>peo</iso639-2_code>
         <iso639-2_code>phi</iso639-2_code>
         <iso639-2_code>phn</iso639-2_code>
         <iso639-2_code>pli</iso639-2_code>
         <iso639-2_code>pol</iso639-2_code>
         <iso639-2_code>pon</iso639-2_code>
         <iso639-2_code>por</iso639-2_code>
         <iso639-2_code>pra</iso639-2_code>
         <iso639-2_code>pro</iso639-2_code>
         <iso639-2_code>pus</iso639-2_code>
         <iso639-2_code>qaa-qtz</iso639-2_code>
         <iso639-2_code>que</iso639-2_code>
         <iso639-2_code>raj</iso639-2_code>
         <iso639-2_code>rap</iso639-2_code>
         <iso639-2_code>rar</iso639-2_code>
         <iso639-2_code>roa</iso639-2_code>
         <iso639-2_code>roh</iso639-2_code>
         <iso639-2_code>rom</iso639-2_code>
         <iso639-2_code>rum</iso639-2_code>
         <iso639-2_code>ron</iso639-2_code>
         <iso639-2_code>run</iso639-2_code>
         <iso639-2_code>rup</iso639-2_code>
         <iso639-2_code>rus</iso639-2_code>
         <iso639-2_code>sad</iso639-2_code>
         <iso639-2_code>sag</iso639-2_code>
         <iso639-2_code>sah</iso639-2_code>
         <iso639-2_code>sai</iso639-2_code>
         <iso639-2_code>sal</iso639-2_code>
         <iso639-2_code>sam</iso639-2_code>
         <iso639-2_code>san</iso639-2_code>
         <iso639-2_code>sas</iso639-2_code>
         <iso639-2_code>sat</iso639-2_code>
         <iso639-2_code>scn</iso639-2_code>
         <iso639-2_code>sco</iso639-2_code>
         <iso639-2_code>sel</iso639-2_code>
         <iso639-2_code>sem</iso639-2_code>
         <iso639-2_code>sga</iso639-2_code>
         <iso639-2_code>sgn</iso639-2_code>
         <iso639-2_code>shn</iso639-2_code>
         <iso639-2_code>sid</iso639-2_code>
         <iso639-2_code>sin</iso639-2_code>
         <iso639-2_code>sio</iso639-2_code>
         <iso639-2_code>sit</iso639-2_code>
         <iso639-2_code>sla</iso639-2_code>
         <iso639-2_code>slo</iso639-2_code>
         <iso639-2_code>slk</iso639-2_code>
         <iso639-2_code>slv</iso639-2_code>
         <iso639-2_code>sma</iso639-2_code>
         <iso639-2_code>sme</iso639-2_code>
         <iso639-2_code>smi</iso639-2_code>
         <iso639-2_code>smj</iso639-2_code>
         <iso639-2_code>smn</iso639-2_code>
         <iso639-2_code>smo</iso639-2_code>
         <iso639-2_code>sms</iso639-2_code>
         <iso639-2_code>sna</iso639-2_code>
         <iso639-2_code>snd</iso639-2_code>
         <iso639-2_code>snk</iso639-2_code>
         <iso639-2_code>sog</iso639-2_code>
         <iso639-2_code>som</iso639-2_code>
         <iso639-2_code>son</iso639-2_code>
         <iso639-2_code>sot</iso639-2_code>
         <iso639-2_code>spa</iso639-2_code>
         <iso639-2_code>srd</iso639-2_code>
         <iso639-2_code>srn</iso639-2_code>
         <iso639-2_code>srp</iso639-2_code>
         <iso639-2_code>srr</iso639-2_code>
         <iso639-2_code>ssa</iso639-2_code>
         <iso639-2_code>ssw</iso639-2_code>
         <iso639-2_code>suk</iso639-2_code>
         <iso639-2_code>sun</iso639-2_code>
         <iso639-2_code>sus</iso639-2_code>
         <iso639-2_code>sux</iso639-2_code>
         <iso639-2_code>swa</iso639-2_code>
         <iso639-2_code>swe</iso639-2_code>
         <iso639-2_code>syc</iso639-2_code>
         <iso639-2_code>syr</iso639-2_code>
         <iso639-2_code>tah</iso639-2_code>
         <iso639-2_code>tai</iso639-2_code>
         <iso639-2_code>tam</iso639-2_code>
         <iso639-2_code>tat</iso639-2_code>
         <iso639-2_code>tel</iso639-2_code>
         <iso639-2_code>tem</iso639-2_code>
         <iso639-2_code>ter</iso639-2_code>
         <iso639-2_code>tet</iso639-2_code>
         <iso639-2_code>tgk</iso639-2_code>
         <iso639-2_code>tgl</iso639-2_code>
         <iso639-2_code>tha</iso639-2_code>
         <iso639-2_code>tig</iso639-2_code>
         <iso639-2_code>tir</iso639-2_code>
         <iso639-2_code>tiv</iso639-2_code>
         <iso639-2_code>tkl</iso639-2_code>
         <iso639-2_code>tlh</iso639-2_code>
         <iso639-2_code>tli</iso639-2_code>
         <iso639-2_code>tmh</iso639-2_code>
         <iso639-2_code>tog</iso639-2_code>
         <iso639-2_code>ton</iso639-2_code>
         <iso639-2_code>tpi</iso639-2_code>
         <iso639-2_code>tsi</iso639-2_code>
         <iso639-2_code>tsn</iso639-2_code>
         <iso639-2_code>tso</iso639-2_code>
         <iso639-2_code>tuk</iso639-2_code>
         <iso639-2_code>tum</iso639-2_code>
         <iso639-2_code>tup</iso639-2_code>
         <iso639-2_code>tur</iso639-2_code>
         <iso639-2_code>tut</iso639-2_code>
         <iso639-2_code>tvl</iso639-2_code>
         <iso639-2_code>twi</iso639-2_code>
         <iso639-2_code>tyv</iso639-2_code>
         <iso639-2_code>udm</iso639-2_code>
         <iso639-2_code>uga</iso639-2_code>
         <iso639-2_code>uig</iso639-2_code>
         <iso639-2_code>ukr</iso639-2_code>
         <iso639-2_code>umb</iso639-2_code>
         <iso639-2_code>und</iso639-2_code>
         <iso639-2_code>urd</iso639-2_code>
         <iso639-2_code>uzb</iso639-2_code>
         <iso639-2_code>vai</iso639-2_code>
         <iso639-2_code>ven</iso639-2_code>
         <iso639-2_code>vie</iso639-2_code>
         <iso639-2_code>vol</iso639-2_code>
         <iso639-2_code>vot</iso639-2_code>
         <iso639-2_code>wak</iso639-2_code>
         <iso639-2_code>wal</iso639-2_code>
         <iso639-2_code>war</iso639-2_code>
         <iso639-2_code>was</iso639-2_code>
         <iso639-2_code>wen</iso639-2_code>
         <iso639-2_code>wln</iso639-2_code>
         <iso639-2_code>wol</iso639-2_code>
         <iso639-2_code>xal</iso639-2_code>
         <iso639-2_code>xho</iso639-2_code>
         <iso639-2_code>yao</iso639-2_code>
         <iso639-2_code>yap</iso639-2_code>
         <iso639-2_code>yid</iso639-2_code>
         <iso639-2_code>yor</iso639-2_code>
         <iso639-2_code>ypk</iso639-2_code>
         <iso639-2_code>zap</iso639-2_code>
         <iso639-2_code>zbl</iso639-2_code>
         <iso639-2_code>zen</iso639-2_code>
         <iso639-2_code>zgh</iso639-2_code>
         <iso639-2_code>zha</iso639-2_code>
         <iso639-2_code>znd</iso639-2_code>
         <iso639-2_code>zul</iso639-2_code>
         <iso639-2_code>zun</iso639-2_code>
         <iso639-2_code>zxx</iso639-2_code>
         <iso639-2_code>zza</iso639-2_code>
      </iso639-2_codes>
   </xsl:variable>
   <xsl:variable name="mets_ap_dv_license_values">
      <mets_ap_dv_license_values xmlns="dcg:maps" xmlns:sch="http://purl.oclc.org/dsdl/schematron">
         <mets_ap_dv_license_value to="http://creativecommons.org/publicdomain/mark/1.0/">pdm</mets_ap_dv_license_value>
         <mets_ap_dv_license_value to="http://creativecommons.org/publicdomain/zero/1.0/">cc0</mets_ap_dv_license_value>
         <mets_ap_dv_license_value to="http://creativecommons.org/licenses/by/4.0/">cc-by</mets_ap_dv_license_value>
         <mets_ap_dv_license_value to="http://creativecommons.org/licenses/by-sa/4.0/">cc-by-sa</mets_ap_dv_license_value>
         <mets_ap_dv_license_value to="http://creativecommons.org/licenses/by-nd/4.0/">cc-by-nd</mets_ap_dv_license_value>
         <mets_ap_dv_license_value to="http://creativecommons.org/licenses/by-nc/4.0/">cc-by-nc</mets_ap_dv_license_value>
         <mets_ap_dv_license_value to="http://creativecommons.org/licenses/by-nc-sa/4.0/">cc-by-nc-sa</mets_ap_dv_license_value>
         <mets_ap_dv_license_value to="http://creativecommons.org/licenses/by-nc-nd/4.0/">cc-by-nc-nd</mets_ap_dv_license_value>
         <mets_ap_dv_license_value to="http://rightsstatements.org/vocab/CNE/1.0/">reserved</mets_ap_dv_license_value>
      </mets_ap_dv_license_values>
   </xsl:variable>
   <xsl:variable name="work_dmdid">
      <xsl:value-of xmlns:sch="http://purl.oclc.org/dsdl/schematron"
                    select="//mets:mets/mets:structMap[@TYPE='LOGICAL']/descendant::mets:div[@TYPE=('issue', 'additional')][1]/@DMDID"/>
   </xsl:variable>
   <xsl:param name="is_anchor"
              select="if ( //mets:mets/mets:structLink or //mets:mets/mets:fileSec/mets:fileGrp[@USE='DEFAULT'] ) then false() else true()"/>
   <xsl:param name="work_amdid"
              select="//mets:mets/mets:structMap[@TYPE='LOGICAL']//mets:div[@DMDID[tokenize(., ' ') = $work_dmdid]]/@ADMID"/>
   <!--PATTERN -->
   <!--RULE -->
   <xsl:template match="mods:*" priority="1000" mode="M28">
      <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl" context="mods:*"/>
      <!--ASSERT warn-->
      <xsl:choose>
         <xsl:when test="string-length(normalize-space(text()[1])) &gt; 0 or element()"/>
         <xsl:otherwise>
            <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                test="string-length(normalize-space(text()[1])) &gt; 0 or element()">
               <xsl:attribute name="id">all_01</xsl:attribute>
               <xsl:attribute name="role">warn</xsl:attribute>
               <xsl:attribute name="location">
                  <xsl:apply-templates select="." mode="schematron-select-full-path"/>
               </xsl:attribute>
               <svrl:text>Jedes MODS-Element muss entweder mindestens ein Unterelement oder Text enthalten. Leere MODS-Elemente verhindern nicht das Einspielen Ihrer Daten in das Zeitungsportal, können aber auf Probleme beim Erzeugen des Datensatzes und damit verbundene Informationsverluste hinweisen.</svrl:text>
               <svrl:property id="dmd_id">
                  <xsl:value-of xmlns:sch="http://purl.oclc.org/dsdl/schematron"
                                select="ancestor-or-self::mets:dmdSec/@ID"/>
               </svrl:property>
            </svrl:failed-assert>
         </xsl:otherwise>
      </xsl:choose>
      <xsl:apply-templates select="*" mode="M28"/>
   </xsl:template>
   <xsl:template match="text()" priority="-1" mode="M28"/>
   <xsl:template match="@*|node()" priority="-2" mode="M28">
      <xsl:apply-templates select="*" mode="M28"/>
   </xsl:template>
   <!--PATTERN -->
   <!--RULE -->
   <xsl:template match="mods:*[mods:*]" priority="1000" mode="M29">
      <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl" context="mods:*[mods:*]"/>
      <!--REPORT error-->
      <xsl:if test="matches(string-join(text(), ''), '\w')">
         <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                 test="matches(string-join(text(), ''), '\w')">
            <xsl:attribute name="id">all_02</xsl:attribute>
            <xsl:attribute name="role">error</xsl:attribute>
            <xsl:attribute name="location">
               <xsl:apply-templates select="." mode="schematron-select-full-path"/>
            </xsl:attribute>
            <svrl:text>MODS-Elemente, die Unterelemente enthalten, dürfen keinen Text enthalten. Enthält ein MODS-Element mit mindestens einem Unterelement ebenfalls Text, wird der Text bei der Transformation des Datensatzes entfernt.</svrl:text>
            <svrl:property id="dmd_id">
               <xsl:value-of xmlns:sch="http://purl.oclc.org/dsdl/schematron"
                             select="ancestor-or-self::mets:dmdSec/@ID"/>
            </svrl:property>
         </svrl:successful-report>
      </xsl:if>
      <xsl:apply-templates select="*" mode="M29"/>
   </xsl:template>
   <xsl:template match="text()" priority="-1" mode="M29"/>
   <xsl:template match="@*|node()" priority="-2" mode="M29">
      <xsl:apply-templates select="*" mode="M29"/>
   </xsl:template>
   <!--PATTERN -->
   <!--RULE -->
   <xsl:template match="mods:mods/mods:*" priority="1000" mode="M30">
      <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl" context="mods:mods/mods:*"/>
      <!--ASSERT fatal-->
      <xsl:choose>
         <xsl:when test="./local-name() = ( 'titleInfo', 'name', 'typeOfResource', 'genre', 'originInfo', 'language', 'physicalDescription', 'abstract', 'tableOfContents', 'targetAudience', 'note', 'subject', 'classification', 'relatedItem', 'identifier', 'location', 'accessCondition', 'part', 'extension', 'recordInfo' )"/>
         <xsl:otherwise>
            <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                test="./local-name() = ( 'titleInfo', 'name', 'typeOfResource', 'genre', 'originInfo', 'language', 'physicalDescription', 'abstract', 'tableOfContents', 'targetAudience', 'note', 'subject', 'classification', 'relatedItem', 'identifier', 'location', 'accessCondition', 'part', 'extension', 'recordInfo' )">
               <xsl:attribute name="id">all_03</xsl:attribute>
               <xsl:attribute name="role">fatal</xsl:attribute>
               <xsl:attribute name="location">
                  <xsl:apply-templates select="." mode="schematron-select-full-path"/>
               </xsl:attribute>
               <svrl:text>Der Datensatz verwendet Elemente in der obersten MODS-Ebene, die dort nicht zulässig sind. Da diese zu Problemen in der Verarbeitung des Datensatzes führen können, wird der Datensatz nicht in das Zeitungsportal eingespielt.
Eine Liste der zulässigen MODS-Elemente auf der obersten Ebene finden sie in den MODS User Guidelines (https://www.loc.gov/standards/mods/userguide/generalapp.html#top_level).</svrl:text>
               <svrl:property id="dmd_id">
                  <xsl:value-of xmlns:sch="http://purl.oclc.org/dsdl/schematron"
                                select="ancestor-or-self::mets:dmdSec/@ID"/>
               </svrl:property>
               <svrl:property id="local_name">
                  <xsl:value-of xmlns:sch="http://purl.oclc.org/dsdl/schematron" select="local-name()"/>
               </svrl:property>
            </svrl:failed-assert>
         </xsl:otherwise>
      </xsl:choose>
      <xsl:apply-templates select="*" mode="M30"/>
   </xsl:template>
   <xsl:template match="text()" priority="-1" mode="M30"/>
   <xsl:template match="@*|node()" priority="-2" mode="M30">
      <xsl:apply-templates select="*" mode="M30"/>
   </xsl:template>
   <!--PATTERN -->
   <!--RULE -->
   <xsl:template match="mods:*/@valueURI" priority="1000" mode="M31">
      <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl" context="mods:*/@valueURI"/>
      <!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="matches(., '^https?://[^ ]+$')"/>
         <xsl:otherwise>
            <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                test="matches(., '^https?://[^ ]+$')">
               <xsl:attribute name="id">all_04</xsl:attribute>
               <xsl:attribute name="role">error</xsl:attribute>
               <xsl:attribute name="location">
                  <xsl:apply-templates select="." mode="schematron-select-full-path"/>
               </xsl:attribute>
               <svrl:text>Das Attribut <xsl:text/>valueURI<xsl:text/> muss immer einen URL enthalten. Enthält es keinen URL, wird <xsl:text/>valueURI<xsl:text/> bei der Transformation des Datensatzes entfernt.</svrl:text>
               <svrl:property id="dmd_id">
                  <xsl:value-of xmlns:sch="http://purl.oclc.org/dsdl/schematron"
                                select="ancestor-or-self::mets:dmdSec/@ID"/>
               </svrl:property>
            </svrl:failed-assert>
         </xsl:otherwise>
      </xsl:choose>
      <xsl:apply-templates select="*" mode="M31"/>
   </xsl:template>
   <xsl:template match="text()" priority="-1" mode="M31"/>
   <xsl:template match="@*|node()" priority="-2" mode="M31">
      <xsl:apply-templates select="*" mode="M31"/>
   </xsl:template>
   <!--PATTERN -->
   <!--RULE -->
   <xsl:template match="mets:xmlData/mods:mods/mods:*//mods:mods"
                 priority="1000"
                 mode="M32">
      <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                       context="mets:xmlData/mods:mods/mods:*//mods:mods"/>
      <!--REPORT error-->
      <xsl:if test=".[not(./ancestor::mods:extension)]">
         <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                 test=".[not(./ancestor::mods:extension)]">
            <xsl:attribute name="id">all_05</xsl:attribute>
            <xsl:attribute name="role">error</xsl:attribute>
            <xsl:attribute name="location">
               <xsl:apply-templates select="." mode="schematron-select-full-path"/>
            </xsl:attribute>
            <svrl:text>Der Datensatz enthält innerhalb des MODS-Wurzelelements <xsl:text/>mods:mods<xsl:text/> im Element <xsl:text/>mets:dmdSec<xsl:text/> weitere <xsl:text/>mods:mods<xsl:text/>-Elemente. Diese können zu Problemen in der Verarbeitung des Datensatzes führen und werden daher bei der Transformation des Datensatzes entfernt. </svrl:text>
            <svrl:property id="dmd_id">
               <xsl:value-of xmlns:sch="http://purl.oclc.org/dsdl/schematron"
                             select="ancestor-or-self::mets:dmdSec/@ID"/>
            </svrl:property>
         </svrl:successful-report>
      </xsl:if>
      <xsl:apply-templates select="*" mode="M32"/>
   </xsl:template>
   <xsl:template match="text()" priority="-1" mode="M32"/>
   <xsl:template match="@*|node()" priority="-2" mode="M32">
      <xsl:apply-templates select="*" mode="M32"/>
   </xsl:template>
   <!--PATTERN -->
   <!--RULE -->
   <xsl:template match="mods:*[starts-with(@valueURI, 'http://d-nb.info/gnd/') or starts-with(@valueURI, 'https://d-nb.info/gnd/')]"
                 priority="1000"
                 mode="M33">
      <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                       context="mods:*[starts-with(@valueURI, 'http://d-nb.info/gnd/') or starts-with(@valueURI, 'https://d-nb.info/gnd/')]"/>
      <!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="matches(substring-after(@valueURI, '/gnd/'), '^[0-9]*-[0-9xX]{1}$|^[0-9xX]*$')"/>
         <xsl:otherwise>
            <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                test="matches(substring-after(@valueURI, '/gnd/'), '^[0-9]*-[0-9xX]{1}$|^[0-9xX]*$')">
               <xsl:attribute name="id">all_06</xsl:attribute>
               <xsl:attribute name="role">error</xsl:attribute>
               <xsl:attribute name="location">
                  <xsl:apply-templates select="." mode="schematron-select-full-path"/>
               </xsl:attribute>
               <svrl:text>Der Datensatz enthält <xsl:text/>valueURI<xsl:text/> Attribute mit einem ungültigen GND-URI. Diese werden bei der Transformation des Datensatzes entfernt.</svrl:text>
               <svrl:property id="dmd_id">
                  <xsl:value-of xmlns:sch="http://purl.oclc.org/dsdl/schematron"
                                select="ancestor-or-self::mets:dmdSec/@ID"/>
               </svrl:property>
            </svrl:failed-assert>
         </xsl:otherwise>
      </xsl:choose>
      <xsl:apply-templates select="*" mode="M33"/>
   </xsl:template>
   <xsl:template match="text()" priority="-1" mode="M33"/>
   <xsl:template match="@*|node()" priority="-2" mode="M33">
      <xsl:apply-templates select="*" mode="M33"/>
   </xsl:template>
   <!--PATTERN -->
   <!--RULE -->
   <xsl:template match="oai:record/oai:metadata/element()[local-name() = 'mets']"
                 priority="1000"
                 mode="M34">
      <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                       context="oai:record/oai:metadata/element()[local-name() = 'mets']"/>
      <!--ASSERT fatal-->
      <xsl:choose>
         <xsl:when test="./namespace-uri() = 'http://www.loc.gov/METS/'"/>
         <xsl:otherwise>
            <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                test="./namespace-uri() = 'http://www.loc.gov/METS/'">
               <xsl:attribute name="id">all_07</xsl:attribute>
               <xsl:attribute name="role">fatal</xsl:attribute>
               <xsl:attribute name="location">
                  <xsl:apply-templates select="." mode="schematron-select-full-path"/>
               </xsl:attribute>
               <svrl:text>Der Datensatz verwendet einen ungültigen Namensraum für METS-Elemente. Der korrekte Namensraum für METS-Elemente ist <xsl:text/>http://www.loc.gov/METS/<xsl:text/>.
Verwenden die METS-Elemente einen ungültigen Namensraum, ist eine Verarbeitung des Datensatzes nicht möglich und er wird nicht in das Zeitungsportal eingespielt.</svrl:text>
            </svrl:failed-assert>
         </xsl:otherwise>
      </xsl:choose>
      <xsl:apply-templates select="*" mode="M34"/>
   </xsl:template>
   <xsl:template match="text()" priority="-1" mode="M34"/>
   <xsl:template match="@*|node()" priority="-2" mode="M34">
      <xsl:apply-templates select="*" mode="M34"/>
   </xsl:template>
   <!--PATTERN -->
   <!--RULE -->
   <xsl:template match="oai:record/oai:metadata/mets:mets/mets:dmdSec[1]/mets:mdWrap/mets:xmlData/element()[local-name() = 'mods']"
                 priority="1000"
                 mode="M35">
      <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                       context="oai:record/oai:metadata/mets:mets/mets:dmdSec[1]/mets:mdWrap/mets:xmlData/element()[local-name() = 'mods']"/>
      <!--ASSERT fatal-->
      <xsl:choose>
         <xsl:when test="./namespace-uri() = 'http://www.loc.gov/mods/v3'"/>
         <xsl:otherwise>
            <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                test="./namespace-uri() = 'http://www.loc.gov/mods/v3'">
               <xsl:attribute name="id">all_08</xsl:attribute>
               <xsl:attribute name="role">fatal</xsl:attribute>
               <xsl:attribute name="location">
                  <xsl:apply-templates select="." mode="schematron-select-full-path"/>
               </xsl:attribute>
               <svrl:text>Der Datensatz verwendet einen ungültigen Namensraum für MODS-Elemente. Der korrekte Namensraum für MODS-Elemente ist <xsl:text/>http://www.loc.gov/mods/v3<xsl:text/>.
Verwenden die MODS-Elemente einen ungültigen Namensraum, ist eine Verarbeitung des Datensatzes nicht möglich und er wird nicht in das Zeitungsportal eingespielt.</svrl:text>
            </svrl:failed-assert>
         </xsl:otherwise>
      </xsl:choose>
      <xsl:apply-templates select="*" mode="M35"/>
   </xsl:template>
   <xsl:template match="text()" priority="-1" mode="M35"/>
   <xsl:template match="@*|node()" priority="-2" mode="M35">
      <xsl:apply-templates select="*" mode="M35"/>
   </xsl:template>
   <!--PATTERN -->
   <!--RULE -->
   <xsl:template match="oai:record/oai:metadata/mets:mets/mets:amdSec[1]/mets:rightsMD/mets:mdWrap/mets:xmlData/element()[local-name() = 'rights']"
                 priority="1000"
                 mode="M36">
      <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                       context="oai:record/oai:metadata/mets:mets/mets:amdSec[1]/mets:rightsMD/mets:mdWrap/mets:xmlData/element()[local-name() = 'rights']"/>
      <!--ASSERT fatal-->
      <xsl:choose>
         <xsl:when test="./namespace-uri() = 'http://dfg-viewer.de/'"/>
         <xsl:otherwise>
            <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                test="./namespace-uri() = 'http://dfg-viewer.de/'">
               <xsl:attribute name="id">all_09</xsl:attribute>
               <xsl:attribute name="role">fatal</xsl:attribute>
               <xsl:attribute name="location">
                  <xsl:apply-templates select="." mode="schematron-select-full-path"/>
               </xsl:attribute>
               <svrl:text>Der Datensatz verwendet einen ungültigen Namensraum für DFG-Viewer-Elemente (<xsl:text/>dv<xsl:text/>). Der korrekte Namensraum für DFG-Viewer-Elemente ist <xsl:text/>http://dfg-viewer.de/<xsl:text/>.
Verwenden die DFG-Viewer-Elemente einen ungültigen Namensraum, ist eine Verarbeitung des Datensatzes nicht möglich und er wird nicht in das Zeitungsportal eingespielt.</svrl:text>
            </svrl:failed-assert>
         </xsl:otherwise>
      </xsl:choose>
      <xsl:apply-templates select="*" mode="M36"/>
   </xsl:template>
   <xsl:template match="text()" priority="-1" mode="M36"/>
   <xsl:template match="@*|node()" priority="-2" mode="M36">
      <xsl:apply-templates select="*" mode="M36"/>
   </xsl:template>
   <!--PATTERN -->
   <!--RULE -->
   <xsl:template match="mets:dmdSec[@ID=$work_dmdid]/mets:mdWrap/mets:xmlData/mods:mods[not(mods:originInfo[@eventType='publication'])]"
                 priority="1002"
                 mode="M37">
      <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                       context="mets:dmdSec[@ID=$work_dmdid]/mets:mdWrap/mets:xmlData/mods:mods[not(mods:originInfo[@eventType='publication'])]"/>
      <!--ASSERT fatal-->
      <xsl:choose>
         <xsl:when test="mods:originInfo[@eventType='publication']"/>
         <xsl:otherwise>
            <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                test="mods:originInfo[@eventType='publication']">
               <xsl:attribute name="id">originInfo_07</xsl:attribute>
               <xsl:attribute name="role">fatal</xsl:attribute>
               <xsl:attribute name="location">
                  <xsl:apply-templates select="." mode="schematron-select-full-path"/>
               </xsl:attribute>
               <svrl:text>Es muss mindestens ein <xsl:text/>mods:originInfo[@eventType='publication']<xsl:text/> vorhanden sein. Ist dies nicht der Fall, kann die Ausgabe/Beilage nicht in das Zeitungsportal übernommen werden.
Weitere Informationen zu diesem Element und Attribut finden Sie im DDB-METS/MODS-Anwendungsprofil auf der Seite mods:originInfo (https://deutsche-digitale-bibliothek.atlassian.net/wiki/x/FQveAg).</svrl:text>
               <svrl:property id="dmd_id">
                  <xsl:value-of xmlns:sch="http://purl.oclc.org/dsdl/schematron"
                                select="ancestor-or-self::mets:dmdSec/@ID"/>
               </svrl:property>
            </svrl:failed-assert>
         </xsl:otherwise>
      </xsl:choose>
      <xsl:apply-templates select="*" mode="M37"/>
   </xsl:template>
   <!--RULE -->
   <xsl:template match="mets:dmdSec[@ID=$work_dmdid]/mets:mdWrap/mets:xmlData/mods:mods/mods:originInfo[@eventType='publication'][not(mods:dateIssued)]"
                 priority="1001"
                 mode="M37">
      <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                       context="mets:dmdSec[@ID=$work_dmdid]/mets:mdWrap/mets:xmlData/mods:mods/mods:originInfo[@eventType='publication'][not(mods:dateIssued)]"/>
      <!--ASSERT fatal-->
      <xsl:choose>
         <xsl:when test="mods:dateIssued"/>
         <xsl:otherwise>
            <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl" test="mods:dateIssued">
               <xsl:attribute name="id">originInfo_08</xsl:attribute>
               <xsl:attribute name="role">fatal</xsl:attribute>
               <xsl:attribute name="location">
                  <xsl:apply-templates select="." mode="schematron-select-full-path"/>
               </xsl:attribute>
               <svrl:text>Es muss ein <xsl:text/>mods:dateIssued<xsl:text/> in <xsl:text/>mods:originInfo<xsl:text/> vorhanden sein. Ist dies nicht der Fall, kann die Ausgabe/Beilage nicht in das Zeitungsportal übernommen werden.
Weitere Informationen zu diesen Elementen finden Sie im DDB-METS/MODS-Anwendungsprofil auf der Seite mods:originInfo (https://deutsche-digitale-bibliothek.atlassian.net/wiki/spaces/DFD/pages/48106261/mods+originInfo#%3Cmods%3AdateIssued%3E).</svrl:text>
               <svrl:property id="dmd_id">
                  <xsl:value-of xmlns:sch="http://purl.oclc.org/dsdl/schematron"
                                select="ancestor-or-self::mets:dmdSec/@ID"/>
               </svrl:property>
            </svrl:failed-assert>
         </xsl:otherwise>
      </xsl:choose>
      <xsl:apply-templates select="*" mode="M37"/>
   </xsl:template>
   <!--RULE -->
   <xsl:template match="mets:dmdSec[@ID=$work_dmdid]/mets:mdWrap/mets:xmlData/mods:mods/mods:originInfo[@eventType='publication'][mods:dateIssued[2]]"
                 priority="1000"
                 mode="M37">
      <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                       context="mets:dmdSec[@ID=$work_dmdid]/mets:mdWrap/mets:xmlData/mods:mods/mods:originInfo[@eventType='publication'][mods:dateIssued[2]]"/>
      <!--REPORT error-->
      <xsl:if test="mods:dateIssued[2]">
         <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl" test="mods:dateIssued[2]">
            <xsl:attribute name="id">originInfo_09</xsl:attribute>
            <xsl:attribute name="role">error</xsl:attribute>
            <xsl:attribute name="location">
               <xsl:apply-templates select="." mode="schematron-select-full-path"/>
            </xsl:attribute>
            <svrl:text>
               <xsl:text/>mods:dateIssued<xsl:text/> darf innerhalb von <xsl:text/>mods:originInfo<xsl:text/> nicht wiederholt werden. Ist dies der Fall, wird bei der Transformation der Daten die erste Datumsangabe übernommen, alle anderen werden entfernt.
Weitere Informationen zu diesen Elementen finden Sie im DDB-METS/MODS-Anwendungsprofil auf der Seite mods:originInfo (https://deutsche-digitale-bibliothek.atlassian.net/wiki/x/FQveAg).</svrl:text>
            <svrl:property id="dmd_id">
               <xsl:value-of xmlns:sch="http://purl.oclc.org/dsdl/schematron"
                             select="ancestor-or-self::mets:dmdSec/@ID"/>
            </svrl:property>
         </svrl:successful-report>
      </xsl:if>
      <xsl:apply-templates select="*" mode="M37"/>
   </xsl:template>
   <xsl:template match="text()" priority="-1" mode="M37"/>
   <xsl:template match="@*|node()" priority="-2" mode="M37">
      <xsl:apply-templates select="*" mode="M37"/>
   </xsl:template>
   <!--PATTERN -->
   <xsl:variable name="current_year"
                 select="number(substring-before(string(current-date()), '-'))"/>
   <!--RULE -->
   <xsl:template match="mets:dmdSec[@ID=$work_dmdid]/mets:mdWrap/mets:xmlData/mods:mods/mods:originInfo[@eventType='publication']/mods:dateIssued[not(matches(text()[1], '^\d\d\d\d-\d\d-\d\d$'))]"
                 priority="1004"
                 mode="M38">
      <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                       context="mets:dmdSec[@ID=$work_dmdid]/mets:mdWrap/mets:xmlData/mods:mods/mods:originInfo[@eventType='publication']/mods:dateIssued[not(matches(text()[1], '^\d\d\d\d-\d\d-\d\d$'))]"/>
      <!--ASSERT fatal-->
      <xsl:choose>
         <xsl:when test="matches(text()[1], '^\d\d\d\d-\d\d-\d\d$')"/>
         <xsl:otherwise>
            <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                test="matches(text()[1], '^\d\d\d\d-\d\d-\d\d$')">
               <xsl:attribute name="id">originInfo_10</xsl:attribute>
               <xsl:attribute name="role">fatal</xsl:attribute>
               <xsl:attribute name="location">
                  <xsl:apply-templates select="." mode="schematron-select-full-path"/>
               </xsl:attribute>
               <svrl:text>Der Wert in <xsl:text/>mods:dateIssued<xsl:text/> muss einem Tagesdatum nach dem ISO 8601-Standard entsprechen. Ist dies nicht der Fall, kann die Ausgabe/Beilage nicht dem richtigen Datum im Kalender des Zeitungsportals zugeordnet werden und kann daher nicht in das Zeitungsportal übernommen werden.
Weitere Informationen zu diesem Attribut finden Sie im DDB-METS/MODS-Anwendungsprofil auf der Seite mods:originInfo (https://deutsche-digitale-bibliothek.atlassian.net/wiki/x/FQveAg).</svrl:text>
               <svrl:property id="dmd_id">
                  <xsl:value-of xmlns:sch="http://purl.oclc.org/dsdl/schematron"
                                select="ancestor-or-self::mets:dmdSec/@ID"/>
               </svrl:property>
            </svrl:failed-assert>
         </xsl:otherwise>
      </xsl:choose>
      <xsl:apply-templates select="*" mode="M38"/>
   </xsl:template>
   <!--RULE -->
   <xsl:template match="mets:dmdSec[@ID=$work_dmdid]/mets:mdWrap/mets:xmlData/mods:mods/mods:originInfo[@eventType='publication']/mods:dateIssued[not(text()[1] castable as xs:date)]"
                 priority="1003"
                 mode="M38">
      <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                       context="mets:dmdSec[@ID=$work_dmdid]/mets:mdWrap/mets:xmlData/mods:mods/mods:originInfo[@eventType='publication']/mods:dateIssued[not(text()[1] castable as xs:date)]"/>
      <!--ASSERT fatal-->
      <xsl:choose>
         <xsl:when test="text()[1] castable as xs:date"/>
         <xsl:otherwise>
            <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                test="text()[1] castable as xs:date">
               <xsl:attribute name="id">originInfo_14</xsl:attribute>
               <xsl:attribute name="role">fatal</xsl:attribute>
               <xsl:attribute name="location">
                  <xsl:apply-templates select="." mode="schematron-select-full-path"/>
               </xsl:attribute>
               <svrl:text>Das angegebene Erscheinungsdatum der Ausgabe/Beilage enthält einen ungültigen ISO 8601-Wert. Die Ausgabe/Beilage kann daher nicht ins Zeitungsportal übernommen werden.
Weitere Informationen zu diesem Attribut finden Sie im DDB-METS/MODS-Anwendungsprofil auf der Seite mods:originInfo (https://deutsche-digitale-bibliothek.atlassian.net/wiki/x/FQveAg).</svrl:text>
               <svrl:property id="dmd_id">
                  <xsl:value-of xmlns:sch="http://purl.oclc.org/dsdl/schematron"
                                select="ancestor-or-self::mets:dmdSec/@ID"/>
               </svrl:property>
            </svrl:failed-assert>
         </xsl:otherwise>
      </xsl:choose>
      <xsl:apply-templates select="*" mode="M38"/>
   </xsl:template>
   <!--RULE -->
   <xsl:template match="mets:dmdSec[@ID=$work_dmdid]/mets:mdWrap/mets:xmlData/mods:mods/mods:originInfo[@eventType='publication']/mods:dateIssued[not(matches(text()[1], '^((1[5-9]\d\d)|(2[012]\d\d))-((0\d)|(1[012]))-(([012])\d|3([01]))$'))]"
                 priority="1002"
                 mode="M38">
      <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                       context="mets:dmdSec[@ID=$work_dmdid]/mets:mdWrap/mets:xmlData/mods:mods/mods:originInfo[@eventType='publication']/mods:dateIssued[not(matches(text()[1], '^((1[5-9]\d\d)|(2[012]\d\d))-((0\d)|(1[012]))-(([012])\d|3([01]))$'))]"/>
      <!--ASSERT fatal-->
      <xsl:choose>
         <xsl:when test="matches(text()[1], '^((1[5-9]\d\d)|(2[012]\d\d))-((0\d)|(1[012]))-(([012])\d|3([01]))$')"/>
         <xsl:otherwise>
            <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                test="matches(text()[1], '^((1[5-9]\d\d)|(2[012]\d\d))-((0\d)|(1[012]))-(([012])\d|3([01]))$')">
               <xsl:attribute name="id">originInfo_11</xsl:attribute>
               <xsl:attribute name="role">fatal</xsl:attribute>
               <xsl:attribute name="location">
                  <xsl:apply-templates select="." mode="schematron-select-full-path"/>
               </xsl:attribute>
               <svrl:text>Der Wert in <xsl:text/>mods:dateIssued<xsl:text/> liegt außerhalb des erwarteten Zeitraums (ab 1500) oder besitzt ungültige Monats- bzw. Tagesangaben. Die Ausgabe/Beilage kann daher nicht ins Zeitungsportal übernommen werden, da dies dort zu Fehldarstellungen führt.
Weitere Informationen zu diesem Attribut finden Sie im DDB-METS/MODS-Anwendungsprofil auf der Seite mods:originInfo (https://deutsche-digitale-bibliothek.atlassian.net/wiki/x/FQveAg).</svrl:text>
               <svrl:property id="dmd_id">
                  <xsl:value-of xmlns:sch="http://purl.oclc.org/dsdl/schematron"
                                select="ancestor-or-self::mets:dmdSec/@ID"/>
               </svrl:property>
            </svrl:failed-assert>
         </xsl:otherwise>
      </xsl:choose>
      <xsl:apply-templates select="*" mode="M38"/>
   </xsl:template>
   <!--RULE -->
   <xsl:template match="mets:dmdSec[@ID=$work_dmdid]/mets:mdWrap/mets:xmlData/mods:mods/mods:originInfo[@eventType='publication']/mods:dateIssued[ number(substring-before(text(), '-')) &gt; $current_year ]"
                 priority="1001"
                 mode="M38">
      <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                       context="mets:dmdSec[@ID=$work_dmdid]/mets:mdWrap/mets:xmlData/mods:mods/mods:originInfo[@eventType='publication']/mods:dateIssued[ number(substring-before(text(), '-')) &gt; $current_year ]"/>
      <!--REPORT fatal-->
      <xsl:if test="number(substring-before(text(), '-')) &gt; $current_year">
         <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                 test="number(substring-before(text(), '-')) &gt; $current_year">
            <xsl:attribute name="id">originInfo_13</xsl:attribute>
            <xsl:attribute name="role">fatal</xsl:attribute>
            <xsl:attribute name="location">
               <xsl:apply-templates select="." mode="schematron-select-full-path"/>
            </xsl:attribute>
            <svrl:text>Das angegebene Erscheinungsdatum der Ausgabe/Beilage liegt in der Zukunft. Die Ausgabe/Beilage kann daher nicht ins Zeitungsportal übernommen werden.
Weitere Informationen zu diesem Attribut finden Sie im DDB-METS/MODS-Anwendungsprofil auf der Seite mods:originInfo (https://deutsche-digitale-bibliothek.atlassian.net/wiki/x/FQveAg).</svrl:text>
            <svrl:property id="dmd_id">
               <xsl:value-of xmlns:sch="http://purl.oclc.org/dsdl/schematron"
                             select="ancestor-or-self::mets:dmdSec/@ID"/>
            </svrl:property>
         </svrl:successful-report>
      </xsl:if>
      <xsl:apply-templates select="*" mode="M38"/>
   </xsl:template>
   <!--RULE -->
   <xsl:template match="mets:dmdSec[@ID=$work_dmdid]/mets:mdWrap/mets:xmlData/mods:mods/mods:originInfo[@eventType='publication']/mods:dateIssued"
                 priority="1000"
                 mode="M38">
      <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                       context="mets:dmdSec[@ID=$work_dmdid]/mets:mdWrap/mets:xmlData/mods:mods/mods:originInfo[@eventType='publication']/mods:dateIssued"/>
      <xsl:variable name="year" select="number(substring-before(text(), '-'))"/>
      <!--REPORT warn-->
      <xsl:if test="$year &gt;= 1960">
         <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl" test="$year &gt;= 1960">
            <xsl:attribute name="id">originInfo_12</xsl:attribute>
            <xsl:attribute name="role">warn</xsl:attribute>
            <xsl:attribute name="location">
               <xsl:apply-templates select="." mode="schematron-select-full-path"/>
            </xsl:attribute>
            <svrl:text>Das angegebene Erscheinungsdatum der Ausgabe/Beilage ist 1960 oder später. Auf Grund des geringen Alters der Ausgabe/Beilage und geltender urheberrechtlicher Beschränkungen bitten wir Sie, zu prüfen, ob diese Ausgabe/Beilage bereits frei zugänglich ist.
Ist dies der Fall, besteht von Ihrer Seite kein Handlungsbedarf. Sollten die betroffenen Ausgaben/Beilagen aber noch nicht an das Zeitungsportal geliefert werden, informieren Sie bitte die Fachstelle Bibliothek.
Weitere Informationen zu diesem Attribut finden Sie im DDB-METS/MODS-Anwendungsprofil auf der Seite mods:originInfo (https://deutsche-digitale-bibliothek.atlassian.net/wiki/x/FQveAg).</svrl:text>
            <svrl:property id="dmd_id">
               <xsl:value-of xmlns:sch="http://purl.oclc.org/dsdl/schematron"
                             select="ancestor-or-self::mets:dmdSec/@ID"/>
            </svrl:property>
         </svrl:successful-report>
      </xsl:if>
      <xsl:apply-templates select="*" mode="M38"/>
   </xsl:template>
   <xsl:template match="text()" priority="-1" mode="M38"/>
   <xsl:template match="@*|node()" priority="-2" mode="M38">
      <xsl:apply-templates select="*" mode="M38"/>
   </xsl:template>
   <!--PATTERN -->
   <!--RULE -->
   <xsl:template match="mets:xmlData/mods:mods/mods:language/mods:languageTerm[string-length(text()) &gt; 0]"
                 priority="1000"
                 mode="M39">
      <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                       context="mets:xmlData/mods:mods/mods:language/mods:languageTerm[string-length(text()) &gt; 0]"/>
      <!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="key('iso639-1_codes', text()[1], $iso639-1_codes) or key('iso639-2_codes', text()[1], $iso639-2_codes)"/>
         <xsl:otherwise>
            <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                test="key('iso639-1_codes', text()[1], $iso639-1_codes) or key('iso639-2_codes', text()[1], $iso639-2_codes)">
               <xsl:attribute name="id">language_02</xsl:attribute>
               <xsl:attribute name="role">error</xsl:attribute>
               <xsl:attribute name="location">
                  <xsl:apply-templates select="." mode="schematron-select-full-path"/>
               </xsl:attribute>
               <svrl:text>Das Element <xsl:text/>mods:languageTerm<xsl:text/> im Element <xsl:text/>mods:language<xsl:text/> muss einen ISO 639-2b (https://id.loc.gov/vocabulary/iso639-2)-konformen Wert enthalten.
Bitte beachten Sie, dass wiederholte Sprachangaben innerhalb von <xsl:text/>mods:language<xsl:text/> bzw. im Wert von <xsl:text/>mods:languageTerm<xsl:text/> nicht zulässig sind. Verwenden Sie für jede Sprachangabe jeweils ein <xsl:text/>mods:language<xsl:text/> mit <xsl:text/>mods:languageTerm<xsl:text/>.
Enthält <xsl:text/>mods:language<xsl:text/> kein <xsl:text/>mods:languageTerm<xsl:text/> mit einem ISO 639-2b (https://id.loc.gov/vocabulary/iso639-2)-konformen Wert, wird <xsl:text/>mods:language<xsl:text/> bei der Transformation des Datensatzes entfernt.
Weitere Informationen zu diesem Element finden Sie im DDB-METS/MODS-Anwendungsprofil auf der Seite mods:language (https://deutsche-digitale-bibliothek.atlassian.net/wiki/x/9wLeAg).</svrl:text>
               <svrl:property id="dmd_id">
                  <xsl:value-of xmlns:sch="http://purl.oclc.org/dsdl/schematron"
                                select="ancestor-or-self::mets:dmdSec/@ID"/>
               </svrl:property>
               <svrl:property id="text">
                  <xsl:value-of xmlns:sch="http://purl.oclc.org/dsdl/schematron" select="text()"/>
               </svrl:property>
            </svrl:failed-assert>
         </xsl:otherwise>
      </xsl:choose>
      <xsl:apply-templates select="*" mode="M39"/>
   </xsl:template>
   <xsl:template match="text()" priority="-1" mode="M39"/>
   <xsl:template match="@*|node()" priority="-2" mode="M39">
      <xsl:apply-templates select="*" mode="M39"/>
   </xsl:template>
   <!--PATTERN -->
   <!--RULE -->
   <xsl:template match="mets:dmdSec[@ID=$work_dmdid]/mets:mdWrap/mets:xmlData/mods:mods"
                 priority="1000"
                 mode="M40">
      <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                       context="mets:dmdSec[@ID=$work_dmdid]/mets:mdWrap/mets:xmlData/mods:mods"/>
      <!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="mods:language/mods:languageTerm"/>
         <xsl:otherwise>
            <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                test="mods:language/mods:languageTerm">
               <xsl:attribute name="id">language_03</xsl:attribute>
               <xsl:attribute name="role">error</xsl:attribute>
               <xsl:attribute name="location">
                  <xsl:apply-templates select="." mode="schematron-select-full-path"/>
               </xsl:attribute>
               <svrl:text>Das Element <xsl:text/>mods:languageTerm<xsl:text/> im Element <xsl:text/>mods:language<xsl:text/> muss eine Sprachangabe beinhalten, wenn es sich bei der Ressource überwiegend um Text handelt. Dabei muss es einen ISO 639-2b (https://id.loc.gov/vocabulary/iso639-2)-konformen Wert enthalten. Fehlt die Angabe der Sprache bzw. entspricht die Sprachangabe nicht ISO 639-2b (https://id.loc.gov/vocabulary/iso639-2), kann die Sprachfacette im Zeitungsportal für den Datensatz nicht gefüllt werden.
Weitere Informationen zu diesem Element finden Sie im DDB-METS/MODS-Anwendungsprofil auf der Seite mods:language (https://deutsche-digitale-bibliothek.atlassian.net/wiki/x/9wLeAg).</svrl:text>
               <svrl:property id="dmd_id">
                  <xsl:value-of xmlns:sch="http://purl.oclc.org/dsdl/schematron"
                                select="ancestor-or-self::mets:dmdSec/@ID"/>
               </svrl:property>
            </svrl:failed-assert>
         </xsl:otherwise>
      </xsl:choose>
      <xsl:apply-templates select="*" mode="M40"/>
   </xsl:template>
   <xsl:template match="text()" priority="-1" mode="M40"/>
   <xsl:template match="@*|node()" priority="-2" mode="M40">
      <xsl:apply-templates select="*" mode="M40"/>
   </xsl:template>
   <!--PATTERN -->
   <!--RULE -->
   <xsl:template match="mets:mets[not(mets:dmdSec[@ID=$work_dmdid]/mets:mdWrap/mets:xmlData/mods:mods/mods:relatedItem[@type='host']/mods:identifier[@type='zdb'])]"
                 priority="1002"
                 mode="M41">
      <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                       context="mets:mets[not(mets:dmdSec[@ID=$work_dmdid]/mets:mdWrap/mets:xmlData/mods:mods/mods:relatedItem[@type='host']/mods:identifier[@type='zdb'])]"/>
      <!--ASSERT fatal-->
      <xsl:choose>
         <xsl:when test="mets:dmdSec[@ID=$work_dmdid]/mets:mdWrap/mets:xmlData/mods:mods/mods:relatedItem[@type='host']/mods:identifier[@type='zdb'] or mets:structMap[@TYPE='LOGICAL']/mets:div[@TYPE='newspaper']/mets:mptr[@xlink:href]"/>
         <xsl:otherwise>
            <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                test="mets:dmdSec[@ID=$work_dmdid]/mets:mdWrap/mets:xmlData/mods:mods/mods:relatedItem[@type='host']/mods:identifier[@type='zdb'] or mets:structMap[@TYPE='LOGICAL']/mets:div[@TYPE='newspaper']/mets:mptr[@xlink:href]">
               <xsl:attribute name="id">relatedItem_07</xsl:attribute>
               <xsl:attribute name="role">fatal</xsl:attribute>
               <xsl:attribute name="location">
                  <xsl:apply-templates select="." mode="schematron-select-full-path"/>
               </xsl:attribute>
               <svrl:text>Ausgaben/Beilagen von Zeitungen werden im Zeitungsportal über den ZDB-Identifier in <xsl:text/>mods:relatedItem[@type='host']<xsl:text/> mit der Aufnahme aus der ZDB verknüpft. Fehlt der ZDB-Identifier in <xsl:text/>mods:relatedItem[@type='host']<xsl:text/>, wird er bei der Transformation der Daten aus der METS-Datei der Gesamtaufnahme in die Ausgabe/Beilage übernommen. Enthält auch die Gesamtaufnahme keinen <xsl:text/>mods:identifier[@type='zdb']<xsl:text/>, so kann die Ausgabe/Beilage nicht in das Zeitungsportal eingespielt werden.
Weitere Informationen zu diesen Elementen finden Sie im DDB-METS/MODS-Anwendungsprofil auf den Seiten mods:relatedItem (https://deutsche-digitale-bibliothek.atlassian.net/wiki/x/gA3eAg) und mods:identifier (https://deutsche-digitale-bibliothek.atlassian.net/wiki/x/vg-eAg).</svrl:text>
               <svrl:property id="dmd_id">
                  <xsl:value-of xmlns:sch="http://purl.oclc.org/dsdl/schematron"
                                select="ancestor-or-self::mets:dmdSec/@ID"/>
               </svrl:property>
            </svrl:failed-assert>
         </xsl:otherwise>
      </xsl:choose>
      <xsl:apply-templates select="*" mode="M41"/>
   </xsl:template>
   <!--RULE -->
   <xsl:template match="mets:mets/mets:dmdSec[@ID=$work_dmdid]/mets:mdWrap/mets:xmlData/mods:mods/mods:relatedItem[@type='host'][mods:identifier[@type='zdb']]"
                 priority="1001"
                 mode="M41">
      <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                       context="mets:mets/mets:dmdSec[@ID=$work_dmdid]/mets:mdWrap/mets:xmlData/mods:mods/mods:relatedItem[@type='host'][mods:identifier[@type='zdb']]"/>
      <!--REPORT error-->
      <xsl:if test="mods:identifier[@type='zdb'][2]">
         <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                 test="mods:identifier[@type='zdb'][2]">
            <xsl:attribute name="id">relatedItem_10</xsl:attribute>
            <xsl:attribute name="role">error</xsl:attribute>
            <xsl:attribute name="location">
               <xsl:apply-templates select="." mode="schematron-select-full-path"/>
            </xsl:attribute>
            <svrl:text>Innerhalb von <xsl:text/>mods:relatedItem[@type='host']<xsl:text/> darf <xsl:text/>mods:identifier[@type='zdb']<xsl:text/> nicht wiederholt werden. Ist mehr als ein <xsl:text/>mods:identifier[@type='zdb']<xsl:text/> in <xsl:text/>mods:relatedItem[@type='host']<xsl:text/> vorhanden, wird das erste Vorkommen bei der Transformation der Daten übernommen und alle weiteren Vorkommen entfernt.
Weitere Informationen zu diesen Elementen finden Sie im DDB-METS/MODS-Anwendungsprofil auf den Seiten mods:relatedItem (https://deutsche-digitale-bibliothek.atlassian.net/wiki/x/gA3eAg) und mods:identifier (https://deutsche-digitale-bibliothek.atlassian.net/wiki/x/vg-eAg).</svrl:text>
            <svrl:property id="dmd_id">
               <xsl:value-of xmlns:sch="http://purl.oclc.org/dsdl/schematron"
                             select="ancestor-or-self::mets:dmdSec/@ID"/>
            </svrl:property>
         </svrl:successful-report>
      </xsl:if>
      <xsl:apply-templates select="*" mode="M41"/>
   </xsl:template>
   <!--RULE -->
   <xsl:template match="mets:dmdSec[@ID=$work_dmdid]/mets:mdWrap/mets:xmlData/mods:mods"
                 priority="1000"
                 mode="M41">
      <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                       context="mets:dmdSec[@ID=$work_dmdid]/mets:mdWrap/mets:xmlData/mods:mods"/>
      <!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="mods:relatedItem[@type='host']/mods:identifier[@type='zdb']"/>
         <xsl:otherwise>
            <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                test="mods:relatedItem[@type='host']/mods:identifier[@type='zdb']">
               <xsl:attribute name="id">relatedItem_11</xsl:attribute>
               <xsl:attribute name="role">error</xsl:attribute>
               <xsl:attribute name="location">
                  <xsl:apply-templates select="." mode="schematron-select-full-path"/>
               </xsl:attribute>
               <svrl:text>Ausgaben/Beilagen von Zeitungen werden im Zeitungsportal über den ZDB-Identifier der digitalen Ausgabe/Beilage im Element <xsl:text/>mods:identifier[@type='zdb']<xsl:text/> in <xsl:text/>mods:relatedItem[@type='host']<xsl:text/> mit der Aufnahme aus der ZDB verknüpft. Fehlt der ZDB-Identifier in <xsl:text/>mods:relatedItem[@type='host']<xsl:text/>, wird er bei der Transformation der Daten aus der METS-Datei der Gesamtaufnahme in die Ausgabe/Beilage übernommen.
Weitere Informationen zu diesen Elementen finden Sie im DDB-METS/MODS-Anwendungsprofil auf den Seiten mods:relatedItem (https://deutsche-digitale-bibliothek.atlassian.net/wiki/x/gA3eAg) und mods:identifier (https://deutsche-digitale-bibliothek.atlassian.net/wiki/x/vg-eAg).</svrl:text>
               <svrl:property id="dmd_id">
                  <xsl:value-of xmlns:sch="http://purl.oclc.org/dsdl/schematron"
                                select="ancestor-or-self::mets:dmdSec/@ID"/>
               </svrl:property>
            </svrl:failed-assert>
         </xsl:otherwise>
      </xsl:choose>
      <xsl:apply-templates select="*" mode="M41"/>
   </xsl:template>
   <xsl:template match="text()" priority="-1" mode="M41"/>
   <xsl:template match="@*|node()" priority="-2" mode="M41">
      <xsl:apply-templates select="*" mode="M41"/>
   </xsl:template>
   <!--PATTERN -->
   <!--RULE -->
   <xsl:template match="mets:dmdSec[@ID=$work_dmdid]/mets:mdWrap/mets:xmlData/mods:mods"
                 priority="1000"
                 mode="M42">
      <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                       context="mets:dmdSec[@ID=$work_dmdid]/mets:mdWrap/mets:xmlData/mods:mods"/>
      <!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="mods:relatedItem[@type='host']/mods:titleInfo[not(@type)]/mods:title[string-length(text()) &gt; 0]"/>
         <xsl:otherwise>
            <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                test="mods:relatedItem[@type='host']/mods:titleInfo[not(@type)]/mods:title[string-length(text()) &gt; 0]">
               <xsl:attribute name="id">relatedItem_09</xsl:attribute>
               <xsl:attribute name="role">error</xsl:attribute>
               <xsl:attribute name="location">
                  <xsl:apply-templates select="." mode="schematron-select-full-path"/>
               </xsl:attribute>
               <svrl:text>Das Element <xsl:text/>mods:relatedItem[@type='host']<xsl:text/> mit den Informationen zur Zeitung muss einen Titel in <xsl:text/>mods:titleInfo/mods:title<xsl:text/> enthalten. Fehlt der Titel der Zeitung, wird er bei der Transformation der Daten aus der ZDB-Aufnahme der Online-Ausgabe übernommen.
Weitere Informationen zu diesem Element finden Sie im DDB-METS/MODS-Anwendungsprofil auf der Seite mods:relatedItem (https://deutsche-digitale-bibliothek.atlassian.net/wiki/spaces/DFD/pages/48106880/mods+relatedItem#%3Cmods%3AtitleInfo%3E).</svrl:text>
               <svrl:property id="dmd_id">
                  <xsl:value-of xmlns:sch="http://purl.oclc.org/dsdl/schematron"
                                select="ancestor-or-self::mets:dmdSec/@ID"/>
               </svrl:property>
            </svrl:failed-assert>
         </xsl:otherwise>
      </xsl:choose>
      <xsl:apply-templates select="*" mode="M42"/>
   </xsl:template>
   <xsl:template match="text()" priority="-1" mode="M42"/>
   <xsl:template match="@*|node()" priority="-2" mode="M42">
      <xsl:apply-templates select="*" mode="M42"/>
   </xsl:template>
   <!--PATTERN -->
   <!--RULE -->
   <xsl:template match="mets:dmdSec[@ID=$work_dmdid]/mets:mdWrap/mets:xmlData/mods:mods/mods:relatedItem[@type='host']/mods:identifier[@type='zdb'][not(matches(text()[1], '^\d\d?\d?\d?\d?\d?\d?\d?\d?\d?-?[0-9X]$'))] | mets:dmdSec[@ID=$work_dmdid]/mets:mdWrap/mets:xmlData/mods:mods/mods:relatedItem[@type='host']/mods:relatedItem[@type='original']/mods:identifier[@type='zdb'][not(matches(text()[1], '^\d\d?\d?\d?\d?\d?\d?\d?\d?\d?-?[0-9X]$'))]"
                 priority="1001"
                 mode="M43">
      <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                       context="mets:dmdSec[@ID=$work_dmdid]/mets:mdWrap/mets:xmlData/mods:mods/mods:relatedItem[@type='host']/mods:identifier[@type='zdb'][not(matches(text()[1], '^\d\d?\d?\d?\d?\d?\d?\d?\d?\d?-?[0-9X]$'))] | mets:dmdSec[@ID=$work_dmdid]/mets:mdWrap/mets:xmlData/mods:mods/mods:relatedItem[@type='host']/mods:relatedItem[@type='original']/mods:identifier[@type='zdb'][not(matches(text()[1], '^\d\d?\d?\d?\d?\d?\d?\d?\d?\d?-?[0-9X]$'))]"/>
      <!--ASSERT fatal-->
      <xsl:choose>
         <xsl:when test="matches(text()[1], '^\d\d?\d?\d?\d?\d?\d?\d?\d?\d?-?[0-9X]$')"/>
         <xsl:otherwise>
            <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                test="matches(text()[1], '^\d\d?\d?\d?\d?\d?\d?\d?\d?\d?-?[0-9X]$')">
               <xsl:attribute name="id">identifier_03</xsl:attribute>
               <xsl:attribute name="role">fatal</xsl:attribute>
               <xsl:attribute name="location">
                  <xsl:apply-templates select="." mode="schematron-select-full-path"/>
               </xsl:attribute>
               <svrl:text>Die ZDB-ID der Zeitung in <xsl:text/>mods:identifier<xsl:text/> darf nur aus maximal 10 Zahlen, optional gefolgt von einem Bindestrich und einer weiteren Zahl bzw. einem <xsl:text/>X<xsl:text/>, bestehen. Entspricht die ZDB-ID nicht diesen Vorgaben, wird der Datensatz nicht in das Zeitungsportal eingespielt.
Weitere Informationen zu diesem Element finden Sie im DDB-METS/MODS-Anwendungsprofil auf der Seite mods:identifier (https://deutsche-digitale-bibliothek.atlassian.net/wiki/x/vg-eAg).</svrl:text>
               <svrl:property id="dmd_id">
                  <xsl:value-of xmlns:sch="http://purl.oclc.org/dsdl/schematron"
                                select="ancestor-or-self::mets:dmdSec/@ID"/>
               </svrl:property>
            </svrl:failed-assert>
         </xsl:otherwise>
      </xsl:choose>
      <xsl:apply-templates select="*" mode="M43"/>
   </xsl:template>
   <!--RULE -->
   <xsl:template match="mets:dmdSec[@ID=$work_dmdid]/mets:mdWrap/mets:xmlData/mods:mods/mods:relatedItem[@type='host']/mods:identifier[@type='zdb'] | mets:dmdSec[@ID=$work_dmdid]/mets:mdWrap/mets:xmlData/mods:mods/mods:relatedItem[@type='host']/mods:relatedItem[@type='original']/mods:identifier[@type='zdb']"
                 priority="1000"
                 mode="M43">
      <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                       context="mets:dmdSec[@ID=$work_dmdid]/mets:mdWrap/mets:xmlData/mods:mods/mods:relatedItem[@type='host']/mods:identifier[@type='zdb'] | mets:dmdSec[@ID=$work_dmdid]/mets:mdWrap/mets:xmlData/mods:mods/mods:relatedItem[@type='host']/mods:relatedItem[@type='original']/mods:identifier[@type='zdb']"/>
      <!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="matches(text()[1], '^\d\d?\d?\d?\d?\d?\d?\d?\d?\d?-[0-9X]$')"/>
         <xsl:otherwise>
            <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                test="matches(text()[1], '^\d\d?\d?\d?\d?\d?\d?\d?\d?\d?-[0-9X]$')">
               <xsl:attribute name="id">identifier_04</xsl:attribute>
               <xsl:attribute name="role">error</xsl:attribute>
               <xsl:attribute name="location">
                  <xsl:apply-templates select="." mode="schematron-select-full-path"/>
               </xsl:attribute>
               <svrl:text>Die ZDB-ID der Zeitung enthält an der letzten Stelle eine Prüfziffer, die durch einen Bindestrich eingeleitet werden kann. Dieser fehlt in <xsl:text/>mods:identifier<xsl:text/>. Da der Bindestrich für das Einspielen in das Zeitungsportal erforderlich ist, wird er bei der Transformation der Daten ergänzt.
Weitere Informationen zu diesem Element finden Sie im DDB-METS/MODS-Anwendungsprofil auf der Seite mods:identifier (https://deutsche-digitale-bibliothek.atlassian.net/wiki/x/vg-eAg).</svrl:text>
               <svrl:property id="dmd_id">
                  <xsl:value-of xmlns:sch="http://purl.oclc.org/dsdl/schematron"
                                select="ancestor-or-self::mets:dmdSec/@ID"/>
               </svrl:property>
            </svrl:failed-assert>
         </xsl:otherwise>
      </xsl:choose>
      <xsl:apply-templates select="*" mode="M43"/>
   </xsl:template>
   <xsl:template match="text()" priority="-1" mode="M43"/>
   <xsl:template match="@*|node()" priority="-2" mode="M43">
      <xsl:apply-templates select="*" mode="M43"/>
   </xsl:template>
   <!--PATTERN -->
   <!--RULE -->
   <xsl:template match="mets:dmdSec[@ID=$work_dmdid]/mets:mdWrap/mets:xmlData/mods:mods[mods:accessCondition[@type = 'use and reproduction']]"
                 priority="1000"
                 mode="M44">
      <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                       context="mets:dmdSec[@ID=$work_dmdid]/mets:mdWrap/mets:xmlData/mods:mods[mods:accessCondition[@type = 'use and reproduction']]"/>
      <!--ASSERT warn-->
      <xsl:choose>
         <xsl:when test="mods:accessCondition[@type = 'use and reproduction' and key('license_uris', ./@*[local-name()='href'][1], $license_uris)]"/>
         <xsl:otherwise>
            <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                test="mods:accessCondition[@type = 'use and reproduction' and key('license_uris', ./@*[local-name()='href'][1], $license_uris)]">
               <xsl:attribute name="id">accessCondition_01</xsl:attribute>
               <xsl:attribute name="role">warn</xsl:attribute>
               <xsl:attribute name="location">
                  <xsl:apply-templates select="." mode="schematron-select-full-path"/>
               </xsl:attribute>
               <svrl:text>Wenn für die Angabe der Lizenz das Element <xsl:text/>mods:accessCondition<xsl:text/> verwendet wird, so sollte dies den Empfehlungen für Rechteinformationen in Metadaten der DINI AG KIM (https://wiki.dnb.de/pages/viewpage.action?pageId=148607377) entsprechend erfolgen.
Weitere Informationen zu diesem Element finden Sie im DDB-METS/MODS-Anwendungsprofil auf der Seite mods:accessCondition (https://deutsche-digitale-bibliothek.atlassian.net/wiki/x/zQ3eAg).</svrl:text>
               <svrl:property id="dmd_id">
                  <xsl:value-of xmlns:sch="http://purl.oclc.org/dsdl/schematron"
                                select="ancestor-or-self::mets:dmdSec/@ID"/>
               </svrl:property>
            </svrl:failed-assert>
         </xsl:otherwise>
      </xsl:choose>
      <xsl:apply-templates select="*" mode="M44"/>
   </xsl:template>
   <xsl:template match="text()" priority="-1" mode="M44"/>
   <xsl:template match="@*|node()" priority="-2" mode="M44">
      <xsl:apply-templates select="*" mode="M44"/>
   </xsl:template>
   <!--PATTERN -->
   <!--RULE -->
   <xsl:template match="mods:accessCondition[@type='use and reproduction']/@*[local-name()= 'href']"
                 priority="1000"
                 mode="M45">
      <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                       context="mods:accessCondition[@type='use and reproduction']/@*[local-name()= 'href']"/>
      <!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="namespace-uri() = 'http://www.w3.org/1999/xlink'"/>
         <xsl:otherwise>
            <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                test="namespace-uri() = 'http://www.w3.org/1999/xlink'">
               <xsl:attribute name="id">accessCondition_02</xsl:attribute>
               <xsl:attribute name="role">error</xsl:attribute>
               <xsl:attribute name="location">
                  <xsl:apply-templates select="." mode="schematron-select-full-path"/>
               </xsl:attribute>
               <svrl:text>Das Attribut <xsl:text/>href<xsl:text/> im Element <xsl:text/>mods:accessCondition<xsl:text/> muss zum Namensraum <xsl:text/>http://www.w3.org/1999/xlink<xsl:text/> gehören.
Ist dies nicht der Fall, wird bei der Transformation das erste Vorkommen des Attributs <xsl:text/>href<xsl:text/> in den Namensraum <xsl:text/>http://www.w3.org/1999/xlink<xsl:text/> gesetzt und entsprechend ausgewertet.
Weitere Informationen zu diesem Element finden Sie im DDB-METS/MODS-Anwendungsprofil auf der Seite mods:accessCondition (https://deutsche-digitale-bibliothek.atlassian.net/wiki/x/zQ3eAg).</svrl:text>
               <svrl:property id="dmd_id">
                  <xsl:value-of xmlns:sch="http://purl.oclc.org/dsdl/schematron"
                                select="ancestor-or-self::mets:dmdSec/@ID"/>
               </svrl:property>
            </svrl:failed-assert>
         </xsl:otherwise>
      </xsl:choose>
      <xsl:apply-templates select="*" mode="M45"/>
   </xsl:template>
   <xsl:template match="text()" priority="-1" mode="M45"/>
   <xsl:template match="@*|node()" priority="-2" mode="M45">
      <xsl:apply-templates select="*" mode="M45"/>
   </xsl:template>
   <!--PATTERN -->
   <!--RULE -->
   <xsl:template match="mets:dmdSec[@ID=$work_dmdid]/mets:mdWrap/mets:xmlData/mods:mods[mods:part[2]]"
                 priority="1004"
                 mode="M46">
      <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                       context="mets:dmdSec[@ID=$work_dmdid]/mets:mdWrap/mets:xmlData/mods:mods[mods:part[2]]"/>
      <!--REPORT fatal-->
      <xsl:if test="mods:part[2]">
         <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl" test="mods:part[2]">
            <xsl:attribute name="id">part_06</xsl:attribute>
            <xsl:attribute name="role">fatal</xsl:attribute>
            <xsl:attribute name="location">
               <xsl:apply-templates select="." mode="schematron-select-full-path"/>
            </xsl:attribute>
            <svrl:text>Das Element <xsl:text/>mods:part<xsl:text/> ist in Ausgaben/Beilagen von Zeitungen nicht wiederholbar. Gibt es in einem Datensatz mehr als ein <xsl:text/>mods:part<xsl:text/>, ist die Sortierung der Ausgabe/Beilage nicht mehr eindeutig und er kann daher nicht in das Zeitungsportal eingespielt werden.
Weitere Informationen zu diesem Element und seinem Kontext finden Sie im DDB-METS/MODS-Anwendungsprofil auf der Seite mods:part (https://deutsche-digitale-bibliothek.atlassian.net/wiki/x/0Q3eAg).</svrl:text>
            <svrl:property id="dmd_id">
               <xsl:value-of xmlns:sch="http://purl.oclc.org/dsdl/schematron"
                             select="ancestor-or-self::mets:dmdSec/@ID"/>
            </svrl:property>
         </svrl:successful-report>
      </xsl:if>
      <xsl:apply-templates select="*" mode="M46"/>
   </xsl:template>
   <!--RULE -->
   <xsl:template match="mets:dmdSec[@ID=$work_dmdid]/mets:mdWrap/mets:xmlData/mods:mods[not(mods:part/mods:detail/mods:number)]"
                 priority="1003"
                 mode="M46">
      <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                       context="mets:dmdSec[@ID=$work_dmdid]/mets:mdWrap/mets:xmlData/mods:mods[not(mods:part/mods:detail/mods:number)]"/>
      <!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="mods:part/mods:detail/mods:number"/>
         <xsl:otherwise>
            <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                test="mods:part/mods:detail/mods:number">
               <xsl:attribute name="id">part_07</xsl:attribute>
               <xsl:attribute name="role">error</xsl:attribute>
               <xsl:attribute name="location">
                  <xsl:apply-templates select="." mode="schematron-select-full-path"/>
               </xsl:attribute>
               <svrl:text>Ausgaben/Beilagen von Zeitungen müssen Informationen zur Zählung enthalten, die im Zeitungsportal für die Anzeige der Ausgabe/Beilage verwendet werden. Diese Information muss in <xsl:text/>mods:part<xsl:text/> zur Verfügung gestellt werden.
Die textliche Angabe erfolgt im Unterelement <xsl:text/>mods:number<xsl:text/> des Unterelements <xsl:text/>mods:detail<xsl:text/> und die maschienenlesbare Form (als Integer) im Attribut <xsl:text/>order<xsl:text/> von <xsl:text/>mods:part<xsl:text/>.
Fehlt <xsl:text/>mods:part<xsl:text/>, so wird der Inhalt des Elements <xsl:text/>mods:number<xsl:text/> bei der Transformation der Daten aus dem Erscheinungsdatum der Ausgabe/Beilage (s. <xsl:text/>mods:dateIssued<xsl:text/>) generiert.
Weitere Informationen zu diesem Element und seinem Kontext finden Sie im DDB-METS/MODS-Anwendungsprofil auf der Seite mods:part (https://deutsche-digitale-bibliothek.atlassian.net/wiki/x/0Q3eAg).</svrl:text>
               <svrl:property id="dmd_id">
                  <xsl:value-of xmlns:sch="http://purl.oclc.org/dsdl/schematron"
                                select="ancestor-or-self::mets:dmdSec/@ID"/>
               </svrl:property>
            </svrl:failed-assert>
         </xsl:otherwise>
      </xsl:choose>
      <xsl:apply-templates select="*" mode="M46"/>
   </xsl:template>
   <!--RULE -->
   <xsl:template match="mets:dmdSec[@ID=$work_dmdid]/mets:mdWrap/mets:xmlData/mods:mods[not(mods:part[@order])]/mods:part"
                 priority="1002"
                 mode="M46">
      <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                       context="mets:dmdSec[@ID=$work_dmdid]/mets:mdWrap/mets:xmlData/mods:mods[not(mods:part[@order])]/mods:part"/>
      <!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="./@order"/>
         <xsl:otherwise>
            <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl" test="./@order">
               <xsl:attribute name="id">part_08</xsl:attribute>
               <xsl:attribute name="role">error</xsl:attribute>
               <xsl:attribute name="location">
                  <xsl:apply-templates select="." mode="schematron-select-full-path"/>
               </xsl:attribute>
               <svrl:text>Um Ausgaben/Beilagen von Zeitungen in der richtigen Reihenfolge anzeigen zu können, muss die Zählung auch in maschinenlesbarer Form vorliegen. Dafür muss <xsl:text/>mods:part<xsl:text/> das Attribut <xsl:text/>order<xsl:text/> enthalten. Der Wert in diesem Attribut muss dem Erscheinungsdatum in Form eines Integer (also <xsl:text/>YYYYMMDD<xsl:text/>, ggf. mit angehängter zweistelliger Zählung) entsprechen.
Fehlt das Attribut order in <xsl:text/>mods:part<xsl:text/>, so wird der Inhalt des Attributs bei der Transformation der Daten aus dem Erscheinungsdatum der Ausgabe/Beilage (s. <xsl:text/>mods:dateIssued<xsl:text/>) generiert.
Weitere Informationen zu diesem Element und seinem Kontext finden Sie im DDB-METS/MODS-Anwendungsprofil auf der Seite mods:part (https://deutsche-digitale-bibliothek.atlassian.net/wiki/x/0Q3eAg).</svrl:text>
               <svrl:property id="dmd_id">
                  <xsl:value-of xmlns:sch="http://purl.oclc.org/dsdl/schematron"
                                select="ancestor-or-self::mets:dmdSec/@ID"/>
               </svrl:property>
            </svrl:failed-assert>
         </xsl:otherwise>
      </xsl:choose>
      <xsl:apply-templates select="*" mode="M46"/>
   </xsl:template>
   <!--RULE -->
   <xsl:template match="mets:dmdSec[@ID=$work_dmdid]/mets:mdWrap/mets:xmlData/mods:mods/mods:part[not(matches(@order, '^\d+$'))]"
                 priority="1001"
                 mode="M46">
      <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                       context="mets:dmdSec[@ID=$work_dmdid]/mets:mdWrap/mets:xmlData/mods:mods/mods:part[not(matches(@order, '^\d+$'))]"/>
      <!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="matches(./@order, '^\d+$')"/>
         <xsl:otherwise>
            <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                test="matches(./@order, '^\d+$')">
               <xsl:attribute name="id">part_09</xsl:attribute>
               <xsl:attribute name="role">error</xsl:attribute>
               <xsl:attribute name="location">
                  <xsl:apply-templates select="." mode="schematron-select-full-path"/>
               </xsl:attribute>
               <svrl:text>Um Ausgaben/Beilagen von Zeitungen in der richtigen Reihenfolge anzeigen zu können, muss die Zählung auch in maschinenlesbarer Form vorliegen. Der Wert in diesem Attribut muss dem Erscheinungsdatum in Form eines Integer (also <xsl:text/>YYYYMMDD<xsl:text/>, ggf. mit angehängter zweistelliger Zählung) entsprechen.
Das Fehlen der maschinenlesbaren Form der Zählung in <xsl:text/>order<xsl:text/> verhindert nicht das Einspielen des Datensatzes in das Zeitungsportal, kann aber zu Darstellungsproblemen führen. Wir bitten Sie daher den Sachverhalt zu prüfen und ggf. die nötigen Korrekturen bis zur nächsten Datenlieferung vorzunehmen.
Weitere Informationen zu diesem Element und seinem Kontext finden Sie im DDB-METS/MODS-Anwendungsprofil auf der Seite mods:part (https://deutsche-digitale-bibliothek.atlassian.net/wiki/x/0Q3eAg).</svrl:text>
               <svrl:property id="dmd_id">
                  <xsl:value-of xmlns:sch="http://purl.oclc.org/dsdl/schematron"
                                select="ancestor-or-self::mets:dmdSec/@ID"/>
               </svrl:property>
            </svrl:failed-assert>
         </xsl:otherwise>
      </xsl:choose>
      <xsl:apply-templates select="*" mode="M46"/>
   </xsl:template>
   <!--RULE -->
   <xsl:template match="mets:dmdSec[@ID=$work_dmdid]/mets:mdWrap/mets:xmlData/mods:mods/mods:part[not(matches(@order, '^[12]\d\d\d[01]\d[0123]\d(\d\d)?$'))]"
                 priority="1000"
                 mode="M46">
      <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                       context="mets:dmdSec[@ID=$work_dmdid]/mets:mdWrap/mets:xmlData/mods:mods/mods:part[not(matches(@order, '^[12]\d\d\d[01]\d[0123]\d(\d\d)?$'))]"/>
      <!--ASSERT warn-->
      <xsl:choose>
         <xsl:when test="matches(./@order, '^[12]\d\d\d[01]\d[0123]\d(\d\d)?$')"/>
         <xsl:otherwise>
            <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                test="matches(./@order, '^[12]\d\d\d[01]\d[0123]\d(\d\d)?$')">
               <xsl:attribute name="id">part_10</xsl:attribute>
               <xsl:attribute name="role">warn</xsl:attribute>
               <xsl:attribute name="location">
                  <xsl:apply-templates select="." mode="schematron-select-full-path"/>
               </xsl:attribute>
               <svrl:text>Um Ausgaben/Beilagen von Zeitungen in der richtigen Reihenfolge anzeigen zu können, muss die Zählung auch in maschinenlesbarer Form vorliegen. Der vorliegende Wert als Integer erfüllt die Anforderungen, weicht aber in der Struktur von der Empfehlung im Anwendungsprofil (<xsl:text/>YYYYMMTT<xsl:text/> ggf. mit angehängter zweistelliger Zählung) ab. Wir empfehlen die empfohlene Struktur zu übernehmen, um Sortierfehler im Zeitungsportal zu vermeiden.
Weitere Informationen zu diesem Element und seinem Kontext finden Sie im DDB-METS/MODS-Anwendungsprofil auf der Seite mods:part (https://deutsche-digitale-bibliothek.atlassian.net/wiki/x/0Q3eAg).</svrl:text>
               <svrl:property id="dmd_id">
                  <xsl:value-of xmlns:sch="http://purl.oclc.org/dsdl/schematron"
                                select="ancestor-or-self::mets:dmdSec/@ID"/>
               </svrl:property>
            </svrl:failed-assert>
         </xsl:otherwise>
      </xsl:choose>
      <xsl:apply-templates select="*" mode="M46"/>
   </xsl:template>
   <xsl:template match="text()" priority="-1" mode="M46"/>
   <xsl:template match="@*|node()" priority="-2" mode="M46">
      <xsl:apply-templates select="*" mode="M46"/>
   </xsl:template>
   <!--PATTERN -->
   <!--RULE -->
   <xsl:template match="mets:dmdSec[@ID=$work_dmdid]/mets:mdWrap/mets:xmlData/mods:mods[not(mods:part[2])]/mods:part"
                 priority="1000"
                 mode="M47">
      <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                       context="mets:dmdSec[@ID=$work_dmdid]/mets:mdWrap/mets:xmlData/mods:mods[not(mods:part[2])]/mods:part"/>
      <!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="mods:detail[@type = 'issue'][mods:number[string-length(text()[1]) &gt; 0]]"/>
         <xsl:otherwise>
            <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                test="mods:detail[@type = 'issue'][mods:number[string-length(text()[1]) &gt; 0]]">
               <xsl:attribute name="id">part_11</xsl:attribute>
               <xsl:attribute name="role">error</xsl:attribute>
               <xsl:attribute name="location">
                  <xsl:apply-templates select="." mode="schematron-select-full-path"/>
               </xsl:attribute>
               <svrl:text>In <xsl:text/>mods:part<xsl:text/> von Ausgaben/Beilagen von Zeitungen muss das Unterelement <xsl:text/>mods:detail<xsl:text/> ein Attribut <xsl:text/>type<xsl:text/> mit dem Wert <xsl:text/>issue<xsl:text/> enthalten. Darüber hinaus muss das Element <xsl:text/>mods:detail<xsl:text/> ein Unterelement <xsl:text/>mods:number<xsl:text/> enthalten.
Fehlen diese Angaben, wird bei der Transformation der Daten in dem vorhandenen <xsl:text/>mods:part<xsl:text/> ein <xsl:text/>mods:detail<xsl:text/> mit dem Attribut <xsl:text/>type<xsl:text/> mit dem Wert <xsl:text/>issue<xsl:text/> erzeugt und der Wert für das Unterelement <xsl:text/>mods:number<xsl:text/> aus dem Erscheinungsdatum übernommen (s. <xsl:text/>mods:dateIssued<xsl:text/>).
Weitere Informationen zu diesem Element und seinem Kontext finden Sie im DDB-METS/MODS-Anwendungsprofil auf der Seite mods:part (https://deutsche-digitale-bibliothek.atlassian.net/wiki/x/0Q3eAg).</svrl:text>
               <svrl:property id="dmd_id">
                  <xsl:value-of xmlns:sch="http://purl.oclc.org/dsdl/schematron"
                                select="ancestor-or-self::mets:dmdSec/@ID"/>
               </svrl:property>
            </svrl:failed-assert>
         </xsl:otherwise>
      </xsl:choose>
      <xsl:apply-templates select="*" mode="M47"/>
   </xsl:template>
   <xsl:template match="text()" priority="-1" mode="M47"/>
   <xsl:template match="@*|node()" priority="-2" mode="M47">
      <xsl:apply-templates select="*" mode="M47"/>
   </xsl:template>
   <!--PATTERN -->
   <!--RULE -->
   <xsl:template match="mets:dmdSec[@ID=$work_dmdid]/mets:mdWrap/mets:xmlData/mods:mods"
                 priority="1000"
                 mode="M48">
      <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                       context="mets:dmdSec[@ID=$work_dmdid]/mets:mdWrap/mets:xmlData/mods:mods"/>
      <!--ASSERT fatal-->
      <xsl:choose>
         <xsl:when test="mods:recordInfo/mods:recordIdentifier"/>
         <xsl:otherwise>
            <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                test="mods:recordInfo/mods:recordIdentifier">
               <xsl:attribute name="id">recordInfo_01</xsl:attribute>
               <xsl:attribute name="role">fatal</xsl:attribute>
               <xsl:attribute name="location">
                  <xsl:apply-templates select="." mode="schematron-select-full-path"/>
               </xsl:attribute>
               <svrl:text>Das primäre <xsl:text/>mets:dmdSec<xsl:text/>-Element muss das Element <xsl:text/>mods:recordInfo<xsl:text/> mit dem Unterelement <xsl:text/>mods:recordIdentifier<xsl:text/> enthalten. <xsl:text/>mods:recordIdentifier<xsl:text/> muss darüber hinaus das Attribut <xsl:text/>source<xsl:text/> enthalten, um eindeutig identifizierbar zu sein.
Fehlt <xsl:text/>mods:recordIdentifier<xsl:text/> mit dem Attribut <xsl:text/>source<xsl:text/>, wird der Datensatz nicht in das Zeitungsportal eingespielt.
Weitere Informationen zu diesem Element finden Sie im DDB-METS/MODS-Anwendungsprofil auf der Seite mods:recordInfo (https://deutsche-digitale-bibliothek.atlassian.net/wiki/x/eAjeAg).</svrl:text>
               <svrl:property id="dmd_id">
                  <xsl:value-of xmlns:sch="http://purl.oclc.org/dsdl/schematron"
                                select="ancestor-or-self::mets:dmdSec/@ID"/>
               </svrl:property>
            </svrl:failed-assert>
         </xsl:otherwise>
      </xsl:choose>
      <xsl:apply-templates select="*" mode="M48"/>
   </xsl:template>
   <xsl:template match="text()" priority="-1" mode="M48"/>
   <xsl:template match="@*|node()" priority="-2" mode="M48">
      <xsl:apply-templates select="*" mode="M48"/>
   </xsl:template>
   <!--PATTERN -->
   <!--RULE -->
   <xsl:template match="mets:xmlData/mods:mods/mods:recordInfo/mods:recordIdentifier"
                 priority="1000"
                 mode="M49">
      <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                       context="mets:xmlData/mods:mods/mods:recordInfo/mods:recordIdentifier"/>
      <!--ASSERT fatal-->
      <xsl:choose>
         <xsl:when test="string-length(normalize-space(@source)) &gt; 0"/>
         <xsl:otherwise>
            <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                test="string-length(normalize-space(@source)) &gt; 0">
               <xsl:attribute name="id">recordInfo_02</xsl:attribute>
               <xsl:attribute name="role">fatal</xsl:attribute>
               <xsl:attribute name="location">
                  <xsl:apply-templates select="." mode="schematron-select-full-path"/>
               </xsl:attribute>
               <svrl:text>Das Element <xsl:text/>mods:recordIdentifier<xsl:text/> im Element <xsl:text/>mods:recordInfo<xsl:text/> muss das Attribut <xsl:text/>source<xsl:text/> enthalten, damit der Wert in <xsl:text/>mods:recordIdentifier<xsl:text/> eindeutig identifizierbar ist.
Fehlt <xsl:text/>source<xsl:text/> in <xsl:text/>mods:recordIdentifier<xsl:text/>, wird der Datensatz nicht in das Zeitungsportal eingespielt.
Weitere Informationen zu diesem Attribut finden Sie im DDB-METS/MODS-Anwendungsprofil auf der Seite mods:recordInfo (https://deutsche-digitale-bibliothek.atlassian.net/wiki/x/eAjeAg).</svrl:text>
               <svrl:property id="dmd_id">
                  <xsl:value-of xmlns:sch="http://purl.oclc.org/dsdl/schematron"
                                select="ancestor-or-self::mets:dmdSec/@ID"/>
               </svrl:property>
            </svrl:failed-assert>
         </xsl:otherwise>
      </xsl:choose>
      <xsl:apply-templates select="*" mode="M49"/>
   </xsl:template>
   <xsl:template match="text()" priority="-1" mode="M49"/>
   <xsl:template match="@*|node()" priority="-2" mode="M49">
      <xsl:apply-templates select="*" mode="M49"/>
   </xsl:template>
   <!--PATTERN -->
   <!--RULE -->
   <xsl:template match="mets:xmlData/mods:mods/mods:recordInfo"
                 priority="1000"
                 mode="M50">
      <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                       context="mets:xmlData/mods:mods/mods:recordInfo"/>
      <!--REPORT fatal-->
      <xsl:if test="mods:recordIdentifier[2]">
         <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl" test="mods:recordIdentifier[2]">
            <xsl:attribute name="id">recordInfo_03</xsl:attribute>
            <xsl:attribute name="role">fatal</xsl:attribute>
            <xsl:attribute name="location">
               <xsl:apply-templates select="." mode="schematron-select-full-path"/>
            </xsl:attribute>
            <svrl:text>Das Element <xsl:text/>mods:recordInfo<xsl:text/> darf das Element <xsl:text/>mods:recordIdentifier<xsl:text/> nur einmal enthalten.
Enthält <xsl:text/>mods:recordInfo<xsl:text/> mehr als ein <xsl:text/>mods:recordIdentifier<xsl:text/>, teilen Sie uns bitte mit, welches <xsl:text/>mods:recordIdentifier<xsl:text/> in Abhängigkeit des Wertes im Attribut <xsl:text/>source<xsl:text/> bei der Transformation des Datensatzes erhalten bleibt. Alle anderen Vorkommen von <xsl:text/>mods:recordIdentifier<xsl:text/> werden entfernt.
Weitere Informationen zu diesem Element finden Sie im DDB-METS/MODS-Anwendungsprofil auf der Seite mods:recordInfo (https://deutsche-digitale-bibliothek.atlassian.net/wiki/x/eAjeAg).</svrl:text>
            <svrl:property id="dmd_id">
               <xsl:value-of xmlns:sch="http://purl.oclc.org/dsdl/schematron"
                             select="ancestor-or-self::mets:dmdSec/@ID"/>
            </svrl:property>
         </svrl:successful-report>
      </xsl:if>
      <xsl:apply-templates select="*" mode="M50"/>
   </xsl:template>
   <xsl:template match="text()" priority="-1" mode="M50"/>
   <xsl:template match="@*|node()" priority="-2" mode="M50">
      <xsl:apply-templates select="*" mode="M50"/>
   </xsl:template>
   <!--PATTERN -->
   <!--RULE -->
   <xsl:template match="mets:dmdSec[@ID=$work_dmdid]/mets:mdWrap/mets:xmlData/mods:mods[count(distinct-values(mods:recordInfo/mods:recordIdentifier[@source]/@source)) = 1]/mods:recordInfo[1]/mods:recordIdentifier[1]"
                 priority="1001"
                 mode="M51">
      <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                       context="mets:dmdSec[@ID=$work_dmdid]/mets:mdWrap/mets:xmlData/mods:mods[count(distinct-values(mods:recordInfo/mods:recordIdentifier[@source]/@source)) = 1]/mods:recordInfo[1]/mods:recordIdentifier[1]"/>
      <!--ASSERT fatal-->
      <xsl:choose>
         <xsl:when test="matches(text()[1], '^[a-zA-Z_0-9:\-.!]+$')"/>
         <xsl:otherwise>
            <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                test="matches(text()[1], '^[a-zA-Z_0-9:\-.!]+$')">
               <xsl:attribute name="id">recordInfo_04</xsl:attribute>
               <xsl:attribute name="role">fatal</xsl:attribute>
               <xsl:attribute name="location">
                  <xsl:apply-templates select="." mode="schematron-select-full-path"/>
               </xsl:attribute>
               <svrl:text>Der Wert im für den DDB-Identifier relevanten Vorkommen des Elements <xsl:text/>mods:recordIdentifier<xsl:text/> darf nur die folgenden Zeichen enthalten:
 * Buchstaben
 * Zahlen
 * <xsl:text/>:<xsl:text/>
 * <xsl:text/>.<xsl:text/>
 * <xsl:text/>!<xsl:text/>
 * <xsl:text/>-<xsl:text/>
 * <xsl:text/>\<xsl:text/>
Die DDB wertet für den DDB-Identifier das erste Vorkommen (XML-Reihenfolge) von <xsl:text/>mods:recordIdentifier<xsl:text/> aus.
Weitere Informationen zu diesem Element finden Sie im DDB-METS/MODS-Anwendungsprofil auf der Seite mods:recordInfo (https://deutsche-digitale-bibliothek.atlassian.net/wiki/x/eAjeAg).</svrl:text>
               <svrl:property id="dmd_id">
                  <xsl:value-of xmlns:sch="http://purl.oclc.org/dsdl/schematron"
                                select="ancestor-or-self::mets:dmdSec/@ID"/>
               </svrl:property>
            </svrl:failed-assert>
         </xsl:otherwise>
      </xsl:choose>
      <xsl:apply-templates select="*" mode="M51"/>
   </xsl:template>
   <!--RULE -->
   <xsl:template match="mets:dmdSec[@ID=$work_dmdid]/mets:mdWrap/mets:xmlData/mods:mods[count(distinct-values(mods:recordInfo/mods:recordIdentifier[@source]/@source)) &gt; 1]/mods:recordInfo/mods:recordIdentifier"
                 priority="1000"
                 mode="M51">
      <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                       context="mets:dmdSec[@ID=$work_dmdid]/mets:mdWrap/mets:xmlData/mods:mods[count(distinct-values(mods:recordInfo/mods:recordIdentifier[@source]/@source)) &gt; 1]/mods:recordInfo/mods:recordIdentifier"/>
      <!--ASSERT fatal-->
      <xsl:choose>
         <xsl:when test="matches(text()[1], '^[^ /]+$')"/>
         <xsl:otherwise>
            <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                test="matches(text()[1], '^[^ /]+$')">
               <xsl:attribute name="id">recordInfo_06</xsl:attribute>
               <xsl:attribute name="role">fatal</xsl:attribute>
               <xsl:attribute name="location">
                  <xsl:apply-templates select="." mode="schematron-select-full-path"/>
               </xsl:attribute>
               <svrl:text>Der Wert im Element <xsl:text/>mods:recordIdentifier<xsl:text/> enthält Leer- und / oder Sonderzeichen. Dies kann zu Problemen bei der Verarbeitung in der DDB führen, daher wird der Datensatz nicht in das Zeitungsportal eingespielt.
Weitere Informationen zu diesem Element finden Sie im DDB-METS/MODS-Anwendungsprofil auf der Seite mods:recordInfo (https://deutsche-digitale-bibliothek.atlassian.net/wiki/x/eAjeAg).</svrl:text>
               <svrl:property id="dmd_id">
                  <xsl:value-of xmlns:sch="http://purl.oclc.org/dsdl/schematron"
                                select="ancestor-or-self::mets:dmdSec/@ID"/>
               </svrl:property>
            </svrl:failed-assert>
         </xsl:otherwise>
      </xsl:choose>
      <xsl:apply-templates select="*" mode="M51"/>
   </xsl:template>
   <xsl:template match="text()" priority="-1" mode="M51"/>
   <xsl:template match="@*|node()" priority="-2" mode="M51">
      <xsl:apply-templates select="*" mode="M51"/>
   </xsl:template>
   <!--PATTERN -->
   <!--RULE -->
   <xsl:template match="mets:mets" priority="1001" mode="M52">
      <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl" context="mets:mets"/>
      <!--ASSERT fatal-->
      <xsl:choose>
         <xsl:when test="mets:dmdSec[@ID=$work_dmdid]/mets:mdWrap/mets:xmlData/mods:mods"/>
         <xsl:otherwise>
            <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                test="mets:dmdSec[@ID=$work_dmdid]/mets:mdWrap/mets:xmlData/mods:mods">
               <xsl:attribute name="id">dmdSec_01</xsl:attribute>
               <xsl:attribute name="role">fatal</xsl:attribute>
               <xsl:attribute name="location">
                  <xsl:apply-templates select="." mode="schematron-select-full-path"/>
               </xsl:attribute>
               <svrl:text>Das primäre <xsl:text/>mets:dmdSec<xsl:text/>-Element beschreibt das gesamte im Datensatz beschriebene Dokument (Ausgabe/Beilage). Es muss das Unterelement <xsl:text/>mets:mdWrap<xsl:text/> mit dem Unterelement <xsl:text/>mets:xmlData<xsl:text/> enthalten, welches ein Unterelement <xsl:text/>mods:mods<xsl:text/> besitzt.
Es muss mit dem <xsl:text/>mets:div[@TYPE='issue']<xsl:text/> bzw. <xsl:text/>mets:div[@TYPE='additional']<xsl:text/> in der <xsl:text/>mets:structMap[@TYPE='LOGICAL']<xsl:text/> verlinkt sein.
Ein Datensatz darf nur ein <xsl:text/>mets:div[@TYPE='issue']<xsl:text/> oder ein <xsl:text/>mets:div[@TYPE='additional']<xsl:text/> in der <xsl:text/>mets:structMap[@TYPE='LOGICAL']<xsl:text/> enthalten. Sind diese Voraussetzungen nicht erfüllt, wird der Datensatz nicht in das Zeitungsportal eingespielt.
Die Selektion des primären <xsl:text/>mets:dmdSec<xsl:text/> erfolgt über ein im Element <xsl:text/>mets:structMap[@TYPE='LOGICAL']<xsl:text/> enthaltenes <xsl:text/>mets:div<xsl:text/>-Element über die folgenden Kriterien:
 * Falls <xsl:text/>mets:structMap[@TYPE='LOGICAL']<xsl:text/> kein <xsl:text/>mets:div<xsl:text/> mit dem Unterelement <xsl:text/>mets:mptr<xsl:text/> enthält: Das primäre <xsl:text/>mets:dmdSec<xsl:text/> ist das Kind von <xsl:text/>mets:structMap[@TYPE='LOGICAL']<xsl:text/>
 * Falls <xsl:text/>mets:structMap[@TYPE='LOGICAL']<xsl:text/> ein <xsl:text/>mets:div<xsl:text/> mit dem Unterelement <xsl:text/>mets:mptr<xsl:text/> enthält: Das primäre <xsl:text/>mets:dmdSec<xsl:text/> ist das Kind des <xsl:text/>mets:div<xsl:text/> mit dem Unterelement <xsl:text/>mets:mptr<xsl:text/>
Das nach den o. g. Kriterien selektierte <xsl:text/>mets:div<xsl:text/> referenziert über sein Attribut <xsl:text/>DMDID<xsl:text/> das Attribut <xsl:text/>ID<xsl:text/> des primären <xsl:text/>mets:dmdSec<xsl:text/>.
Fehlt das primäre <xsl:text/>mets:dmdSec<xsl:text/> bzw. ist keine eindeutige Selektion möglich, wird der Datensatz nicht in das Zeitungsportal eingespielt.
Weitere Informationen zu diesen Elementen und Ihrem Kontext finden Sie im DDB-METS/MODS-Anwendungsprofil auf den Seiten mets:dmdSec (https://deutsche-digitale-bibliothek.atlassian.net/wiki/x/jQLeAg) und mets:structMap[@TYPE='LOGICAL'] (https://deutsche-digitale-bibliothek.atlassian.net/wiki/x/bAXeAg) sowie im Bereich Aufbau einer METS/MODS-Datei für die DDB (https://deutsche-digitale-bibliothek.atlassian.net/wiki/x/MwLeAg).</svrl:text>
               <svrl:property id="id">
                  <xsl:value-of xmlns:sch="http://purl.oclc.org/dsdl/schematron" select="./@ID"/>
               </svrl:property>
            </svrl:failed-assert>
         </xsl:otherwise>
      </xsl:choose>
      <xsl:apply-templates select="*" mode="M52"/>
   </xsl:template>
   <!--RULE -->
   <xsl:template match="mets:dmdSec[not(@ID=$work_dmdid)]"
                 priority="1000"
                 mode="M52">
      <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                       context="mets:dmdSec[not(@ID=$work_dmdid)]"/>
      <!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="mets:mdWrap/mets:xmlData/mods:mods"/>
         <xsl:otherwise>
            <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                test="mets:mdWrap/mets:xmlData/mods:mods">
               <xsl:attribute name="id">dmdSec_02</xsl:attribute>
               <xsl:attribute name="role">error</xsl:attribute>
               <xsl:attribute name="location">
                  <xsl:apply-templates select="." mode="schematron-select-full-path"/>
               </xsl:attribute>
               <svrl:text>Das Element <xsl:text/>mets:dmdSec<xsl:text/> muss das Unterelement <xsl:text/>mets:mdWrap<xsl:text/> mit dem Unterelement <xsl:text/>mets:xmlData<xsl:text/> enthalten, welches ein Unterelement <xsl:text/>mods:mods<xsl:text/> besitzt.
Ist dies nicht der Fall, wird <xsl:text/>mets:dmdSec<xsl:text/> bei der Transformation des Datensatzes entfernt.
Weitere Informationen zu diesem Element finden Sie im DDB-METS/MODS-Anwendungsprofil auf der Seite mets:dmdSec (https://deutsche-digitale-bibliothek.atlassian.net/wiki/x/jQLeAg).</svrl:text>
               <svrl:property id="id">
                  <xsl:value-of xmlns:sch="http://purl.oclc.org/dsdl/schematron" select="./@ID"/>
               </svrl:property>
            </svrl:failed-assert>
         </xsl:otherwise>
      </xsl:choose>
      <xsl:apply-templates select="*" mode="M52"/>
   </xsl:template>
   <xsl:template match="text()" priority="-1" mode="M52"/>
   <xsl:template match="@*|node()" priority="-2" mode="M52">
      <xsl:apply-templates select="*" mode="M52"/>
   </xsl:template>
   <!--PATTERN -->
   <!--RULE -->
   <xsl:template match="mets:dmdSec" priority="1000" mode="M53">
      <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl" context="mets:dmdSec"/>
      <!--ASSERT fatal-->
      <xsl:choose>
         <xsl:when test="count(key('mets_ids', @ID)) = 1 and matches(@ID, '^[\i-[:]][\c-[:]]*$')"/>
         <xsl:otherwise>
            <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                test="count(key('mets_ids', @ID)) = 1 and matches(@ID, '^[\i-[:]][\c-[:]]*$')">
               <xsl:attribute name="id">dmdSec_03</xsl:attribute>
               <xsl:attribute name="role">fatal</xsl:attribute>
               <xsl:attribute name="location">
                  <xsl:apply-templates select="." mode="schematron-select-full-path"/>
               </xsl:attribute>
               <svrl:text>Das Element <xsl:text/>mets:dmdSec<xsl:text/> muss das Attribut <xsl:text/>ID<xsl:text/> mit einem im Datensatz eindeutigen Identifier enthalten. Dieser darf darüber hinaus keine ungültigen Zeichen enthalten.
Ist dies nicht der Fall, wird der Datensatz nicht in das Zeitungsportal eingespielt.
Weitere Informationen zu diesem Element und Attribut finden Sie im DDB-METS/MODS-Anwendungsprofil auf der Seite mets:dmdSec (https://deutsche-digitale-bibliothek.atlassian.net/wiki/x/jQLeAg).</svrl:text>
            </svrl:failed-assert>
         </xsl:otherwise>
      </xsl:choose>
      <xsl:apply-templates select="*" mode="M53"/>
   </xsl:template>
   <xsl:template match="text()" priority="-1" mode="M53"/>
   <xsl:template match="@*|node()" priority="-2" mode="M53">
      <xsl:apply-templates select="*" mode="M53"/>
   </xsl:template>
   <!--PATTERN -->
   <!--RULE -->
   <xsl:template match="mets:dmdSec" priority="1000" mode="M54">
      <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl" context="mets:dmdSec"/>
      <!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="key('structMap_LOGICAL_dmdids', @ID)"/>
         <xsl:otherwise>
            <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                test="key('structMap_LOGICAL_dmdids', @ID)">
               <xsl:attribute name="id">dmdSec_04</xsl:attribute>
               <xsl:attribute name="role">error</xsl:attribute>
               <xsl:attribute name="location">
                  <xsl:apply-templates select="." mode="schematron-select-full-path"/>
               </xsl:attribute>
               <svrl:text>Das Element <xsl:text/>mets:dmdSec<xsl:text/> muss genau einmal von einem <xsl:text/>mets:div<xsl:text/>-Element innerhalb des Elements <xsl:text/>mets:structMap[@TYPE='LOGICAL']<xsl:text/> referenziert werden.
Die Referenzierung erfolgt über einen Wert im Attribut <xsl:text/>DMDID<xsl:text/> von <xsl:text/>mets:div<xsl:text/> auf das Attribut <xsl:text/>ID<xsl:text/> des Elements <xsl:text/>mets:dmdSec<xsl:text/>.
Fehlt diese Referenz, wird <xsl:text/>mets:dmdSec<xsl:text/> bei der Transformation des Datensatzes entfernt.
Weitere Informationen zu diesen Elementen und Ihrem Kontext finden Sie im DDB-METS/MODS-Anwendungsprofil auf den Seiten mets:dmdSec (https://deutsche-digitale-bibliothek.atlassian.net/wiki/x/jQLeAg) und mets:structMap[@TYPE='LOGICAL'] (https://deutsche-digitale-bibliothek.atlassian.net/wiki/x/bAXeAg) sowie im Bereich Aufbau einer METS/MODS-Datei für die DDB (https://deutsche-digitale-bibliothek.atlassian.net/wiki/x/MwLeAg).</svrl:text>
               <svrl:property id="id">
                  <xsl:value-of xmlns:sch="http://purl.oclc.org/dsdl/schematron" select="./@ID"/>
               </svrl:property>
            </svrl:failed-assert>
         </xsl:otherwise>
      </xsl:choose>
      <xsl:apply-templates select="*" mode="M54"/>
   </xsl:template>
   <xsl:template match="text()" priority="-1" mode="M54"/>
   <xsl:template match="@*|node()" priority="-2" mode="M54">
      <xsl:apply-templates select="*" mode="M54"/>
   </xsl:template>
   <!--PATTERN -->
   <!--RULE -->
   <xsl:template match="mets:mets" priority="1001" mode="M55">
      <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl" context="mets:mets"/>
      <!--ASSERT fatal-->
      <xsl:choose>
         <xsl:when test="mets:amdSec"/>
         <xsl:otherwise>
            <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl" test="mets:amdSec">
               <xsl:attribute name="id">amdSec_01</xsl:attribute>
               <xsl:attribute name="role">fatal</xsl:attribute>
               <xsl:attribute name="location">
                  <xsl:apply-templates select="." mode="schematron-select-full-path"/>
               </xsl:attribute>
               <svrl:text>Ein Datensatz muss das Element <xsl:text/>mets:amdSec<xsl:text/> enthalten. Ist dies nicht der Fall, wird der Datensatz nicht in das Zeitungsportal eingespielt.
Weitere Informationen zu diesem Element und seinem Kontext finden Sie im DDB-METS/MODS-Anwendungsprofil auf der Seite mets:amdSec (https://deutsche-digitale-bibliothek.atlassian.net/wiki/x/iwLeAg) und im Bereich Aufbau einer METS/MODS-Datei für die DDB (https://deutsche-digitale-bibliothek.atlassian.net/wiki/x/MwLeAg).</svrl:text>
            </svrl:failed-assert>
         </xsl:otherwise>
      </xsl:choose>
      <xsl:apply-templates select="*" mode="M55"/>
   </xsl:template>
   <!--RULE -->
   <xsl:template match="mets:amdSec" priority="1000" mode="M55">
      <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl" context="mets:amdSec"/>
      <!--ASSERT warn-->
      <xsl:choose>
         <xsl:when test="count(key('mets_ids', @ID)) = 1 and matches(@ID, '^[\i-[:]][\c-[:]]*$')"/>
         <xsl:otherwise>
            <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                test="count(key('mets_ids', @ID)) = 1 and matches(@ID, '^[\i-[:]][\c-[:]]*$')">
               <xsl:attribute name="id">amdSec_02</xsl:attribute>
               <xsl:attribute name="role">warn</xsl:attribute>
               <xsl:attribute name="location">
                  <xsl:apply-templates select="." mode="schematron-select-full-path"/>
               </xsl:attribute>
               <svrl:text>Das Element <xsl:text/>mets:amdSec<xsl:text/> muss das Attribut <xsl:text/>ID<xsl:text/> mit einem im Datensatz eindeutigen Identifier enthalten. Dieser darf darüber hinaus keine ungültigen Zeichen enthalten.
Das Fehlen von <xsl:text/>ID<xsl:text/> bzw. ungültige Zeichen in Attribut <xsl:text/>ID<xsl:text/> verhindern nicht das Einspielen Ihrer Daten in das Zeitungsportal, wir bitten Sie jedoch, den Sachverhalt zu prüfen und die nötigen Korrekturen bis zur nächsten Datenlieferung vorzunehmen.
Weitere Informationen zu diesem Element und Attribut finden Sie im DDB-METS/MODS-Anwendungsprofil auf der Seite mets:amdSec (https://deutsche-digitale-bibliothek.atlassian.net/wiki/x/iwLeAg).</svrl:text>
               <svrl:property id="id">
                  <xsl:value-of xmlns:sch="http://purl.oclc.org/dsdl/schematron" select="./@ID"/>
               </svrl:property>
            </svrl:failed-assert>
         </xsl:otherwise>
      </xsl:choose>
      <xsl:apply-templates select="*" mode="M55"/>
   </xsl:template>
   <xsl:template match="text()" priority="-1" mode="M55"/>
   <xsl:template match="@*|node()" priority="-2" mode="M55">
      <xsl:apply-templates select="*" mode="M55"/>
   </xsl:template>
   <!--PATTERN -->
   <!--RULE -->
   <xsl:template match="mets:mets[mets:amdSec[@ID=$work_amdid]][not( mets:amdSec[@ID=$work_amdid]/mets:rightsMD/mets:mdWrap/mets:xmlData/dv:rights/dv:license or mets:dmdSec[@ID=$work_dmdid]/mets:mdWrap/mets:xmlData/mods:mods/mods:accessCondition[@type='use and reproduction'] )] | mets:mets[mets:amdSec[not(@ID=$work_amdid)][1]][not( mets:amdSec[not(@ID=$work_amdid)][1]/mets:rightsMD/mets:mdWrap/mets:xmlData/dv:rights/dv:license or mets:dmdSec[@ID=$work_dmdid]/mets:mdWrap/mets:xmlData/mods:mods/mods:accessCondition[@type='use and reproduction'] )]"
                 priority="1001"
                 mode="M56">
      <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                       context="mets:mets[mets:amdSec[@ID=$work_amdid]][not( mets:amdSec[@ID=$work_amdid]/mets:rightsMD/mets:mdWrap/mets:xmlData/dv:rights/dv:license or mets:dmdSec[@ID=$work_dmdid]/mets:mdWrap/mets:xmlData/mods:mods/mods:accessCondition[@type='use and reproduction'] )] | mets:mets[mets:amdSec[not(@ID=$work_amdid)][1]][not( mets:amdSec[not(@ID=$work_amdid)][1]/mets:rightsMD/mets:mdWrap/mets:xmlData/dv:rights/dv:license or mets:dmdSec[@ID=$work_dmdid]/mets:mdWrap/mets:xmlData/mods:mods/mods:accessCondition[@type='use and reproduction'] )]"/>
      <!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="mets:amdSec[@ID=$work_amdid]/mets:rightsMD/mets:mdWrap/mets:xmlData/dv:rights/dv:license or mets:amdSec[not(@ID=$work_amdid)][1]/mets:rightsMD/mets:mdWrap/mets:xmlData/dv:rights/dv:license or mets:dmdSec[@ID=$work_dmdid]/mets:mdWrap/mets:xmlData/mods:mods/mods:accessCondition[@type='use and reproduction']"/>
         <xsl:otherwise>
            <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                test="mets:amdSec[@ID=$work_amdid]/mets:rightsMD/mets:mdWrap/mets:xmlData/dv:rights/dv:license or mets:amdSec[not(@ID=$work_amdid)][1]/mets:rightsMD/mets:mdWrap/mets:xmlData/dv:rights/dv:license or mets:dmdSec[@ID=$work_dmdid]/mets:mdWrap/mets:xmlData/mods:mods/mods:accessCondition[@type='use and reproduction']">
               <xsl:attribute name="id">amdSec_04</xsl:attribute>
               <xsl:attribute name="role">error</xsl:attribute>
               <xsl:attribute name="location">
                  <xsl:apply-templates select="." mode="schematron-select-full-path"/>
               </xsl:attribute>
               <svrl:text>Jeder Datensatz muss das Element <xsl:text/>dv:license<xsl:text/> mit Rechteinformationen zum beschriebenen Digitalisat enthalten.
Alternativ zu diesem Element kann die Rechteinformation auch im Attribut <xsl:text/>xlink:href<xsl:text/> des Elements <xsl:text/>mods:accessCondition<xsl:text/> mit dem Attribut <xsl:text/>type<xsl:text/> und dem Wert <xsl:text/>use and reproduction<xsl:text/> angegeben werden.
Die Rechteinformation muss im o. g. Element bzw. Attribut in Form eines URI gemäß den Rechteangaben in der Deutschen Digitalen Bibliothek (https://pro.deutsche-digitale-bibliothek.de/daten-liefern/teilnahmekriterien/rechtliches/lizenzen-und-rechtehinweise-der-lizenzkorb-der-deutschen-digitalen-bibliothek) vorliegen. Im <xsl:text/>dv:license<xsl:text/> können darüber hinaus die kodierten Werte aus dem METS-Anwendungsprofil (Kapitel 2.7.2.11) (https://dfg-viewer.de/fileadmin/groups/dfgviewer/METS-Anwendungsprofil_2.3.1.pdf) verwendet werden. Bitte beachten Sie hierbei, dass die DDB die CC-Lizenz-Werte als Version 4.0 und den Wert <xsl:text/>reserved<xsl:text/> als Urheberrechtsschutz nicht bewertet (Europeana Rights Statement "CNE") (http://rightsstatements.org/vocab/CNE/1.0/) interpretiert.
Ist im Datensatz keine Rechteinformation wie oben beschrieben vorhanden, kann bei der Transformation des Datensatzes eine von Ihnen bestimmte Standard-URI von der Seite Rechteangaben in der Deutschen Digitalen Bibliothek (https://pro.deutsche-digitale-bibliothek.de/daten-liefern/teilnahmekriterien/rechtliches/lizenzen-und-rechtehinweise-der-lizenzkorb-der-deutschen-digitalen-bibliothek) gesetzt werden, die für alle Ihre Datensätze gilt. Bitte teilen Sie diese der Fachstelle Bibliothek mit.
Liegt der Fachstelle Bibliothek auch keine Standard-URI vor, wird der Datensatz nicht in das Zeitungsportal eingespielt.
Weitere Informationen zu diesen Elementen finden Sie im DDB-METS/MODS-Anwendungsprofil auf den Seiten mets:rightsMD (https://deutsche-digitale-bibliothek.atlassian.net/wiki/x/XALeAg) und mods:accessCondition (https://deutsche-digitale-bibliothek.atlassian.net/wiki/x/zQ3eAg). Informationen zu den möglichen Rechte-URI finden Sie auf der Seite Rechteangaben in der Deutschen Digitalen Bibliothek (https://pro.deutsche-digitale-bibliothek.de/daten-liefern/teilnahmekriterien/rechtliches/lizenzen-und-rechtehinweise-der-lizenzkorb-der-deutschen-digitalen-bibliothek).</svrl:text>
            </svrl:failed-assert>
         </xsl:otherwise>
      </xsl:choose>
      <xsl:apply-templates select="*" mode="M56"/>
   </xsl:template>
   <!--RULE -->
   <xsl:template match="mets:mets[mets:amdSec[@ID=$work_amdid] or mets:amdSec[not(@ID=$work_amdid)][1]]"
                 priority="1000"
                 mode="M56">
      <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                       context="mets:mets[mets:amdSec[@ID=$work_amdid] or mets:amdSec[not(@ID=$work_amdid)][1]]"/>
      <!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="key('license_uris', mets:amdSec[@ID=$work_amdid]/mets:rightsMD/mets:mdWrap/mets:xmlData/dv:rights/dv:license[1], $license_uris) or key('license_uris', mets:amdSec[not(@ID=$work_amdid)][1]/mets:rightsMD/mets:mdWrap/mets:xmlData/dv:rights/dv:license[1], $license_uris) or key('license_uris', mets:dmdSec[@ID=$work_dmdid]/mets:mdWrap/mets:xmlData/mods:mods/mods:accessCondition[@type='use and reproduction'][string-length(@*[local-name()='href'][1]) &gt; 0][1]/@*[local-name()='href'][1], $license_uris) or key('mets_ap_dv_license_values', mets:amdSec[@ID=$work_amdid]/mets:rightsMD/mets:mdWrap/mets:xmlData/dv:rights/dv:license[1], $mets_ap_dv_license_values) or key('mets_ap_dv_license_values', mets:amdSec[not(@ID=$work_amdid)][1]/mets:rightsMD/mets:mdWrap/mets:xmlData/dv:rights/dv:license[1], $mets_ap_dv_license_values)"/>
         <xsl:otherwise>
            <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                test="key('license_uris', mets:amdSec[@ID=$work_amdid]/mets:rightsMD/mets:mdWrap/mets:xmlData/dv:rights/dv:license[1], $license_uris) or key('license_uris', mets:amdSec[not(@ID=$work_amdid)][1]/mets:rightsMD/mets:mdWrap/mets:xmlData/dv:rights/dv:license[1], $license_uris) or key('license_uris', mets:dmdSec[@ID=$work_dmdid]/mets:mdWrap/mets:xmlData/mods:mods/mods:accessCondition[@type='use and reproduction'][string-length(@*[local-name()='href'][1]) &gt; 0][1]/@*[local-name()='href'][1], $license_uris) or key('mets_ap_dv_license_values', mets:amdSec[@ID=$work_amdid]/mets:rightsMD/mets:mdWrap/mets:xmlData/dv:rights/dv:license[1], $mets_ap_dv_license_values) or key('mets_ap_dv_license_values', mets:amdSec[not(@ID=$work_amdid)][1]/mets:rightsMD/mets:mdWrap/mets:xmlData/dv:rights/dv:license[1], $mets_ap_dv_license_values)">
               <xsl:attribute name="id">amdSec_05</xsl:attribute>
               <xsl:attribute name="role">error</xsl:attribute>
               <xsl:attribute name="location">
                  <xsl:apply-templates select="." mode="schematron-select-full-path"/>
               </xsl:attribute>
               <svrl:text>Jeder Datensatz muss das Element <xsl:text/>dv:license<xsl:text/> mit Rechteinformationen zum beschriebenen Digitalisat enthalten.
Alternativ zu diesem Element kann die Rechteinformation auch im Attribut <xsl:text/>xlink:href<xsl:text/> des Elements <xsl:text/>mods:accessCondition<xsl:text/> mit dem Attribut <xsl:text/>type<xsl:text/> und dem Wert <xsl:text/>use and reproduction<xsl:text/> angegeben werden.
Die Rechteinformation muss im o. g. Element bzw. Attribut in Form eines URI gemäß den Rechteangaben in der Deutschen Digitalen Bibliothek (https://pro.deutsche-digitale-bibliothek.de/daten-liefern/teilnahmekriterien/rechtliches/lizenzen-und-rechtehinweise-der-lizenzkorb-der-deutschen-digitalen-bibliothek) vorliegen. Im <xsl:text/>dv:license<xsl:text/> können darüber hinaus die kodierten Werte aus dem METS-Anwendungsprofil (Kapitel 2.7.2.11) (https://dfg-viewer.de/fileadmin/groups/dfgviewer/METS-Anwendungsprofil_2.3.1.pdf) verwendet werden. Bitte beachten Sie hierbei, dass die DDB die CC-Lizenz-Werte als Version 4.0 und den Wert <xsl:text/>reserved<xsl:text/> als Urheberrechtsschutz nicht bewertet (Europeana Rights Statement "CNE") (http://rightsstatements.org/vocab/CNE/1.0/) interpretiert.
Ist im Datensatz keine Rechteinformation wie oben beschrieben vorhanden, kann bei der Transformation des Datensatzes eine von Ihnen bestimmte Standard-URI von der Seite Rechteangaben in der Deutschen Digitalen Bibliothek (https://pro.deutsche-digitale-bibliothek.de/daten-liefern/teilnahmekriterien/rechtliches/lizenzen-und-rechtehinweise-der-lizenzkorb-der-deutschen-digitalen-bibliothek) gesetzt werden, die für alle Ihre Datensätze gilt. Bitte teilen Sie diese der Fachstelle Bibliothek mit.
Liegt der Fachstelle Bibliothek auch keine Standard-URI vor, wird der Datensatz nicht in das Zeitungsportal eingespielt.
Weitere Informationen zu diesen Elementen finden Sie im DDB-METS/MODS-Anwendungsprofil auf den Seiten mets:rightsMD (https://deutsche-digitale-bibliothek.atlassian.net/wiki/x/XALeAg) und mods:accessCondition (https://deutsche-digitale-bibliothek.atlassian.net/wiki/x/zQ3eAg). Informationen zu den möglichen Rechte-URI finden Sie auf der Seite Rechteangaben in der Deutschen Digitalen Bibliothek (https://pro.deutsche-digitale-bibliothek.de/daten-liefern/teilnahmekriterien/rechtliches/lizenzen-und-rechtehinweise-der-lizenzkorb-der-deutschen-digitalen-bibliothek).</svrl:text>
            </svrl:failed-assert>
         </xsl:otherwise>
      </xsl:choose>
      <xsl:apply-templates select="*" mode="M56"/>
   </xsl:template>
   <xsl:template match="text()" priority="-1" mode="M56"/>
   <xsl:template match="@*|node()" priority="-2" mode="M56">
      <xsl:apply-templates select="*" mode="M56"/>
   </xsl:template>
   <!--PATTERN -->
   <!--RULE -->
   <xsl:template match="mets:mets[ ( key('license_uris', mets:amdSec[@ID=$work_amdid]/mets:rightsMD/mets:mdWrap/mets:xmlData/dv:rights/dv:license[1], $license_uris) and not(mets:amdSec[@ID=$work_amdid]/mets:rightsMD/mets:mdWrap/mets:xmlData/dv:rights/dv:license[1][contains(text(), 'creativecommons.org/publicdomain/mark/1.0/')]) ) or ( key('license_uris', mets:amdSec[not(@ID=$work_amdid)][1]/mets:rightsMD/mets:mdWrap/mets:xmlData/dv:rights/dv:license[1], $license_uris) and not(mets:amdSec[not(@ID=$work_amdid)][1]/mets:rightsMD/mets:mdWrap/mets:xmlData/dv:rights/dv:license[1][contains(text(), 'creativecommons.org/publicdomain/mark/1.0/')]) ) or ( key('license_uris', mets:dmdSec[@ID=$work_dmdid]/mets:mdWrap/mets:xmlData/mods:mods/mods:accessCondition[@type='use and reproduction'][string-length(@*[local-name()='href'][1]) &gt; 0][1]/@*[local-name()='href'][1], $license_uris) and not(mets:dmdSec[@ID=$work_dmdid]/mets:mdWrap/mets:xmlData/mods:mods/mods:accessCondition[@type='use and reproduction'][string-length(@*[local-name()='href'][1]) &gt; 0][1]/@*[local-name()='href'][1][contains(., 'creativecommons.org/publicdomain/mark/1.0/')]) ) or ( key('mets_ap_dv_license_values', mets:amdSec[@ID=$work_amdid]/mets:rightsMD/mets:mdWrap/mets:xmlData/dv:rights/dv:license[1], $mets_ap_dv_license_values) and not(mets:amdSec[@ID=$work_amdid]/mets:rightsMD/mets:mdWrap/mets:xmlData/dv:rights/dv:license[1][text()='pdm']) ) or ( key('mets_ap_dv_license_values', mets:amdSec[not(@ID=$work_amdid)][1]/mets:rightsMD/mets:mdWrap/mets:xmlData/dv:rights/dv:license[1], $mets_ap_dv_license_values) and not(mets:amdSec[not(@ID=$work_amdid)][1]/mets:rightsMD/mets:mdWrap/mets:xmlData/dv:rights/dv:license[1][text()='pdm']) ) ]/mets:dmdSec[@ID=$work_dmdid]/mets:mdWrap/mets:xmlData/mods:mods"
                 priority="1000"
                 mode="M57">
      <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                       context="mets:mets[ ( key('license_uris', mets:amdSec[@ID=$work_amdid]/mets:rightsMD/mets:mdWrap/mets:xmlData/dv:rights/dv:license[1], $license_uris) and not(mets:amdSec[@ID=$work_amdid]/mets:rightsMD/mets:mdWrap/mets:xmlData/dv:rights/dv:license[1][contains(text(), 'creativecommons.org/publicdomain/mark/1.0/')]) ) or ( key('license_uris', mets:amdSec[not(@ID=$work_amdid)][1]/mets:rightsMD/mets:mdWrap/mets:xmlData/dv:rights/dv:license[1], $license_uris) and not(mets:amdSec[not(@ID=$work_amdid)][1]/mets:rightsMD/mets:mdWrap/mets:xmlData/dv:rights/dv:license[1][contains(text(), 'creativecommons.org/publicdomain/mark/1.0/')]) ) or ( key('license_uris', mets:dmdSec[@ID=$work_dmdid]/mets:mdWrap/mets:xmlData/mods:mods/mods:accessCondition[@type='use and reproduction'][string-length(@*[local-name()='href'][1]) &gt; 0][1]/@*[local-name()='href'][1], $license_uris) and not(mets:dmdSec[@ID=$work_dmdid]/mets:mdWrap/mets:xmlData/mods:mods/mods:accessCondition[@type='use and reproduction'][string-length(@*[local-name()='href'][1]) &gt; 0][1]/@*[local-name()='href'][1][contains(., 'creativecommons.org/publicdomain/mark/1.0/')]) ) or ( key('mets_ap_dv_license_values', mets:amdSec[@ID=$work_amdid]/mets:rightsMD/mets:mdWrap/mets:xmlData/dv:rights/dv:license[1], $mets_ap_dv_license_values) and not(mets:amdSec[@ID=$work_amdid]/mets:rightsMD/mets:mdWrap/mets:xmlData/dv:rights/dv:license[1][text()='pdm']) ) or ( key('mets_ap_dv_license_values', mets:amdSec[not(@ID=$work_amdid)][1]/mets:rightsMD/mets:mdWrap/mets:xmlData/dv:rights/dv:license[1], $mets_ap_dv_license_values) and not(mets:amdSec[not(@ID=$work_amdid)][1]/mets:rightsMD/mets:mdWrap/mets:xmlData/dv:rights/dv:license[1][text()='pdm']) ) ]/mets:dmdSec[@ID=$work_dmdid]/mets:mdWrap/mets:xmlData/mods:mods"/>
      <!--REPORT caution-->
      <xsl:if test="max( ( mods:originInfo[not(mods:edition[text()='[Electronic ed.]'])]/mods:dateIssued[matches(text()[1], '^((-\d\d\d\d+)|(\d\d\d\d))(-\d\d)?(-\d\d)?$')]/number(tokenize(text(), '-')[1]), mods:originInfo[not(mods:edition[text()='[Electronic ed.]'])]/mods:dateCreated[matches(text()[1], '^((-\d\d\d\d+)|(\d\d\d\d))(-\d\d)?(-\d\d)?$')]/number(tokenize(text(), '-')[1]) ) ) &lt; 1910">
         <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                 test="max( ( mods:originInfo[not(mods:edition[text()='[Electronic ed.]'])]/mods:dateIssued[matches(text()[1], '^((-\d\d\d\d+)|(\d\d\d\d))(-\d\d)?(-\d\d)?$')]/number(tokenize(text(), '-')[1]), mods:originInfo[not(mods:edition[text()='[Electronic ed.]'])]/mods:dateCreated[matches(text()[1], '^((-\d\d\d\d+)|(\d\d\d\d))(-\d\d)?(-\d\d)?$')]/number(tokenize(text(), '-')[1]) ) ) &lt; 1910">
            <xsl:attribute name="id">amdSec_13</xsl:attribute>
            <xsl:attribute name="role">caution</xsl:attribute>
            <xsl:attribute name="location">
               <xsl:apply-templates select="." mode="schematron-select-full-path"/>
            </xsl:attribute>
            <svrl:text>Die Lizenzen aus dem Lizenzkorb der DDB (https://pro.deutsche-digitale-bibliothek.de/daten-liefern/teilnahmekriterien/rechtliches/lizenzen-und-rechtehinweise-der-lizenzkorb-der-deutschen-digitalen-bibliothek) können nur für Materialien genutzt werden, an denen Urheberrechte nach § 2 UrhG oder Lichtbildrechte nach § 72 UrhG bestehen.
Der Scan oder die Fotografie von typischen Bibliotheksbeständen (Bücher, Zeitschriften und andere Schriftwerke) lässt solche Rechte in Fällen, in denen eine möglichst originalgetreue Reproduktion erzeugt werden soll, nicht entstehen. Daher kommt bei Scans / Fotos gemeinfreier Vorlagen in aller Regel nur der ebenfalls im "Lizenzkorb" enthaltene Rechtehinweis "Public Domain Mark" in Frage.
Dies ist nur ein Hinweis auf die Rechtslage in Verbindung mit der Bitte um Prüfung, ob Sie – dem entsprechend – in den Rechteangaben zu Ihren Digitalisaten den richtigen Rechtehinweis vergeben haben. Die Rechteangaben bleiben jedoch – wie im Kooperationsvertrag geregelt – in der Verantwortung Ihrer Einrichtung.
Weitere Informationen zu Rechteangaben in der DDB finden Sie auf der Seite Rechteangaben in der Deutschen Digitalen Bibliothek (https://pro.deutsche-digitale-bibliothek.de/daten-liefern/teilnahmekriterien/rechtliches/lizenzen-und-rechtehinweise-der-lizenzkorb-der-deutschen-digitalen-bibliothek). Bei Fragen wenden Sie sich bitte an Armin Talke (https://pro.deutsche-digitale-bibliothek.de/ueber-uns/ansprechpartner_innen/armin-talke).</svrl:text>
            <svrl:property id="dmd_id">
               <xsl:value-of xmlns:sch="http://purl.oclc.org/dsdl/schematron"
                             select="ancestor-or-self::mets:dmdSec/@ID"/>
            </svrl:property>
         </svrl:successful-report>
      </xsl:if>
      <xsl:apply-templates select="*" mode="M57"/>
   </xsl:template>
   <xsl:template match="text()" priority="-1" mode="M57"/>
   <xsl:template match="@*|node()" priority="-2" mode="M57">
      <xsl:apply-templates select="*" mode="M57"/>
   </xsl:template>
   <!--PATTERN -->
   <!--RULE -->
   <xsl:template match="mets:mets[not( mets:dmdSec[@ID=$work_dmdid]/mets:mdWrap/mets:xmlData/mods:mods/mods:accessCondition[@type='use and reproduction'][key('license_uris', replace(text(), 'deed\.[a-z][a-z]$', ''), $license_uris)] or mets:dmdSec[@ID=$work_dmdid]/mets:mdWrap/mets:xmlData/mods:mods/mods:accessCondition[@type='use and reproduction'][key('license_uris', replace(@*[local-name()='href'][1], 'deed\.[a-z][a-z]$', ''), $license_uris)] )]"
                 priority="1002"
                 mode="M58">
      <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                       context="mets:mets[not( mets:dmdSec[@ID=$work_dmdid]/mets:mdWrap/mets:xmlData/mods:mods/mods:accessCondition[@type='use and reproduction'][key('license_uris', replace(text(), 'deed\.[a-z][a-z]$', ''), $license_uris)] or mets:dmdSec[@ID=$work_dmdid]/mets:mdWrap/mets:xmlData/mods:mods/mods:accessCondition[@type='use and reproduction'][key('license_uris', replace(@*[local-name()='href'][1], 'deed\.[a-z][a-z]$', ''), $license_uris)] )]"/>
      <!--REPORT fatal-->
      <xsl:if test="count(distinct-values(( mets:amdSec[@ID=$work_amdid]/mets:rightsMD/mets:mdWrap/mets:xmlData/dv:rights/dv:license[key('license_uris', replace(text(), 'deed\.[a-z][a-z]$', ''), $license_uris)]/replace(replace(text(), '^https', 'http'), 'deed\.[a-z][a-z]$', ''), mets:amdSec[not(@ID=$work_amdid)][1]/mets:rightsMD/mets:mdWrap/mets:xmlData/dv:rights/dv:license[key('license_uris', replace(text(), 'deed\.[a-z][a-z]$', ''), $license_uris)]/replace(replace(text(), '^https', 'http'), 'deed\.[a-z][a-z]$', ''), key('mets_ap_dv_license_values', mets:amdSec[@ID=$work_amdid]/mets:rightsMD/mets:mdWrap/mets:xmlData/dv:rights/dv:license[key('mets_ap_dv_license_values', text(), $mets_ap_dv_license_values)]/text(), $mets_ap_dv_license_values)/@to ))) &gt; 1">
         <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                 test="count(distinct-values(( mets:amdSec[@ID=$work_amdid]/mets:rightsMD/mets:mdWrap/mets:xmlData/dv:rights/dv:license[key('license_uris', replace(text(), 'deed\.[a-z][a-z]$', ''), $license_uris)]/replace(replace(text(), '^https', 'http'), 'deed\.[a-z][a-z]$', ''), mets:amdSec[not(@ID=$work_amdid)][1]/mets:rightsMD/mets:mdWrap/mets:xmlData/dv:rights/dv:license[key('license_uris', replace(text(), 'deed\.[a-z][a-z]$', ''), $license_uris)]/replace(replace(text(), '^https', 'http'), 'deed\.[a-z][a-z]$', ''), key('mets_ap_dv_license_values', mets:amdSec[@ID=$work_amdid]/mets:rightsMD/mets:mdWrap/mets:xmlData/dv:rights/dv:license[key('mets_ap_dv_license_values', text(), $mets_ap_dv_license_values)]/text(), $mets_ap_dv_license_values)/@to ))) &gt; 1">
            <xsl:attribute name="id">amdSec_14</xsl:attribute>
            <xsl:attribute name="role">fatal</xsl:attribute>
            <xsl:attribute name="location">
               <xsl:apply-templates select="." mode="schematron-select-full-path"/>
            </xsl:attribute>
            <svrl:text>Der Datensatz enthält mehrere <xsl:text/>dv:license<xsl:text/>-Elemente mit unterschiedlichen Rechteangaben aus dem Lizenzkorb der DDB (https://pro.deutsche-digitale-bibliothek.de/daten-liefern/teilnahmekriterien/rechtliches/lizenzen-und-rechtehinweise-der-lizenzkorb-der-deutschen-digitalen-bibliothek). Bitte beachten Sie hierbei, dass die DDB die CC-Lizenz-Werte aus dem METS-Anwendungsprofil (Kapitel 2.7.2.11) (https://dfg-viewer.de/fileadmin/groups/dfgviewer/METS-Anwendungsprofil_2.3.1.pdf) als Version 4.0 und den Wert <xsl:text/>reserved<xsl:text/> als Urheberrechtsschutz nicht bewertet (Europeana Rights Statement "CNE") (http://rightsstatements.org/vocab/CNE/1.0/) interpretiert.
Die DDB benötigt eindeutige Rechteangaben, daher wird der Datensatz nicht in das Zeitungsportal eingespielt.</svrl:text>
            <svrl:property id="dmd_id">
               <xsl:value-of xmlns:sch="http://purl.oclc.org/dsdl/schematron"
                             select="ancestor-or-self::mets:dmdSec/@ID"/>
            </svrl:property>
         </svrl:successful-report>
      </xsl:if>
      <xsl:apply-templates select="*" mode="M58"/>
   </xsl:template>
   <!--RULE -->
   <xsl:template match="mets:mets[ mets:dmdSec[@ID=$work_dmdid]/mets:mdWrap/mets:xmlData/mods:mods[mods:accessCondition[@type='use and reproduction'][ key('license_uris', replace(text(), 'deed\.[a-z][a-z]$', ''), $license_uris) or key('license_uris', replace(@*[local-name()='href'][1], 'deed\.[a-z][a-z]$', ''), $license_uris) ][2]] ]"
                 priority="1001"
                 mode="M58">
      <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                       context="mets:mets[ mets:dmdSec[@ID=$work_dmdid]/mets:mdWrap/mets:xmlData/mods:mods[mods:accessCondition[@type='use and reproduction'][ key('license_uris', replace(text(), 'deed\.[a-z][a-z]$', ''), $license_uris) or key('license_uris', replace(@*[local-name()='href'][1], 'deed\.[a-z][a-z]$', ''), $license_uris) ][2]] ]"/>
      <!--REPORT fatal-->
      <xsl:if test="count(distinct-values(( mets:dmdSec[@ID=$work_dmdid]/mets:mdWrap/mets:xmlData/mods:mods/mods:accessCondition[@type='use and reproduction'][key('license_uris', replace(text(), 'deed\.[a-z][a-z]$', ''), $license_uris)]/replace(replace(text(), '^https', 'http'), 'deed\.[a-z][a-z]$', ''), mets:dmdSec[@ID=$work_dmdid]/mets:mdWrap/mets:xmlData/mods:mods/mods:accessCondition[@type='use and reproduction'][key('license_uris', replace(@*[local-name()='href'][1], 'deed\.[a-z][a-z]$', ''), $license_uris)]/replace(replace(@*[local-name()='href'][1], '^https', 'http'), 'deed\.[a-z][a-z]$', '') ))) &gt; 1">
         <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                 test="count(distinct-values(( mets:dmdSec[@ID=$work_dmdid]/mets:mdWrap/mets:xmlData/mods:mods/mods:accessCondition[@type='use and reproduction'][key('license_uris', replace(text(), 'deed\.[a-z][a-z]$', ''), $license_uris)]/replace(replace(text(), '^https', 'http'), 'deed\.[a-z][a-z]$', ''), mets:dmdSec[@ID=$work_dmdid]/mets:mdWrap/mets:xmlData/mods:mods/mods:accessCondition[@type='use and reproduction'][key('license_uris', replace(@*[local-name()='href'][1], 'deed\.[a-z][a-z]$', ''), $license_uris)]/replace(replace(@*[local-name()='href'][1], '^https', 'http'), 'deed\.[a-z][a-z]$', '') ))) &gt; 1">
            <xsl:attribute name="id">amdSec_16</xsl:attribute>
            <xsl:attribute name="role">fatal</xsl:attribute>
            <xsl:attribute name="location">
               <xsl:apply-templates select="." mode="schematron-select-full-path"/>
            </xsl:attribute>
            <svrl:text>Der Datensatz enthält mehrere <xsl:text/>mods:accessCondition[@type='use and reproduction']<xsl:text/>-Elemente mit unterschiedlichen Rechteangaben aus dem Lizenzkorb der DDB (https://pro.deutsche-digitale-bibliothek.de/daten-liefern/teilnahmekriterien/rechtliches/lizenzen-und-rechtehinweise-der-lizenzkorb-der-deutschen-digitalen-bibliothek) im Attribut <xsl:text/>xlink:href<xsl:text/>.
Die DDB benötigt eindeutige Rechteangaben, daher wird der Datensatz nicht in das Zeitungsportal eingespielt.</svrl:text>
            <svrl:property id="dmd_id">
               <xsl:value-of xmlns:sch="http://purl.oclc.org/dsdl/schematron"
                             select="ancestor-or-self::mets:dmdSec/@ID"/>
            </svrl:property>
         </svrl:successful-report>
      </xsl:if>
      <xsl:apply-templates select="*" mode="M58"/>
   </xsl:template>
   <!--RULE -->
   <xsl:template match="mets:mets" priority="1000" mode="M58">
      <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl" context="mets:mets"/>
      <!--REPORT error-->
      <xsl:if test="count(distinct-values(( mets:amdSec[@ID=$work_amdid]/mets:rightsMD/mets:mdWrap/mets:xmlData/dv:rights/dv:license[key('license_uris', replace(text(), 'deed\.[a-z][a-z]$', ''), $license_uris)]/replace(replace(text(), '^https', 'http'), 'deed\.[a-z][a-z]$', ''), mets:amdSec[not(@ID=$work_amdid)][1]/mets:rightsMD/mets:mdWrap/mets:xmlData/dv:rights/dv:license[key('license_uris', replace(text(), 'deed\.[a-z][a-z]$', ''), $license_uris)]/replace(replace(text(), '^https', 'http'), 'deed\.[a-z][a-z]$', ''), mets:dmdSec[@ID=$work_dmdid]/mets:mdWrap/mets:xmlData/mods:mods/mods:accessCondition[@type='use and reproduction'][key('license_uris', replace(text(), 'deed\.[a-z][a-z]$', ''), $license_uris)]/replace(replace(text(), '^https', 'http'), 'deed\.[a-z][a-z]$', ''), mets:dmdSec[@ID=$work_dmdid]/mets:mdWrap/mets:xmlData/mods:mods/mods:accessCondition[@type='use and reproduction'][key('license_uris', replace(@*[local-name()='href'][1], 'deed\.[a-z][a-z]$', ''), $license_uris)]/replace(replace(@*[local-name()='href'][1], '^https', 'http'), 'deed\.[a-z][a-z]$', ''), key('mets_ap_dv_license_values', mets:amdSec[@ID=$work_amdid]/mets:rightsMD/mets:mdWrap/mets:xmlData/dv:rights/dv:license[key('mets_ap_dv_license_values', text(), $mets_ap_dv_license_values)]/text(), $mets_ap_dv_license_values)/@to ))) &gt; 1">
         <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                 test="count(distinct-values(( mets:amdSec[@ID=$work_amdid]/mets:rightsMD/mets:mdWrap/mets:xmlData/dv:rights/dv:license[key('license_uris', replace(text(), 'deed\.[a-z][a-z]$', ''), $license_uris)]/replace(replace(text(), '^https', 'http'), 'deed\.[a-z][a-z]$', ''), mets:amdSec[not(@ID=$work_amdid)][1]/mets:rightsMD/mets:mdWrap/mets:xmlData/dv:rights/dv:license[key('license_uris', replace(text(), 'deed\.[a-z][a-z]$', ''), $license_uris)]/replace(replace(text(), '^https', 'http'), 'deed\.[a-z][a-z]$', ''), mets:dmdSec[@ID=$work_dmdid]/mets:mdWrap/mets:xmlData/mods:mods/mods:accessCondition[@type='use and reproduction'][key('license_uris', replace(text(), 'deed\.[a-z][a-z]$', ''), $license_uris)]/replace(replace(text(), '^https', 'http'), 'deed\.[a-z][a-z]$', ''), mets:dmdSec[@ID=$work_dmdid]/mets:mdWrap/mets:xmlData/mods:mods/mods:accessCondition[@type='use and reproduction'][key('license_uris', replace(@*[local-name()='href'][1], 'deed\.[a-z][a-z]$', ''), $license_uris)]/replace(replace(@*[local-name()='href'][1], '^https', 'http'), 'deed\.[a-z][a-z]$', ''), key('mets_ap_dv_license_values', mets:amdSec[@ID=$work_amdid]/mets:rightsMD/mets:mdWrap/mets:xmlData/dv:rights/dv:license[key('mets_ap_dv_license_values', text(), $mets_ap_dv_license_values)]/text(), $mets_ap_dv_license_values)/@to ))) &gt; 1">
            <xsl:attribute name="id">amdSec_17</xsl:attribute>
            <xsl:attribute name="role">error</xsl:attribute>
            <xsl:attribute name="location">
               <xsl:apply-templates select="." mode="schematron-select-full-path"/>
            </xsl:attribute>
            <svrl:text>Der Datensatz enthält im Element <xsl:text/>mods:accessCondition[@type='use and reproduction']<xsl:text/> im Attribut <xsl:text/>xlink:href<xsl:text/> und im Element <xsl:text/>dv:license<xsl:text/> sich widersprechende Rechteangaben aus dem Lizenzkorb der DDB (https://pro.deutsche-digitale-bibliothek.de/daten-liefern/teilnahmekriterien/rechtliches/lizenzen-und-rechtehinweise-der-lizenzkorb-der-deutschen-digitalen-bibliothek). Bitte beachten Sie hierbei, dass die DDB die CC-Lizenz-Werte aus dem METS-Anwendungsprofil (Kapitel 2.7.2.11) (https://dfg-viewer.de/fileadmin/groups/dfgviewer/METS-Anwendungsprofil_2.3.1.pdf) als Version 4.0 und den Wert <xsl:text/>reserved<xsl:text/> als Urheberrechtsschutz nicht bewertet (Europeana Rights Statement "CNE") (http://rightsstatements.org/vocab/CNE/1.0/) interpretiert.
Bei der Transformation des Datensatzes übernimmt die DDB in diesem Fall die Rechteangabe aus <xsl:text/>mods:accessCondition[@type='use and reproduction']<xsl:text/>.</svrl:text>
            <svrl:property id="dmd_id">
               <xsl:value-of xmlns:sch="http://purl.oclc.org/dsdl/schematron"
                             select="ancestor-or-self::mets:dmdSec/@ID"/>
            </svrl:property>
         </svrl:successful-report>
      </xsl:if>
      <xsl:apply-templates select="*" mode="M58"/>
   </xsl:template>
   <xsl:template match="text()" priority="-1" mode="M58"/>
   <xsl:template match="@*|node()" priority="-2" mode="M58">
      <xsl:apply-templates select="*" mode="M58"/>
   </xsl:template>
   <!--PATTERN -->
   <!--RULE -->
   <xsl:template match="mets:mets" priority="1002" mode="M59">
      <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl" context="mets:mets"/>
      <!--ASSERT fatal-->
      <xsl:choose>
         <xsl:when test="mets:fileSec"/>
         <xsl:otherwise>
            <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl" test="mets:fileSec">
               <xsl:attribute name="id">fileSec_01</xsl:attribute>
               <xsl:attribute name="role">fatal</xsl:attribute>
               <xsl:attribute name="location">
                  <xsl:apply-templates select="." mode="schematron-select-full-path"/>
               </xsl:attribute>
               <svrl:text>Das Element <xsl:text/>mets:fileSec<xsl:text/> muss vorhanden sein, um Links zu den digitalen Bildern zu enthalten. Fehlt die <xsl:text/>mets:fileSec<xsl:text/>, wird der Datensatz nicht in das Zeitungsportal eingespielt.
Weitere Informationen zu diesem Element und seinem Kontext finden Sie im DDB-METS/MODS-Anwendungsprofil auf der Seite mets:fileSec (https://deutsche-digitale-bibliothek.atlassian.net/wiki/x/dgPeAg) und in den entsprechenden Unterseiten der Seite Aufbau einer METS/MODS-Datei für die DDB (https://deutsche-digitale-bibliothek.atlassian.net/wiki/x/MwLeAg).</svrl:text>
            </svrl:failed-assert>
         </xsl:otherwise>
      </xsl:choose>
      <xsl:apply-templates select="*" mode="M59"/>
   </xsl:template>
   <!--RULE -->
   <xsl:template match="mets:mets/mets:fileSec[not(mets:fileGrp[@USE='DEFAULT'])]"
                 priority="1001"
                 mode="M59">
      <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                       context="mets:mets/mets:fileSec[not(mets:fileGrp[@USE='DEFAULT'])]"/>
      <!--ASSERT fatal-->
      <xsl:choose>
         <xsl:when test="mets:fileGrp[@USE='DEFAULT']"/>
         <xsl:otherwise>
            <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                test="mets:fileGrp[@USE='DEFAULT']">
               <xsl:attribute name="id">fileSec_02</xsl:attribute>
               <xsl:attribute name="role">fatal</xsl:attribute>
               <xsl:attribute name="location">
                  <xsl:apply-templates select="." mode="schematron-select-full-path"/>
               </xsl:attribute>
               <svrl:text>Das Element <xsl:text/>mets:fileSec<xsl:text/> enthält die Links zu den digitalen Bildern in unterschiedlichen Auflösungen. Um welche Art von Auflösung es sich dabei handelt, wird über die <xsl:text/>mets:fileGrp<xsl:text/> angegeben. Jede Auflösung eines Bildes wird daher der entsprechenden <xsl:text/>mets:fileGrp<xsl:text/> zugeordnet. Eine <xsl:text/>mets:fileSec<xsl:text/> muss mindestens die <xsl:text/>mets:fileGrp[@USE='DEFAULT']<xsl:text/> enthalten. Ist dies nicht der Fall, wird der Datensatz nicht in das Zeitungsportal eingespielt.
Weitere Informationen zu diesem Element finden Sie im DDB-METS/MODS-Anwendungsprofil auf der Seite mets:fileSec (https://deutsche-digitale-bibliothek.atlassian.net/wiki/x/dgPeAg).</svrl:text>
            </svrl:failed-assert>
         </xsl:otherwise>
      </xsl:choose>
      <xsl:apply-templates select="*" mode="M59"/>
   </xsl:template>
   <!--RULE -->
   <xsl:template match="mets:mets/mets:fileSec/mets:fileGrp[@USE='DEFAULT']"
                 priority="1000"
                 mode="M59">
      <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                       context="mets:mets/mets:fileSec/mets:fileGrp[@USE='DEFAULT']"/>
      <!--ASSERT fatal-->
      <xsl:choose>
         <xsl:when test="mets:file[mets:FLocat[string-length(@xlink:href) &gt; 0]]"/>
         <xsl:otherwise>
            <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                test="mets:file[mets:FLocat[string-length(@xlink:href) &gt; 0]]">
               <xsl:attribute name="id">fileSec_03</xsl:attribute>
               <xsl:attribute name="role">fatal</xsl:attribute>
               <xsl:attribute name="location">
                  <xsl:apply-templates select="." mode="schematron-select-full-path"/>
               </xsl:attribute>
               <svrl:text>Das Element <xsl:text/>mets:fileGrp<xsl:text/> mit dem Attribut <xsl:text/>USE<xsl:text/> mit dem Wert <xsl:text/>DEFAULT<xsl:text/> muss mindestens ein <xsl:text/>mets:file<xsl:text/>-Element enthalten. Dieses muss das Unterelement <xsl:text/>mets:FLocat<xsl:text/> mit dem Attribut <xsl:text/>xlink:href<xsl:text/> besitzen.
Ist dies nicht der Fall, wird der Datensatz nicht in das Zeitungsportal eingespielt.
Weitere Informationen zu diesem Element finden Sie im DDB-METS/MODS-Anwendungsprofil auf der Seite mets:fileSec (https://deutsche-digitale-bibliothek.atlassian.net/wiki/x/dgPeAg).</svrl:text>
            </svrl:failed-assert>
         </xsl:otherwise>
      </xsl:choose>
      <xsl:apply-templates select="*" mode="M59"/>
   </xsl:template>
   <xsl:template match="text()" priority="-1" mode="M59"/>
   <xsl:template match="@*|node()" priority="-2" mode="M59">
      <xsl:apply-templates select="*" mode="M59"/>
   </xsl:template>
   <!--PATTERN -->
   <!--RULE -->
   <xsl:template match="mets:mets/mets:fileSec/mets:fileGrp[@USE='DEFAULT']/mets:file"
                 priority="1000"
                 mode="M60">
      <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                       context="mets:mets/mets:fileSec/mets:fileGrp[@USE='DEFAULT']/mets:file"/>
      <!--ASSERT fatal-->
      <xsl:choose>
         <xsl:when test="count(key('mets_ids', @ID)) = 1 and matches(@ID, '^[\i-[:]][\c-[:]]*$')"/>
         <xsl:otherwise>
            <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                test="count(key('mets_ids', @ID)) = 1 and matches(@ID, '^[\i-[:]][\c-[:]]*$')">
               <xsl:attribute name="id">fileSec_04</xsl:attribute>
               <xsl:attribute name="role">fatal</xsl:attribute>
               <xsl:attribute name="location">
                  <xsl:apply-templates select="." mode="schematron-select-full-path"/>
               </xsl:attribute>
               <svrl:text>Das Element <xsl:text/>mets:file<xsl:text/> muss das Attribut <xsl:text/>ID<xsl:text/> mit einem im Datensatz eindeutigen Identifier enthalten. Dieser darf darüber hinaus keine ungültigen Zeichen enthalten.
Fehlt das Attribut <xsl:text/>ID<xsl:text/> bzw. enthält es ungültige Zeichen, wird der Datensatz nicht in das Zeitungsportal eingespielt.
Weitere Informationen zu diesem Attribut finden Sie im DDB-METS/MODS-Anwendungsprofil auf der Seite mets:fileSec (https://deutsche-digitale-bibliothek.atlassian.net/wiki/x/dgPeAg).</svrl:text>
               <svrl:property id="id">
                  <xsl:value-of xmlns:sch="http://purl.oclc.org/dsdl/schematron" select="./@ID"/>
               </svrl:property>
            </svrl:failed-assert>
         </xsl:otherwise>
      </xsl:choose>
      <xsl:apply-templates select="*" mode="M60"/>
   </xsl:template>
   <xsl:template match="text()" priority="-1" mode="M60"/>
   <xsl:template match="@*|node()" priority="-2" mode="M60">
      <xsl:apply-templates select="*" mode="M60"/>
   </xsl:template>
   <!--PATTERN -->
   <!--RULE -->
   <xsl:template match="mets:mets/mets:fileSec[not(mets:fileGrp[@USE='FULLTEXT'])]"
                 priority="1001"
                 mode="M61">
      <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                       context="mets:mets/mets:fileSec[not(mets:fileGrp[@USE='FULLTEXT'])]"/>
      <!--ASSERT warn-->
      <xsl:choose>
         <xsl:when test="mets:fileGrp[@USE='FULLTEXT']"/>
         <xsl:otherwise>
            <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                test="mets:fileGrp[@USE='FULLTEXT']">
               <xsl:attribute name="id">fileSec_05</xsl:attribute>
               <xsl:attribute name="role">warn</xsl:attribute>
               <xsl:attribute name="location">
                  <xsl:apply-templates select="." mode="schematron-select-full-path"/>
               </xsl:attribute>
               <svrl:text>In der <xsl:text/>mets:fileSec<xsl:text/> wird innerhalb der <xsl:text/>mets:fileGrp[@USE='FULLTEXT']<xsl:text/> auf die Volltexte der einzelnen Seiten verlinkt. Die Bereitstellung von Volltexten ist für alle Zeitungsausgaben/-beilagen im Zeitungsportal gewünscht, aber nicht verpflichtend. Die Volltextsuche ist der zentrale Einstieg zu den Inhalten des Zeitungsportals. Die Inhalte von Zeitungen ohne Volltext sind für NutzerInnen schwerer zugänglich.
Weitere Informationen zu diesem Element und seinem Kontext finden Sie im DDB-METS/MODS-Anwendungsprofil auf der Seite mets:fileSec (https://deutsche-digitale-bibliothek.atlassian.net/wiki/x/dgPeAg) und in den entsprechenden Unterseiten der Seite Aufbau einer METS/MODS-Datei für die DDB (https://deutsche-digitale-bibliothek.atlassian.net/wiki/x/MwLeAg).</svrl:text>
            </svrl:failed-assert>
         </xsl:otherwise>
      </xsl:choose>
      <xsl:apply-templates select="*" mode="M61"/>
   </xsl:template>
   <!--RULE -->
   <xsl:template match="mets:mets/mets:fileSec/mets:fileGrp[@USE='FULLTEXT']"
                 priority="1000"
                 mode="M61">
      <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                       context="mets:mets/mets:fileSec/mets:fileGrp[@USE='FULLTEXT']"/>
      <!--ASSERT fatal-->
      <xsl:choose>
         <xsl:when test="mets:file[mets:FLocat[string-length(@xlink:href) &gt; 0]]"/>
         <xsl:otherwise>
            <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                test="mets:file[mets:FLocat[string-length(@xlink:href) &gt; 0]]">
               <xsl:attribute name="id">fileSec_06</xsl:attribute>
               <xsl:attribute name="role">fatal</xsl:attribute>
               <xsl:attribute name="location">
                  <xsl:apply-templates select="." mode="schematron-select-full-path"/>
               </xsl:attribute>
               <svrl:text>Die <xsl:text/>mets:fileGrp[@USE='FULLTEXT']<xsl:text/> muss mindestens ein <xsl:text/>mets:file<xsl:text/> enthalten. Fehlt <xsl:text/>mets:file<xsl:text/> mit dem Attribut <xsl:text/>xlink:href<xsl:text/> im Unterelement <xsl:text/>mets:FLocat<xsl:text/>, wird der Datensatz nicht in das Zeitungsportal eingespielt.
Weitere Informationen zu diesem Element und seinem Kontext finden Sie im DDB-METS/MODS-Anwendungsprofil auf der Seite mets:fileSec (https://deutsche-digitale-bibliothek.atlassian.net/wiki/x/dgPeAg) und in den entsprechenden Unterseiten der Seite Aufbau einer METS/MODS-Datei für die DDB (https://deutsche-digitale-bibliothek.atlassian.net/wiki/x/MwLeAg).</svrl:text>
            </svrl:failed-assert>
         </xsl:otherwise>
      </xsl:choose>
      <xsl:apply-templates select="*" mode="M61"/>
   </xsl:template>
   <xsl:template match="text()" priority="-1" mode="M61"/>
   <xsl:template match="@*|node()" priority="-2" mode="M61">
      <xsl:apply-templates select="*" mode="M61"/>
   </xsl:template>
   <!--PATTERN -->
   <!--RULE -->
   <xsl:template match="mets:mets/mets:fileSec/mets:fileGrp[@USE='FULLTEXT']"
                 priority="1000"
                 mode="M62">
      <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                       context="mets:mets/mets:fileSec/mets:fileGrp[@USE='FULLTEXT']"/>
      <!--REPORT error-->
      <xsl:if test="mets:file[not(@MIMETYPE = 'text/xml')]">
         <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                 test="mets:file[not(@MIMETYPE = 'text/xml')]">
            <xsl:attribute name="id">fileSec_07</xsl:attribute>
            <xsl:attribute name="role">error</xsl:attribute>
            <xsl:attribute name="location">
               <xsl:apply-templates select="." mode="schematron-select-full-path"/>
            </xsl:attribute>
            <svrl:text>In der <xsl:text/>mets:fileGrp[@USE='FULLTEXT']<xsl:text/> fehlt mindestens einem enthaltenden <xsl:text/>mets:file<xsl:text/> das Attribut MIMETYPE mit dem Wert <xsl:text/>text/xml<xsl:text/>. Die <xsl:text/>mets:file<xsl:text/> in <xsl:text/>mets:fileGrp[@USE='FULLTEXT']<xsl:text/> müssen in ihrem Unterelement <xsl:text/>mets:FLocat<xsl:text/> im Attribut <xsl:text/>xlink:href<xsl:text/> auf eine ALTO-Datei verweisen.
Fehlt das zur entsprechenden Auszeichung benötigte Attribut <xsl:text/>MIMETYPE<xsl:text/> in <xsl:text/>mets:file<xsl:text/> oder besitzt es einen anderen Wert als <xsl:text/>text/xml<xsl:text/>, geht das Zeitungsportal trotzdem davon aus, dass im Unterelement <xsl:text/>mets:FLocat<xsl:text/> im Attribut <xsl:text/>xlink:href<xsl:text/> eine ALTO-Datei referenziert wird.
Weitere Informationen zu diesem Element und seinem Kontext finden Sie im DDB-METS/MODS-Anwendungsprofil auf der Seite mets:fileSec (https://deutsche-digitale-bibliothek.atlassian.net/wiki/x/dgPeAg) und in den entsprechenden Unterseiten der Seite Aufbau einer METS/MODS-Datei für die DDB (https://deutsche-digitale-bibliothek.atlassian.net/wiki/x/MwLeAg).</svrl:text>
         </svrl:successful-report>
      </xsl:if>
      <xsl:apply-templates select="*" mode="M62"/>
   </xsl:template>
   <xsl:template match="text()" priority="-1" mode="M62"/>
   <xsl:template match="@*|node()" priority="-2" mode="M62">
      <xsl:apply-templates select="*" mode="M62"/>
   </xsl:template>
   <!--PATTERN -->
   <!--RULE -->
   <xsl:template match="mets:mets/mets:fileSec" priority="1000" mode="M63">
      <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                       context="mets:mets/mets:fileSec"/>
      <!--REPORT warn-->
      <xsl:if test="//mets:file[string-length(@MIMETYPE) = 0]">
         <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                 test="//mets:file[string-length(@MIMETYPE) = 0]">
            <xsl:attribute name="id">fileSec_08</xsl:attribute>
            <xsl:attribute name="role">warn</xsl:attribute>
            <xsl:attribute name="location">
               <xsl:apply-templates select="." mode="schematron-select-full-path"/>
            </xsl:attribute>
            <svrl:text>Das Element <xsl:text/>mets:file<xsl:text/> muss das Attribut <xsl:text/>MIMETYPE<xsl:text/> besitzen. Der Datensatz enthält mindestens ein <xsl:text/>mets:file<xsl:text/> ohne das Attribut <xsl:text/>MIMETYPE<xsl:text/>.
Das Fehlen des Attributs <xsl:text/>MIMETYPE<xsl:text/> verhindert nicht das Einspielen des Datensatzes in das Zeitungsportal, kann aber zu Darstellungsproblemen führen. Wir bitten Sie daher den Sachverhalt zu prüfen und ggf. die nötigen Korrekturen bis zur nächsten Datenlieferung vorzunehmen.
Weitere Informationen zu diesem Attribut finden Sie im DDB-METS/MODS-Anwendungsprofil auf der Seite mets:fileSec (https://deutsche-digitale-bibliothek.atlassian.net/wiki/x/dgPeAg).</svrl:text>
         </svrl:successful-report>
      </xsl:if>
      <xsl:apply-templates select="*" mode="M63"/>
   </xsl:template>
   <xsl:template match="text()" priority="-1" mode="M63"/>
   <xsl:template match="@*|node()" priority="-2" mode="M63">
      <xsl:apply-templates select="*" mode="M63"/>
   </xsl:template>
   <!--PATTERN -->
   <!--RULE -->
   <xsl:template match="mets:mets/mets:fileSec/mets:fileGrp[@USE=('DEFAULT', 'THUMBS', 'FULLTEXT')]/mets:file"
                 priority="1000"
                 mode="M64">
      <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                       context="mets:mets/mets:fileSec/mets:fileGrp[@USE=('DEFAULT', 'THUMBS', 'FULLTEXT')]/mets:file"/>
      <!--ASSERT fatal-->
      <xsl:choose>
         <xsl:when test="key('structMap_PHYSICAL_fptr_FILEID', @ID)"/>
         <xsl:otherwise>
            <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                test="key('structMap_PHYSICAL_fptr_FILEID', @ID)">
               <xsl:attribute name="id">fileSec_09</xsl:attribute>
               <xsl:attribute name="role">fatal</xsl:attribute>
               <xsl:attribute name="location">
                  <xsl:apply-templates select="." mode="schematron-select-full-path"/>
               </xsl:attribute>
               <svrl:text>Das Element <xsl:text/>mets:file<xsl:text/> in einem <xsl:text/>mets:fileGrp<xsl:text/> Element mit einem der Werte <xsl:text/>DEFAULT<xsl:text/>, <xsl:text/>THUMBS<xsl:text/> oder <xsl:text/>FULLTEXT<xsl:text/> im Attribut <xsl:text/>USE<xsl:text/> muss über sein Attribut <xsl:text/>ID<xsl:text/> mit einem <xsl:text/>mets:fptr<xsl:text/>-Element im Element <xsl:text/>mets:structMap[@TYPE='PHYSICAL']<xsl:text/> über dessen Attribut <xsl:text/>FILEID<xsl:text/> referenziert werden.
Fehlt diese Referenzierung, wird der Datensatz nicht in das Zeitungsportal eingespielt.
Weitere Informationen zu diesen Elementen finden Sie im DDB-METS/MODS-Anwendungsprofil auf den Seiten mets:fileSec (https://deutsche-digitale-bibliothek.atlassian.net/wiki/x/dgPeAg) und mets:structMap[@TYPE='PHYSICAL'] (https://deutsche-digitale-bibliothek.atlassian.net/wiki/x/DgXeAg).</svrl:text>
               <svrl:property id="id">
                  <xsl:value-of xmlns:sch="http://purl.oclc.org/dsdl/schematron" select="./@ID"/>
               </svrl:property>
            </svrl:failed-assert>
         </xsl:otherwise>
      </xsl:choose>
      <xsl:apply-templates select="*" mode="M64"/>
   </xsl:template>
   <xsl:template match="text()" priority="-1" mode="M64"/>
   <xsl:template match="@*|node()" priority="-2" mode="M64">
      <xsl:apply-templates select="*" mode="M64"/>
   </xsl:template>
   <!--PATTERN -->
   <!--RULE -->
   <xsl:template match="mets:mets" priority="1001" mode="M65">
      <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl" context="mets:mets"/>
      <!--ASSERT fatal-->
      <xsl:choose>
         <xsl:when test="mets:structMap[@TYPE='LOGICAL']"/>
         <xsl:otherwise>
            <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                test="mets:structMap[@TYPE='LOGICAL']">
               <xsl:attribute name="id">structMapLogical_01</xsl:attribute>
               <xsl:attribute name="role">fatal</xsl:attribute>
               <xsl:attribute name="location">
                  <xsl:apply-templates select="." mode="schematron-select-full-path"/>
               </xsl:attribute>
               <svrl:text>Der Datensatz muss das Element <xsl:text/>mets:structMap<xsl:text/> mit dem Attribut <xsl:text/>TYPE<xsl:text/> mit dem Wert <xsl:text/>LOGICAL<xsl:text/> enthalten.
Fehlt ein entsprechendes <xsl:text/>mets:structMap<xsl:text/>, wird der Datensatz nicht in das Zeitungsportal eingespielt.
Weitere Informationen zu diesem Element und seinem Kontext finden Sie im DDB-METS/MODS-Anwendungsprofil auf der Seite mets:structMap[@TYPE='LOGICAL'] (https://deutsche-digitale-bibliothek.atlassian.net/wiki/x/bAXeAg) und im Bereich Aufbau einer METS/MODS-Datei für die DDB (https://deutsche-digitale-bibliothek.atlassian.net/wiki/x/MwLeAg).</svrl:text>
            </svrl:failed-assert>
         </xsl:otherwise>
      </xsl:choose>
      <xsl:apply-templates select="*" mode="M65"/>
   </xsl:template>
   <!--RULE -->
   <xsl:template match="mets:mets/mets:structMap[@TYPE='LOGICAL']"
                 priority="1000"
                 mode="M65">
      <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                       context="mets:mets/mets:structMap[@TYPE='LOGICAL']"/>
      <!--ASSERT fatal-->
      <xsl:choose>
         <xsl:when test="mets:div"/>
         <xsl:otherwise>
            <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl" test="mets:div">
               <xsl:attribute name="id">structMapLogical_02</xsl:attribute>
               <xsl:attribute name="role">fatal</xsl:attribute>
               <xsl:attribute name="location">
                  <xsl:apply-templates select="." mode="schematron-select-full-path"/>
               </xsl:attribute>
               <svrl:text>Das Element <xsl:text/>mets:structMap<xsl:text/> mit dem Attribut <xsl:text/>TYPE<xsl:text/> mit dem Wert <xsl:text/>LOGICAL<xsl:text/> muss mindestens ein <xsl:text/>mets:div<xsl:text/>-Element enthalten.
Ist dies nicht der Fall, wird der Datensatz nicht in das Zeitungsportal eingespielt.
Weitere Informationen zu diesem Element und seinem Kontext finden Sie im DDB-METS/MODS-Anwendungsprofil auf der Seite mets:structMap[@TYPE='LOGICAL'] (https://deutsche-digitale-bibliothek.atlassian.net/wiki/x/bAXeAg) und im Bereich Aufbau einer METS/MODS-Datei für die DDB (https://deutsche-digitale-bibliothek.atlassian.net/wiki/x/MwLeAg).</svrl:text>
            </svrl:failed-assert>
         </xsl:otherwise>
      </xsl:choose>
      <xsl:apply-templates select="*" mode="M65"/>
   </xsl:template>
   <xsl:template match="text()" priority="-1" mode="M65"/>
   <xsl:template match="@*|node()" priority="-2" mode="M65">
      <xsl:apply-templates select="*" mode="M65"/>
   </xsl:template>
   <!--PATTERN -->
   <!--RULE -->
   <xsl:template match="mets:mets/mets:structMap[@TYPE='LOGICAL']//mets:div"
                 priority="1000"
                 mode="M66">
      <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                       context="mets:mets/mets:structMap[@TYPE='LOGICAL']//mets:div"/>
      <!--ASSERT fatal-->
      <xsl:choose>
         <xsl:when test="count(key('mets_ids', @ID)) = 1 and matches(@ID, '^[\i-[:]][\c-[:]]*$')"/>
         <xsl:otherwise>
            <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                test="count(key('mets_ids', @ID)) = 1 and matches(@ID, '^[\i-[:]][\c-[:]]*$')">
               <xsl:attribute name="id">structMapLogical_03</xsl:attribute>
               <xsl:attribute name="role">fatal</xsl:attribute>
               <xsl:attribute name="location">
                  <xsl:apply-templates select="." mode="schematron-select-full-path"/>
               </xsl:attribute>
               <svrl:text>Das Element <xsl:text/>mets:div<xsl:text/> im Element <xsl:text/>mets:structMap[@TYPE='LOGICAL']<xsl:text/> muss das Attribut <xsl:text/>ID<xsl:text/> mit einem im Datensatz eindeutigen Identifier enthalten. Dieser darf darüber hinaus keine ungültigen Zeichen enthalten.
Fehlt das Attribut <xsl:text/>ID<xsl:text/> bzw. enthält es ungültige Zeichen, wird der Datensatz nicht in das Zeitungsportal eingespielt.
Weitere Informationen zu diesem Attribut finden Sie im DDB-METS/MODS-Anwendungsprofil auf der Seite mets:structMap[@TYPE='LOGICAL'] (https://deutsche-digitale-bibliothek.atlassian.net/wiki/x/bAXeAg).</svrl:text>
               <svrl:property id="id">
                  <xsl:value-of xmlns:sch="http://purl.oclc.org/dsdl/schematron" select="./@ID"/>
               </svrl:property>
            </svrl:failed-assert>
         </xsl:otherwise>
      </xsl:choose>
      <xsl:apply-templates select="*" mode="M66"/>
   </xsl:template>
   <xsl:template match="text()" priority="-1" mode="M66"/>
   <xsl:template match="@*|node()" priority="-2" mode="M66">
      <xsl:apply-templates select="*" mode="M66"/>
   </xsl:template>
   <!--PATTERN -->
   <!--RULE -->
   <xsl:template match="mets:mets/mets:structMap[@TYPE='LOGICAL']//mets:div[@DMDID[tokenize(., ' ') = $work_dmdid]]//mets:div | mets:mets/mets:structMap[@TYPE='LOGICAL']//mets:div[@DMDID[tokenize(., ' ') = $work_dmdid]]"
                 priority="1000"
                 mode="M67">
      <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                       context="mets:mets/mets:structMap[@TYPE='LOGICAL']//mets:div[@DMDID[tokenize(., ' ') = $work_dmdid]]//mets:div | mets:mets/mets:structMap[@TYPE='LOGICAL']//mets:div[@DMDID[tokenize(., ' ') = $work_dmdid]]"/>
      <!--ASSERT fatal-->
      <xsl:choose>
         <xsl:when test="key('structLink_from_ids', @ID)"/>
         <xsl:otherwise>
            <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                test="key('structLink_from_ids', @ID)">
               <xsl:attribute name="id">structMapLogical_04</xsl:attribute>
               <xsl:attribute name="role">fatal</xsl:attribute>
               <xsl:attribute name="location">
                  <xsl:apply-templates select="." mode="schematron-select-full-path"/>
               </xsl:attribute>
               <svrl:text>Das Element <xsl:text/>mets:div<xsl:text/> im Element <xsl:text/>mets:structMap[@TYPE='LOGICAL']<xsl:text/> mit dem Attribut <xsl:text/>DMDID<xsl:text/> muss über sein Attribut <xsl:text/>ID<xsl:text/> von mindestens einem <xsl:text/>mets:smLink<xsl:text/>-Element im Element <xsl:text/>mets:structLink<xsl:text/> über dessen Attribut <xsl:text/>xlink:from<xsl:text/> referenziert werden.
Fehlt diese Referenzierung, wird der Datensatz nicht in das Zeitungsportal eingespielt.
Weitere Informationen zu diesen Elementen finden Sie im DDB-METS/MODS-Anwendungsprofil auf den Seiten mets:structMap[@TYPE='LOGICAL'] (https://deutsche-digitale-bibliothek.atlassian.net/wiki/x/bAXeAg) und mets:structLink (https://deutsche-digitale-bibliothek.atlassian.net/wiki/x/_QbeAg).</svrl:text>
               <svrl:property id="id">
                  <xsl:value-of xmlns:sch="http://purl.oclc.org/dsdl/schematron" select="./@ID"/>
               </svrl:property>
            </svrl:failed-assert>
         </xsl:otherwise>
      </xsl:choose>
      <xsl:apply-templates select="*" mode="M67"/>
   </xsl:template>
   <xsl:template match="text()" priority="-1" mode="M67"/>
   <xsl:template match="@*|node()" priority="-2" mode="M67">
      <xsl:apply-templates select="*" mode="M67"/>
   </xsl:template>
   <!--PATTERN -->
   <!--RULE -->
   <xsl:template match="mets:mets/mets:structMap[@TYPE='LOGICAL']//mets:div[@DMDID[tokenize(., ' ') = $work_dmdid]]"
                 priority="1000"
                 mode="M68">
      <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                       context="mets:mets/mets:structMap[@TYPE='LOGICAL']//mets:div[@DMDID[tokenize(., ' ') = $work_dmdid]]"/>
      <!--REPORT error-->
      <xsl:if test="mets:mptr">
         <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl" test="mets:mptr">
            <xsl:attribute name="id">structMapLogical_14</xsl:attribute>
            <xsl:attribute name="role">error</xsl:attribute>
            <xsl:attribute name="location">
               <xsl:apply-templates select="." mode="schematron-select-full-path"/>
            </xsl:attribute>
            <svrl:text>Im METS-Datensatz zu der Ausgabe/Beilage einer Zeitung darf kein <xsl:text/>mets:mptr<xsl:text/> enhalten sein, der auf eben diesen METS-Datensatz verweist. Ist dies der Fall, wird der <xsl:text/>mets:mptr<xsl:text/> bei der Transformation der Daten entfernt.
Weitere Informationen zu diesem Element finden Sie im DDB-METS/MODS-Anwendungsprofil auf der Seite mets:structMap[@TYPE='LOGICAL'] (https://deutsche-digitale-bibliothek.atlassian.net/wiki/x/bAXeAg).</svrl:text>
            <svrl:property id="id">
               <xsl:value-of xmlns:sch="http://purl.oclc.org/dsdl/schematron" select="./@ID"/>
            </svrl:property>
         </svrl:successful-report>
      </xsl:if>
      <xsl:apply-templates select="*" mode="M68"/>
   </xsl:template>
   <xsl:template match="text()" priority="-1" mode="M68"/>
   <xsl:template match="@*|node()" priority="-2" mode="M68">
      <xsl:apply-templates select="*" mode="M68"/>
   </xsl:template>
   <!--PATTERN -->
   <!--RULE -->
   <xsl:template match="mets:mets/mets:structMap[@TYPE='LOGICAL']//mets:div[@DMDID[tokenize(., ' ') = $work_dmdid]]"
                 priority="1000"
                 mode="M69">
      <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                       context="mets:mets/mets:structMap[@TYPE='LOGICAL']//mets:div[@DMDID[tokenize(., ' ') = $work_dmdid]]"/>
      <!--ASSERT fatal-->
      <xsl:choose>
         <xsl:when test="string-length(./@DMDID) &gt; 0"/>
         <xsl:otherwise>
            <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                test="string-length(./@DMDID) &gt; 0">
               <xsl:attribute name="id">structMapLogical_15</xsl:attribute>
               <xsl:attribute name="role">fatal</xsl:attribute>
               <xsl:attribute name="location">
                  <xsl:apply-templates select="." mode="schematron-select-full-path"/>
               </xsl:attribute>
               <svrl:text>Jede Ausgabe/Beilage muss eine <xsl:text/>mets:dmdSec<xsl:text/> enthalten, die die bibliographische Beschreibung der Ausgabe/Beilage enthält. Diese <xsl:text/>mets:dmdSec<xsl:text/> muss durch einen Identifier eindeutig beschrieben werden, der in der <xsl:text/>mets:structMap[@TYPE='LOGICAL']<xsl:text/> in der <xsl:text/>mets:div<xsl:text/> mit dem Strukturtyp <xsl:text/>issue<xsl:text/> bzw. <xsl:text/>additional<xsl:text/> in dem Attribut <xsl:text/>DMDID<xsl:text/> steht.
Weitere Informationen zu diesem Attribut finden Sie im DDB-METS/MODS-Anwendungsprofil auf der Seite mets:structMap[@TYPE='LOGICAL'] (https://deutsche-digitale-bibliothek.atlassian.net/wiki/x/bAXeAg).</svrl:text>
               <svrl:property id="id">
                  <xsl:value-of xmlns:sch="http://purl.oclc.org/dsdl/schematron" select="./@ID"/>
               </svrl:property>
            </svrl:failed-assert>
         </xsl:otherwise>
      </xsl:choose>
      <xsl:apply-templates select="*" mode="M69"/>
   </xsl:template>
   <xsl:template match="text()" priority="-1" mode="M69"/>
   <xsl:template match="@*|node()" priority="-2" mode="M69">
      <xsl:apply-templates select="*" mode="M69"/>
   </xsl:template>
   <!--PATTERN -->
   <!--RULE -->
   <xsl:template match="mets:mets/mets:structMap[@TYPE='LOGICAL']//mets:mptr"
                 priority="1000"
                 mode="M70">
      <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                       context="mets:mets/mets:structMap[@TYPE='LOGICAL']//mets:mptr"/>
      <!--ASSERT fatal-->
      <xsl:choose>
         <xsl:when test="matches(./@xlink:href, '^(http|https)://[a-zA-Z0-9\-\.]+\.[a-zA-Z][a-zA-Z]+(:[a-zA-Z0-9]*)?/?([a-zA-Z0-9\-\._\?,/\\\+&amp;%\$#=~:])*$')"/>
         <xsl:otherwise>
            <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                test="matches(./@xlink:href, '^(http|https)://[a-zA-Z0-9\-\.]+\.[a-zA-Z][a-zA-Z]+(:[a-zA-Z0-9]*)?/?([a-zA-Z0-9\-\._\?,/\\\+&amp;%\$#=~:])*$')">
               <xsl:attribute name="id">structMapLogical_17</xsl:attribute>
               <xsl:attribute name="role">fatal</xsl:attribute>
               <xsl:attribute name="location">
                  <xsl:apply-templates select="." mode="schematron-select-full-path"/>
               </xsl:attribute>
               <svrl:text>Das Attribut <xsl:text/>xlink:href<xsl:text/> des <xsl:text/>mets:mptr<xsl:text/>-Elements im Element <xsl:text/>mets:structMap[@TYPE='LOGICAL']<xsl:text/> muss einen validen http-URL enthalten.
Ist dies nicht der Fall, wird der Datensatz nicht in das Zeitungsportal eingespielt.
Weitere Informationen zu diesem Attribut und seinem Kontext finden Sie im DDB-METS/MODS-Anwendungsprofil auf der Seite mets:structMap[@TYPE='LOGICAL'] (https://deutsche-digitale-bibliothek.atlassian.net/wiki/x/bAXeAg) und der Seite Aufbau für Teile Mehrteiliger Dokumente (https://deutsche-digitale-bibliothek.atlassian.net/wiki/x/4gbeAg).</svrl:text>
               <svrl:property id="id">
                  <xsl:value-of xmlns:sch="http://purl.oclc.org/dsdl/schematron" select="./@ID"/>
               </svrl:property>
            </svrl:failed-assert>
         </xsl:otherwise>
      </xsl:choose>
      <xsl:apply-templates select="*" mode="M70"/>
   </xsl:template>
   <xsl:template match="text()" priority="-1" mode="M70"/>
   <xsl:template match="@*|node()" priority="-2" mode="M70">
      <xsl:apply-templates select="*" mode="M70"/>
   </xsl:template>
   <!--PATTERN -->
   <!--RULE -->
   <xsl:template match="mets:mets/mets:structMap[@TYPE='LOGICAL']/descendant-or-self::*[mets:div[@DMDID[tokenize(., ' ') = $work_dmdid]]]/mets:div[@DMDID[tokenize(., ' ') != $work_dmdid] or not (@DMDID)]"
                 priority="1000"
                 mode="M71">
      <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                       context="mets:mets/mets:structMap[@TYPE='LOGICAL']/descendant-or-self::*[mets:div[@DMDID[tokenize(., ' ') = $work_dmdid]]]/mets:div[@DMDID[tokenize(., ' ') != $work_dmdid] or not (@DMDID)]"/>
      <!--REPORT fatal-->
      <xsl:if test="true()">
         <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl" test="true()">
            <xsl:attribute name="id">structMapLogical_28</xsl:attribute>
            <xsl:attribute name="role">fatal</xsl:attribute>
            <xsl:attribute name="location">
               <xsl:apply-templates select="." mode="schematron-select-full-path"/>
            </xsl:attribute>
            <svrl:text>Ein Datensatz muss entweder eine Ausgabe oder eine Beilage beschreiben. Das Element <xsl:text/>mets:mptr<xsl:text/> im Element <xsl:text/>mets:div<xsl:text/> innerhalb des Elements <xsl:text/>mets:structMap[@TYPE='LOGICAL']<xsl:text/> darf nicht wiederholt werden.
Enthält <xsl:text/>mets:div<xsl:text/> mehr als ein <xsl:text/>mets:mptr<xsl:text/>, wird der Datensatz nicht in das Zeitungsportal eingespielt.
Weitere Informationen zu diesem Attribut finden Sie im DDB-METS/MODS-Anwendungsprofil auf der Seite mets:structMap[@TYPE='LOGICAL'] (https://deutsche-digitale-bibliothek.atlassian.net/wiki/x/bAXeAg).</svrl:text>
            <svrl:property id="id">
               <xsl:value-of xmlns:sch="http://purl.oclc.org/dsdl/schematron" select="./@ID"/>
            </svrl:property>
         </svrl:successful-report>
      </xsl:if>
      <xsl:apply-templates select="*" mode="M71"/>
   </xsl:template>
   <xsl:template match="text()" priority="-1" mode="M71"/>
   <xsl:template match="@*|node()" priority="-2" mode="M71">
      <xsl:apply-templates select="*" mode="M71"/>
   </xsl:template>
   <!--PATTERN -->
   <!--RULE -->
   <xsl:template match="mets:mets/mets:structMap[@TYPE='LOGICAL']//mets:div[@DMDID[tokenize(., ' ') = $work_dmdid]]"
                 priority="1000"
                 mode="M72">
      <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                       context="mets:mets/mets:structMap[@TYPE='LOGICAL']//mets:div[@DMDID[tokenize(., ' ') = $work_dmdid]]"/>
      <!--REPORT fatal-->
      <xsl:if test="./ancestor::mets:div/following-sibling::mets:div[descendant::mets:div[@TYPE=('issue', 'additional')]]">
         <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                 test="./ancestor::mets:div/following-sibling::mets:div[descendant::mets:div[@TYPE=('issue', 'additional')]]">
            <xsl:attribute name="id">structMapLogical_29</xsl:attribute>
            <xsl:attribute name="role">fatal</xsl:attribute>
            <xsl:attribute name="location">
               <xsl:apply-templates select="." mode="schematron-select-full-path"/>
            </xsl:attribute>
            <svrl:text>Ein Datensatz muss entweder eine Ausgabe oder eine Beilage beschreiben. Das bedeutet, er darf im Element <xsl:text/>mets:structMap[@TYPE='LOGICAL']<xsl:text/> nur in einem Zweig ein primäres <xsl:text/>mets:div<xsl:text/>-Element enthalten. Ist dies nicht der Fall, wird der Datensatz nicht in das Zeitungsportal eingespielt.
Weitere Informationen zu diesem Element und seinem Kontext finden Sie im DDB-METS/MODS-Anwendungsprofil auf der Seite mets:structMap[@TYPE='LOGICAL'] (https://deutsche-digitale-bibliothek.atlassian.net/wiki/x/bAXeAg) und im Bereich Aufbau für Zeitungsausgaben (https://deutsche-digitale-bibliothek.atlassian.net/wiki/x/5wHeAg).</svrl:text>
            <svrl:property id="id">
               <xsl:value-of xmlns:sch="http://purl.oclc.org/dsdl/schematron" select="./@ID"/>
            </svrl:property>
         </svrl:successful-report>
      </xsl:if>
      <xsl:apply-templates select="*" mode="M72"/>
   </xsl:template>
   <xsl:template match="text()" priority="-1" mode="M72"/>
   <xsl:template match="@*|node()" priority="-2" mode="M72">
      <xsl:apply-templates select="*" mode="M72"/>
   </xsl:template>
   <!--PATTERN -->
   <!--RULE -->
   <xsl:template match="mets:mets" priority="1002" mode="M73">
      <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl" context="mets:mets"/>
      <!--ASSERT fatal-->
      <xsl:choose>
         <xsl:when test="mets:structMap[@TYPE='PHYSICAL']"/>
         <xsl:otherwise>
            <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                test="mets:structMap[@TYPE='PHYSICAL']">
               <xsl:attribute name="id">structMapPhysical_01</xsl:attribute>
               <xsl:attribute name="role">fatal</xsl:attribute>
               <xsl:attribute name="location">
                  <xsl:apply-templates select="." mode="schematron-select-full-path"/>
               </xsl:attribute>
               <svrl:text>Um die Seiten des Dokuments in der richtigen Reihenfolge anzuzeigen, ist es notwendig, dass der Datensatz das Element <xsl:text/>mets:structMap<xsl:text/> mit dem Attribut <xsl:text/>TYPE<xsl:text/> mit dem Wert <xsl:text/>PHYSICAL<xsl:text/> enthält.
Fehlt ein entsprechendes <xsl:text/>mets:structMap<xsl:text/>, wird der Datensatz nicht in das Zeitungsportal eingespielt.
Weitere Informationen zu diesem Element und seinem Kontext finden Sie im DDB-METS/MODS-Anwendungsprofil auf der Seite mets:structMap[@TYPE='PHYSICAL'] (https://deutsche-digitale-bibliothek.atlassian.net/wiki/x/DgXeAg) und im Bereich Aufbau einer METS/MODS-Datei für die DDB (https://deutsche-digitale-bibliothek.atlassian.net/wiki/x/MwLeAg).</svrl:text>
            </svrl:failed-assert>
         </xsl:otherwise>
      </xsl:choose>
      <xsl:apply-templates select="*" mode="M73"/>
   </xsl:template>
   <!--RULE -->
   <xsl:template match="mets:mets/mets:structMap[@TYPE='PHYSICAL'][not(mets:div[@TYPE='physSequence'])]"
                 priority="1001"
                 mode="M73">
      <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                       context="mets:mets/mets:structMap[@TYPE='PHYSICAL'][not(mets:div[@TYPE='physSequence'])]"/>
      <!--ASSERT fatal-->
      <xsl:choose>
         <xsl:when test="mets:div[@TYPE='physSequence']"/>
         <xsl:otherwise>
            <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                test="mets:div[@TYPE='physSequence']">
               <xsl:attribute name="id">structMapPhysical_02</xsl:attribute>
               <xsl:attribute name="role">fatal</xsl:attribute>
               <xsl:attribute name="location">
                  <xsl:apply-templates select="." mode="schematron-select-full-path"/>
               </xsl:attribute>
               <svrl:text>Das Element <xsl:text/>mets:structMap<xsl:text/> mit dem Attribut <xsl:text/>TYPE<xsl:text/> mit dem Wert <xsl:text/>PHYSICAL<xsl:text/> muss das Unterelement <xsl:text/>mets:div<xsl:text/> mit dem Attribut <xsl:text/>TYPE<xsl:text/> den Wert <xsl:text/>physSequence<xsl:text/> enthalten.
Ist dies nicht der Fall, wird der Datensatz nicht in das Zeitungsportal eingespielt.
Weitere Informationen zu diesem Element und seinem Kontext finden Sie im DDB-METS/MODS-Anwendungsprofil auf der Seite mets:structMap[@TYPE='PHYSICAL'] (https://deutsche-digitale-bibliothek.atlassian.net/wiki/x/DgXeAg) und im Bereich Aufbau einer METS/MODS-Datei für die DDB (https://deutsche-digitale-bibliothek.atlassian.net/wiki/x/MwLeAg).</svrl:text>
            </svrl:failed-assert>
         </xsl:otherwise>
      </xsl:choose>
      <xsl:apply-templates select="*" mode="M73"/>
   </xsl:template>
   <!--RULE -->
   <xsl:template match="mets:mets/mets:structMap[@TYPE='PHYSICAL']"
                 priority="1000"
                 mode="M73">
      <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                       context="mets:mets/mets:structMap[@TYPE='PHYSICAL']"/>
      <!--ASSERT fatal-->
      <xsl:choose>
         <xsl:when test="mets:div[@TYPE='physSequence']/mets:div[@TYPE='page']"/>
         <xsl:otherwise>
            <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                test="mets:div[@TYPE='physSequence']/mets:div[@TYPE='page']">
               <xsl:attribute name="id">structMapPhysical_03</xsl:attribute>
               <xsl:attribute name="role">fatal</xsl:attribute>
               <xsl:attribute name="location">
                  <xsl:apply-templates select="." mode="schematron-select-full-path"/>
               </xsl:attribute>
               <svrl:text>Das Element <xsl:text/>mets:div<xsl:text/> mit dem Attribut <xsl:text/>TYPE<xsl:text/> mit dem Wert <xsl:text/>physSequence<xsl:text/> im Element <xsl:text/>mets:structMap[@TYPE='PHYSICAL']<xsl:text/> muss mindestens ein <xsl:text/>mets:div<xsl:text/>-Element mit dem Attribut <xsl:text/>TYPE<xsl:text/> mit dem Wert <xsl:text/>page<xsl:text/> enthalten.
Ist dies nicht der Fall, wird der Datensatz nicht in das Zeitungsportal eingespielt.
Weitere Informationen zu diesem Element und seinem Kontext finden Sie im DDB-METS/MODS-Anwendungsprofil auf der Seite mets:structMap[@TYPE='PHYSICAL'] (https://deutsche-digitale-bibliothek.atlassian.net/wiki/x/DgXeAg) und im Bereich Aufbau einer METS/MODS-Datei für die DDB (https://deutsche-digitale-bibliothek.atlassian.net/wiki/x/MwLeAg).</svrl:text>
            </svrl:failed-assert>
         </xsl:otherwise>
      </xsl:choose>
      <xsl:apply-templates select="*" mode="M73"/>
   </xsl:template>
   <xsl:template match="text()" priority="-1" mode="M73"/>
   <xsl:template match="@*|node()" priority="-2" mode="M73">
      <xsl:apply-templates select="*" mode="M73"/>
   </xsl:template>
   <!--PATTERN -->
   <!--RULE -->
   <xsl:template match="mets:mets/mets:structMap[@TYPE='PHYSICAL']//mets:div"
                 priority="1000"
                 mode="M74">
      <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                       context="mets:mets/mets:structMap[@TYPE='PHYSICAL']//mets:div"/>
      <!--ASSERT fatal-->
      <xsl:choose>
         <xsl:when test="count(key('mets_ids', @ID)) = 1 and matches(@ID, '^[\i-[:]][\c-[:]]*$')"/>
         <xsl:otherwise>
            <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                test="count(key('mets_ids', @ID)) = 1 and matches(@ID, '^[\i-[:]][\c-[:]]*$')">
               <xsl:attribute name="id">structMapPhysical_04</xsl:attribute>
               <xsl:attribute name="role">fatal</xsl:attribute>
               <xsl:attribute name="location">
                  <xsl:apply-templates select="." mode="schematron-select-full-path"/>
               </xsl:attribute>
               <svrl:text>Das Element <xsl:text/>mets:div<xsl:text/> im Element <xsl:text/>mets:structMap[@TYPE='PHYSICAL']<xsl:text/> muss das Attribut <xsl:text/>ID<xsl:text/> mit einem im Datensatz eindeutigen Identifier enthalten. Dieser darf darüber hinaus keine ungültigen Zeichen enthalten.
Fehlt das Attribut <xsl:text/>ID<xsl:text/> bzw. enthält es ungültige Zeichen, wird der Datensatz nicht in das Zeitungsportal eingespielt.
Weitere Informationen zu diesem Attribut finden Sie im DDB-METS/MODS-Anwendungsprofil auf der Seite mets:structMap[@TYPE='PHYSICAL'] (https://deutsche-digitale-bibliothek.atlassian.net/wiki/x/DgXeAg).</svrl:text>
               <svrl:property id="id">
                  <xsl:value-of xmlns:sch="http://purl.oclc.org/dsdl/schematron" select="./@ID"/>
               </svrl:property>
            </svrl:failed-assert>
         </xsl:otherwise>
      </xsl:choose>
      <xsl:apply-templates select="*" mode="M74"/>
   </xsl:template>
   <xsl:template match="text()" priority="-1" mode="M74"/>
   <xsl:template match="@*|node()" priority="-2" mode="M74">
      <xsl:apply-templates select="*" mode="M74"/>
   </xsl:template>
   <!--PATTERN -->
   <!--RULE -->
   <xsl:template match="mets:mets/mets:structMap[@TYPE='PHYSICAL']//mets:div[@TYPE='page'][not(@ORDER)]"
                 priority="1001"
                 mode="M75">
      <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                       context="mets:mets/mets:structMap[@TYPE='PHYSICAL']//mets:div[@TYPE='page'][not(@ORDER)]"/>
      <!--ASSERT warn-->
      <xsl:choose>
         <xsl:when test="@ORDER"/>
         <xsl:otherwise>
            <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl" test="@ORDER">
               <xsl:attribute name="id">structMapPhysical_05</xsl:attribute>
               <xsl:attribute name="role">warn</xsl:attribute>
               <xsl:attribute name="location">
                  <xsl:apply-templates select="." mode="schematron-select-full-path"/>
               </xsl:attribute>
               <svrl:text>Das Element <xsl:text/>mets:div<xsl:text/> innerhalb des Elements <xsl:text/>mets:structMap[@TYPE='PHYSICAL']<xsl:text/>, das das Attribut <xsl:text/>TYPE<xsl:text/> mit dem Wert <xsl:text/>page<xsl:text/> besitzt, muss auch das Attribut <xsl:text/>order<xsl:text/> enthalten.
Fehlt das Attribut <xsl:text/>order<xsl:text/>, verhindert dies nicht das Einspielen des Datensatzes in das Zeitungsportal, wir bitten Sie jedoch, den Sachverhalt zu prüfen und die nötigen Korrekturen bis zur nächsten Datenlieferung vorzunehmen.
Weitere Informationen zu diesem Attribut finden Sie im DDB-METS/MODS-Anwendungsprofil auf der Seite mets:structMap[@TYPE='PHYSICAL'] (https://deutsche-digitale-bibliothek.atlassian.net/wiki/x/DgXeAg).</svrl:text>
               <svrl:property id="id">
                  <xsl:value-of xmlns:sch="http://purl.oclc.org/dsdl/schematron" select="./@ID"/>
               </svrl:property>
            </svrl:failed-assert>
         </xsl:otherwise>
      </xsl:choose>
      <xsl:apply-templates select="*" mode="M75"/>
   </xsl:template>
   <!--RULE -->
   <xsl:template match="mets:mets/mets:structMap[@TYPE='PHYSICAL']//mets:div[@TYPE='page']"
                 priority="1000"
                 mode="M75">
      <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                       context="mets:mets/mets:structMap[@TYPE='PHYSICAL']//mets:div[@TYPE='page']"/>
      <!--ASSERT warn-->
      <xsl:choose>
         <xsl:when test="matches(@ORDER, '^\d+$')"/>
         <xsl:otherwise>
            <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl" test="matches(@ORDER, '^\d+$')">
               <xsl:attribute name="id">structMapPhysical_06</xsl:attribute>
               <xsl:attribute name="role">warn</xsl:attribute>
               <xsl:attribute name="location">
                  <xsl:apply-templates select="." mode="schematron-select-full-path"/>
               </xsl:attribute>
               <svrl:text>Das Attribut <xsl:text/>order<xsl:text/> vom Element <xsl:text/>mets:div[@TYPE='page']<xsl:text/> im Element <xsl:text/>mets:structMap[@TYPE='PHYSICAL']<xsl:text/>muss als Wert einen Integer enthalten.
Die Verwendung eines ungültigen Wertes verhindert nicht das Einspielen des Datensatzes in das Zeitungsportal, kann aber zu Darstellungsproblemen führen. Wir bitten Sie daher den Sachverhalt zu prüfen und ggf. die nötigen Korrekturen bis zur nächsten Datenlieferung vorzunehmen.
Weitere Informationen zu diesem Attribut finden Sie im DDB-METS/MODS-Anwendungsprofil auf der Seite mets:structMap[@TYPE='PHYSICAL'] (https://deutsche-digitale-bibliothek.atlassian.net/wiki/x/DgXeAg).</svrl:text>
               <svrl:property id="id">
                  <xsl:value-of xmlns:sch="http://purl.oclc.org/dsdl/schematron" select="./@ID"/>
               </svrl:property>
            </svrl:failed-assert>
         </xsl:otherwise>
      </xsl:choose>
      <xsl:apply-templates select="*" mode="M75"/>
   </xsl:template>
   <xsl:template match="text()" priority="-1" mode="M75"/>
   <xsl:template match="@*|node()" priority="-2" mode="M75">
      <xsl:apply-templates select="*" mode="M75"/>
   </xsl:template>
   <!--PATTERN -->
   <!--RULE -->
   <xsl:template match="mets:mets/mets:structMap[@TYPE='PHYSICAL']//mets:div[@TYPE='page']"
                 priority="1000"
                 mode="M76">
      <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                       context="mets:mets/mets:structMap[@TYPE='PHYSICAL']//mets:div[@TYPE='page']"/>
      <!--ASSERT fatal-->
      <xsl:choose>
         <xsl:when test="mets:fptr[string-length(@FILEID) &gt; 0]"/>
         <xsl:otherwise>
            <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                test="mets:fptr[string-length(@FILEID) &gt; 0]">
               <xsl:attribute name="id">structMapPhysical_07</xsl:attribute>
               <xsl:attribute name="role">fatal</xsl:attribute>
               <xsl:attribute name="location">
                  <xsl:apply-templates select="." mode="schematron-select-full-path"/>
               </xsl:attribute>
               <svrl:text>Das Element <xsl:text/>mets:fptr<xsl:text/> im Element <xsl:text/>mets:div[@TYPE='page']<xsl:text/> muss das Attribut <xsl:text/>FILEID<xsl:text/> enthalten.
Fehlt <xsl:text/>FILEID<xsl:text/> in <xsl:text/>mets:div[@TYPE='page']<xsl:text/>, wird der Datensatz nicht in das Zeitungsportal eingespielt.
Weitere Informationen zu diesem Attribut finden Sie im DDB-METS/MODS-Anwendungsprofil auf der Seite mets:structMap[@TYPE='PHYSICAL'] (https://deutsche-digitale-bibliothek.atlassian.net/wiki/x/DgXeAg).</svrl:text>
               <svrl:property id="id">
                  <xsl:value-of xmlns:sch="http://purl.oclc.org/dsdl/schematron" select="./@ID"/>
               </svrl:property>
            </svrl:failed-assert>
         </xsl:otherwise>
      </xsl:choose>
      <xsl:apply-templates select="*" mode="M76"/>
   </xsl:template>
   <xsl:template match="text()" priority="-1" mode="M76"/>
   <xsl:template match="@*|node()" priority="-2" mode="M76">
      <xsl:apply-templates select="*" mode="M76"/>
   </xsl:template>
   <!--PATTERN -->
   <!--RULE -->
   <xsl:template match="mets:mets/mets:structMap[@TYPE='PHYSICAL'][//mets:div[@TYPE='page'][starts-with(@CONTENTIDS, 'urn:')]]//mets:div[@TYPE='page']"
                 priority="1000"
                 mode="M77">
      <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                       context="mets:mets/mets:structMap[@TYPE='PHYSICAL'][//mets:div[@TYPE='page'][starts-with(@CONTENTIDS, 'urn:')]]//mets:div[@TYPE='page']"/>
      <!--ASSERT fatal-->
      <xsl:choose>
         <xsl:when test="starts-with(@CONTENTIDS, 'urn:')"/>
         <xsl:otherwise>
            <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                test="starts-with(@CONTENTIDS, 'urn:')">
               <xsl:attribute name="id">structMapPhysical_08</xsl:attribute>
               <xsl:attribute name="role">fatal</xsl:attribute>
               <xsl:attribute name="location">
                  <xsl:apply-templates select="." mode="schematron-select-full-path"/>
               </xsl:attribute>
               <svrl:text>Der Datensatz enthält in mindestens einem <xsl:text/>mets:div[@TYPE='page']<xsl:text/>-Element im Element <xsl:text/>mets:structMap[@TYPE='PHYSICAL']<xsl:text/>im Attribut <xsl:text/>CONTENTIDS<xsl:text/> einen URN. Ist dies der Fall, müssen alle <xsl:text/>mets:div[@TYPE='page']<xsl:text/> das Attribut <xsl:text/>CONTENTIDS<xsl:text/> mit einem URN besitzen.
Fehlt <xsl:text/>CONTENTIDS<xsl:text/> mit einem URN in einem <xsl:text/>mets:div[@TYPE='page']<xsl:text/>, wird der Datensatz nicht in das Zeitungsportal eingespielt.
Weitere Informationen zu diesem Attribut finden Sie im DDB-METS/MODS-Anwendungsprofil auf der Seite mets:structMap[@TYPE='PHYSICAL'] (https://deutsche-digitale-bibliothek.atlassian.net/wiki/x/DgXeAg).</svrl:text>
               <svrl:property id="id">
                  <xsl:value-of xmlns:sch="http://purl.oclc.org/dsdl/schematron" select="./@ID"/>
               </svrl:property>
            </svrl:failed-assert>
         </xsl:otherwise>
      </xsl:choose>
      <xsl:apply-templates select="*" mode="M77"/>
   </xsl:template>
   <xsl:template match="text()" priority="-1" mode="M77"/>
   <xsl:template match="@*|node()" priority="-2" mode="M77">
      <xsl:apply-templates select="*" mode="M77"/>
   </xsl:template>
   <!--PATTERN -->
   <!--RULE -->
   <xsl:template match="mets:mets" priority="1003" mode="M78">
      <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl" context="mets:mets"/>
      <!--ASSERT fatal-->
      <xsl:choose>
         <xsl:when test="mets:structLink"/>
         <xsl:otherwise>
            <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl" test="mets:structLink">
               <xsl:attribute name="id">structLink_01</xsl:attribute>
               <xsl:attribute name="role">fatal</xsl:attribute>
               <xsl:attribute name="location">
                  <xsl:apply-templates select="." mode="schematron-select-full-path"/>
               </xsl:attribute>
               <svrl:text>
                  <xsl:text/>mets:structLink<xsl:text/> ist notwendig, um die Ebenen der logischen Struktur mit den dazugehörigen Seiten zu verknüpfen.
Fehlt <xsl:text/>mets:structLink<xsl:text/>, wird der Datensatz nicht in das Zeitungsportal eingespielt.
Weitere Informationen zu diesem Element und seinem Kontext finden Sie im DDB-METS/MODS-Anwendungsprofil auf der Seite mets:structLink (https://deutsche-digitale-bibliothek.atlassian.net/wiki/x/_QbeAg) und im Bereich Aufbau einer METS/MODS-Datei für die DDB (https://deutsche-digitale-bibliothek.atlassian.net/wiki/x/MwLeAg).</svrl:text>
            </svrl:failed-assert>
         </xsl:otherwise>
      </xsl:choose>
      <xsl:apply-templates select="*" mode="M78"/>
   </xsl:template>
   <!--RULE -->
   <xsl:template match="mets:mets/mets:structLink[not(mets:smLink)]"
                 priority="1002"
                 mode="M78">
      <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                       context="mets:mets/mets:structLink[not(mets:smLink)]"/>
      <!--ASSERT fatal-->
      <xsl:choose>
         <xsl:when test="mets:smLink"/>
         <xsl:otherwise>
            <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl" test="mets:smLink">
               <xsl:attribute name="id">structLink_02</xsl:attribute>
               <xsl:attribute name="role">fatal</xsl:attribute>
               <xsl:attribute name="location">
                  <xsl:apply-templates select="." mode="schematron-select-full-path"/>
               </xsl:attribute>
               <svrl:text>Das Element <xsl:text/>mets:structLink<xsl:text/> muss mindestens ein <xsl:text/>mets:smLink<xsl:text/>-Element enthalten.
Ist dies nicht der Fall, wird der Datensatz nicht in das Zeitungsportal eingespielt.
Weitere Informationen zu diesem Element und seinem Kontext finden Sie im DDB-METS/MODS-Anwendungsprofil auf der Seite mets:structLink (https://deutsche-digitale-bibliothek.atlassian.net/wiki/x/_QbeAg) und im Bereich Aufbau einer METS/MODS-Datei für die DDB (https://deutsche-digitale-bibliothek.atlassian.net/wiki/x/MwLeAg).</svrl:text>
            </svrl:failed-assert>
         </xsl:otherwise>
      </xsl:choose>
      <xsl:apply-templates select="*" mode="M78"/>
   </xsl:template>
   <!--RULE -->
   <xsl:template match="mets:mets/mets:structLink/mets:smLink[not(string-length(@xlink:from) &gt; 0 and string-length(@xlink:to) &gt; 0)]"
                 priority="1001"
                 mode="M78">
      <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                       context="mets:mets/mets:structLink/mets:smLink[not(string-length(@xlink:from) &gt; 0 and string-length(@xlink:to) &gt; 0)]"/>
      <!--ASSERT fatal-->
      <xsl:choose>
         <xsl:when test="string-length(@xlink:from) &gt; 0 and string-length(@xlink:to) &gt; 0"/>
         <xsl:otherwise>
            <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                test="string-length(@xlink:from) &gt; 0 and string-length(@xlink:to) &gt; 0">
               <xsl:attribute name="id">structLink_03</xsl:attribute>
               <xsl:attribute name="role">fatal</xsl:attribute>
               <xsl:attribute name="location">
                  <xsl:apply-templates select="." mode="schematron-select-full-path"/>
               </xsl:attribute>
               <svrl:text>Das Element <xsl:text/>mets:smLink<xsl:text/> muss die Attribute <xsl:text/>xlink:from<xsl:text/> und <xsl:text/>xlink:to<xsl:text/> enthalten.
Fehlen diese Attribute, wird der Datensatz nicht in das Zeitungsportal eingespielt.
Weitere Informationen zu diesem Element, seinen Attributen und seinem Kontext finden Sie im DDB-METS/MODS-Anwendungsprofil auf der Seite mets:structLink (https://deutsche-digitale-bibliothek.atlassian.net/wiki/x/_QbeAg) und im Bereich Aufbau einer METS/MODS-Datei für die DDB (https://deutsche-digitale-bibliothek.atlassian.net/wiki/x/MwLeAg).</svrl:text>
            </svrl:failed-assert>
         </xsl:otherwise>
      </xsl:choose>
      <xsl:apply-templates select="*" mode="M78"/>
   </xsl:template>
   <!--RULE -->
   <xsl:template match="mets:mets/mets:structLink/mets:smLink"
                 priority="1000"
                 mode="M78">
      <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                       context="mets:mets/mets:structLink/mets:smLink"/>
      <!--ASSERT fatal-->
      <xsl:choose>
         <xsl:when test="key('structMap_PHYSICAL_ids', @xlink:to)"/>
         <xsl:otherwise>
            <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                test="key('structMap_PHYSICAL_ids', @xlink:to)">
               <xsl:attribute name="id">structLink_04</xsl:attribute>
               <xsl:attribute name="role">fatal</xsl:attribute>
               <xsl:attribute name="location">
                  <xsl:apply-templates select="." mode="schematron-select-full-path"/>
               </xsl:attribute>
               <svrl:text>Das Attribut <xsl:text/>xlink:to<xsl:text/> des Elements <xsl:text/>mets:smLink<xsl:text/> muss den Wert des Attributs <xsl:text/>ID<xsl:text/> eines <xsl:text/>mets:div<xsl:text/>-Elements im Element <xsl:text/>mets:structMap[@TYPE='PHYSICAL']<xsl:text/> referenzieren.
Enthält ein <xsl:text/>xlink:to<xsl:text/> eine ungültige Referenz, wird der Datensatz nicht in das Zeitungsportal eingespielt.
Weitere Informationen zu diesen Elementen, ihren Attributen und ihrem Kontext finden Sie im DDB-METS/MODS-Anwendungsprofil auf den Seiten mets:structLink (https://deutsche-digitale-bibliothek.atlassian.net/wiki/x/_QbeAg) und mets:structMap[@TYPE='PHYSICAL'] (https://deutsche-digitale-bibliothek.atlassian.net/wiki/x/DgXeAg) sowie im Bereich Aufbau einer METS/MODS-Datei für die DDB (https://deutsche-digitale-bibliothek.atlassian.net/wiki/x/MwLeAg).</svrl:text>
            </svrl:failed-assert>
         </xsl:otherwise>
      </xsl:choose>
      <xsl:apply-templates select="*" mode="M78"/>
   </xsl:template>
   <xsl:template match="text()" priority="-1" mode="M78"/>
   <xsl:template match="@*|node()" priority="-2" mode="M78">
      <xsl:apply-templates select="*" mode="M78"/>
   </xsl:template>
   <!--PATTERN -->
   <!--RULE -->
   <xsl:template match="oai:record/oai:metadata/mets:mets/mets:structLink/mets:smLink[1]"
                 priority="1000"
                 mode="M79">
      <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                       context="oai:record/oai:metadata/mets:mets/mets:structLink/mets:smLink[1]"/>
      <!--ASSERT fatal-->
      <xsl:choose>
         <xsl:when test="@*[local-name() = 'from'][namespace-uri() = 'http://www.w3.org/1999/xlink']"/>
         <xsl:otherwise>
            <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                test="@*[local-name() = 'from'][namespace-uri() = 'http://www.w3.org/1999/xlink']">
               <xsl:attribute name="id">structLink_05</xsl:attribute>
               <xsl:attribute name="role">fatal</xsl:attribute>
               <xsl:attribute name="location">
                  <xsl:apply-templates select="." mode="schematron-select-full-path"/>
               </xsl:attribute>
               <svrl:text>Die Attribute <xsl:text/>xlink:from<xsl:text/> und <xsl:text/>xlink:to<xsl:text/> des Elements <xsl:text/>mets:smLink<xsl:text/> verwenden einen ungültigen Namensraum. Der korrekte Namensraum für diese XLink-Attribute ist <xsl:text/>http://www.w3.org/1999/xlink<xsl:text/>.
Verwenden die Attribute einen ungültigen Namensraum, ist eine Verarbeitung des Datensatzes nicht möglich und er wird nicht in das Zeitungsportal eingespielt.
Weitere Informationen zu diesem Element, seinen Attributen und seinem Kontext finden Sie im DDB-METS/MODS-Anwendungsprofil auf der Seite mets:structLink (https://deutsche-digitale-bibliothek.atlassian.net/wiki/x/_QbeAg).</svrl:text>
            </svrl:failed-assert>
         </xsl:otherwise>
      </xsl:choose>
      <xsl:apply-templates select="*" mode="M79"/>
   </xsl:template>
   <xsl:template match="text()" priority="-1" mode="M79"/>
   <xsl:template match="@*|node()" priority="-2" mode="M79">
      <xsl:apply-templates select="*" mode="M79"/>
   </xsl:template>
</xsl:stylesheet>
