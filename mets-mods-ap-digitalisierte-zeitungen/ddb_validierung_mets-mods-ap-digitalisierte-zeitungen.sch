<?xml version="1.0" encoding="UTF-8"?>
<sch:schema xmlns:sch="http://purl.oclc.org/dsdl/schematron"
            xmlns:xs="http://www.w3.org/2001/XMLSchema"
            xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
            schemaVersion="v2024-02-29T15:26:03"
            queryBinding="xslt2">
   <sch:title>Validierung der Fachstelle Bibliothek der Deutschen Digitalen Bibliothek für das METS/MODS-Anwendungsprofil für Zeitungen</sch:title>
   <sch:ns prefix="mets" uri="http://www.loc.gov/METS/"/>
   <sch:ns prefix="mods" uri="http://www.loc.gov/mods/v3"/>
   <sch:ns prefix="xlink" uri="http://www.w3.org/1999/xlink"/>
   <sch:ns prefix="dv" uri="http://dfg-viewer.de/"/>
   <sch:ns prefix="xsi" uri="http://www.w3.org/2001/XMLSchema-instance"/>
   <sch:ns prefix="maps" uri="dcg:maps"/>
   <sch:ns prefix="oai" uri="http://www.openarchives.org/OAI/2.0/"/>
   <sch:properties>
      <sch:property id="text">
         <xsl:value-of select="text()"/>
      </sch:property>
      <sch:property id="local_name">
         <xsl:value-of select="local-name()"/>
      </sch:property>
      <sch:property id="name">
         <xsl:value-of select="name()"/>
      </sch:property>
   </sch:properties>
   <sch:let name="license_uris">
      <license_uris xmlns="dcg:maps">
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
      </license_uris>
   </sch:let>
   <sch:let name="iso639-1_codes">
      <iso639-1_codes xmlns="dcg:maps">
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
   </sch:let>
   <sch:let name="iso639-2_codes">
      <iso639-2_codes xmlns="dcg:maps">
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
   </sch:let>
   <sch:properties>
      <sch:property id="dmd_id">
         <xsl:value-of select="ancestor-or-self::mets:dmdSec/@ID"/>
      </sch:property>
      <sch:property id="id">
         <xsl:value-of select="./@ID"/>
      </sch:property>
      <sch:property id="type">
         <xsl:value-of select="./@type"/>
      </sch:property>
      <sch:property id="TYPE">
         <xsl:value-of select="./@TYPE"/>
      </sch:property>
      <sch:property id="source">
         <xsl:value-of select="./@source"/>
      </sch:property>
   </sch:properties>
   <sch:let name="mets_ap_dv_license_values">
      <mets_ap_dv_license_values xmlns="dcg:maps">
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
   </sch:let>
   <sch:let name="work_dmdid">
      <xsl:value-of select="//mets:mets/mets:structMap[@TYPE='LOGICAL']/descendant::mets:div[@TYPE=('issue', 'additional')][1]/@DMDID"/>
   </sch:let>
   <sch:let name="is_anchor"
            value="if ( //mets:mets/mets:structLink or //mets:mets/mets:fileSec/mets:fileGrp[@USE='DEFAULT'] ) then false() else true()"/>
   <sch:let name="work_amdid"
            value="//mets:mets/mets:structMap[@TYPE='LOGICAL']//mets:div[@DMDID[tokenize(., ' ') = $work_dmdid]]/@ADMID"/>
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
   <sch:pattern>
      <sch:rule context="mods:*">
            <!-- 
               Der Datensatz enthält leere MODS-Elemente
             -->
         <sch:assert id="all_01"
                     role="warn"
                     test="string-length(normalize-space(text()[1])) &gt; 0 or element()"
                     properties="dmd_id">Jedes MODS-Element muss entweder Text als Inhalt haben oder ein Kindelement das Text enthält. Leere MODS-Elemente verhindern nicht das Einspielen der Daten in die DDB. Wir bitten Sie jedoch, diesen Fehler in den folgenden Datensätzen bis zur nächsten Datenlieferung zu beheben.</sch:assert>
      </sch:rule>
   </sch:pattern>
   <sch:pattern>
      <sch:rule context="mods:*[mods:*]">
            <!-- 
               Text in Elementen, die Unterelemente enthalten
             -->
         <sch:report id="all_02"
                     role="error"
                     test="matches(string-join(text(), ''), '\w')"
                     properties="dmd_id">In MODS-Elementen, die Unterelemente enthalten, darf es keinen Text geben. Enthält ein solches Element Text, wird der Text bei der Bereinigung der Daten entfernt.</sch:report>
      </sch:rule>
   </sch:pattern>
   <sch:pattern>
      <sch:rule context="mods:mods/mods:*">
            <!-- 
               Nicht erlaubte Elemente in der obersten MODS-Ebene
             -->
         <sch:assert id="all_03"
                     role="fatal"
                     test="./local-name() = ( 'titleInfo', 'name', 'typeOfResource', 'genre', 'originInfo', 'language', 'physicalDescription', 'abstract', 'tableOfContents', 'targetAudience', 'note', 'subject', 'classification', 'relatedItem', 'identifier', 'location', 'accessCondition', 'part', 'extension', 'recordInfo' )"
                     properties="dmd_id local_name">In der obersten MODS-Ebene werden MODS-Elemente verwendet, die dort nicht zulässig sind. Da diese zu Problemen in der Verarbeitung der Datensätze führen kann, werden sie nicht in die DDB eingespielt.</sch:assert>
      </sch:rule>
   </sch:pattern>
   <sch:pattern>
      <sch:rule context="mods:*/@valueURI">
            <!-- 
               Der Wert im Attribut valueURI ist kein URL
             -->
         <sch:assert id="all_04"
                     role="error"
                     test="matches(., '^https?://[^ ]+$')"
                     properties="dmd_id">Das Attribut valueURI muss immer einen URL enthalten. Enthält es keinen URL, wird valueURI bei der Transformation der Daten entfernt.</sch:assert>
      </sch:rule>
   </sch:pattern>
   <sch:pattern>
      <sch:rule context="mets:xmlData/mods:mods/mods:*//mods:mods">
            <!-- 
               mods:mods enthält weitere mods:mods Elemente
             -->
         <sch:report id="all_05"
                     role="error"
                     test=".[not(./ancestor::mods:extension)]"
                     properties="dmd_id">Das <sch:span class="monotype">mods:mods</sch:span> Wurzelelement der <sch:span class="monotype">mets:dmdSec</sch:span> enthält weitere <sch:span class="monotype">mods:mods</sch:span> Elemente, die dort nicht zulässig sind. Sie werden bei der Transformation der Daten entfernt.</sch:report>
      </sch:rule>
   </sch:pattern>
   <sch:pattern>
      <sch:rule context="mods:*[starts-with(@valueURI, 'http://d-nb.info/gnd/') or starts-with(@valueURI, 'https://d-nb.info/gnd/')]">
            <!-- 
               Ungültiger GND-URI im Attribut valueURI
             -->
         <sch:assert id="all_06"
                     role="error"
                     test="matches(substring-after(@valueURI, '/gnd/'), '^[0-9]*-[0-9xX]{1}$|^[0-9xX]*$')"
                     properties="dmd_id">Der Datensatz enthält valueURI Attribute mit einer ungültigen GND-URI. Diese valueURI-Attribute werden bei der Transformation der Daten entfernt.</sch:assert>
      </sch:rule>
   </sch:pattern>
   <sch:pattern>
      <sch:rule context="oai:record/oai:metadata/element()[local-name() = 'mets']">
            <!-- 
               Ungültiger Namensraum für METS-Elemente
             -->
         <sch:assert id="all_07"
                     role="fatal"
                     test="./namespace-uri() = 'http://www.loc.gov/METS/'">Der Datensatz verwendet einen ungültigen Namensraum für METS-Elemente. Der korrekte Namensraum für METS-Elemente ist <sch:span class="monotype">http://www.loc.gov/METS/</sch:span>.
Verwenden die METS-Elemente einen ungültigen Namensraum ist eine Verarbeitung des Datensatzes nicht möglich und er wird nicht in die DDB eingespielt.</sch:assert>
      </sch:rule>
   </sch:pattern>
   <sch:pattern>
      <sch:rule context="oai:record/oai:metadata/mets:mets/mets:dmdSec[1]/mets:mdWrap/mets:xmlData/element()[local-name() = 'mods']">
            <!-- 
               Ungültiger Namensraum für MODS-Elemente
             -->
         <sch:assert id="all_08"
                     role="fatal"
                     test="./namespace-uri() = 'http://www.loc.gov/mods/v3'">Der Datensatz verwendet einen ungültigen Namensraum für MODS-Elemente. Der korrekte Namensraum für MODS-Elemente ist <sch:span class="monotype">http://www.loc.gov/mods/v3</sch:span>.
Verwenden die MODS-Elemente einen ungültigen Namensraum ist eine Verarbeitung des Datensatzes nicht möglich und er wird nicht in die DDB eingespielt.</sch:assert>
      </sch:rule>
   </sch:pattern>
   <sch:pattern>
      <sch:rule context="oai:record/oai:metadata/mets:mets/mets:amdSec[1]/mets:rightsMD/mets:mdWrap/mets:xmlData/element()[local-name() = 'rights']">
            <!-- 
               Ungültiger Namensraum für DFG-Viewer-Elemente (dv)
             -->
         <sch:assert id="all_09"
                     role="fatal"
                     test="./namespace-uri() = 'http://dfg-viewer.de/'">Der Datensatz verwendet einen ungültigen Namensraum für DFG-Viewer-Elemente (<sch:span class="monotype">dv</sch:span>). Der korrekte Namensraum für DFG-Viewer-Elemente ist <sch:span class="monotype">http://dfg-viewer.de/</sch:span>.
Verwenden die DFG-Viewer-Elemente einen ungültigen Namensraum ist eine Verarbeitung des Datensatzes nicht möglich und er wird nicht in die DDB eingespielt.</sch:assert>
      </sch:rule>
   </sch:pattern>
   <sch:pattern>
      <sch:rule context="mets:xmlData/mods:mods">
            <!-- 
               mods:typeOfResource fehlt
             -->
         <sch:assert id="typeOfResource_01"
                     role="error"
                     test="mods:typeOfResource"
                     properties="dmd_id"
                     see="https://wiki.deutsche-digitale-bibliothek.de/display/DFD/Ausgabe+Zeitung+1.0#AusgabeZeitung1.0-Beispielmods:typeOfResource">Jede <sch:span class="monotype">mets:dmdSec</sch:span> muss mindestens ein <sch:span class="monotype">mods:typeOfResource</sch:span> enthalten. Ist dies nicht der Fall, wird bei der Bereinigung der Daten als Default-Wert <sch:span class="monotype">mods:typeOfResource</sch:span> mit dem Wert text eingefügt. Weitere Informationen zu diesem Element finden Sie im METS/MODS-Anwendungsprofil für Zeitungen (https://wiki.deutsche-digitale-bibliothek.de/display/DFD/Ausgabe+Zeitung+1.0#AusgabeZeitung1.0-Medientyp).</sch:assert>
      </sch:rule>
   </sch:pattern>
   <sch:pattern>
      <sch:rule context="mets:dmdSec[@ID=$work_dmdid]/mets:mdWrap/mets:xmlData/mods:mods[mods:typeOfResource]">
            <!-- 
               Falscher Wert in mods:typeOfResource
             -->
         <sch:assert id="typeOfResource_02"
                     role="error"
                     test="mods:typeOfResource[text()='text']"
                     properties="dmd_id"
                     see="https://wiki.deutsche-digitale-bibliothek.de/display/DFD/Ausgabe+Zeitung+1.0#AusgabeZeitung1.0-Beispielmods:typeOfResource">Die <sch:span class="monotype">mets:dmdSec</sch:span> der Ausgabe muss in <sch:span class="monotype">mods:typeOfResource</sch:span> den Wert <sch:span class="monotype">text</sch:span> enthalten. Ist dies nicht der Fall, dann wird bei der Bereinigung der Daten der vorhandene Wert durch den Wert text ersetzt. Weitere Informationen zu diesem Element finden Sie im METS/MODS-Anwendungsprofil für Zeitungen (https://wiki.deutsche-digitale-bibliothek.de/display/DFD/Ausgabe+Zeitung+1.0#AusgabeZeitung1.0-Medientyp).</sch:assert>
      </sch:rule>
   </sch:pattern>
   <sch:pattern>
      <sch:rule context="mets:dmdSec[@ID=$work_dmdid]/mets:mdWrap/mets:xmlData/mods:mods[not(mods:originInfo[@eventType='publication'])]">
            <!-- 
               Das Attribut eventType mit dem Wert publication fehlt in mods:originInfo
             -->
         <sch:assert id="originInfo_07"
                     role="fatal"
                     test="mods:originInfo[@eventType='publication']"
                     properties="dmd_id"
                     see="https://wiki.deutsche-digitale-bibliothek.de/display/DFD/Ausgabe+Zeitung+1.0#AusgabeZeitung1.0-Beispielmods:originInfo">Es muss mindestens ein <sch:span class="monotype">mods:originInfo[@eventType='publication']</sch:span> vorhanden sein. Ist dies nicht der Fall,kann die Ausgabe nicht in das Zeitungsportal übernommen werden. Weitere Informationen zu diesem Element finden Sie im METS/MODS-Anwendungsprofil für Zeitungen (https://wiki.deutsche-digitale-bibliothek.de/display/DFD/Ausgabe+Zeitung+1.0#AusgabeZeitung1.0-Erscheinungsangaben).</sch:assert>
      </sch:rule>
      <sch:rule context="mets:dmdSec[@ID=$work_dmdid]/mets:mdWrap/mets:xmlData/mods:mods/mods:originInfo[@eventType='publication'][not(mods:dateIssued)]">
            <!-- 
               mods:dateIssued mit dem Erscheinungsdatum der Ausgabe fehlt
             -->
         <sch:assert id="originInfo_08"
                     role="fatal"
                     test="mods:dateIssued"
                     properties="dmd_id"
                     see="https://wiki.deutsche-digitale-bibliothek.de/display/DFD/Ausgabe+Zeitung+1.0#AusgabeZeitung1.0-Beispielmods:originInfo">Die <sch:span class="monotype">mets:dmdSec</sch:span> der Ausgabe muss in <sch:span class="monotype">mods:dateIssued</sch:span> das Erscheinungdatum enthalten. Ist dies nicht der Fall, kann die Ausgabe nicht in das Zeitungsportal übernommen werden. Weitere Informationen zu diesem Element finden Sie im METS/MODS-Anwendungsprofil für Zeitungen (https://wiki.deutsche-digitale-bibliothek.de/display/DFD/Ausgabe+Zeitung+1.0#AusgabeZeitung1.0-ErscheinungsdatumderAusgabe).</sch:assert>
      </sch:rule>
      <sch:rule context="mets:dmdSec[@ID=$work_dmdid]/mets:mdWrap/mets:xmlData/mods:mods/mods:originInfo[@eventType='publication'][mods:dateIssued[2]]">
            <!-- 
               Die Erscheinungsangabe in mods:dateIssued ist nicht wiederholbar
             -->
         <sch:report id="originInfo_09"
                     role="error"
                     test="mods:dateIssued[2]"
                     properties="dmd_id"
                     see="https://wiki.deutsche-digitale-bibliothek.de/display/DFD/Ausgabe+Zeitung+1.0#AusgabeZeitung1.0-Beispielmods:originInfo">
            <sch:span class="monotype">mods:dateIssued</sch:span> darf innerhalb von <sch:span class="monotype">mods:originInfo</sch:span> nicht wiederholt werden. Ist dies der Fall, wird bei der Transformation der Daten die erste Datumsangabe übernommen, alle anderen werden entfernt. Weitere Informationen zu diesem Element finden Sie im METS/MODS-Anwendungsprofil für Zeitungen (https://wiki.deutsche-digitale-bibliothek.de/display/DFD/Ausgabe+Zeitung+1.0#AusgabeZeitung1.0-ErscheinungsdatumderAusgabe).</sch:report>
      </sch:rule>
   </sch:pattern>
   <sch:pattern>
      <sch:let name="current_year"
               value="number(substring-before(string(current-date()), '-'))"/>
      <sch:rule context="mets:dmdSec[@ID=$work_dmdid]/mets:mdWrap/mets:xmlData/mods:mods/mods:originInfo[@eventType='publication']/mods:dateIssued[not(matches(text()[1], '^\d\d\d\d-\d\d-\d\d$'))]">
            <!-- 
               Der Wert in mods:dateIssued ist kein Tagesdatum
             -->
         <sch:assert id="originInfo_10"
                     role="fatal"
                     test="matches(text()[1], '^\d\d\d\d-\d\d-\d\d$')"
                     properties="dmd_id"
                     see="https://wiki.deutsche-digitale-bibliothek.de/display/DFD/Ausgabe+Zeitung+1.0#AusgabeZeitung1.0-Beispielmods:originInfo">Der Wert in <sch:span class="monotype">mods:dateIssued</sch:span> muss einem Tagesdatum nach dem ISO 8601 Standard entsprechen. Ist dies nicht der Fall, kann die Ausgabe nicht dem richtigen Datum im Kalender des Zeitungsportals zugeordnet werden und kann daher nicht in das Zeitungsportal übernommen werden. Weitere Informationen zu diesem Element finden Sie im METS/MODS-Anwendungsprofil für Zeitungen (https://wiki.deutsche-digitale-bibliothek.de/display/DFD/Ausgabe+Zeitung+1.0#AusgabeZeitung1.0-ErscheinungsdatumderAusgabe).</sch:assert>
      </sch:rule>
      <sch:rule context="mets:dmdSec[@ID=$work_dmdid]/mets:mdWrap/mets:xmlData/mods:mods/mods:originInfo[@eventType='publication']/mods:dateIssued[not(text()[1] castable as xs:date)]">
            <!-- 
               Das Erscheinungsdatum enthält einen ungültigen Wert
             -->
         <sch:assert id="originInfo_14"
                     role="fatal"
                     test="text()[1] castable as xs:date"
                     properties="dmd_id"
                     see="https://wiki.deutsche-digitale-bibliothek.de/display/DFD/Ausgabe+Zeitung+1.0#AusgabeZeitung1.0-Beispielmods:originInfo">Das angegebene Erscheinungsdatum der Ausgabe enthält einen ungültigen ISO 8601 Wert. Die Ausgabe kann daher nicht ins Zeitungsportal übernommen werden.</sch:assert>
      </sch:rule>
      <sch:rule context="mets:dmdSec[@ID=$work_dmdid]/mets:mdWrap/mets:xmlData/mods:mods/mods:originInfo[@eventType='publication']/mods:dateIssued[not(matches(text()[1], '^((1[5-9]\d\d)|(2[012]\d\d))-((0\d)|(1[012]))-(([012])\d|3([01]))$'))]">
            <!-- 
               Der Wert in mods:dateIssued liegt außerhalb des erwarteten Zeitraums
             -->
         <sch:assert id="originInfo_11"
                     role="fatal"
                     test="matches(text()[1], '^((1[5-9]\d\d)|(2[012]\d\d))-((0\d)|(1[012]))-(([012])\d|3([01]))$')"
                     properties="dmd_id"
                     see="https://wiki.deutsche-digitale-bibliothek.de/display/DFD/Ausgabe+Zeitung+1.0#AusgabeZeitung1.0-Beispielmods:originInfo">Der Wert in <sch:span class="monotype">mods:dateIssued</sch:span> liegt außerhalb des erwarteten Zeitraums (ab 1500) oder besitzt ungültige Monats- bzw. Tagesangaben. Die Ausgabe kann daher nicht ins Zeitungsportal übernommen werden, da dies dort zu Fehldarstellung führt. Weitere Informationen zu diesem Element finden Sie im METS/MODS-Anwendungsprofil für Zeitungen (https://wiki.deutsche-digitale-bibliothek.de/display/DFD/Ausgabe+Zeitung+1.0#AusgabeZeitung1.0-ErscheinungsdatumderAusgabe).</sch:assert>
      </sch:rule>
      <sch:rule context="mets:dmdSec[@ID=$work_dmdid]/mets:mdWrap/mets:xmlData/mods:mods/mods:originInfo[@eventType='publication']/mods:dateIssued[ number(substring-before(text(), '-')) &gt; $current_year ]">
            <!-- 
               Das Erscheinungsdatum der Ausgabe in mods:dateIssued liegt in der Zukunft
             -->
         <sch:report id="originInfo_13"
                     role="fatal"
                     test="number(substring-before(text(), '-')) &gt; $current_year"
                     properties="dmd_id"
                     see="https://wiki.deutsche-digitale-bibliothek.de/display/DFD/Ausgabe+Zeitung+1.0#AusgabeZeitung1.0-Beispielmods:originInfo">Das angegebene Erscheinungsdatum der Ausgabe liegt in der Zukunft. Die Ausgabe kann daher nicht ins Zeitungsportal übernommen werden.</sch:report>
      </sch:rule>
      <sch:rule context="mets:dmdSec[@ID=$work_dmdid]/mets:mdWrap/mets:xmlData/mods:mods/mods:originInfo[@eventType='publication']/mods:dateIssued">
         <sch:let name="year" value="number(substring-before(text(), '-'))"/>
         <!-- 
               Das Erscheinungsdatum der Ausgabe in mods:dateIssued liegt auffällig kurz zurück
             -->
         <sch:report id="originInfo_12"
                     role="warn"
                     test="$year &gt;= 1960"
                     properties="dmd_id"
                     see="https://wiki.deutsche-digitale-bibliothek.de/display/DFD/Ausgabe+Zeitung+1.0#AusgabeZeitung1.0-Beispielmods:originInfo">Das angegebene Erscheinungsdatum der Ausgabe ist 1960 oder später. Auf Grund des geringen Alters der Ausgabe und geltender urheberrechtlicher Beschränkungen bitten wir Sie, zu prüfen ob diese Ausgaben bereits frei zugänglich sind.
Ist dies der Fall besteht von Ihrer Seite kein Handlungsbedarf. Sollten die betroffenen Ausgaben aber noch nicht an das Deutsche Zeitungsportal geliefert werden, informieren Sie bitte die Fachstelle Bibliothek.</sch:report>
      </sch:rule>
   </sch:pattern>
   <sch:pattern>
      <sch:rule context="mets:xmlData/mods:mods/mods:language/mods:languageTerm">
            <!-- 
               Verwendung eines falschen Sprachcodes
             -->
         <sch:assert id="language_02"
                     role="error"
                     test="key('iso639-1_codes', text()[1], $iso639-1_codes) or key('iso639-2_codes', text()[1], $iso639-2_codes)"
                     properties="dmd_id text"
                     see="https://wiki.deutsche-digitale-bibliothek.de/display/DFD/Ausgabe+Zeitung+1.0#AusgabeZeitung1.0-Beispielmods:language">
            <sch:span class="monotype">mods:language/mods:languageTerm</sch:span> muss einen Code aus dem ISO 639-2b Standard (https://id.loc.gov/vocabulary/iso639-2) enthalten. Sollen mehrere Sprachen angegeben werden, muss <sch:span class="monotype">mods:language/mods:languageTerm</sch:span> wiederholt werden. Die Angaben von mehreren Sprachen in einem mod:languageTerm Element ist nicht erlaubt.
Handelt es sich bei dem Eintrag in <sch:span class="monotype">mods:language/mods:languageTerm</sch:span> um einen anderen Wert als die oben genannten Codes bzw. sind mehrere Codes enthalten, wird <sch:span class="monotype">mods:language</sch:span> bei der Bereinigung der Daten entfernt. Weitere Informationen zu diesem Element finden Sie im METS/MODS-Anwendungsprofil für Zeitungen (https://wiki.deutsche-digitale-bibliothek.de/display/DFD/Ausgabe+Zeitung+1.0#AusgabeZeitung1.0-Sprache).</sch:assert>
      </sch:rule>
   </sch:pattern>
   <sch:pattern>
      <sch:rule context="mets:dmdSec[@ID=$work_dmdid]/mets:mdWrap/mets:xmlData/mods:mods">
            <!-- 
               Die Angabe der Sprache fehlt
             -->
         <sch:assert id="language_03"
                     role="error"
                     test="mods:language/mods:languageTerm or ancestor::mets:mets/mets:structMap[@TYPE='LOGICAL']//mets:div[@DMDID=$work_dmdid][@TYPE = ('image', 'photograph', 'illustration', 'map', 'poster', 'plan')]"
                     properties="dmd_id"
                     see="https://wiki.deutsche-digitale-bibliothek.de/display/DFD/Ausgabe+Zeitung+1.0#AusgabeZeitung1.0-Beispielmods:language">Die Sprache muss in <sch:span class="monotype">mods:language/mods:languageTerm</sch:span> angegeben werden, wenn es sich bei der Ressource überwiegend um Text handelt. Dabei sind die Codes des ISO 639-2b Standards (https://id.loc.gov/vocabulary/iso639-2) zu verwenden. Fehlt die Angabe der Sprache bzw. entspricht die Sprachangabe nicht ISO 639-2b, können die betroffenen Datensätze nicht an Europeana weitergegeben werden. Weitere Informationen zu diesem Element finden Sie im METS/MODS-Anwendungsprofil für Zeitungen (https://wiki.deutsche-digitale-bibliothek.de/display/DFD/Ausgabe+Zeitung+1.0#AusgabeZeitung1.0-Sprache).</sch:assert>
      </sch:rule>
   </sch:pattern>
   <sch:pattern>
      <sch:rule context="mets:xmlData/mods:mods/mods:physicalDescription/mods:extent">
            <!-- 
               Falsche Angaben in mods:extent
             -->
         <sch:report id="physicalDescription_01"
                     role="error"
                     test="contains(lower-case(text()[1]), 'online') or contains(lower-case(text()[1]), 'electronic')"
                     properties="dmd_id"
                     see="https://wiki.deutsche-digitale-bibliothek.de/display/DFD/Ausgabe+Zeitung+1.0#AusgabeZeitung1.0-Beispielmods:physicalDescription">
            <sch:span class="monotype">mods:extent</sch:span> sollte die Umfangsangabe des digitalisierten Originals enthalten. Wenn in <sch:span class="monotype">mods:extent</sch:span> Begriffe wie "Online" oder "Electronic" enthalten sind, wird davon ausgegangen, dass es sich um Angaben zum Digitalisat handelt. In diesem Fall wird <sch:span class="monotype">mods:extent</sch:span> bei der Bereinigung der Daten entfernt. Weitere Informationen zu diesem Element finden Sie im METS/MODS-Anwendungsprofil für Zeitungen (https://wiki.deutsche-digitale-bibliothek.de/display/DFD/Ausgabe+Zeitung+1.0#AusgabeZeitung1.0-PhysischeBeschreibung).</sch:report>
      </sch:rule>
   </sch:pattern>
   <sch:pattern>
      <sch:rule context="mets:dmdSec[@ID=$work_dmdid]/mets:mdWrap/mets:xmlData/mods:mods">
            <!-- 
               Die Verknüpfung mit der Gesamtaufnahme ist nicht möglich
             -->
         <sch:assert id="relatedItem_06"
                     role="error"
                     test="mods:relatedItem[@type = 'host']/mods:recordInfo/mods:recordIdentifier[@source]"
                     properties="dmd_id"
                     see="https://wiki.deutsche-digitale-bibliothek.de/display/DFD/Ausgabe+Zeitung+1.0#AusgabeZeitung1.0-Beispielmods:relatedItem">Ausgaben von Zeitungen werden über den Identifier des Datensatzes, der das gesamte Werk beschreibt (die sogenannte Gesamtaufnahme) mit dem übergeordneten Werk verknüpft. Aus diesem Grund muss die <sch:span class="monotype">mets:dmdSec</sch:span>, die eine Ausgabe beschreibt, ein <sch:span class="monotype">mods:relatedItem[@type='host']</sch:span> enthalten, das den <sch:span class="monotype">mods:recordInfo/mods:recordIdentifier</sch:span> der Gesamtaufnahme enthält.
Zudem muss <sch:span class="monotype">mods:recordIdentifier</sch:span> das Attribut source enthalten und der Wert in diesem Attribut muss dem Wert entsprechen, der auch in der Gesamtaufnahme in dem Element <sch:span class="monotype">mods:recordIdentifier</sch:span> verwendet wird.
Fehlt <sch:span class="monotype">mods:relatedItem[@type='host']</sch:span> oder <sch:span class="monotype">mods:recordIdentifier</sch:span> oder das Attribut source, so lassen sich die Daten der Ausgaben nicht mit den Daten der Gesamtaufnahme verknüpfen. Weitere Informationen zu diesem Element finden Sie im METS/MODS-Anwendungsprofil für Zeitungen (https://wiki.deutsche-digitale-bibliothek.de/display/DFD/Ausgabe+Zeitung+1.0#AusgabeZeitung1.0-BeziehungenzurGesamtaufnahme).</sch:assert>
      </sch:rule>
   </sch:pattern>
   <sch:pattern>
      <sch:rule context="mets:mets[not(mets:dmdSec[@ID=$work_dmdid]/mets:mdWrap/mets:xmlData/mods:mods/mods:relatedItem[@type='host']/mods:identifier[@type='zdb'])]">
            <!-- 
               Die Verknüpfung mit der Gesamtaufnahme in der ZDB ist nicht möglich
             -->
         <sch:assert id="relatedItem_07"
                     role="fatal"
                     test="mets:dmdSec[@ID=$work_dmdid]/mets:mdWrap/mets:xmlData/mods:mods/mods:relatedItem[@type='host']/mods:identifier[@type='zdb'] or mets:structMap[@TYPE='LOGICAL']/mets:div[@TYPE='newspaper']/mets:mptr[@xlink:href]"
                     properties="dmd_id"
                     see="https://wiki.deutsche-digitale-bibliothek.de/display/DFD/Ausgabe+Zeitung+1.0#AusgabeZeitung1.0-Beispielmods:relatedItem">Ausgaben von Zeitungen werden im Zeitungsportal über den ZDB-Identifier in <sch:span class="monotype">mods:relatedItem[@type='host']</sch:span> mit der Aufnahme aus der ZDB verknüpft. Fehlt der ZDB-Identifier in <sch:span class="monotype">mods:relatedItem[@type='host']</sch:span>, wird er bei der Transformation der Daten aus der METS-Datei der Gesamtaufnahme in die Ausgabe übernommen. Enthält auch die Gesamtaufnahme keinen <sch:span class="monotype">mods:identifier[@type='zdb']</sch:span>, so kann die Ausgabe nicht in die DDB eingespielt werden. Weitere Informationen zu diesem Element finden Sie im METS/MODS-Anwendungsprofil für Zeitungen (https://wiki.deutsche-digitale-bibliothek.de/display/DFD/Ausgabe+Zeitung+1.0#AusgabeZeitung1.0-BeziehungenzurGesamtaufnahme).</sch:assert>
      </sch:rule>
      <sch:rule context="mets:mets/mets:dmdSec[@ID=$work_dmdid]/mets:mdWrap/mets:xmlData/mods:mods/mods:relatedItem[@type='host'][mods:identifier[@type='zdb']]">
            <!-- 
               Wiederholung von mods:identifier[@type='zdb']
             -->
         <sch:report id="relatedItem_10"
                     role="error"
                     test="mods:identifier[@type='zdb'][2]"
                     properties="dmd_id"
                     see="https://wiki.deutsche-digitale-bibliothek.de/display/DFD/Ausgabe+Zeitung+1.0#AusgabeZeitung1.0-Beispielmods:relatedItem">Innerhalb von <sch:span class="monotype">mods:relatedItem[@type='host']</sch:span> darf <sch:span class="monotype">mods:identifier[@type='zdb']</sch:span> nicht wiederholt werden. Ist mehr als ein <sch:span class="monotype">mods:identifier[@type='zdb']</sch:span> in <sch:span class="monotype">mods:relatedItem[@type='host']</sch:span> vorhanden, wird das erste Vorkommen bei der Transformation der Daten übernommen und alle weiteren Vorkommen entfernt. Weitere Informationen zu diesem Element finden Sie im METS/MODS-Anwendungsprofil für Zeitungen (https://wiki.deutsche-digitale-bibliothek.de/display/DFD/Ausgabe+Zeitung+1.0#AusgabeZeitung1.0-ZDB-IDderdigitalenAusgabe).</sch:report>
      </sch:rule>
      <sch:rule context="mets:dmdSec[@ID=$work_dmdid]/mets:mdWrap/mets:xmlData/mods:mods">
            <!-- 
               ZDB-Identifier der digitalen Ausgabe fehlt
             -->
         <sch:assert id="relatedItem_11"
                     role="error"
                     test="mods:relatedItem[@type='host']/mods:identifier[@type='zdb']"
                     properties="dmd_id"
                     see="https://wiki.deutsche-digitale-bibliothek.de/display/DFD/Ausgabe+Zeitung+1.0#AusgabeZeitung1.0-Beispielmods:relatedItem">Ausgaben von Zeitungen werden im Zeitungsportal über den ZDB-Identifier der digtalen Ausgabe im Element <sch:span class="monotype">mods:identifier[@type='zdb']</sch:span> in <sch:span class="monotype">mods:relatedItem[@type='host']</sch:span> mit der Aufnahme aus der ZDB verknüpft. Fehlt der ZDB-Identifier in <sch:span class="monotype">mods:relatedItem[@type='host']</sch:span>, wird er bei der Transformation der Daten aus der METS-Datei der Gesamtaufnahme in die Ausgabe übernommen. Weitere Informationen zu diesem Element finden Sie im METS/MODS-Anwendungsprofil für Zeitungen (https://wiki.deutsche-digitale-bibliothek.de/display/DFD/Ausgabe+Zeitung+1.0#AusgabeZeitung1.0-ZDB-IDderdigitalenAusgabe).</sch:assert>
      </sch:rule>
   </sch:pattern>
   <sch:pattern>
      <sch:rule context="mets:dmdSec[@ID=$work_dmdid]/mets:mdWrap/mets:xmlData/mods:mods">
            <!-- 
               mods:relatedItem[@type='host'] enthält keinen Titel
             -->
         <sch:assert id="relatedItem_09"
                     role="error"
                     test="mods:relatedItem[@type='host']/mods:titleInfo[not(@type)]/mods:title[string-length(text()) &gt; 0]"
                     properties="dmd_id"
                     see="https://wiki.deutsche-digitale-bibliothek.de/display/DFD/Ausgabe+Zeitung+1.0#AusgabeZeitung1.0-Beispielmods:relatedItem">Das Element <sch:span class="monotype">mods:relatedItem[@type='host']</sch:span> mit den Informationen zur Zeitung muss einen Titel in <sch:span class="monotype">mods:titleInfo/mods:title</sch:span> enthalten. Fehlt der Titel der Zeitung, wird er bei der Transformation der Daten aus der ZDB-Aufnahme der Online-Ausgabe übernommen. Weitere Informationen zu diesem Element finden Sie im METS/MODS-Anwendungsprofil für Zeitungen (https://wiki.deutsche-digitale-bibliothek.de/display/DFD/Ausgabe+Zeitung+1.0#AusgabeZeitung1.0-TitelderZeitung).</sch:assert>
      </sch:rule>
   </sch:pattern>
   <sch:pattern>
      <sch:rule context="mets:dmdSec[@ID=$work_dmdid]/mets:mdWrap/mets:xmlData/mods:mods">
            <!-- 
               Ein persistenter Identifier fehlt
             -->
         <sch:assert id="identifier_02"
                     role="warn"
                     test="mods:identifier[@type = ('purl', 'urn', 'doi', 'handle')]"
                     properties="dmd_id"
                     see="https://wiki.deutsche-digitale-bibliothek.de/display/DFD/Ausgabe+Zeitung+1.0#AusgabeZeitung1.0-Beispielmods:identifier">Ausgaben von Zeitungen müssen mindestens einen persistenten Identifier enthalten, der in <sch:span class="monotype">mods:identifier</sch:span> nachgewiesen wird. Erlaubt sind Identifier vom Typ:
 * <sch:span class="monotype">urn</sch:span>
 * <sch:span class="monotype">purl</sch:span>
 * <sch:span class="monotype">doi</sch:span>
 * <sch:span class="monotype">handle</sch:span>Weitere Informationen zu diesem Element finden Sie im METS/MODS-Anwendungsprofil für Zeitungen (https://wiki.deutsche-digitale-bibliothek.de/display/DFD/Ausgabe+Zeitung+1.0#AusgabeZeitung1.0-PersistenterURIderAusgabe).</sch:assert>
      </sch:rule>
   </sch:pattern>
   <sch:pattern>
      <sch:rule context="mets:dmdSec[@ID=$work_dmdid]/mets:mdWrap/mets:xmlData/mods:mods/mods:relatedItem[@type='host']/mods:identifier[@type='zdb'][not(matches(text()[1], '^\d\d?\d?\d?\d?\d?\d?\d?\d?\d?-?[0-9X]$'))] | mets:dmdSec[@ID=$work_dmdid]/mets:mdWrap/mets:xmlData/mods:mods/mods:relatedItem[@type='host']/mods:relatedItem[@type='original']/mods:identifier[@type='zdb'][not(matches(text()[1], '^\d\d?\d?\d?\d?\d?\d?\d?\d?\d?-?[0-9X]$'))]">
            <!-- 
               Die ZDB-ID ist nicht valide
             -->
         <sch:assert id="identifier_03"
                     role="fatal"
                     test="matches(text()[1], '^\d\d?\d?\d?\d?\d?\d?\d?\d?\d?-?[0-9X]$')"
                     properties="dmd_id"
                     see="https://wiki.deutsche-digitale-bibliothek.de/display/DFD/Ausgabe+Zeitung+1.0#AusgabeZeitung1.0-Beispielmods:relatedItem">Die ZDB-ID der Zeitung darf nur aus maximal 10 Zahlen, optional gefolgt von einem Bindestrich und einer weiteren Zahl bzw. einem <sch:span class="monotype">X</sch:span> bestehen. Entspricht die ZDB-ID nicht diesen Vorgaben, wird der Datensatz nicht in das Deutsche Zeitungsportal eingespielt. Weitere Informationen zu diesem Element finden Sie im METS/MODS-Anwendungsprofil für Zeitungen (https://wiki.deutsche-digitale-bibliothek.de/display/DFD/Ausgabe+Zeitung+1.0#AusgabeZeitung1.0-ZDB-IDderdigitalenAusgabe).</sch:assert>
      </sch:rule>
      <sch:rule context="mets:dmdSec[@ID=$work_dmdid]/mets:mdWrap/mets:xmlData/mods:mods/mods:relatedItem[@type='host']/mods:identifier[@type='zdb'] | mets:dmdSec[@ID=$work_dmdid]/mets:mdWrap/mets:xmlData/mods:mods/mods:relatedItem[@type='host']/mods:relatedItem[@type='original']/mods:identifier[@type='zdb']">
            <!-- 
               Bindestrich in der ZDB-ID fehlt
             -->
         <sch:assert id="identifier_04"
                     role="info"
                     test="matches(text()[1], '^\d\d?\d?\d?\d?\d?\d?\d?\d?\d?-[0-9X]$')"
                     properties="dmd_id"
                     see="https://wiki.deutsche-digitale-bibliothek.de/display/DFD/Ausgabe+Zeitung+1.0#AusgabeZeitung1.0-Beispielmods:relatedItem">Die ZDB-ID der Zeitung enthält an der letzten Stelle eine Prüfziffer, die durch einen Bindestrich eingeleitet werden kann. Da der Bindestrich für das Einspielen in das Deutsche Zeitungsportal erforderlich ist, wird er bei der Transformation der Daten ergänzt. Weitere Informationen zu diesem Element finden Sie im METS/MODS-Anwendungsprofil für Zeitungen (https://wiki.deutsche-digitale-bibliothek.de/display/DFD/Ausgabe+Zeitung+1.0#AusgabeZeitung1.0-ZDB-IDderdigitalenAusgabe).</sch:assert>
      </sch:rule>
   </sch:pattern>
   <sch:pattern>
      <sch:rule context="mets:dmdSec[@ID=$work_dmdid]/mets:mdWrap/mets:xmlData/mods:mods[mods:accessCondition[@type = 'use and reproduction']]">
            <!-- 
               Verwendung von mods:accessCondition entspricht nicht dem Anwendungsprofil
             -->
         <sch:assert id="accessCondition_01"
                     role="warn"
                     test="mods:accessCondition[@type = 'use and reproduction' and key('license_uris', ./@*[local-name()='href'][1], $license_uris)]"
                     properties="dmd_id"
                     see="https://wiki.deutsche-digitale-bibliothek.de/display/DFD/Ausgabe+Zeitung+1.0#AusgabeZeitung1.0-Beispielmods:accessCondition">Wenn für die Angabe der Lizenz das Element <sch:span class="monotype">mods:accessCondition</sch:span> verwendet wird, so sollte dies den Empfehlungen für Rechteinformationen in Metadaten der DINI AG KIM (https://wiki.dnb.de/pages/viewpage.action?pageId=148607377) entsprechend erfolgen. Weitere Informationen zu diesem Element finden Sie im METS/MODS-Anwendungsprofil für Zeitungen (https://wiki.deutsche-digitale-bibliothek.de/display/DFD/Ausgabe+Zeitung+1.0#AusgabeZeitung1.0-Rechteinformationen).</sch:assert>
      </sch:rule>
   </sch:pattern>
   <sch:pattern>
      <sch:rule context="mods:accessCondition[@type='use and reproduction']/@*[local-name()= 'href']">
            <!-- 
               Falscher Namensraum für das Attribut href von mods:accessCondition
             -->
         <sch:assert id="accessCondition_02"
                     role="error"
                     test="namespace-uri() = 'http://www.w3.org/1999/xlink'"
                     properties="dmd_id"
                     see="https://wiki.dnb.de/pages/viewpage.action?pageId=148607412#MODS(Empfehlung2.0)-Rechtehinweis/Lizenz">Das Attribut href des Elements <sch:span class="monotype">mods:accessCondition</sch:span> muss zum Namensraum <sch:span class="monotype">http://www.w3.org/1999/xlink</sch:span> gehören. Ist dies nicht der Fall, wird bei der Transformation das erste Vorkommen des Attributs <sch:span class="monotype">href</sch:span> in den Namensraum <sch:span class="monotype">http://www.w3.org/1999/xlink</sch:span> gesetzt und entsprechend ausgewertet.</sch:assert>
      </sch:rule>
   </sch:pattern>
   <sch:pattern>
      <sch:rule context="mets:dmdSec[@ID=$work_dmdid]/mets:mdWrap/mets:xmlData/mods:mods[mods:part[2]]">
            <!-- 
               mods:part ist nicht wiederholbar
             -->
         <sch:report id="part_06"
                     role="fatal"
                     test="mods:part[2]"
                     properties="dmd_id"
                     see="https://wiki.deutsche-digitale-bibliothek.de/display/DFD/Ausgabe+Zeitung+1.0#AusgabeZeitung1.0-Beispielmods:part">Das Element <sch:span class="monotype">mods:part</sch:span> ist in Ausgaben von Zeitungen nicht wiederholbar. Gibt es in einem Datensatz mehr als ein <sch:span class="monotype">mods:part</sch:span> ist die Sortierung der Ausgabe nicht mehr eindeutig und er kann daher nicht in das Zeitungsportal eingespielt werden. Weitere Informationen zu diesem Element finden Sie im METS/MODS-Anwendungsprofil für Zeitungen (https://wiki.deutsche-digitale-bibliothek.de/display/DFD/Ausgabe+Zeitung+1.0#AusgabeZeitung1.0-Z%C3%A4hlung/BezeichnungderAusgabe).</sch:report>
      </sch:rule>
      <sch:rule context="mets:dmdSec[@ID=$work_dmdid]/mets:mdWrap/mets:xmlData/mods:mods[not(mods:part/mods:detail/mods:number)]">
            <!-- 
               mods:part fehlt
             -->
         <sch:assert id="part_07"
                     role="error"
                     test="mods:part/mods:detail/mods:number"
                     properties="dmd_id"
                     see="https://wiki.deutsche-digitale-bibliothek.de/display/DFD/Ausgabe+Zeitung+1.0#AusgabeZeitung1.0-Beispielmods:part">Ausgaben von Zeitungen müssen Informationen zur Zählung enthalten, die im Zeitungsportal für die Anzeige der Ausgabe verwendet werden. Diese Information muss in <sch:span class="monotype">mods:part/mods:detail/mods:number</sch:span> zur Verfügung gestellt werden.
Fehlt <sch:span class="monotype">mods:part</sch:span>, so wird der Inhalt des Elements <sch:span class="monotype">mods:number</sch:span> bei der Transformation der Daten aus dem Erscheinungsdatum der Ausgabe (s. <sch:span class="monotype">mods:dateIssued</sch:span>) generiert. Weitere Informationen zu diesem Element finden Sie im METS/MODS-Anwendungsprofil für Zeitungen (https://wiki.deutsche-digitale-bibliothek.de/display/DFD/Ausgabe+Zeitung+1.0#AusgabeZeitung1.0-Z%C3%A4hlung/BezeichnungderAusgabe).</sch:assert>
      </sch:rule>
      <sch:rule context="mets:dmdSec[@ID=$work_dmdid]/mets:mdWrap/mets:xmlData/mods:mods[not(mods:part[@order])]/mods:part">
            <!-- 
               Attribut order fehlt in mods:part
             -->
         <sch:assert id="part_08"
                     role="error"
                     test="./@order"
                     properties="dmd_id"
                     see="https://wiki.deutsche-digitale-bibliothek.de/display/DFD/Ausgabe+Zeitung+1.0#AusgabeZeitung1.0-Beispielmods:part">Damit die Ausgaben in der richtigen Reihenfolge angezeigt werden muss <sch:span class="monotype">mods:part</sch:span> das Attribut order enthalten. Der Wert in diesem Attribut muss dem Erscheinungsdatum in Form eines Integer (also <sch:span class="monotype">YYYYMMDD</sch:span> ggf. mit angehängter zweistelliger Zählung) entsprechen.
Fehlt das Attribut order in <sch:span class="monotype">mods:part</sch:span>, so wird der Inhalt des Attributs bei der Transformation der Daten aus dem Erscheinungsdatum der Ausgabe (s. <sch:span class="monotype">mods:dateIssued</sch:span>) generiert. Weitere Informationen zu diesem Element finden Sie im METS/MODS-Anwendungsprofil für Zeitungen (https://wiki.deutsche-digitale-bibliothek.de/display/DFD/Ausgabe+Zeitung+1.0#AusgabeZeitung1.0-Z%C3%A4hlung/BezeichnungderAusgabe).</sch:assert>
      </sch:rule>
      <sch:rule context="mets:dmdSec[@ID=$work_dmdid]/mets:mdWrap/mets:xmlData/mods:mods/mods:part[not(matches(@order, '^\d+$'))]">
            <!-- 
               Falscher Wert im Attribut order in mods:part
             -->
         <sch:assert id="part_09"
                     role="error"
                     test="matches(./@order, '^\d+$')"
                     properties="dmd_id"
                     see="https://wiki.deutsche-digitale-bibliothek.de/display/DFD/Ausgabe+Zeitung+1.0#AusgabeZeitung1.0-Beispielmods:part">Um Ausgaben von Zeitungen in der richtigen Reihenfolge anzeigen zu können, muss die Ausgabezählung auch in maschinenlesbarer Form vorliegen. Aus diesem Grund muss <sch:span class="monotype">mods:part</sch:span> das Attribut <sch:span class="monotype">order</sch:span> enthalten, dessen Wert ein Integer ist. Handelt es sich um einen Wert, der nicht maschinenlesbar ist, so verhindert dies nicht das Einspielen der Daten in das Zeitungsportal, wir bitten Sie jedoch, die Daten zu prüfen und ggf. die nötigen Korrekturen bis zur nächsten Datenlieferung vorzunehmen. Weitere Informationen zu diesem Element finden Sie im METS/MODS-Anwendungsprofil für Zeitungen (https://wiki.deutsche-digitale-bibliothek.de/display/DFD/Ausgabe+Zeitung+1.0#AusgabeZeitung1.0-Z%C3%A4hlung/BezeichnungderAusgabe).</sch:assert>
      </sch:rule>
      <sch:rule context="mets:dmdSec[@ID=$work_dmdid]/mets:mdWrap/mets:xmlData/mods:mods/mods:part[not(matches(@order, '^[12]\d\d\d[01]\d[0123]\d(\d\d)?$'))]">
            <!-- 
               Abweichende Struktur der Ausgabenzählung im Attribut order in mods:part
             -->
         <sch:assert id="part_10"
                     role="warn"
                     test="matches(./@order, '^[12]\d\d\d[01]\d[0123]\d(\d\d)?$')"
                     properties="dmd_id"
                     see="https://wiki.deutsche-digitale-bibliothek.de/display/DFD/Ausgabe+Zeitung+1.0#AusgabeZeitung1.0-Beispielmods:part">Um Ausgaben von Zeitungen in der richtigen Reihenfolge anzeigen zu können, muss die Ausgabezählung auch in maschinenlesbarer Form vorliegen. Der vorliegende Wert als Integer erfüllt die Anforderungen weicht aber in der Struktur von der Empfehlung im Anwendungsprofil (<sch:span class="monotype">YYYYMMTT</sch:span> ggf. mit angehängter zweistelliger Zählung) ab. Wir empfehlen die empfohlene Struktur zu übernehmen um Sortierfehler im Zeitungsportal zu vermeiden. Weitere Informationen zu diesem Element finden Sie im METS/MODS-Anwendungsprofil für Zeitungen (https://wiki.deutsche-digitale-bibliothek.de/display/DFD/Ausgabe+Zeitung+1.0#AusgabeZeitung1.0-Z%C3%A4hlung/BezeichnungderAusgabe).</sch:assert>
      </sch:rule>
   </sch:pattern>
   <sch:pattern>
      <sch:rule context="mets:dmdSec[@ID=$work_dmdid]/mets:mdWrap/mets:xmlData/mods:mods[not(mods:part[2])]/mods:part">
            <!-- 
               Fehlende Informationen in mods:detail
             -->
         <sch:assert id="part_11"
                     role="error"
                     test="mods:detail[@type = 'issue'][mods:number[string-length(text()[1]) &gt; 0]]"
                     properties="dmd_id"
                     see="https://wiki.deutsche-digitale-bibliothek.de/display/DFD/Ausgabe+Zeitung+1.0#AusgabeZeitung1.0-Beispielmods:part">In <sch:span class="monotype">mods:part</sch:span> von Ausgaben von Zeitungen muss das Unterelement <sch:span class="monotype">mods:detail</sch:span> ein Attribut <sch:span class="monotype">type</sch:span> mit dem Wert <sch:span class="monotype">issue</sch:span> enthalten. Darüber hinaus muss das Element <sch:span class="monotype">mods:detail</sch:span> ein Unterelement <sch:span class="monotype">mods:number</sch:span> enthalten.
Fehlen diese Angaben wird bei der Transformation der Daten in dem vorhandenen <sch:span class="monotype">mods:part</sch:span> ein <sch:span class="monotype">mods:detail</sch:span> mit dem Attribut <sch:span class="monotype">type</sch:span> mit dem Wert <sch:span class="monotype">issue</sch:span> erzeugt und der Wert für das Unterelement <sch:span class="monotype">mods:number</sch:span> aus dem Erscheinungsdatum übernommen (s. <sch:span class="monotype">mods:dateIssued</sch:span>).Weitere Informationen zu diesem Element finden Sie im METS/MODS-Anwendungsprofil für Zeitungen (https://wiki.deutsche-digitale-bibliothek.de/display/DFD/Ausgabe+Zeitung+1.0#AusgabeZeitung1.0-Z%C3%A4hlung/BezeichnungderAusgabe).</sch:assert>
      </sch:rule>
   </sch:pattern>
   <sch:pattern>
      <sch:rule context="mets:dmdSec[@ID=$work_dmdid]/mets:mdWrap/mets:xmlData/mods:mods">
            <!-- 
               Der Identifier des Datensatzes fehlt
             -->
         <sch:assert id="recordInfo_01"
                     role="fatal"
                     test="mods:recordInfo/mods:recordIdentifier"
                     properties="dmd_id"
                     see="https://wiki.deutsche-digitale-bibliothek.de/display/DFD/Ausgabe+Zeitung+1.0#AusgabeZeitung1.0-Beispielmods:recordInfo">Die <sch:span class="monotype">mets:dmdSec</sch:span>, die das gesamte Werk beschreibt, muss ein <sch:span class="monotype">mods:recordInfo</sch:span> mit dem Unterelement <sch:span class="monotype">mods:recordIdentifier</sch:span> enthalten. Dieser <sch:span class="monotype">mods:recordIdentifier</sch:span> muss durch den Wert im Attribut <sch:span class="monotype">source</sch:span> eindeutig identifizierbar sein. Wenn <sch:span class="monotype">mods:recordIdentifier</sch:span> und / oder das Attribut <sch:span class="monotype">source</sch:span> fehlt, lässt sich der METS-Datensatz nicht eindeutig identifizieren und kann nicht in die DDB eingespielt werden. Weitere Informationen zu diesem Element finden Sie im METS/MODS-Anwendungsprofil für Zeitungen (https://wiki.deutsche-digitale-bibliothek.de/display/DFD/Ausgabe+Zeitung+1.0#AusgabeZeitung1.0-InformationenzumDatensatz).</sch:assert>
      </sch:rule>
   </sch:pattern>
   <sch:pattern>
      <sch:rule context="mets:xmlData/mods:mods/mods:recordInfo/mods:recordIdentifier">
            <!-- 
               Identifier des Datensatzes ist nicht eindeutig
             -->
         <sch:assert id="recordInfo_02"
                     role="fatal"
                     test="string-length(normalize-space(@source)) &gt; 0"
                     properties="dmd_id"
                     see="https://wiki.deutsche-digitale-bibliothek.de/display/DFD/Ausgabe+Zeitung+1.0#AusgabeZeitung1.0-Beispielmods:recordInfo">
            <sch:span class="monotype">mods:recordIdentifier</sch:span> muss das Attribut <sch:span class="monotype">source</sch:span> enthalten. Der Wert dieses Attribut muss die Herkunft des Identifiers des Datensatzes eindeutig identifizieren. Wenn das Attribut <sch:span class="monotype">source</sch:span> fehlt, lässt sich der METS-Datensatz nicht eindeutig identifizieren und kann nicht in die DDB eingespielt werden. Weitere Informationen zu diesem Element finden Sie im METS/MODS-Anwendungsprofil für Zeitungen (https://wiki.deutsche-digitale-bibliothek.de/display/DFD/Ausgabe+Zeitung+1.0#AusgabeZeitung1.0-InformationenzumDatensatz).</sch:assert>
      </sch:rule>
   </sch:pattern>
   <sch:pattern>
      <sch:rule context="mets:xmlData/mods:mods/mods:recordInfo">
            <!-- 
               Der Identifier des Datensatzes wird wiederholt
             -->
         <sch:report id="recordInfo_03"
                     role="fatal"
                     test="mods:recordIdentifier[2]"
                     properties="dmd_id"
                     see="https://wiki.deutsche-digitale-bibliothek.de/display/DFD/Ausgabe+Zeitung+1.0#AusgabeZeitung1.0-Beispielmods:recordInfo">Jeder METS-Datensatz muss durch ein <sch:span class="monotype">mods:recordIdentifier</sch:span> Element eindeutig identifiziert werden. Ist mehr als ein <sch:span class="monotype">mods:recordIdentifier</sch:span> vorhanden, wird nach Rücksprache mit Ihnen anhand der im Attribut <sch:span class="monotype">source</sch:span> genannten Quelle des Identifiers entschieden, welches <sch:span class="monotype">mods:recordIdentifier</sch:span> bei der Bereinigung des Datensatzes erhalten bleibt. Alle anderen <sch:span class="monotype">mods:recordIdentifier</sch:span> werden bei der Bereinigung des Datensatzes entfernt. Weitere Informationen zu diesem Element finden Sie im METS/MODS-Anwendungsprofil für Zeitungen (https://wiki.deutsche-digitale-bibliothek.de/display/DFD/Ausgabe+Zeitung+1.0#AusgabeZeitung1.0-InformationenzumDatensatz).</sch:report>
      </sch:rule>
   </sch:pattern>
   <sch:pattern>
      <sch:rule context="mets:xmlData/mods:mods/mods:recordInfo/mods:recordIdentifier">
            <!-- 
               Der Identifier des Datensatzes ist nicht valide
             -->
         <sch:assert id="recordInfo_04"
                     role="fatal"
                     test="matches(text()[1], '^[^ /]+$')"
                     properties="dmd_id"
                     see="https://wiki.deutsche-digitale-bibliothek.de/display/DFD/Ausgabe+Zeitung+1.0#AusgabeZeitung1.0-Beispielmods:recordInfo">Damit die DDB Identifier verarbeiten kann, dürfen sie keine Leerzeichen und / oder Sonderzeichen enthalten. Ist dies der Fall, kann es Probleme bei der Verarbeitung geben. Daher werden Datensätze, deren Identifier Leerzeichen und / oder Sonderzeichen enthalten, nicht in die DDB eingespielt. Weitere Informationen zu diesem Element finden Sie im METS/MODS-Anwendungsprofil für Zeitungen (https://wiki.deutsche-digitale-bibliothek.de/display/DFD/Ausgabe+Zeitung+1.0#AusgabeZeitung1.0-InformationenzumDatensatz).</sch:assert>
      </sch:rule>
   </sch:pattern>
   <sch:pattern>
      <sch:rule context="mets:mets">
            <!-- 
               mets:structMap[@TYPE='LOGICAL'] fehlt
             -->
         <sch:assert id="structMapLogical_01"
                     role="fatal"
                     test="mets:structMap[@TYPE='LOGICAL']"
                     see="https://wiki.deutsche-digitale-bibliothek.de/display/DFD/Ausgabe+Zeitung+1.0#AusgabeZeitung1.0-Beispielmets:structMapTYPE=%22LOGICAL%22">
            <sch:span class="monotype">mets:structMap[@TYPE='LOGICAL']</sch:span> ist notwendig, um die logische Struktur eines Dokuments anzuzeigen. Fehlt diese Information, wird der Datensatz nicht in die DDB eingespielt. Weitere Informationen zu diesem Element finden Sie im METS/MODS-Anwendungsprofil für Zeitungen (https://wiki.deutsche-digitale-bibliothek.de/display/DFD/Ausgabe+Zeitung+1.0#AusgabeZeitung1.0-AngabenzurlogischenDokumentenstrukturderAusgabe).</sch:assert>
      </sch:rule>
      <sch:rule context="mets:mets/mets:structMap[@TYPE='LOGICAL']">
            <!-- 
               mets:structMap[@TYPE='LOGICAL'] enthält keine mets:div
             -->
         <sch:assert id="structMapLogical_02"
                     role="fatal"
                     test="mets:div"
                     see="https://wiki.deutsche-digitale-bibliothek.de/display/DFD/Ausgabe+Zeitung+1.0#AusgabeZeitung1.0-Beispielmets:structMapTYPE=%22LOGICAL%22">Die logische Struktur eines Dokuments kann aus beliebig vielen Ebenen bestehen, die in der <sch:span class="monotype">mets:structMap[@TYPE='LOGICAL']</sch:span> durch ineinander verschachtelte <sch:span class="monotype">mets:div</sch:span> repräsentiert werden. Die <sch:span class="monotype">mets:structMap[@TYPE='LOGICAL']</sch:span> muss mindestens für die oberste dieser Ebenen eine <sch:span class="monotype">mets:div</sch:span> enthalten, in der die oberste Ebene des Dokuments beschrieben wird. Ist dies nicht der Fall, wird der METS-Datensatz nicht in die DDB eingespielt. Weitere Informationen zu diesem Element finden Sie im METS/MODS-Anwendungsprofil für Zeitungen (https://wiki.deutsche-digitale-bibliothek.de/display/DFD/Ausgabe+Zeitung+1.0#AusgabeZeitung1.0-AngabenzurlogischenDokumentenstrukturderAusgabe).</sch:assert>
      </sch:rule>
   </sch:pattern>
   <sch:pattern>
      <sch:rule context="mets:mets/mets:structMap[@TYPE='LOGICAL']//mets:div">
            <!-- 
               Eindeutiger Identifier fehlt in mets:div in mets:structMap[@TYPE='LOGICAL']
             -->
         <sch:assert id="structMapLogical_03"
                     role="fatal"
                     test="count(key('mets_ids', @ID)) = 1 and matches(@ID, '^[\i-[:]][\c-[:]]*$')"
                     properties="id"
                     see="https://wiki.deutsche-digitale-bibliothek.de/display/DFD/Ausgabe+Zeitung+1.0#AusgabeZeitung1.0-Beispielmets:structMapTYPE=%22LOGICAL%22">Die logische Struktur eines Dokuments kann aus beliebig vielen Ebenen bestehen, die in der <sch:span class="monotype">mets:structMap[@TYPE='LOGICAL']</sch:span> durch ineinander verschachtelte <sch:span class="monotype">mets:div</sch:span> repräsentiert werden. Jede dieser <sch:span class="monotype">mets:div</sch:span> muss in dem Attribut <sch:span class="monotype">ID</sch:span> einen eindeutigen Identifier enthalten. Ist dies nicht der Fall, wird der METS-Datensatz nicht in die DDB eingespielt. Weitere Informationen zu diesem Element finden Sie im METS/MODS-Anwendungsprofil für Zeitungen (https://wiki.deutsche-digitale-bibliothek.de/display/DFD/Ausgabe+Zeitung+1.0#AusgabeZeitung1.0-AngabenzurlogischenDokumentenstrukturderAusgabe).</sch:assert>
      </sch:rule>
   </sch:pattern>
   <sch:pattern>
      <sch:rule context="mets:mets/mets:structMap[@TYPE='LOGICAL']//mets:div[@DMDID[tokenize(., ' ') = $work_dmdid]]//mets:div | mets:mets/mets:structMap[@TYPE='LOGICAL']//mets:div[@DMDID[tokenize(., ' ') = $work_dmdid]]">
            <!-- 
               Notwendiger Identifier der logischen Strukturebene fehlt im mets:structLink
             -->
         <sch:assert id="structMapLogical_04"
                     role="fatal"
                     test="key('structLink_from_ids', @ID)"
                     properties="id"
                     see="https://wiki.deutsche-digitale-bibliothek.de/display/DFD/Ausgabe+Zeitung+1.0#AusgabeZeitung1.0-Beispielmets:structMapTYPE=%22LOGICAL%22">Um die Beziehung zwischen der logischen Struktur eines Dokuments und den dazugehörigen Seiten herstellen zu können, muss jeder Identifier einer <sch:span class="monotype">mets:div</sch:span> in der <sch:span class="monotype">mets:structMap[@TYPE='LOGICAL']</sch:span> im <sch:span class="monotype">mets:structLink</sch:span> den jeweiligen Identifiern der Seiten zugeordnet werden. Ist dies nicht der Fall, wird der METS-Datensatz nicht in die DDB eingespielt. Weitere Informationen zu diesem Element finden Sie im METS/MODS-Anwendungsprofil für Zeitungen (https://wiki.deutsche-digitale-bibliothek.de/display/DFD/Ausgabe+Zeitung+1.0#AusgabeZeitung1.0-AngabenzurlogischenDokumentenstrukturderAusgabe).</sch:assert>
      </sch:rule>
   </sch:pattern>
   <sch:pattern>
      <sch:rule context="mets:mets/mets:structMap[@TYPE='LOGICAL']//mets:div[not(@TYPE)]">
            <!-- 
               Das Attribut TYPE in der mets:div innerhalb von mets:structMap[@TYPE='LOGICAL'] fehlt
             -->
         <sch:assert id="structMapLogical_05"
                     role="fatal"
                     test="@TYPE"
                     properties="id"
                     see="https://wiki.deutsche-digitale-bibliothek.de/display/DFD/Ausgabe+Zeitung+1.0#AusgabeZeitung1.0-Beispielmets:structMapTYPE=%22LOGICAL%22">Jede Ebene innerhalb der logischen Struktur muss durch einen Strukturtyp spezifiziert werden. Der Strukturtyp steht in der <sch:span class="monotype">mets:div</sch:span> in dem Attribut <sch:span class="monotype">TYPE</sch:span>. Erlaubt sind hier nur Werte aus der Liste der DFG-Viewer Strukturtypen. Fehlt das Attribut <sch:span class="monotype">TYPE</sch:span> in einem der <sch:span class="monotype">mets:div</sch:span>, wird der METS-Datensatz nicht in die DDB eingespielt. Weitere Informationen zu diesem Element finden Sie im METS/MODS-Anwendungsprofil für Zeitungen (https://wiki.deutsche-digitale-bibliothek.de/display/DFD/Ausgabe+Zeitung+1.0#AusgabeZeitung1.0-AngabenzurlogischenDokumentenstrukturderAusgabe).</sch:assert>
      </sch:rule>
      <sch:rule context="mets:mets/mets:structMap[@TYPE='LOGICAL']//mets:div[not( @TYPE = ( 'section', 'file', 'album', 'register', 'annotation', 'address', 'article', 'atlas', 'issue', 'bachelor_thesis', 'volume', 'contained_work', 'additional', 'report', 'official_notification', 'provenance', 'image', 'collation', 'ornament', 'letter', 'cover', 'cover_front', 'cover_back', 'diploma_thesis', 'doctoral_thesis', 'document', 'printers_mark', 'printed_archives', 'binding', 'entry', 'corrigenda', 'bookplate', 'fascicle', 'leaflet', 'research_paper', 'photograph', 'fragment', 'land_register', 'ground_plan', 'habilitation_thesis', 'manuscript', 'illustration', 'imprint', 'contents', 'initial_decoration', 'year', 'chapter', 'map', 'cartulary', 'colophon', 'engraved_titlepage', 'magister_thesis', 'folder', 'master_thesis', 'multivolume_work', 'month', 'monograph', 'musical_notation', 'periodical', 'poster', 'plan', 'privileges', 'index', 'spine', 'scheme', 'edge', 'seal', 'paste_down', 'stamp', 'study', 'table', 'day', 'proceeding', 'text', 'title_page', 'act', 'judgement', 'verse', 'note', 'preprint', 'dossier', 'lecture', 'endsheet', 'paper', 'preface', 'dedication', 'newspaper' ) )]">
            <!-- 
               Falsche Strukturtypen in der mets:div innerhalb von mets:structMap[@TYPE='LOGICAL']
             -->
         <sch:assert id="structMapLogical_06"
                     role="error"
                     test="@TYPE = ( 'section', 'file', 'album', 'register', 'annotation', 'address', 'article', 'atlas', 'issue', 'bachelor_thesis', 'volume', 'contained_work', 'additional', 'report', 'official_notification', 'provenance', 'image', 'collation', 'ornament', 'letter', 'cover', 'cover_front', 'cover_back', 'diploma_thesis', 'doctoral_thesis', 'document', 'printers_mark', 'printed_archives', 'binding', 'entry', 'corrigenda', 'bookplate', 'fascicle', 'leaflet', 'research_paper', 'photograph', 'fragment', 'land_register', 'ground_plan', 'habilitation_thesis', 'manuscript', 'illustration', 'imprint', 'contents', 'initial_decoration', 'year', 'chapter', 'map', 'cartulary', 'colophon', 'engraved_titlepage', 'magister_thesis', 'folder', 'master_thesis', 'multivolume_work', 'month', 'monograph', 'musical_notation', 'periodical', 'poster', 'plan', 'privileges', 'index', 'spine', 'scheme', 'edge', 'seal', 'paste_down', 'stamp', 'study', 'table', 'day', 'proceeding', 'text', 'title_page', 'act', 'judgement', 'verse', 'note', 'preprint', 'dossier', 'lecture', 'endsheet', 'paper', 'preface', 'dedication', 'newspaper' )"
                     properties="id TYPE"
                     see="https://wiki.deutsche-digitale-bibliothek.de/display/DFD/Ausgabe+Zeitung+1.0#AusgabeZeitung1.0-Beispielmets:structMapTYPE=%22LOGICAL%22">Jede Ebene innerhalb der logischen Struktur muss durch einen Strukturtyp spezifiziert werden. Der Strukturtyp steht in der <sch:span class="monotype">mets:div</sch:span> in dem Attribut <sch:span class="monotype">TYPE</sch:span>. Erlaubt sind hier nur Werte aus der Liste der DFG-Viewer Strukturtypen (https://dfg-viewer.de/strukturdatenset/) (s. dort die Spalte XML).
Werden in dem Attribut <sch:span class="monotype">TYPE</sch:span> andere Begriffe als die in der Liste vorgesehenen verwendet, wird er bei der Bereinigung der Daten durch den Strukturtyp <sch:span class="monotype">section</sch:span> ersetzt. Weitere Informationen zu diesem Element finden Sie im METS/MODS-Anwendungsprofil für Zeitungen (https://wiki.deutsche-digitale-bibliothek.de/display/DFD/Ausgabe+Zeitung+1.0#AusgabeZeitung1.0-AngabenzurlogischenDokumentenstrukturderAusgabe).</sch:assert>
      </sch:rule>
   </sch:pattern>
   <sch:pattern>
      <sch:rule context="mets:mets/mets:structMap[@TYPE='LOGICAL']//mets:div[@DMDID]">
            <!-- 
               mets:structMap[@TYPE='LOGICAL'] verlinkt auf nicht vorhandene mets:dmdSec
             -->
         <sch:assert id="structMapLogical_09"
                     role="error"
                     test="key('dmdsec_ids', @DMDID)"
                     properties="id"
                     see="https://wiki.deutsche-digitale-bibliothek.de/display/DFD/Ausgabe+Zeitung+1.0#AusgabeZeitung1.0-Beispielmets:structMapTYPE=%22LOGICAL%22">Ist das Attribut <sch:span class="monotype">DMDID</sch:span> des Elements <sch:span class="monotype">mets:div</sch:span> in der <sch:span class="monotype">mets:structMap[@TYPE='LOGICAL']</sch:span> vorhanden, muss es eine dazugehörige <sch:span class="monotype">mets:dmdSec</sch:span> mit dem gleichen Wert im Attribut <sch:span class="monotype">ID</sch:span> geben. Ist dies nicht der Fall, wird die Verknüpfung in der <sch:span class="monotype">mets:structMap[@TYPE='LOGICAL']</sch:span> entfernt. Weitere Informationen zu diesem Element finden Sie im METS/MODS-Anwendungsprofil für Zeitungen (https://wiki.deutsche-digitale-bibliothek.de/display/DFD/Ausgabe+Zeitung+1.0#AusgabeZeitung1.0-AngabenzurlogischenDokumentenstrukturderAusgabe).</sch:assert>
      </sch:rule>
   </sch:pattern>
   <sch:pattern>
      <sch:rule context="mets:mets">
            <!-- 
               Falsche Strukturtypen in der mets:div innerhalb von mets:structMap[@TYPE='LOGICAL']
             -->
         <sch:assert id="structMapLogical_12"
                     role="warn"
                     test="mets:structMap[@TYPE='LOGICAL'] /mets:div[@TYPE='newspaper'][not(./preceding-sibling::mets:div or ./following-sibling::mets:div)] /mets:div[@TYPE='year'][not(./preceding-sibling::mets:div or ./following-sibling::mets:div)] /mets:div[@TYPE='month'][not(./preceding-sibling::mets:div or ./following-sibling::mets:div)] /mets:div[@TYPE='day'][not(./preceding-sibling::mets:div or ./following-sibling::mets:div)] /mets:div[@TYPE=('issue', 'additional')][not(./preceding-sibling::mets:div or ./following-sibling::mets:div)]"
                     properties="id"
                     see="https://wiki.deutsche-digitale-bibliothek.de/display/DFD/Ausgabe+Zeitung+1.0#AusgabeZeitung1.0-Beispielmets:structMapTYPE=%22LOGICAL%22">Für die Darstellung der logischen Struktur in Zeitungsausgaben ist die Verwendung der Strukturtypen vorgegeben. In der obersten <sch:span class="monotype">mets:div</sch:span> wird auf die Gesamtaufnahme verwiesen, der Wert im Attribut <sch:span class="monotype">TYPE</sch:span> muss <sch:span class="monotype">newspaper</sch:span> lauten.
In der darunterliegenden <sch:span class="monotype">mets:div</sch:span> wird auf den Jahrgang verwiesen, der Wert im Attribut <sch:span class="monotype">TYPE</sch:span> muss <sch:span class="monotype">year</sch:span> lauten.
In der darunterliegenden <sch:span class="monotype">mets:div</sch:span> wird auf die einzelnen Monate verwiesen, in denen Ausgaben erschienen sind, der Wert im Attribut <sch:span class="monotype">TYPE</sch:span> muss <sch:span class="monotype">month</sch:span> lauten.
In der darunterliegenden <sch:span class="monotype">mets:div</sch:span> wird auf das tägliche Erscheinen verwiesen, der Wert im Attribut <sch:span class="monotype">TYPE</sch:span> muss <sch:span class="monotype">day</sch:span> lauten.
In der darunterliegenden <sch:span class="monotype">mets:div</sch:span> wird auf die Ausgabe verwiesen, der Wert im Attribut <sch:span class="monotype">TYPE</sch:span> muss <sch:span class="monotype">issue</sch:span> lauten.
Falls die Strukturtypen nicht entsprechend verwendet werden, werden bei der Transformation der Daten ggf. die entsprechenden Strukturtypen übernommen. Weitere Informationen zu diesem Element finden Sie im METS/MODS-Anwendungsprofil für Zeitungen (https://wiki.deutsche-digitale-bibliothek.de/display/DFD/Ausgabe+Zeitung+1.0#AusgabeZeitung1.0-AngabenzurlogischenDokumentenstrukturderAusgabe).</sch:assert>
      </sch:rule>
   </sch:pattern>
   <sch:pattern>
      <sch:rule context="mets:mets/mets:structMap[@TYPE='LOGICAL']//mets:div[@TYPE='year']">
            <!-- 
               mets:mptr zum Jahrgang fehlt
             -->
         <sch:assert id="structMapLogical_13"
                     role="info"
                     test="mets:mptr[@xlink:href]"
                     properties="id"
                     see="https://wiki.deutsche-digitale-bibliothek.de/display/DFD/Ausgabe+Zeitung+1.0#AusgabeZeitung1.0-Beispielmets:structMapTYPE=%22LOGICAL%22">Die Ausgabe enthält keinen <sch:span class="monotype">mets:mptr</sch:span>, der auf den METS-Datensatz der Ausgabe verlinkt. Dieser Fehler verhindet nicht das Einspielen der Daten in die DDB, entspricht aber nicht den Vorgaben im METS/MODS-Anwendungsprofil für Zeitungen. Weitere Informationen zu diesem Element finden Sie im METS/MODS-Anwendungsprofil für Zeitungen (https://wiki.deutsche-digitale-bibliothek.de/display/DFD/Ausgabe+Zeitung+1.0#AusgabeZeitung1.0-AngabenzurlogischenDokumentenstrukturderAusgabe).</sch:assert>
      </sch:rule>
   </sch:pattern>
   <sch:pattern>
      <sch:rule context="mets:mets/mets:structMap[@TYPE='LOGICAL']//mets:div[@DMDID[tokenize(., ' ') = $work_dmdid]]">
            <!-- 
               Ausgabe enthält mets:mptr zur Ausgabe
             -->
         <sch:report id="structMapLogical_14"
                     role="error"
                     test="mets:mptr"
                     properties="id"
                     see="https://wiki.deutsche-digitale-bibliothek.de/display/DFD/Ausgabe+Zeitung+1.0#AusgabeZeitung1.0-Beispielmets:structMapTYPE=%22LOGICAL%22">Im METS-Datensatz zu der Ausgabe einer Zeitung darf kein <sch:span class="monotype">mets:mptr</sch:span> enhalten sein, der auf eben diesen METS-Datensatz verweist. Ist dies der Fall, wird der <sch:span class="monotype">mets:mptr</sch:span> bei der Transformation der Daten entfernt. Weitere Informationen zu diesem Element finden Sie im METS/MODS-Anwendungsprofil für Zeitungen (https://wiki.deutsche-digitale-bibliothek.de/display/DFD/Ausgabe+Zeitung+1.0#AusgabeZeitung1.0-AngabenzurlogischenDokumentenstrukturderAusgabe).</sch:report>
      </sch:rule>
   </sch:pattern>
   <sch:pattern>
      <sch:rule context="mets:mets/mets:structMap[@TYPE='LOGICAL']//mets:div[@DMDID[tokenize(., ' ') = $work_dmdid]]">
            <!-- 
               Das Attribut DMDID des mets:div der Ausgabe bzw. Beilage fehlt
             -->
         <sch:assert id="structMapLogical_15"
                     role="fatal"
                     test="string-length(./@DMDID) &gt; 0"
                     properties="id"
                     see="https://wiki.deutsche-digitale-bibliothek.de/display/DFD/Ausgabe+Zeitung+1.0#AusgabeZeitung1.0-Beispielmets:structMapTYPE=%22LOGICAL%22">Jede Ausgabe bzw. Beilage muss eine <sch:span class="monotype">mets:dmdSec</sch:span> enthalten, die die bibliographische Beschreibung der Ausgabe bzw. Beilage enthält. Diese <sch:span class="monotype">mets:dmdSec</sch:span> muss durch einen Identifier eindeutig beschrieben werden, der in der <sch:span class="monotype">mets:structMap[@TYPE='LOGICAL']</sch:span> in der <sch:span class="monotype">mets:div</sch:span> mit dem Strukturtyp <sch:span class="monotype">issue</sch:span> bzw. <sch:span class="monotype">additional</sch:span> in dem Attribut <sch:span class="monotype">DMDID</sch:span> steht. Weitere Informationen zu diesem Element finden Sie im METS/MODS-Anwendungsprofil für Zeitungen (https://wiki.deutsche-digitale-bibliothek.de/display/DFD/Ausgabe+Zeitung+1.0#AusgabeZeitung1.0-AngabenzurlogischenDokumentenstrukturderAusgabe).</sch:assert>
      </sch:rule>
   </sch:pattern>
   <sch:pattern>
      <sch:rule context="mets:mets/mets:structMap[@TYPE='LOGICAL']//mets:mptr">
            <!-- 
               Ungültiger Verweis auf externe METS-Datei
             -->
         <sch:assert id="structMapLogical_17"
                     role="fatal"
                     test="matches(./@xlink:href, '^(http|https)://[a-zA-Z0-9\-\.]+\.[a-zA-Z][a-zA-Z]+(:[a-zA-Z0-9]*)?/?([a-zA-Z0-9\-\._\?,/\\\+&amp;%\$#=~:])*$')"
                     properties="id"
                     see="https://wiki.deutsche-digitale-bibliothek.de/display/DFD/structMap">Die <sch:span class="monotype">mets:mptr</sch:span> Elemente in der <sch:span class="monotype">mets:structMap[@TYPE='LOGICAL']</sch:span> müssen im Attribut <sch:span class="monotype">xlink:href</sch:span> eine valide URL einer externen METS-Datei enthalten. Ist dies nicht der Fall können wichtige Informationen daraus nicht geladen werden und der Datensatz wird nicht in die DDB eingespielt.</sch:assert>
      </sch:rule>
   </sch:pattern>
   <sch:pattern>
      <sch:rule context="mets:mets/mets:structMap[@TYPE='LOGICAL']/descendant-or-self::*[mets:div[@DMDID[tokenize(., ' ') = $work_dmdid]]]/mets:div[@DMDID[tokenize(., ' ') != $work_dmdid] or not (@DMDID)]">
            <!-- 
               Die Ebene des primären mets:div im mets:structMap[@TYPE='LOGICAL'] enthält weitere mets:div
             -->
         <sch:report id="structMapLogical_28"
                     role="fatal"
                     test="true()"
                     properties="id"
                     see="https://wiki.deutsche-digitale-bibliothek.de/display/DFD/Ausgabe+Zeitung+1.0#AusgabeZeitung1.0-Beispielmets:structMapTYPE=%22LOGICAL%22">Ein Datensatz muss entweder eine Ausgabe oder eine Beilage beschreiben. Das bedeutet auf der Ebene des primären <sch:span class="monotype">mets:div</sch:span>-Elements im Element <sch:span class="monotype">mets:structMap[@TYPE='LOGICAL']</sch:span> dürfen keine weiteren <sch:span class="monotype">mets:div</sch:span>-Elemente vorhanden sein. Ist dies nicht der Fall, wird der Datensatz nicht in die DDB eingespielt. Weitere Informationen zu diesem Element finden Sie im METS/MODS-Anwendungsprofil für Zeitungen (https://wiki.deutsche-digitale-bibliothek.de/display/DFD/Ausgabe+Zeitung+1.0#AusgabeZeitung1.0-Unterelementezumods:structMap).</sch:report>
      </sch:rule>
   </sch:pattern>
   <sch:pattern>
      <sch:rule context="mets:mets">
            <!-- 
               mets:structMap[@TYPE='PHYSICAL'] fehlt
             -->
         <sch:assert id="structMapPhysical_01"
                     role="fatal"
                     test="mets:structMap[@TYPE='PHYSICAL']"
                     see="https://wiki.deutsche-digitale-bibliothek.de/display/DFD/Ausgabe+Zeitung+1.0#AusgabeZeitung1.0-Beispielmets:structMapTYPE=%22PHYSICAL%22">
            <sch:span class="monotype">mets:structMap[@TYPE='PHYSICAL']</sch:span> ist notwendig, um die Seiten des Dokuments in der richtigen Reihenfolge anzuzeigen. Fehlt diese Information, wird der Datensatz nicht in die DDB eingespielt. Weitere Informationen zu diesem Element finden Sie im METS/MODS-Anwendungsprofil für Zeitungen (https://wiki.deutsche-digitale-bibliothek.de/display/DFD/Ausgabe+Zeitung+1.0#AusgabeZeitung1.0-AngabenzurphysischenDokumentenstrukturderAusgabe).</sch:assert>
      </sch:rule>
      <sch:rule context="mets:mets/mets:structMap[@TYPE='PHYSICAL'][not(mets:div[@TYPE='physSequence'])]">
            <!-- 
               Innerhalb von mets:structMap[@TYPE='PHYSICAL'] fehlt die Beschreibung der obersten Ebene
             -->
         <sch:assert id="structMapPhysical_02"
                     role="fatal"
                     test="mets:div[@TYPE='physSequence']"
                     see="https://wiki.deutsche-digitale-bibliothek.de/display/DFD/Ausgabe+Zeitung+1.0#AusgabeZeitung1.0-Beispielmets:structMapTYPE=%22PHYSICAL%22">
            <sch:span class="monotype">mets:structMap[@TYPE='PHYSICAL']</sch:span> muss auf der obersten Ebene immer eine <sch:span class="monotype">mets:div</sch:span> enthalten, die in dem Attribut <sch:span class="monotype">TYPE</sch:span> den Wert <sch:span class="monotype">physSequence</sch:span> enthält. Ist dies nicht der Fall, wird der Datensatz nicht in die DDB eingespielt. Weitere Informationen zu diesem Element finden Sie im METS/MODS-Anwendungsprofil für Zeitungen (https://wiki.deutsche-digitale-bibliothek.de/display/DFD/Ausgabe+Zeitung+1.0#AusgabeZeitung1.0-AngabenzurphysischenDokumentenstrukturderAusgabe).</sch:assert>
      </sch:rule>
      <sch:rule context="mets:mets/mets:structMap[@TYPE='PHYSICAL']">
            <!-- 
               Innerhalb von mets:structMap[@TYPE='PHYSICAL'] fehlt die Liste der Seiten
             -->
         <sch:assert id="structMapPhysical_03"
                     role="fatal"
                     test="mets:div[@TYPE='physSequence']/mets:div[@TYPE='page']"
                     see="https://wiki.deutsche-digitale-bibliothek.de/display/DFD/Ausgabe+Zeitung+1.0#AusgabeZeitung1.0-Beispielmets:structMapTYPE=%22PHYSICAL%22">
            <sch:span class="monotype">mets:structMap[@TYPE='PHYSICAL']</sch:span> muss mindestens eine <sch:span class="monotype">mets:div</sch:span> enthalten, die in dem Attribut <sch:span class="monotype">TYPE</sch:span> den Wert <sch:span class="monotype">page</sch:span> enthält. Ist dies nicht der Fall, wird der Datensatz nicht in die DDB eingespielt. Weitere Informationen zu diesem Element finden Sie im METS/MODS-Anwendungsprofil für Zeitungen (https://wiki.deutsche-digitale-bibliothek.de/display/DFD/Ausgabe+Zeitung+1.0#AusgabeZeitung1.0-AngabenzurphysischenDokumentenstrukturderAusgabe).</sch:assert>
      </sch:rule>
   </sch:pattern>
   <sch:pattern>
      <sch:rule context="mets:mets/mets:structMap[@TYPE='PHYSICAL']//mets:div">
            <!-- 
               Eindeutiger Identifier fehlt in mets:div in mets:structMap[@TYPE='PHYSICAL']
             -->
         <sch:assert id="structMapPhysical_04"
                     role="fatal"
                     test="count(key('mets_ids', @ID)) = 1 and matches(@ID, '^[\i-[:]][\c-[:]]*$')"
                     properties="id"
                     see="https://wiki.deutsche-digitale-bibliothek.de/display/DFD/Ausgabe+Zeitung+1.0#AusgabeZeitung1.0-Beispielmets:structMapTYPE=%22PHYSICAL%22">Jede <sch:span class="monotype">mets:div</sch:span> innerhalb von <sch:span class="monotype">mets:structMap[@TYPE='PHYSICAL']</sch:span> muss in dem Attribut <sch:span class="monotype">ID</sch:span> einen eindeutigen Identifier enthalten. Der Identifier darf keine ungültigen Zeichen enthalten. Ist dies nicht der Fall, wird der METS-Datensatz nicht in die DDB eingespielt. Weitere Informationen zu diesem Element finden Sie im METS/MODS-Anwendungsprofil für Zeitungen (https://wiki.deutsche-digitale-bibliothek.de/display/DFD/Ausgabe+Zeitung+1.0#AusgabeZeitung1.0-AngabenzurphysischenDokumentenstrukturderAusgabe).</sch:assert>
      </sch:rule>
   </sch:pattern>
   <sch:pattern>
      <sch:rule context="mets:mets/mets:structMap[@TYPE='PHYSICAL']//mets:div[@TYPE='page'][not(@ORDER)]">
            <!-- 
               Attribut order fehlt in mets:div in mets:structMap[@TYPE='PHYSICAL']
             -->
         <sch:assert id="structMapPhysical_05"
                     role="warn"
                     test="@ORDER"
                     properties="id"
                     see="https://wiki.deutsche-digitale-bibliothek.de/display/DFD/Ausgabe+Zeitung+1.0#AusgabeZeitung1.0-Beispielmets:structMapTYPE=%22PHYSICAL%22">Jede <sch:span class="monotype">mets:div</sch:span> innerhalb von <sch:span class="monotype">mets:structMap[@TYPE='PHYSICAL']</sch:span> die das Attribut <sch:span class="monotype">TYPE</sch:span> mit dem Wert <sch:span class="monotype">page</sch:span> enthält, muss auch ein Attribut order enthalten. Das Fehlen des Attributs order verhindert nicht das Einspielen der Daten in die DDB, wir bitten Sie jedoch, den Sachverhalt zu prüfen und die nötigen Korrekturen bis zur nächsten Datenlieferung vorzunehmen. Weitere Informationen zu diesem Element finden Sie im METS/MODS-Anwendungsprofil für Zeitungen (https://wiki.deutsche-digitale-bibliothek.de/display/DFD/Ausgabe+Zeitung+1.0#AusgabeZeitung1.0-AngabenzurphysischenDokumentenstrukturderAusgabe).</sch:assert>
      </sch:rule>
      <sch:rule context="mets:mets/mets:structMap[@TYPE='PHYSICAL']//mets:div[@TYPE='page']">
            <!-- 
               Falscher Attributwert in mets:div in mets:structMap[@TYPE='PHYSICAL']
             -->
         <sch:assert id="structMapPhysical_06"
                     role="warn"
                     test="matches(@ORDER, '^\d+$')"
                     properties="id"
                     see="https://wiki.deutsche-digitale-bibliothek.de/display/DFD/Ausgabe+Zeitung+1.0#AusgabeZeitung1.0-Beispielmets:structMapTYPE=%22PHYSICAL%22">In der <sch:span class="monotype">mets:structMap[@TYPE='PHYSICAL']</sch:span> muss der Wert in dem Attribut <sch:span class="monotype">order</sch:span> innerhalb der <sch:span class="monotype">mets:div[@TYPE='page']</sch:span> immer ein Integer sein.
Ist dies nicht der Fall, verhindert es nicht das Einspielen der Daten in die DDB, wir bitten Sie jedoch, den Sachverhalt zu prüfen und die nötigen Korrekturen bis zur nächsten Datenlieferung vorzunehmen, da es Probleme bei der Anzeige der Seiten im Viewer nach sich ziehen kann. Weitere Informationen zu diesem Element finden Sie im METS/MODS-Anwendungsprofil für Zeitungen (https://wiki.deutsche-digitale-bibliothek.de/display/DFD/Ausgabe+Zeitung+1.0#AusgabeZeitung1.0-AngabenzurphysischenDokumentenstrukturderAusgabe).</sch:assert>
      </sch:rule>
   </sch:pattern>
   <sch:pattern>
      <sch:rule context="mets:mets/mets:structMap[@TYPE='PHYSICAL']//mets:div[@TYPE='page']">
            <!-- 
               Verknüpfung zur mets:fileSec fehlt
             -->
         <sch:assert id="structMapPhysical_07"
                     role="fatal"
                     test="mets:fptr[string-length(@FILEID) &gt; 0]"
                     properties="id"
                     see="https://wiki.deutsche-digitale-bibliothek.de/display/DFD/Ausgabe+Zeitung+1.0#AusgabeZeitung1.0-Beispielmets:structMapTYPE=%22PHYSICAL%22">Jede <sch:span class="monotype">mets:div[@TYPE='page']</sch:span> innerhalb von <sch:span class="monotype">mets:structMap[@TYPE='PHYSICAL']</sch:span> muss das Unterelement <sch:span class="monotype">mets:fptr</sch:span> enthalten, das im Attribut <sch:span class="monotype">FILEID</sch:span> den Identifier enthält, der auf die jeweiligen Bilder in der <sch:span class="monotype">mets:fileSec</sch:span> verlinkt. Ist dies nicht der Fall, wird der METS-Datensatz nicht in die DDB eingespielt. Weitere Informationen zu diesem Element finden Sie im METS/MODS-Anwendungsprofil für Zeitungen (https://wiki.deutsche-digitale-bibliothek.de/display/DFD/Ausgabe+Zeitung+1.0#AusgabeZeitung1.0-AngabenzurphysischenDokumentenstrukturderAusgabe).</sch:assert>
      </sch:rule>
   </sch:pattern>
   <sch:pattern>
      <sch:rule context="mets:mets/mets:structMap[@TYPE='PHYSICAL'][//mets:div[@TYPE='page'][starts-with(@CONTENTIDS, 'urn:')]]//mets:div[@TYPE='page']">
            <!-- 
               Seiten ohne URN
             -->
         <sch:assert id="structMapPhysical_08"
                     role="fatal"
                     test="starts-with(@CONTENTIDS, 'urn:')"
                     properties="id"
                     see="https://wiki.deutsche-digitale-bibliothek.de/display/DFD/Ausgabe+Zeitung+1.0#AusgabeZeitung1.0-Beispielmets:structMapTYPE=%22PHYSICAL%22">Wenn in einem Datensatz URNs auf Seitenebene vergeben werden, muss für jede Seite eine URN vorhanden sein. Das bedeutet, wenn in der <sch:span class="monotype">mets:structMap[@TYPE='PHYSICAL']</sch:span> mindestens ein <sch:span class="monotype">mets:div[@TYPE='page']</sch:span> zusätzlich ein Attribut <sch:span class="monotype">CONTENTIDS</sch:span> mit einer URN enthält, müssen alle <sch:span class="monotype">mets:div[@TYPE='page']</sch:span> ebenfalls ein Attribut <sch:span class="monotype">CONTENTIDS</sch:span> mit einer URN enthalten.
Ist dies nicht der Fall, wird der Datensatz nicht in die DDB eingespielt.</sch:assert>
      </sch:rule>
   </sch:pattern>
   <sch:pattern>
      <sch:rule context="mets:mets">
            <!-- 
               mets:structLink fehlt
             -->
         <sch:assert id="structLink_01"
                     role="fatal"
                     test="mets:structLink"
                     see="https://wiki.deutsche-digitale-bibliothek.de/display/DFD/Ausgabe+Zeitung+1.0#AusgabeZeitung1.0-Beispielmets:structLink">
            <sch:span class="monotype">mets:structLink</sch:span> ist notwendig, um die Ebenen der logischen Struktur mit den dazugehörigen Seiten zu verknüpfen. Fehlt diese Information, wird der Datensatz nicht in die DDB eingespielt. Weitere Informationen zu diesem Element finden Sie im METS/MODS-Anwendungsprofil für Zeitungen (https://wiki.deutsche-digitale-bibliothek.de/display/DFD/Ausgabe+Zeitung+1.0#AusgabeZeitung1.0-Verkn%C3%BCpfungvonlogischerundphysischerStruktur).</sch:assert>
      </sch:rule>
      <sch:rule context="mets:mets/mets:structLink[not(mets:smLink)]">
            <!-- 
               mets:smLink fehlt
             -->
         <sch:assert id="structLink_02"
                     role="fatal"
                     test="mets:smLink"
                     see="https://wiki.deutsche-digitale-bibliothek.de/display/DFD/Ausgabe+Zeitung+1.0#AusgabeZeitung1.0-Beispielmets:structLink">Die Verknüpfung zwischen den logischen Ebenen der <sch:span class="monotype">mets:structMap[@TYPE='LOGICAL']</sch:span> und den dazugehörigen Seiten in der <sch:span class="monotype">mets:structMap[@TYPE='PHYSICAL']</sch:span> erfolgt im <sch:span class="monotype">mets:structLink</sch:span> in den Unterelementen <sch:span class="monotype">mets:smLink</sch:span>. Ist kein <sch:span class="monotype">mets:smLink</sch:span> vorhanden, wird der Datensatz nicht in die DDB eingespielt. Weitere Informationen zu diesem Element finden Sie im METS/MODS-Anwendungsprofil für Zeitungen (https://wiki.deutsche-digitale-bibliothek.de/display/DFD/Ausgabe+Zeitung+1.0#AusgabeZeitung1.0-Verkn%C3%BCpfungvonlogischerundphysischerStruktur).</sch:assert>
      </sch:rule>
      <sch:rule context="mets:mets/mets:structLink/mets:smLink[not(string-length(@xlink:from) &gt; 0 and string-length(@xlink:to) &gt; 0)]">
            <!-- 
               Verknüpfung zwischen der logischen und physischen Struktur fehlt
             -->
         <sch:assert id="structLink_03"
                     role="fatal"
                     test="string-length(@xlink:from) &gt; 0 and string-length(@xlink:to) &gt; 0"
                     see="https://wiki.deutsche-digitale-bibliothek.de/display/DFD/Ausgabe+Zeitung+1.0#AusgabeZeitung1.0-Beispielmets:structLink">Die Verknüpfung zwischen den logischen Ebenen der <sch:span class="monotype">mets:structMap[@TYPE='LOGICAL']</sch:span> und den dazugehörigen Seiten in der <sch:span class="monotype">mets:structMap[@TYPE='PHYSICAL']</sch:span> erfolgt im <sch:span class="monotype">mets:structLink</sch:span> in den Unterelementen <sch:span class="monotype">mets:smLink</sch:span> über die Attribute <sch:span class="monotype">xlink:from</sch:span> und <sch:span class="monotype">xlink:to</sch:span>. Fehlt eines dieser Attribute, wird der Datensatz nicht in die DDB eingespielt. Weitere Informationen zu diesem Element finden Sie im METS/MODS-Anwendungsprofil für Zeitungen (https://wiki.deutsche-digitale-bibliothek.de/display/DFD/Ausgabe+Zeitung+1.0#AusgabeZeitung1.0-Verkn%C3%BCpfungvonlogischerundphysischerStruktur).</sch:assert>
      </sch:rule>
      <sch:rule context="mets:mets/mets:structLink/mets:smLink">
            <!-- 
               Identifier aus mets:structLink fehlt in der mets:structMap[@TYPE='PHYSICAL']
             -->
         <sch:assert id="structLink_04"
                     role="fatal"
                     test="key('structMap_PHYSICAL_ids', @xlink:to)"
                     see="https://wiki.deutsche-digitale-bibliothek.de/display/DFD/Ausgabe+Zeitung+1.0#AusgabeZeitung1.0-Beispielmets:structLink">Die Verknüpfung zwischen den logischen Ebenen der <sch:span class="monotype">mets:structMap[@TYPE='LOGICAL']</sch:span> und den dazugehörigen Seiten in der <sch:span class="monotype">mets:structMap[@TYPE='PHYSICAL']</sch:span> erfolgt im <sch:span class="monotype">mets:structLink</sch:span> in den Unterelementen <sch:span class="monotype">mets:smLink</sch:span> über die Attribute <sch:span class="monotype">xlink:from</sch:span> und <sch:span class="monotype">xlink:to</sch:span>. Dafür muss jeder Identifier, der in einem <sch:span class="monotype">mets:smLink</sch:span> steht einem <sch:span class="monotype">mets:div/@ID</sch:span> in der <sch:span class="monotype">mets:structMap[@TYPE='PHYSICAL']</sch:span> entsprechen. Ist dies nicht der Fall, wird der METS-Datensatz nicht in die DDB eingespielt. Weitere Informationen zu diesem Element finden Sie im METS/MODS-Anwendungsprofil für Zeitungen (https://wiki.deutsche-digitale-bibliothek.de/display/DFD/Ausgabe+Zeitung+1.0#AusgabeZeitung1.0-Verkn%C3%BCpfungvonlogischerundphysischerStruktur).</sch:assert>
      </sch:rule>
   </sch:pattern>
   <sch:pattern>
      <sch:rule context="oai:record/oai:metadata/mets:mets/mets:structLink/mets:smLink[1]">
            <!-- 
               Ungültiger Namensraum für XLink-Attribute von mets:smLink
             -->
         <sch:assert id="structLink_05"
                     role="fatal"
                     test="@*[local-name() = 'from'][namespace-uri() = 'http://www.w3.org/1999/xlink']">Die Attribute <sch:span class="monotype">xlink:from</sch:span> und <sch:span class="monotype">xlink:to</sch:span> des Elements <sch:span class="monotype">mets:smLink</sch:span> verwenden einen ungültigen Namensraum. Der korrekte Namensraum für diese XLink-Attribute ist <sch:span class="monotype">http://www.w3.org/1999/xlink</sch:span>.
Verwenden die Attribute einen ungültigen Namensraum ist eine Verarbeitung des Datensatzes nicht möglich und er wird nicht in die DDB eingespielt.</sch:assert>
      </sch:rule>
   </sch:pattern>
   <sch:pattern>
      <sch:rule context="mets:mets">
            <!-- 
               mets:fileSec fehlt
             -->
         <sch:assert id="fileSec_01"
                     role="fatal"
                     test="mets:fileSec"
                     see="https://wiki.deutsche-digitale-bibliothek.de/display/DFD/Ausgabe+Zeitung+1.0#AusgabeZeitung1.0-Beispielmets:fileSec">Die <sch:span class="monotype">mets:fileSec</sch:span> enthält die Links zu den digitalen Bildern. Fehlt die <sch:span class="monotype">mets:fileSec</sch:span>, wird der Datensatz nicht in die DDB eingespielt. Weitere Informationen zu diesem Element finden Sie im METS/MODS-Anwendungsprofil für Zeitungen (https://wiki.deutsche-digitale-bibliothek.de/display/DFD/Ausgabe+Zeitung+1.0#AusgabeZeitung1.0-InformationenzudendigitalenRepr%C3%A4sentationen).</sch:assert>
      </sch:rule>
      <sch:rule context="mets:mets/mets:fileSec[not(mets:fileGrp[@USE='DEFAULT'])]">
            <!-- 
               mets:fileGrp[@USE='DEFAULT'] fehlt
             -->
         <sch:assert id="fileSec_02"
                     role="fatal"
                     test="mets:fileGrp[@USE='DEFAULT']"
                     see="https://wiki.deutsche-digitale-bibliothek.de/display/DFD/Ausgabe+Zeitung+1.0#AusgabeZeitung1.0-Beispielmets:fileSec">Die <sch:span class="monotype">mets:fileSec</sch:span> enthält die Links zu den digitalen Bildern in unterschiedlichen Auflösungen. Um welche Art von Auflösung es sich dabei handelt, wird über die <sch:span class="monotype">mets:fileGrp</sch:span> angegeben. Jede Auflösung eines Bildes wird daher der entsprechenden <sch:span class="monotype">mets:fileGrp</sch:span> zugeordnet. Eine <sch:span class="monotype">mets:fileSec</sch:span> muss mindestens die <sch:span class="monotype">mets:fileGrp[@USE='DEFAULT']</sch:span> enthalten. Ist dies nicht der Fall, wird der Datensatz nicht in die DDB eingespielt. Weitere Informationen zu diesem Element finden Sie im METS/MODS-Anwendungsprofil für Zeitungen (https://wiki.deutsche-digitale-bibliothek.de/display/DFD/Ausgabe+Zeitung+1.0#AusgabeZeitung1.0-InformationenzudendigitalenRepr%C3%A4sentationen).</sch:assert>
      </sch:rule>
      <sch:rule context="mets:mets/mets:fileSec/mets:fileGrp[@USE='DEFAULT']">
            <!-- 
               mets:file fehlt
             -->
         <sch:assert id="fileSec_03"
                     role="fatal"
                     test="mets:file[mets:FLocat[string-length(@xlink:href) &gt; 0]]"
                     see="https://wiki.deutsche-digitale-bibliothek.de/display/DFD/Ausgabe+Zeitung+1.0#AusgabeZeitung1.0-Beispielmets:fileSec">In der <sch:span class="monotype">mets:fileSec</sch:span> sind innerhalb der <sch:span class="monotype">mets:fileGrp</sch:span> die einzelnen Bilder gelistet. Die <sch:span class="monotype">mets:fileGrp[@USE='DEFAULT']</sch:span> muss mindestens ein <sch:span class="monotype">mets:file</sch:span> enthalten und dieses muss in dem Unterelement <sch:span class="monotype">mets:FLocat</sch:span> das Attribut xlink:href enthalten, in der sich der Link zu dem digitalen Bild befindet. Fehlt <sch:span class="monotype">mets:file</sch:span> mit dem Attribut <sch:span class="monotype">xlink:href</sch:span> im Unterelement <sch:span class="monotype">mets:FLocat</sch:span>, wird der Datensatz nicht in die DDB eingespielt. Weitere Informationen zu diesem Element finden Sie im METS/MODS-Anwendungsprofil für Zeitungen (https://wiki.deutsche-digitale-bibliothek.de/display/DFD/Ausgabe+Zeitung+1.0#AusgabeZeitung1.0-InformationenzudendigitalenRepr%C3%A4sentationen).</sch:assert>
      </sch:rule>
   </sch:pattern>
   <sch:pattern>
      <sch:rule context="mets:mets/mets:fileSec/mets:fileGrp[@USE='DEFAULT']/mets:file">
            <!-- 
               Eindeutiger Identifier fehlt in mets:file
             -->
         <sch:assert id="fileSec_04"
                     role="fatal"
                     test="count(key('mets_ids', @ID)) = 1 and matches(@ID, '^[\i-[:]][\c-[:]]*$')"
                     properties="id"
                     see="https://wiki.deutsche-digitale-bibliothek.de/display/DFD/Ausgabe+Zeitung+1.0#AusgabeZeitung1.0-Beispielmets:fileSec">Jedes <sch:span class="monotype">mets:file</sch:span> in der <sch:span class="monotype">mets:fileSec</sch:span> muss das Attribut <sch:span class="monotype">ID</sch:span> mit einem eindeutigen Identifier enthalten. Der Identifier darf keine ungültigen Zeichen enthalten. Ist dies nicht der Fall, wird der METS-Datensatz nicht in die DDB eingespielt. Weitere Informationen zu diesem Element finden Sie im METS/MODS-Anwendungsprofil für Zeitungen (https://wiki.deutsche-digitale-bibliothek.de/display/DFD/Ausgabe+Zeitung+1.0#AusgabeZeitung1.0-InformationenzudendigitalenRepr%C3%A4sentationen).</sch:assert>
      </sch:rule>
   </sch:pattern>
   <sch:pattern>
      <sch:rule context="mets:mets/mets:fileSec[not(mets:fileGrp[@USE='FULLTEXT'])]">
            <!-- 
               mets:fileGrp[@USE='FULLTEXT'] fehlt
             -->
         <sch:assert id="fileSec_05"
                     role="warn"
                     test="mets:fileGrp[@USE='FULLTEXT']"
                     see="https://wiki.deutsche-digitale-bibliothek.de/display/DFD/Ausgabe+Zeitung+1.0#AusgabeZeitung1.0-Beispielmets:fileSec">In der <sch:span class="monotype">mets:fileSec</sch:span> wird innerhalb der <sch:span class="monotype">mets:fileGrp[@USE='FULLTEXT']</sch:span> auf die Volltexte der einzelnen Seiten verlinkt. Die Bereitstellung von Volltexten ist für alle Zeitungsausgaben im Deutsche Zeitungsportal gewünscht, aber nicht verpflichtend. Die Volltextsuche ist der zentrale Einstieg zu den Inhalten des Zeitungsportals. Die Inhalte von Zeitungen ohne Volltext sind für NutzerInnen schwerer zugänglich. Weitere Informationen zu diesem Element finden Sie im METS/MODS-Anwendungsprofil für Zeitungen (https://wiki.deutsche-digitale-bibliothek.de/display/DFD/Ausgabe+Zeitung+1.0#AusgabeZeitung1.0-InformationenzudendigitalenRepr%C3%A4sentationen).</sch:assert>
      </sch:rule>
      <sch:rule context="mets:mets/mets:fileSec/mets:fileGrp[@USE='FULLTEXT']">
            <!-- 
               mets:file fehlt
             -->
         <sch:assert id="fileSec_06"
                     role="fatal"
                     test="mets:file[mets:FLocat[string-length(@xlink:href) &gt; 0]]"
                     see="https://wiki.deutsche-digitale-bibliothek.de/display/DFD/Ausgabe+Zeitung+1.0#AusgabeZeitung1.0-Beispielmets:fileSec">Die <sch:span class="monotype">mets:fileGrp[@USE='FULLTEXT']</sch:span> muss mindestens ein <sch:span class="monotype">mets:file</sch:span> enthalten. Fehlt <sch:span class="monotype">mets:file</sch:span> mit dem Attribut xlink:href im Unterelement <sch:span class="monotype">mets:FLocat</sch:span>, wird der Datensatz nicht in das Deutsche Zeitungsportal eingespielt. Weitere Informationen zu diesem Element finden Sie im METS/MODS-Anwendungsprofil für Zeitungen (https://wiki.deutsche-digitale-bibliothek.de/display/DFD/Ausgabe+Zeitung+1.0#AusgabeZeitung1.0-InformationenzudendigitalenRepr%C3%A4sentationen).</sch:assert>
      </sch:rule>
   </sch:pattern>
   <sch:pattern>
      <sch:rule context="mets:mets/mets:fileSec/mets:fileGrp[@USE='FULLTEXT']">
            <!-- 
               Fehlendes Attribut MIMETYPE in mets:file in der mets:fileGrp[@USE='FULLTEXT']
             -->
         <sch:report id="fileSec_07"
                     role="error"
                     test="mets:file[not(@MIMETYPE = 'text/xml')]"
                     see="https://wiki.deutsche-digitale-bibliothek.de/display/DFD/Ausgabe+Zeitung+1.0#AusgabeZeitung1.0-Beispielmets:fileSec">In der <sch:span class="monotype">mets:fileGrp[@USE='FULLTEXT']</sch:span> fehlt mindestens einem enthaltenden <sch:span class="monotype">mets:file</sch:span> das Attribut MIMETYPE mit dem Wert <sch:span class="monotype">text/xml</sch:span>. Die <sch:span class="monotype">mets:file</sch:span> in <sch:span class="monotype">mets:fileGrp[@USE='FULLTEXT']</sch:span> müssen in ihrem Unterelement <sch:span class="monotype">mets:FLocat</sch:span> im Attribut <sch:span class="monotype">xlink:href</sch:span> auf eine ALTO-Datei verweisen.
Fehlt das zur entsprechenden Auszeichung benötigte Attribut <sch:span class="monotype">MIMETYPE</sch:span> in <sch:span class="monotype">mets:file</sch:span> oder besitzt es einen anderen Wert als <sch:span class="monotype">text/xml</sch:span>, geht das Zeitungsportal trotzdem davon aus, dass im Unterelement <sch:span class="monotype">mets:FLocat</sch:span> im Attribut <sch:span class="monotype">xlink:href</sch:span> eine ALTO-Datei referenziert wird. Weitere Informationen zu diesem Element finden Sie im METS/MODS-Anwendungsprofil für Zeitungen (https://wiki.deutsche-digitale-bibliothek.de/display/DFD/Ausgabe+Zeitung+1.0#AusgabeZeitung1.0-InformationenzurDatei).</sch:report>
      </sch:rule>
   </sch:pattern>
   <sch:pattern>
      <sch:rule context="mets:mets/mets:fileSec">
            <!-- 
               mets:file ohne Attribut MIMETYPE
             -->
         <sch:report id="fileSec_08"
                     role="warn"
                     test="//mets:file[string-length(@MIMETYPE) = 0]"
                     see="https://wiki.deutsche-digitale-bibliothek.de/display/DFD/Ausgabe+Zeitung+1.0#AusgabeZeitung1.0-Beispielmets:fileSec">Jedes <sch:span class="monotype">mets:file</sch:span> Element im Element <sch:span class="monotype">mets:fileSec</sch:span> muss das Attribut <sch:span class="monotype">MIMETYPE</sch:span> besitzen. Der Datensatz enthält mindestens ein <sch:span class="monotype">mets:file</sch:span> ohne das Attribut <sch:span class="monotype">MIMETYPE</sch:span>. Da dies Auswirkungen auf die Anzeige in der DDB haben kann, bitten Sie den Sachverhalt zu prüfen und die nötigen Korrekturen bis zur nächsten Datenlieferung vorzunehmen. Weitere Informationen zu diesem Element finden Sie im METS/MODS-Anwendungsprofil für Zeitungen (https://wiki.deutsche-digitale-bibliothek.de/display/DFD/Ausgabe+Zeitung+1.0#AusgabeZeitung1.0-InformationenzurDatei).</sch:report>
      </sch:rule>
   </sch:pattern>
   <sch:pattern>
      <sch:rule context="mets:mets/mets:fileSec/mets:fileGrp[@USE=('DEFAULT', 'THUMBS', 'FULLTEXT')]/mets:file">
            <!-- 
               Nicht referenziertes mets:file
             -->
         <sch:assert id="fileSec_09"
                     role="fatal"
                     test="key('structMap_PHYSICAL_fptr_FILEID', @ID)"
                     properties="id"
                     see="https://wiki.deutsche-digitale-bibliothek.de/display/DFD/Ausgabe+Zeitung+1.0#AusgabeZeitung1.0-Beispielmets:fileSec">Jedes <sch:span class="monotype">mets:file</sch:span> Element in einem <sch:span class="monotype">mets:fileGrp</sch:span> Element mit einem der Werte <sch:span class="monotype">DEFAULT</sch:span>, <sch:span class="monotype">THUMBS</sch:span> oder <sch:span class="monotype">FULLTEXT</sch:span> im Attribut <sch:span class="monotype">USE</sch:span> muss von einem <sch:span class="monotype">mets:fptr</sch:span> Element innerhalb des Elements <sch:span class="monotype">mets:structMap[@TYPE='PHYSICAL']</sch:span> über dessen Attribut <sch:span class="monotype">FILEID</sch:span> referenziert sein. Ist dies nicht der Fall, wird der Datensatz nicht in die DDB eingespielt. Weitere Informationen zu diesem Element finden Sie im METS/MODS-Anwendungsprofil für Zeitungen (https://wiki.deutsche-digitale-bibliothek.de/display/DFD/Ausgabe+Zeitung+1.0#AusgabeZeitung1.0-InformationenzurDatei).</sch:assert>
      </sch:rule>
   </sch:pattern>
   <sch:pattern>
      <sch:rule context="mets:mets">
            <!-- 
               Die mets:dmdSec der Ausgabe bzw. Beilage fehlt
             -->
         <sch:assert id="dmdSec_01"
                     role="fatal"
                     test="mets:dmdSec[@ID=$work_dmdid]/mets:mdWrap/mets:xmlData/mods:mods"
                     properties="id"
                     see="https://wiki.deutsche-digitale-bibliothek.de/display/DFD/Ausgabe+Zeitung+1.0#AusgabeZeitung1.0-Beispielmets:structMapTYPE=%22LOGICAL%22">Die <sch:span class="monotype">mets:dmdSec</sch:span> der Ausgabe bzw. Beilage enthält ihre bibliographische Beschreibung. Sie muss mit dem <sch:span class="monotype">mets:div[@TYPE='issue']</sch:span> bzw. <sch:span class="monotype">mets:div[@TYPE='additional']</sch:span> in der <sch:span class="monotype">mets:structMap[@TYPE='LOGICAL']</sch:span> verlinkt sein.
Ein Datensatz darf nur ein <sch:span class="monotype">mets:div[@TYPE='issue']</sch:span> oder ein <sch:span class="monotype">mets:div[@TYPE='additional']</sch:span> in der <sch:span class="monotype">mets:structMap[@TYPE='LOGICAL']</sch:span> enthalten. Sind diese Voraussetzungen nicht erfüllt, wird der Datensatz nicht in das Zeitungsportal eingespielt. Weitere Informationen zu diesem Element finden Sie im METS/MODS-Anwendungsprofil für Zeitungen (https://wiki.deutsche-digitale-bibliothek.de/display/DFD/Ausgabe+Zeitung+1.0#AusgabeZeitung1.0-Unterelementezumods:structMap).</sch:assert>
      </sch:rule>
      <sch:rule context="mets:dmdSec[not(@ID=$work_dmdid)]">
            <!-- 
               Unterelemente fehlen in mets:dmdSec
             -->
         <sch:assert id="dmdSec_02"
                     role="error"
                     test="mets:mdWrap/mets:xmlData/mods:mods"
                     properties="id"
                     see="https://wiki.deutsche-digitale-bibliothek.de/display/DFD/dmdSec">Jede <sch:span class="monotype">mets:dmdSec</sch:span> muss das Unterelement <sch:span class="monotype">mets:mdWrap</sch:span> mit dem Unterelement <sch:span class="monotype">mets:xmlData</sch:span> enthalten. Und <sch:span class="monotype">mets:xmlData</sch:span> muss das Unterelement <sch:span class="monotype">mods:mods</sch:span> enthalten. Ist dies nicht der Fall, wird die <sch:span class="monotype">mets:dmdSec</sch:span> bei der Bereinigung der Daten entfernt.</sch:assert>
      </sch:rule>
   </sch:pattern>
   <sch:pattern>
      <sch:rule context="mets:dmdSec">
            <!-- 
               Kein eindeutiger Identifier für mets:dmdSec
             -->
         <sch:assert id="dmdSec_03"
                     role="fatal"
                     test="count(key('mets_ids', @ID)) = 1 and matches(@ID, '^[\i-[:]][\c-[:]]*$')"
                     see="https://wiki.deutsche-digitale-bibliothek.de/display/DFD/dmdSec">Jede <sch:span class="monotype">mets:dmdSec</sch:span> muss das Attribut <sch:span class="monotype">ID</sch:span> mit einem eindeutigen Identifier enthalten. Der Identifier darf keine ungültigen Zeichen enthalten. Ist dies nicht der Fall, wird der METS-Datensatz nicht in die DDB eingespielt.</sch:assert>
      </sch:rule>
   </sch:pattern>
   <sch:pattern>
      <sch:rule context="mets:dmdSec">
            <!-- 
               Identifier der mets:dmdSec fehlt in der mets:structMap[@TYPE='LOGICAL']
             -->
         <sch:assert id="dmdSec_04"
                     role="error"
                     test="key('structMap_LOGICAL_dmdids', @ID)"
                     properties="id"
                     see="https://wiki.deutsche-digitale-bibliothek.de/display/DFD/dmdSec">Jede <sch:span class="monotype">mets:dmdSec</sch:span> muss über ihren Identifier mit der dazugehörigen logischen Ebene verknüpft werden. Der Identifier der <sch:span class="monotype">mets:dmdSec</sch:span> muss darum in der <sch:span class="monotype">mets:div</sch:span>, die die logische Ebene beschreibt in dem Attribut <sch:span class="monotype">DMDID</sch:span> vorkommen. Ist dies nicht der Fall, wird die <sch:span class="monotype">mets:dmdSec</sch:span> bei der Bereinigung der Daten entfernt.</sch:assert>
      </sch:rule>
   </sch:pattern>
   <sch:pattern>
      <sch:rule context="mets:mets">
            <!-- 
               mets:amdSec fehlt
             -->
         <sch:assert id="amdSec_01"
                     role="fatal"
                     test="mets:amdSec"
                     see="https://wiki.deutsche-digitale-bibliothek.de/display/DFD/Ausgabe+Zeitung+1.0#AusgabeZeitung1.0-Beispielmets:amdSec">Die <sch:span class="monotype">mets:amdSec</sch:span> enthält die administrativen Metadaten zum Digitalisat. Innerhalb eines METS-Datensatzes muss eine <sch:span class="monotype">mets:amdSec</sch:span> für das primäre logische Strukturelement geben. Ist dies nicht der Fall, wird der Datensatz nicht in die DDB eingespielt. Weitere Informationen zu diesem Element finden Sie im METS/MODS-Anwendungsprofil für Zeitungen (https://wiki.deutsche-digitale-bibliothek.de/display/DFD/Ausgabe+Zeitung+1.0#AusgabeZeitung1.0-AdministrativeMetadaten).</sch:assert>
      </sch:rule>
      <sch:rule context="mets:amdSec">
            <!-- 
               Kein eindeutiger Identifier für mets:amdSec
             -->
         <sch:assert id="amdSec_02"
                     role="warn"
                     test="count(key('mets_ids', @ID)) = 1 and matches(@ID, '^[\i-[:]][\c-[:]]*$')"
                     properties="id"
                     see="https://wiki.deutsche-digitale-bibliothek.de/display/DFD/Ausgabe+Zeitung+1.0#AusgabeZeitung1.0-Beispielmets:amdSec">Jede <sch:span class="monotype">mets:amdSec</sch:span> muss das Attribut <sch:span class="monotype">ID</sch:span> mit einem eindeutigen Identifier enthalten. Der Identifier darf keine ungültigen Zeichen enthalten. Das Fehlen der <sch:span class="monotype">ID</sch:span> verhindert nicht das Einspielen der Daten in die DDB, wir bitten Sie jedoch, den Sachverhalt zu prüfen und die nötigen Korrekturen bis zur nächsten Datenlieferung vorzunehmen. Weitere Informationen zu diesem Element finden Sie im METS/MODS-Anwendungsprofil für Zeitungen (https://wiki.deutsche-digitale-bibliothek.de/display/DFD/Ausgabe+Zeitung+1.0#AusgabeZeitung1.0-AdministrativeMetadaten).</sch:assert>
      </sch:rule>
   </sch:pattern>
   <sch:pattern>
      <sch:rule context="mets:mets[mets:amdSec[@ID=$work_amdid]][not( mets:amdSec[@ID=$work_amdid]/mets:rightsMD/mets:mdWrap/mets:xmlData/dv:rights/dv:license or mets:dmdSec[@ID=$work_dmdid]/mets:mdWrap/mets:xmlData/mods:mods/mods:accessCondition[@type='use and reproduction'] )] | mets:mets[mets:amdSec[not(@ID=$work_amdid)][1]][not( mets:amdSec[not(@ID=$work_amdid)][1]/mets:rightsMD/mets:mdWrap/mets:xmlData/dv:rights/dv:license or mets:dmdSec[@ID=$work_dmdid]/mets:mdWrap/mets:xmlData/mods:mods/mods:accessCondition[@type='use and reproduction'] )]">
            <!-- 
               Rechteangabe fehlt
             -->
         <sch:assert id="amdSec_04"
                     role="error"
                     test="mets:amdSec[@ID=$work_amdid]/mets:rightsMD/mets:mdWrap/mets:xmlData/dv:rights/dv:license or mets:amdSec[not(@ID=$work_amdid)][1]/mets:rightsMD/mets:mdWrap/mets:xmlData/dv:rights/dv:license or mets:dmdSec[@ID=$work_dmdid]/mets:mdWrap/mets:xmlData/mods:mods/mods:accessCondition[@type='use and reproduction']"
                     see="https://wiki.deutsche-digitale-bibliothek.de/display/DFD/Ausgabe+Zeitung+1.0#AusgabeZeitung1.0-Beispielmets:amdSec">Jeder Datensatz muss Informationen über die Rechte an den Digitalisaten enthalten, damit er in die DDB eingespielt werden kann. Der Link zu einer Lizenz bzw. einem Rightsstatement steht in der <sch:span class="monotype">mets:rightsMD</sch:span> in dem Element <sch:span class="monotype">dv:license</sch:span>, das ein Unterelement von <sch:span class="monotype">dv:rights</sch:span>, das wiederum ein Unterelement von <sch:span class="monotype">mets:xmlData</sch:span>, das wiederum ein Unterelement von <sch:span class="monotype">mets:mdWrap</sch:span> ist.
Ist die Verwendung von <sch:span class="monotype">dv:license</sch:span> nicht möglich, muss die Lizenz bzw. das Rightsstatement in <sch:span class="monotype">mods:accessCondition[@type='use and reproduction']</sch:span> stehen.
Ist keines von beiden der Fall, wird nach Rücksprache mit dem Datengeber für alle Datensätze bei der Bereinigung der Daten eine Standard-Lizenz gesetzt. Weitere Informationen zu diesem Element finden Sie im METS/MODS-Anwendungsprofil für Zeitungen (https://wiki.deutsche-digitale-bibliothek.de/display/DFD/Ausgabe+Zeitung+1.0#AusgabeZeitung1.0-AdministrativeMetadaten).</sch:assert>
      </sch:rule>
      <sch:rule context="mets:mets[mets:amdSec[@ID=$work_amdid] or mets:amdSec[not(@ID=$work_amdid)][1]]">
            <!-- 
               Rechteangabe weicht von den Vorgaben ab
             -->
         <sch:assert id="amdSec_05"
                     role="error"
                     test="key('license_uris', mets:amdSec[@ID=$work_amdid]/mets:rightsMD/mets:mdWrap/mets:xmlData/dv:rights/dv:license[1], $license_uris) or key('license_uris', mets:amdSec[not(@ID=$work_amdid)][1]/mets:rightsMD/mets:mdWrap/mets:xmlData/dv:rights/dv:license[1], $license_uris) or key('license_uris', mets:dmdSec[@ID=$work_dmdid]/mets:mdWrap/mets:xmlData/mods:mods/mods:accessCondition[@type='use and reproduction'][string-length(@*[local-name()='href'][1]) &gt; 0][1]/@*[local-name()='href'][1], $license_uris) or key('mets_ap_dv_license_values', mets:amdSec[@ID=$work_amdid]/mets:rightsMD/mets:mdWrap/mets:xmlData/dv:rights/dv:license[1], $mets_ap_dv_license_values) or key('mets_ap_dv_license_values', mets:amdSec[not(@ID=$work_amdid)][1]/mets:rightsMD/mets:mdWrap/mets:xmlData/dv:rights/dv:license[1], $mets_ap_dv_license_values)"
                     see="https://wiki.deutsche-digitale-bibliothek.de/display/DFD/Ausgabe+Zeitung+1.0#AusgabeZeitung1.0-Beispielmets:amdSec">Die von der DDB akzeptierten Rechteangaben entsprechen der von Europeana veröffentlichten Liste der Rights Statements (https://pro.europeana.eu/page/available-rights-statements). Entsprechen die Rechteangaben in den Daten nicht den in dieser Liste erlaubten URIs, werden sie nach Rücksprache mit den Datengebern bei der Bereinigung der Daten in eine der dort genannten Lizenzen bzw. Rechteangaben konvertiert.</sch:assert>
      </sch:rule>
   </sch:pattern>
   <sch:pattern>
      <sch:rule context="mets:amdSec/mets:digiprovMD">
            <!-- 
               Link zum Objekt beim Datengeber fehlt
             -->
         <sch:assert id="amdSec_06"
                     role="error"
                     test="mets:mdWrap/mets:xmlData/dv:links/dv:reference[matches(text()[1], '^http[s]?://.+')] or mets:mdWrap/mets:xmlData/dv:links/dv:presentation[matches(text()[1], '^http[s]?://.+')]"
                     properties="id"
                     see="https://wiki.deutsche-digitale-bibliothek.de/display/DFD/Ausgabe+Zeitung+1.0#AusgabeZeitung1.0-Beispielmets:amdSec">In der <sch:span class="monotype">mets:amdSec</sch:span> des primären logischen Strukturelements enthält das Unterelement <sch:span class="monotype">mets:digiprovMD</sch:span> einen Link zu dem Digitalisat beim Datenpartner. Dieser Link muss in Form eines http- oder https-URI in <sch:span class="monotype">dv:presentation</sch:span> oder <sch:span class="monotype">dv:reference</sch:span> vorhanden sein.
Beide Elemente sind Unterelemente von <sch:span class="monotype">dv:links</sch:span>, das ein Unterelement von <sch:span class="monotype">mets:xmlData</sch:span> ist, welches ein Unterelement von <sch:span class="monotype">mets:mdWrap</sch:span> ist welches ein Unterelement von <sch:span class="monotype">mets:digiprovMD</sch:span> ist.
Ist weder <sch:span class="monotype">dv:presentation</sch:span> noch <sch:span class="monotype">dv:reference</sch:span> vorhanden bzw. enthält keines dieser Elemente einen http- bzw. https-URI, wird <sch:span class="monotype">mets:digiprovMD</sch:span> bei der Transformation der Daten entfernt.</sch:assert>
      </sch:rule>
   </sch:pattern>
   <sch:pattern>
      <sch:rule context="mets:mets[ ( key('license_uris', mets:amdSec[@ID=$work_amdid]/mets:rightsMD/mets:mdWrap/mets:xmlData/dv:rights/dv:license[1], $license_uris) and not(mets:amdSec[@ID=$work_amdid]/mets:rightsMD/mets:mdWrap/mets:xmlData/dv:rights/dv:license[1][contains(text(), 'creativecommons.org/publicdomain/mark/1.0/')]) ) or ( key('license_uris', mets:amdSec[not(@ID=$work_amdid)][1]/mets:rightsMD/mets:mdWrap/mets:xmlData/dv:rights/dv:license[1], $license_uris) and not(mets:amdSec[not(@ID=$work_amdid)][1]/mets:rightsMD/mets:mdWrap/mets:xmlData/dv:rights/dv:license[1][contains(text(), 'creativecommons.org/publicdomain/mark/1.0/')]) ) or ( key('license_uris', mets:dmdSec[@ID=$work_dmdid]/mets:mdWrap/mets:xmlData/mods:mods/mods:accessCondition[@type='use and reproduction'][string-length(@*[local-name()='href'][1]) &gt; 0][1]/@*[local-name()='href'][1], $license_uris) and not(mets:dmdSec[@ID=$work_dmdid]/mets:mdWrap/mets:xmlData/mods:mods/mods:accessCondition[@type='use and reproduction'][string-length(@*[local-name()='href'][1]) &gt; 0][1]/@*[local-name()='href'][1][contains(., 'creativecommons.org/publicdomain/mark/1.0/')]) ) or ( key('mets_ap_dv_license_values', mets:amdSec[@ID=$work_amdid]/mets:rightsMD/mets:mdWrap/mets:xmlData/dv:rights/dv:license[1], $mets_ap_dv_license_values) and not(mets:amdSec[@ID=$work_amdid]/mets:rightsMD/mets:mdWrap/mets:xmlData/dv:rights/dv:license[1][text()='pdm']) ) or ( key('mets_ap_dv_license_values', mets:amdSec[not(@ID=$work_amdid)][1]/mets:rightsMD/mets:mdWrap/mets:xmlData/dv:rights/dv:license[1], $mets_ap_dv_license_values) and not(mets:amdSec[not(@ID=$work_amdid)][1]/mets:rightsMD/mets:mdWrap/mets:xmlData/dv:rights/dv:license[1][text()='pdm']) ) ]/mets:dmdSec[@ID=$work_dmdid]/mets:mdWrap/mets:xmlData/mods:mods">
            <!-- 
               Hinweis auf möglicherweise ungültige Rechteangabe
             -->
         <sch:report id="amdSec_13"
                     role="caution"
                     test="max( ( mods:originInfo[not(mods:edition[text()='[Electronic ed.]'])]/mods:dateIssued[matches(text()[1], '^((-\d\d\d\d+)|(\d\d\d\d))(-\d\d)?(-\d\d)?$')]/number(tokenize(text(), '-')[1]), mods:originInfo[not(mods:edition[text()='[Electronic ed.]'])]/mods:dateCreated[matches(text()[1], '^((-\d\d\d\d+)|(\d\d\d\d))(-\d\d)?(-\d\d)?$')]/number(tokenize(text(), '-')[1]) ) ) &lt; 1910"
                     properties="dmd_id">Die Lizenzen aus dem Lizenzkorb der DDB können nur für Materialien genutzt werden, an denen Urheberrechte nach § 2 UrhG oder Lichtbildrechte nach § 72 UrhG bestehen.
Der Scan oder die Fotografie von typischen Bibliotheksbeständen (Bücher, Zeitschriften und andere Schriftwerke) lässt solche Rechte in Fällen, in denen eine möglichst originalgetreue Reproduktion erzeugt werden soll, nicht entstehen. Daher kommt bei Scans / Fotos gemeinfreier Vorlagen in aller Regel nur der ebenfalls im "Lizenzkorb" enthaltene Rechtehinweis "Public Domain Mark" in Frage.
Dies ist nur ein Hinweis auf die Rechtslage in Verbindung mit der Bitte um Prüfung, ob Sie – dem entsprechend – in den Rechteangaben zu Ihren Digitalisaten den richtigen Rechtehinweis vergeben haben. Die Rechteangaben bleiben jedoch – wie im Kooperationsvertrag geregelt – in der Verantwortung Ihrer Einrichtung.</sch:report>
      </sch:rule>
   </sch:pattern>
   <sch:pattern>
      <sch:rule context="mets:mets[not( mets:dmdSec[@ID=$work_dmdid]/mets:mdWrap/mets:xmlData/mods:mods/mods:accessCondition[@type='use and reproduction'][key('license_uris', replace(text(), 'deed\.[a-z][a-z]$', ''), $license_uris)] or mets:dmdSec[@ID=$work_dmdid]/mets:mdWrap/mets:xmlData/mods:mods/mods:accessCondition[@type='use and reproduction'][key('license_uris', replace(@*[local-name()='href'][1], 'deed\.[a-z][a-z]$', ''), $license_uris)] )]">
            <!-- 
               Widersprüchliche Rechteangaben in dv:license
             -->
         <sch:report id="amdSec_14"
                     role="fatal"
                     test="count(distinct-values(( mets:amdSec[@ID=$work_amdid]/mets:rightsMD/mets:mdWrap/mets:xmlData/dv:rights/dv:license[key('license_uris', replace(text(), 'deed\.[a-z][a-z]$', ''), $license_uris)]/replace(replace(text(), '^https', 'http'), 'deed\.[a-z][a-z]$', ''), mets:amdSec[not(@ID=$work_amdid)][1]/mets:rightsMD/mets:mdWrap/mets:xmlData/dv:rights/dv:license[key('license_uris', replace(text(), 'deed\.[a-z][a-z]$', ''), $license_uris)]/replace(replace(text(), '^https', 'http'), 'deed\.[a-z][a-z]$', ''), key('mets_ap_dv_license_values', mets:amdSec[@ID=$work_amdid]/mets:rightsMD/mets:mdWrap/mets:xmlData/dv:rights/dv:license[key('mets_ap_dv_license_values', text(), $mets_ap_dv_license_values)]/text(), $mets_ap_dv_license_values)/@to ))) &gt; 1"
                     properties="dmd_id">Datensätze müssen eindeutige Rechteangaben zu den Digitalisaten enthalten. Der Datensatz enthält im Element <sch:span class="monotype">dv:license</sch:span> widersprüchliche Rechteinformationen aus dem Lizenzkorb der DDB und wird daher nicht in die DDB eingespielt.</sch:report>
      </sch:rule>
      <sch:rule context="mets:mets[ mets:dmdSec[@ID=$work_dmdid]/mets:mdWrap/mets:xmlData/mods:mods[mods:accessCondition[@type='use and reproduction'][ key('license_uris', replace(text(), 'deed\.[a-z][a-z]$', ''), $license_uris) or key('license_uris', replace(@*[local-name()='href'][1], 'deed\.[a-z][a-z]$', ''), $license_uris) ][2]] ]">
            <!-- 
               Widersprüchliche Rechteangaben in mods:accessCondition[@type='use and reproduction']
             -->
         <sch:report id="amdSec_16"
                     role="fatal"
                     test="count(distinct-values(( mets:dmdSec[@ID=$work_dmdid]/mets:mdWrap/mets:xmlData/mods:mods/mods:accessCondition[@type='use and reproduction'][key('license_uris', replace(text(), 'deed\.[a-z][a-z]$', ''), $license_uris)]/replace(replace(text(), '^https', 'http'), 'deed\.[a-z][a-z]$', ''), mets:dmdSec[@ID=$work_dmdid]/mets:mdWrap/mets:xmlData/mods:mods/mods:accessCondition[@type='use and reproduction'][key('license_uris', replace(@*[local-name()='href'][1], 'deed\.[a-z][a-z]$', ''), $license_uris)]/replace(replace(@*[local-name()='href'][1], '^https', 'http'), 'deed\.[a-z][a-z]$', '') ))) &gt; 1"
                     properties="dmd_id">Datensätze müssen eindeutige Rechteangaben zu den Digitalisaten enthalten. Der Datensatz enthält im Element <sch:span class="monotype">mods:accessCondition[@type='use and reproduction']</sch:span> widersprüchliche Rechteinformationen aus dem Lizenzkorb der DDB und wird daher nicht in die DDB eingespielt.</sch:report>
      </sch:rule>
      <sch:rule context="mets:mets">
            <!-- 
               Widersprüchliche Rechteangaben in dv:license
             -->
         <sch:report id="amdSec_17"
                     role="error"
                     test="count(distinct-values(( mets:amdSec[@ID=$work_amdid]/mets:rightsMD/mets:mdWrap/mets:xmlData/dv:rights/dv:license[key('license_uris', replace(text(), 'deed\.[a-z][a-z]$', ''), $license_uris)]/replace(replace(text(), '^https', 'http'), 'deed\.[a-z][a-z]$', ''), mets:amdSec[not(@ID=$work_amdid)][1]/mets:rightsMD/mets:mdWrap/mets:xmlData/dv:rights/dv:license[key('license_uris', replace(text(), 'deed\.[a-z][a-z]$', ''), $license_uris)]/replace(replace(text(), '^https', 'http'), 'deed\.[a-z][a-z]$', ''), mets:dmdSec[@ID=$work_dmdid]/mets:mdWrap/mets:xmlData/mods:mods/mods:accessCondition[@type='use and reproduction'][key('license_uris', replace(text(), 'deed\.[a-z][a-z]$', ''), $license_uris)]/replace(replace(text(), '^https', 'http'), 'deed\.[a-z][a-z]$', ''), mets:dmdSec[@ID=$work_dmdid]/mets:mdWrap/mets:xmlData/mods:mods/mods:accessCondition[@type='use and reproduction'][key('license_uris', replace(@*[local-name()='href'][1], 'deed\.[a-z][a-z]$', ''), $license_uris)]/replace(replace(@*[local-name()='href'][1], '^https', 'http'), 'deed\.[a-z][a-z]$', ''), key('mets_ap_dv_license_values', mets:amdSec[@ID=$work_amdid]/mets:rightsMD/mets:mdWrap/mets:xmlData/dv:rights/dv:license[key('mets_ap_dv_license_values', text(), $mets_ap_dv_license_values)]/text(), $mets_ap_dv_license_values)/@to ))) &gt; 1"
                     properties="dmd_id">Datensätze müssen eindeutige Rechteangaben zu den Digitalisaten enthalten. Der Datensatz enthält in den Elementen <sch:span class="monotype">mods:accessCondition[@type='use and reproduction']</sch:span> und <sch:span class="monotype">dv:license</sch:span> widersprüchliche Rechteinformationen aus dem Lizenzkorb der DDB.
Bei der Transformation der Daten übernimmt die DDB in diesem Fall die Rechteangabe aus <sch:span class="monotype">mods:accessCondition[@type='use and reproduction']</sch:span>. Bitte beachten Sie darüber hinaus, dass die DDB die codierten CC-Lizenz-Werte aus dem METS-AP für <sch:span class="monotype">dv:license</sch:span> als Version 4.0 und den Wert <sch:span class="monotype">reserved</sch:span> als "Urheberrechtsschutz nicht bewertet" (http://rightsstatements.org/vocab/CNE/1.0/) (Europeana Rightstatement "CNE") interpretiert.</sch:report>
      </sch:rule>
   </sch:pattern>
</sch:schema>
