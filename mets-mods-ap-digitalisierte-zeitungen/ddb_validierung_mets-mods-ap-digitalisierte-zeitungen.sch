<?xml version="1.0" encoding="UTF-8"?>
<sch:schema xmlns:sch="http://purl.oclc.org/dsdl/schematron"
            xmlns:xs="http://www.w3.org/2001/XMLSchema"
            xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
            schemaVersion="v2026-10-15T08:13:20"
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
         <license_uri>http://rightsstatements.org/vocab/UND/1.0/</license_uri>
         <license_uri>https://rightsstatements.org/vocab/UND/1.0/</license_uri>
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
               Leeres MODS-Element
             -->
         <sch:assert id="all_01"
                     role="warn"
                     test="string-length(normalize-space(text()[1])) &gt; 0 or element()"
                     properties="dmd_id">Jedes MODS-Element muss entweder mindestens ein Unterelement oder Text enthalten. Leere MODS-Elemente verhindern nicht das Einspielen Ihrer Daten in das Zeitungsportal, können aber auf Probleme beim Erzeugen des Datensatzes und damit verbundene Informationsverluste hinweisen.</sch:assert>
      </sch:rule>
   </sch:pattern>
   <sch:pattern>
      <sch:rule context="mods:*[mods:*]">
            <!-- 
               MODS-Element enthält Unterelement und Text
             -->
         <sch:report id="all_02"
                     role="error"
                     test="matches(string-join(text(), ''), '\w')"
                     properties="dmd_id">MODS-Elemente, die Unterelemente enthalten, dürfen keinen Text enthalten. Enthält ein MODS-Element mit mindestens einem Unterelement ebenfalls Text, wird der Text bei der Transformation des Datensatzes entfernt.</sch:report>
      </sch:rule>
   </sch:pattern>
   <sch:pattern>
      <sch:rule context="mods:mods/mods:*">
            <!-- 
               Ungültige Elemente in der obersten MODS-Ebene
             -->
         <sch:assert id="all_03"
                     role="fatal"
                     test="./local-name() = ( 'titleInfo', 'name', 'typeOfResource', 'genre', 'originInfo', 'language', 'physicalDescription', 'abstract', 'tableOfContents', 'targetAudience', 'note', 'subject', 'classification', 'relatedItem', 'identifier', 'location', 'accessCondition', 'part', 'extension', 'recordInfo' )"
                     properties="dmd_id local_name">Der Datensatz verwendet Elemente in der obersten MODS-Ebene, die dort nicht zulässig sind. Da diese zu Problemen in der Verarbeitung des Datensatzes führen können, wird der Datensatz nicht in das Zeitungsportal eingespielt.
Eine Liste der zulässigen MODS-Elemente auf der obersten Ebene finden sie in den MODS User Guidelines (https://www.loc.gov/standards/mods/userguide/generalapp.html#top_level).</sch:assert>
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
                     properties="dmd_id">Das Attribut <sch:span class="monotype">valueURI</sch:span> muss immer einen URL enthalten. Enthält es keinen URL, wird <sch:span class="monotype">valueURI</sch:span> bei der Transformation des Datensatzes entfernt.</sch:assert>
      </sch:rule>
   </sch:pattern>
   <sch:pattern>
      <sch:rule context="mets:xmlData/mods:mods/mods:*//mods:mods">
            <!-- 
               mods:mods enthält mods:mods
             -->
         <sch:report id="all_05"
                     role="error"
                     test=".[not(./ancestor::mods:extension)]"
                     properties="dmd_id">Der Datensatz enthält innerhalb des MODS-Wurzelelements <sch:span class="monotype">mods:mods</sch:span> im Element <sch:span class="monotype">mets:dmdSec</sch:span> weitere <sch:span class="monotype">mods:mods</sch:span>-Elemente. Diese können zu Problemen in der Verarbeitung des Datensatzes führen und werden daher bei der Transformation des Datensatzes entfernt. </sch:report>
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
                     properties="dmd_id">Der Datensatz enthält <sch:span class="monotype">valueURI</sch:span> Attribute mit einem ungültigen GND-URI. Diese werden bei der Transformation des Datensatzes entfernt.</sch:assert>
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
Verwenden die METS-Elemente einen ungültigen Namensraum, ist eine Verarbeitung des Datensatzes nicht möglich und er wird nicht in das Zeitungsportal eingespielt.</sch:assert>
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
Verwenden die MODS-Elemente einen ungültigen Namensraum, ist eine Verarbeitung des Datensatzes nicht möglich und er wird nicht in das Zeitungsportal eingespielt.</sch:assert>
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
Verwenden die DFG-Viewer-Elemente einen ungültigen Namensraum, ist eine Verarbeitung des Datensatzes nicht möglich und er wird nicht in das Zeitungsportal eingespielt.</sch:assert>
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
                     see="https://deutsche-digitale-bibliothek.atlassian.net/wiki/spaces/DFD/pages/48103956/mods+originInfo">Es muss mindestens ein <sch:span class="monotype">mods:originInfo[@eventType='publication']</sch:span> vorhanden sein. Ist dies nicht der Fall, kann die Ausgabe/Beilage nicht in das Zeitungsportal übernommen werden.
Weitere Informationen zu diesem Element und Attribut finden Sie im DDB-METS/MODS-Anwendungsprofil auf der Seite mods:originInfo (https://deutsche-digitale-bibliothek.atlassian.net/wiki/x/FQveAg).</sch:assert>
      </sch:rule>
      <sch:rule context="mets:dmdSec[@ID=$work_dmdid]/mets:mdWrap/mets:xmlData/mods:mods/mods:originInfo[@eventType='publication'][not(mods:dateIssued)]">
            <!-- 
               mods:dateIssued mit dem Erscheinungsdatum der Ausgabe/Beilage fehlt
             -->
         <sch:assert id="originInfo_08"
                     role="fatal"
                     test="mods:dateIssued"
                     properties="dmd_id"
                     see="https://deutsche-digitale-bibliothek.atlassian.net/wiki/spaces/DFD/pages/48103956/mods+originInfo">Es muss ein <sch:span class="monotype">mods:dateIssued</sch:span> in <sch:span class="monotype">mods:originInfo</sch:span> vorhanden sein. Ist dies nicht der Fall, kann die Ausgabe/Beilage nicht in das Zeitungsportal übernommen werden.
Weitere Informationen zu diesen Elementen finden Sie im DDB-METS/MODS-Anwendungsprofil auf der Seite mods:originInfo (https://deutsche-digitale-bibliothek.atlassian.net/wiki/spaces/DFD/pages/48106261/mods+originInfo#%3Cmods%3AdateIssued%3E).</sch:assert>
      </sch:rule>
      <sch:rule context="mets:dmdSec[@ID=$work_dmdid]/mets:mdWrap/mets:xmlData/mods:mods/mods:originInfo[@eventType='publication'][mods:dateIssued[2]]">
            <!-- 
               Die Erscheinungsangabe in mods:dateIssued ist mehrfach vorhanden
             -->
         <sch:report id="originInfo_09"
                     role="error"
                     test="mods:dateIssued[2]"
                     properties="dmd_id"
                     see="https://deutsche-digitale-bibliothek.atlassian.net/wiki/spaces/DFD/pages/48103956/mods+originInfo">
            <sch:span class="monotype">mods:dateIssued</sch:span> darf innerhalb von <sch:span class="monotype">mods:originInfo</sch:span> nicht wiederholt werden. Ist dies der Fall, wird bei der Transformation der Daten die erste Datumsangabe übernommen, alle anderen werden entfernt.
Weitere Informationen zu diesen Elementen finden Sie im DDB-METS/MODS-Anwendungsprofil auf der Seite mods:originInfo (https://deutsche-digitale-bibliothek.atlassian.net/wiki/x/FQveAg).</sch:report>
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
                     see="https://deutsche-digitale-bibliothek.atlassian.net/wiki/spaces/DFD/pages/48103956/mods+originInfo">Der Wert in <sch:span class="monotype">mods:dateIssued</sch:span> muss einem Tagesdatum nach dem ISO 8601-Standard entsprechen. Ist dies nicht der Fall, kann die Ausgabe/Beilage nicht dem richtigen Datum im Kalender des Zeitungsportals zugeordnet werden und kann daher nicht in das Zeitungsportal übernommen werden.
Weitere Informationen zu diesem Attribut finden Sie im DDB-METS/MODS-Anwendungsprofil auf der Seite mods:originInfo (https://deutsche-digitale-bibliothek.atlassian.net/wiki/x/FQveAg).</sch:assert>
      </sch:rule>
      <sch:rule context="mets:dmdSec[@ID=$work_dmdid]/mets:mdWrap/mets:xmlData/mods:mods/mods:originInfo[@eventType='publication']/mods:dateIssued[not(text()[1] castable as xs:date)]">
            <!-- 
               Der Wert in mods:dateIssued entspricht nicht dem ISO 8601-Standard
             -->
         <sch:assert id="originInfo_14"
                     role="fatal"
                     test="text()[1] castable as xs:date"
                     properties="dmd_id"
                     see="https://deutsche-digitale-bibliothek.atlassian.net/wiki/spaces/DFD/pages/48103956/mods+originInfo">Das angegebene Erscheinungsdatum der Ausgabe/Beilage enthält einen ungültigen ISO 8601-Wert. Die Ausgabe/Beilage kann daher nicht ins Zeitungsportal übernommen werden.
Weitere Informationen zu diesem Attribut finden Sie im DDB-METS/MODS-Anwendungsprofil auf der Seite mods:originInfo (https://deutsche-digitale-bibliothek.atlassian.net/wiki/x/FQveAg).</sch:assert>
      </sch:rule>
      <sch:rule context="mets:dmdSec[@ID=$work_dmdid]/mets:mdWrap/mets:xmlData/mods:mods/mods:originInfo[@eventType='publication']/mods:dateIssued[not(matches(text()[1], '^((1[5-9]\d\d)|(2[012]\d\d))-((0\d)|(1[012]))-(([012])\d|3([01]))$'))]">
            <!-- 
               Der Wert in mods:dateIssued liegt außerhalb des erwarteten Zeitraums
             -->
         <sch:assert id="originInfo_11"
                     role="fatal"
                     test="matches(text()[1], '^((1[5-9]\d\d)|(2[012]\d\d))-((0\d)|(1[012]))-(([012])\d|3([01]))$')"
                     properties="dmd_id"
                     see="https://deutsche-digitale-bibliothek.atlassian.net/wiki/spaces/DFD/pages/48103956/mods+originInfo">Der Wert in <sch:span class="monotype">mods:dateIssued</sch:span> liegt außerhalb des erwarteten Zeitraums (ab 1500) oder besitzt ungültige Monats- bzw. Tagesangaben. Die Ausgabe/Beilage kann daher nicht ins Zeitungsportal übernommen werden, da dies dort zu Fehldarstellungen führt.
Weitere Informationen zu diesem Attribut finden Sie im DDB-METS/MODS-Anwendungsprofil auf der Seite mods:originInfo (https://deutsche-digitale-bibliothek.atlassian.net/wiki/x/FQveAg).</sch:assert>
      </sch:rule>
      <sch:rule context="mets:dmdSec[@ID=$work_dmdid]/mets:mdWrap/mets:xmlData/mods:mods/mods:originInfo[@eventType='publication']/mods:dateIssued[ number(substring-before(text(), '-')) &gt; $current_year ]">
            <!-- 
               Das Erscheinungsdatum der Ausgabe/Beilage in mods:dateIssued liegt in der Zukunft
             -->
         <sch:report id="originInfo_13"
                     role="fatal"
                     test="number(substring-before(text(), '-')) &gt; $current_year"
                     properties="dmd_id"
                     see="https://deutsche-digitale-bibliothek.atlassian.net/wiki/spaces/DFD/pages/48103956/mods+originInfo">Das angegebene Erscheinungsdatum der Ausgabe/Beilage liegt in der Zukunft. Die Ausgabe/Beilage kann daher nicht ins Zeitungsportal übernommen werden.
Weitere Informationen zu diesem Attribut finden Sie im DDB-METS/MODS-Anwendungsprofil auf der Seite mods:originInfo (https://deutsche-digitale-bibliothek.atlassian.net/wiki/x/FQveAg).</sch:report>
      </sch:rule>
      <sch:rule context="mets:dmdSec[@ID=$work_dmdid]/mets:mdWrap/mets:xmlData/mods:mods/mods:originInfo[@eventType='publication']/mods:dateIssued">
         <sch:let name="year" value="number(substring-before(text(), '-'))"/>
         <!-- 
               Das Erscheinungsdatum der Ausgabe/Beilage in mods:dateIssued liegt auffällig kurz zurück
             -->
         <sch:report id="originInfo_12"
                     role="warn"
                     test="$year &gt;= 1960"
                     properties="dmd_id"
                     see="https://deutsche-digitale-bibliothek.atlassian.net/wiki/spaces/DFD/pages/48103956/mods+originInfo">Das angegebene Erscheinungsdatum der Ausgabe/Beilage ist 1960 oder später. Auf Grund des geringen Alters der Ausgabe/Beilage und geltender urheberrechtlicher Beschränkungen bitten wir Sie, zu prüfen, ob diese Ausgabe/Beilage bereits frei zugänglich ist.
Ist dies der Fall, besteht von Ihrer Seite kein Handlungsbedarf. Sollten die betroffenen Ausgaben/Beilagen aber noch nicht an das Zeitungsportal geliefert werden, informieren Sie bitte die Fachstelle Bibliothek.
Weitere Informationen zu diesem Attribut finden Sie im DDB-METS/MODS-Anwendungsprofil auf der Seite mods:originInfo (https://deutsche-digitale-bibliothek.atlassian.net/wiki/x/FQveAg).</sch:report>
      </sch:rule>
   </sch:pattern>
   <sch:pattern>
      <sch:rule context="mets:xmlData/mods:mods/mods:language/mods:languageTerm[string-length(text()) &gt; 0]">
            <!-- 
               Ungültiger Wert in mods:languageTerm
             -->
         <sch:assert id="language_02"
                     role="error"
                     test="key('iso639-1_codes', text()[1], $iso639-1_codes) or key('iso639-2_codes', text()[1], $iso639-2_codes)"
                     properties="dmd_id text"
                     see="https://deutsche-digitale-bibliothek.atlassian.net/wiki/x/FwLeAg">Das Element <sch:span class="monotype">mods:languageTerm</sch:span> im Element <sch:span class="monotype">mods:language</sch:span> muss einen ISO 639-2b (https://id.loc.gov/vocabulary/iso639-2)-konformen Wert enthalten.
Bitte beachten Sie, dass wiederholte Sprachangaben innerhalb von <sch:span class="monotype">mods:language</sch:span> bzw. im Wert von <sch:span class="monotype">mods:languageTerm</sch:span> nicht zulässig sind. Verwenden Sie für jede Sprachangabe jeweils ein <sch:span class="monotype">mods:language</sch:span> mit <sch:span class="monotype">mods:languageTerm</sch:span>.
Enthält <sch:span class="monotype">mods:language</sch:span> kein <sch:span class="monotype">mods:languageTerm</sch:span> mit einem ISO 639-2b (https://id.loc.gov/vocabulary/iso639-2)-konformen Wert, wird <sch:span class="monotype">mods:language</sch:span> bei der Transformation des Datensatzes entfernt.
Weitere Informationen zu diesem Element finden Sie im DDB-METS/MODS-Anwendungsprofil auf der Seite mods:language (https://deutsche-digitale-bibliothek.atlassian.net/wiki/x/9wLeAg).</sch:assert>
      </sch:rule>
   </sch:pattern>
   <sch:pattern>
      <sch:rule context="mets:dmdSec[@ID=$work_dmdid]/mets:mdWrap/mets:xmlData/mods:mods">
            <!-- 
               Fehlende Sprachangabe in mods:languageTerm
             -->
         <sch:assert id="language_03"
                     role="error"
                     test="mods:language/mods:languageTerm"
                     properties="dmd_id"
                     see="https://deutsche-digitale-bibliothek.atlassian.net/wiki/x/FwLeAg">Das Element <sch:span class="monotype">mods:languageTerm</sch:span> im Element <sch:span class="monotype">mods:language</sch:span> muss eine Sprachangabe beinhalten, wenn es sich bei der Ressource überwiegend um Text handelt. Dabei muss es einen ISO 639-2b (https://id.loc.gov/vocabulary/iso639-2)-konformen Wert enthalten. Fehlt die Angabe der Sprache bzw. entspricht die Sprachangabe nicht ISO 639-2b (https://id.loc.gov/vocabulary/iso639-2), kann die Sprachfacette im Zeitungsportal für den Datensatz nicht gefüllt werden.
Weitere Informationen zu diesem Element finden Sie im DDB-METS/MODS-Anwendungsprofil auf der Seite mods:language (https://deutsche-digitale-bibliothek.atlassian.net/wiki/x/9wLeAg).</sch:assert>
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
                     see="https://deutsche-digitale-bibliothek.atlassian.net/wiki/spaces/DFD/pages/48105904/mods+relatedItem">Ausgaben/Beilagen von Zeitungen werden im Zeitungsportal über den ZDB-Identifier in <sch:span class="monotype">mods:relatedItem[@type='host']</sch:span> mit der Aufnahme aus der ZDB verknüpft. Fehlt der ZDB-Identifier in <sch:span class="monotype">mods:relatedItem[@type='host']</sch:span>, wird er bei der Transformation der Daten aus der METS-Datei der Gesamtaufnahme in die Ausgabe/Beilage übernommen. Enthält auch die Gesamtaufnahme keinen <sch:span class="monotype">mods:identifier[@type='zdb']</sch:span>, so kann die Ausgabe/Beilage nicht in das Zeitungsportal eingespielt werden.
Weitere Informationen zu diesen Elementen finden Sie im DDB-METS/MODS-Anwendungsprofil auf den Seiten mods:relatedItem (https://deutsche-digitale-bibliothek.atlassian.net/wiki/x/gA3eAg) und mods:identifier (https://deutsche-digitale-bibliothek.atlassian.net/wiki/x/vg-eAg).</sch:assert>
      </sch:rule>
      <sch:rule context="mets:mets/mets:dmdSec[@ID=$work_dmdid]/mets:mdWrap/mets:xmlData/mods:mods/mods:relatedItem[@type='host'][mods:identifier[@type='zdb']]">
            <!-- 
               Wiederholung von mods:identifier[@type='zdb']
             -->
         <sch:report id="relatedItem_10"
                     role="error"
                     test="mods:identifier[@type='zdb'][2]"
                     properties="dmd_id"
                     see="https://deutsche-digitale-bibliothek.atlassian.net/wiki/spaces/DFD/pages/48104267/mods+identifier">Innerhalb von <sch:span class="monotype">mods:relatedItem[@type='host']</sch:span> darf <sch:span class="monotype">mods:identifier[@type='zdb']</sch:span> nicht wiederholt werden. Ist mehr als ein <sch:span class="monotype">mods:identifier[@type='zdb']</sch:span> in <sch:span class="monotype">mods:relatedItem[@type='host']</sch:span> vorhanden, wird das erste Vorkommen bei der Transformation der Daten übernommen und alle weiteren Vorkommen entfernt.
Weitere Informationen zu diesen Elementen finden Sie im DDB-METS/MODS-Anwendungsprofil auf den Seiten mods:relatedItem (https://deutsche-digitale-bibliothek.atlassian.net/wiki/x/gA3eAg) und mods:identifier (https://deutsche-digitale-bibliothek.atlassian.net/wiki/x/vg-eAg).</sch:report>
      </sch:rule>
      <sch:rule context="mets:dmdSec[@ID=$work_dmdid]/mets:mdWrap/mets:xmlData/mods:mods">
            <!-- 
               mods:identifier[@type='zdb'] fehlt in mods:relatedItem[@type='host']
             -->
         <sch:assert id="relatedItem_11"
                     role="error"
                     test="mods:relatedItem[@type='host']/mods:identifier[@type='zdb']"
                     properties="dmd_id"
                     see="https://deutsche-digitale-bibliothek.atlassian.net/wiki/spaces/DFD/pages/48104267/mods+identifier">Ausgaben/Beilagen von Zeitungen werden im Zeitungsportal über den ZDB-Identifier der digitalen Ausgabe/Beilage im Element <sch:span class="monotype">mods:identifier[@type='zdb']</sch:span> in <sch:span class="monotype">mods:relatedItem[@type='host']</sch:span> mit der Aufnahme aus der ZDB verknüpft. Fehlt der ZDB-Identifier in <sch:span class="monotype">mods:relatedItem[@type='host']</sch:span>, wird er bei der Transformation der Daten aus der METS-Datei der Gesamtaufnahme in die Ausgabe/Beilage übernommen.
Weitere Informationen zu diesen Elementen finden Sie im DDB-METS/MODS-Anwendungsprofil auf den Seiten mods:relatedItem (https://deutsche-digitale-bibliothek.atlassian.net/wiki/x/gA3eAg) und mods:identifier (https://deutsche-digitale-bibliothek.atlassian.net/wiki/x/vg-eAg).</sch:assert>
      </sch:rule>
   </sch:pattern>
   <sch:pattern>
      <sch:rule context="mets:dmdSec[@ID=$work_dmdid]/mets:mdWrap/mets:xmlData/mods:mods">
            <!-- 
               mods:titleInfo/mods:title fehlt in mods:relatedItem[@type='host']
             -->
         <sch:assert id="relatedItem_09"
                     role="error"
                     test="mods:relatedItem[@type='host']/mods:titleInfo[not(@type)]/mods:title[string-length(text()) &gt; 0]"
                     properties="dmd_id"
                     see="https://deutsche-digitale-bibliothek.atlassian.net/wiki/spaces/DFD/pages/48105899/mods+titleInfo">Das Element <sch:span class="monotype">mods:relatedItem[@type='host']</sch:span> mit den Informationen zur Zeitung muss einen Titel in <sch:span class="monotype">mods:titleInfo/mods:title</sch:span> enthalten. Fehlt der Titel der Zeitung, wird er bei der Transformation der Daten aus der ZDB-Aufnahme der Online-Ausgabe übernommen.
Weitere Informationen zu diesem Element finden Sie im DDB-METS/MODS-Anwendungsprofil auf der Seite mods:relatedItem (https://deutsche-digitale-bibliothek.atlassian.net/wiki/spaces/DFD/pages/48106880/mods+relatedItem#%3Cmods%3AtitleInfo%3E).</sch:assert>
      </sch:rule>
   </sch:pattern>
   <sch:pattern>
      <sch:rule context="mets:dmdSec[@ID=$work_dmdid]/mets:mdWrap/mets:xmlData/mods:mods/mods:relatedItem[@type='host']/mods:identifier[@type='zdb'][not(matches(text()[1], '^\d\d?\d?\d?\d?\d?\d?\d?\d?\d?-?[0-9X]$'))] | mets:dmdSec[@ID=$work_dmdid]/mets:mdWrap/mets:xmlData/mods:mods/mods:relatedItem[@type='host']/mods:relatedItem[@type='original']/mods:identifier[@type='zdb'][not(matches(text()[1], '^\d\d?\d?\d?\d?\d?\d?\d?\d?\d?-?[0-9X]$'))]">
            <!-- 
               ZDB-ID in mods:identifier ist nicht valide
             -->
         <sch:assert id="identifier_03"
                     role="fatal"
                     test="matches(text()[1], '^\d\d?\d?\d?\d?\d?\d?\d?\d?\d?-?[0-9X]$')"
                     properties="dmd_id"
                     see="https://deutsche-digitale-bibliothek.atlassian.net/wiki/spaces/DFD/pages/48104267/mods+identifier">Die ZDB-ID der Zeitung in <sch:span class="monotype">mods:identifier</sch:span> darf nur aus maximal 10 Zahlen, optional gefolgt von einem Bindestrich und einer weiteren Zahl bzw. einem <sch:span class="monotype">X</sch:span>, bestehen. Entspricht die ZDB-ID nicht diesen Vorgaben, wird der Datensatz nicht in das Zeitungsportal eingespielt.
Weitere Informationen zu diesem Element finden Sie im DDB-METS/MODS-Anwendungsprofil auf der Seite mods:identifier (https://deutsche-digitale-bibliothek.atlassian.net/wiki/x/vg-eAg).</sch:assert>
      </sch:rule>
      <sch:rule context="mets:dmdSec[@ID=$work_dmdid]/mets:mdWrap/mets:xmlData/mods:mods/mods:relatedItem[@type='host']/mods:identifier[@type='zdb'] | mets:dmdSec[@ID=$work_dmdid]/mets:mdWrap/mets:xmlData/mods:mods/mods:relatedItem[@type='host']/mods:relatedItem[@type='original']/mods:identifier[@type='zdb']">
            <!-- 
               Bindestrich in der ZDB-ID in mods:identifier fehlt
             -->
         <sch:assert id="identifier_04"
                     role="error"
                     test="matches(text()[1], '^\d\d?\d?\d?\d?\d?\d?\d?\d?\d?-[0-9X]$')"
                     properties="dmd_id"
                     see="https://deutsche-digitale-bibliothek.atlassian.net/wiki/spaces/DFD/pages/48104267/mods+identifier">Die ZDB-ID der Zeitung enthält an der letzten Stelle eine Prüfziffer, die durch einen Bindestrich eingeleitet werden kann. Dieser fehlt in <sch:span class="monotype">mods:identifier</sch:span>. Da der Bindestrich für das Einspielen in das Zeitungsportal erforderlich ist, wird er bei der Transformation der Daten ergänzt.
Weitere Informationen zu diesem Element finden Sie im DDB-METS/MODS-Anwendungsprofil auf der Seite mods:identifier (https://deutsche-digitale-bibliothek.atlassian.net/wiki/x/vg-eAg).</sch:assert>
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
                     see="https://wiki.dnb.de/spaces/DINIAGKIM/pages/217533671/MODS+Empfehlung+3.0">Wenn für die Angabe der Lizenz das Element <sch:span class="monotype">mods:accessCondition</sch:span> verwendet wird, so sollte dies den Empfehlungen für Rechteinformationen in Metadaten der DINI AG KIM (https://wiki.dnb.de/pages/viewpage.action?pageId=148607377) entsprechend erfolgen.
Weitere Informationen zu diesem Element finden Sie im DDB-METS/MODS-Anwendungsprofil auf der Seite mods:accessCondition (https://deutsche-digitale-bibliothek.atlassian.net/wiki/x/zQ3eAg).</sch:assert>
      </sch:rule>
   </sch:pattern>
   <sch:pattern>
      <sch:rule context="mods:accessCondition[@type='use and reproduction']/@*[local-name()= 'href']">
            <!-- 
               Falscher Namensraum für das Attribut href in mods:accessCondition
             -->
         <sch:assert id="accessCondition_02"
                     role="error"
                     test="namespace-uri() = 'http://www.w3.org/1999/xlink'"
                     properties="dmd_id"
                     see="https://wiki.dnb.de/spaces/DINIAGKIM/pages/217533671/MODS+Empfehlung+3.0">Das Attribut <sch:span class="monotype">href</sch:span> im Element <sch:span class="monotype">mods:accessCondition</sch:span> muss zum Namensraum <sch:span class="monotype">http://www.w3.org/1999/xlink</sch:span> gehören.
Ist dies nicht der Fall, wird bei der Transformation das erste Vorkommen des Attributs <sch:span class="monotype">href</sch:span> in den Namensraum <sch:span class="monotype">http://www.w3.org/1999/xlink</sch:span> gesetzt und entsprechend ausgewertet.
Weitere Informationen zu diesem Element finden Sie im DDB-METS/MODS-Anwendungsprofil auf der Seite mods:accessCondition (https://deutsche-digitale-bibliothek.atlassian.net/wiki/x/zQ3eAg).</sch:assert>
      </sch:rule>
   </sch:pattern>
   <sch:pattern>
      <sch:rule context="mets:dmdSec[@ID=$work_dmdid]/mets:mdWrap/mets:xmlData/mods:mods[mods:part[2]]">
            <!-- 
               mods:part ist mehrfach vorhanden
             -->
         <sch:report id="part_06"
                     role="fatal"
                     test="mods:part[2]"
                     properties="dmd_id"
                     see="https://deutsche-digitale-bibliothek.atlassian.net/wiki/x/cwLeAg">Das Element <sch:span class="monotype">mods:part</sch:span> ist in Ausgaben/Beilagen von Zeitungen nicht wiederholbar. Gibt es in einem Datensatz mehr als ein <sch:span class="monotype">mods:part</sch:span>, ist die Sortierung der Ausgabe/Beilage nicht mehr eindeutig und er kann daher nicht in das Zeitungsportal eingespielt werden.
Weitere Informationen zu diesem Element und seinem Kontext finden Sie im DDB-METS/MODS-Anwendungsprofil auf der Seite mods:part (https://deutsche-digitale-bibliothek.atlassian.net/wiki/x/0Q3eAg).</sch:report>
      </sch:rule>
      <sch:rule context="mets:dmdSec[@ID=$work_dmdid]/mets:mdWrap/mets:xmlData/mods:mods[not(mods:part/mods:detail/mods:number)]">
            <!-- 
               mods:part fehlt
             -->
         <sch:assert id="part_07"
                     role="error"
                     test="mods:part/mods:detail/mods:number"
                     properties="dmd_id"
                     see="https://deutsche-digitale-bibliothek.atlassian.net/wiki/x/cwLeAg">Ausgaben/Beilagen von Zeitungen müssen Informationen zur Zählung enthalten, die im Zeitungsportal für die Anzeige der Ausgabe/Beilage verwendet werden. Diese Information muss in <sch:span class="monotype">mods:part</sch:span> zur Verfügung gestellt werden.
Die textliche Angabe erfolgt im Unterelement <sch:span class="monotype">mods:number</sch:span> des Unterelements <sch:span class="monotype">mods:detail</sch:span> und die maschienenlesbare Form (als Integer) im Attribut <sch:span class="monotype">order</sch:span> von <sch:span class="monotype">mods:part</sch:span>.
Fehlt <sch:span class="monotype">mods:part</sch:span>, so wird der Inhalt des Elements <sch:span class="monotype">mods:number</sch:span> bei der Transformation der Daten aus dem Erscheinungsdatum der Ausgabe/Beilage (s. <sch:span class="monotype">mods:dateIssued</sch:span>) generiert.
Weitere Informationen zu diesem Element und seinem Kontext finden Sie im DDB-METS/MODS-Anwendungsprofil auf der Seite mods:part (https://deutsche-digitale-bibliothek.atlassian.net/wiki/x/0Q3eAg).</sch:assert>
      </sch:rule>
      <sch:rule context="mets:dmdSec[@ID=$work_dmdid]/mets:mdWrap/mets:xmlData/mods:mods[not(mods:part[@order])]/mods:part">
            <!-- 
               Das Attribut order fehlt in mods:part
             -->
         <sch:assert id="part_08"
                     role="error"
                     test="./@order"
                     properties="dmd_id"
                     see="https://deutsche-digitale-bibliothek.atlassian.net/wiki/x/cwLeAg">Um Ausgaben/Beilagen von Zeitungen in der richtigen Reihenfolge anzeigen zu können, muss die Zählung auch in maschinenlesbarer Form vorliegen. Dafür muss <sch:span class="monotype">mods:part</sch:span> das Attribut <sch:span class="monotype">order</sch:span> enthalten. Der Wert in diesem Attribut muss dem Erscheinungsdatum in Form eines Integer (also <sch:span class="monotype">YYYYMMDD</sch:span>, ggf. mit angehängter zweistelliger Zählung) entsprechen.
Fehlt das Attribut order in <sch:span class="monotype">mods:part</sch:span>, so wird der Inhalt des Attributs bei der Transformation der Daten aus dem Erscheinungsdatum der Ausgabe/Beilage (s. <sch:span class="monotype">mods:dateIssued</sch:span>) generiert.
Weitere Informationen zu diesem Element und seinem Kontext finden Sie im DDB-METS/MODS-Anwendungsprofil auf der Seite mods:part (https://deutsche-digitale-bibliothek.atlassian.net/wiki/x/0Q3eAg).</sch:assert>
      </sch:rule>
      <sch:rule context="mets:dmdSec[@ID=$work_dmdid]/mets:mdWrap/mets:xmlData/mods:mods/mods:part[not(matches(@order, '^\d+$'))]">
            <!-- 
               Ungültiger Wert im Attribut order in mods:part
             -->
         <sch:assert id="part_09"
                     role="error"
                     test="matches(./@order, '^\d+$')"
                     properties="dmd_id"
                     see="https://deutsche-digitale-bibliothek.atlassian.net/wiki/x/cwLeAg">Um Ausgaben/Beilagen von Zeitungen in der richtigen Reihenfolge anzeigen zu können, muss die Zählung auch in maschinenlesbarer Form vorliegen. Der Wert in diesem Attribut muss dem Erscheinungsdatum in Form eines Integer (also <sch:span class="monotype">YYYYMMDD</sch:span>, ggf. mit angehängter zweistelliger Zählung) entsprechen.
Das Fehlen der maschinenlesbaren Form der Zählung in <sch:span class="monotype">order</sch:span> verhindert nicht das Einspielen des Datensatzes in das Zeitungsportal, kann aber zu Darstellungsproblemen führen. Wir bitten Sie daher den Sachverhalt zu prüfen und ggf. die nötigen Korrekturen bis zur nächsten Datenlieferung vorzunehmen.
Weitere Informationen zu diesem Element und seinem Kontext finden Sie im DDB-METS/MODS-Anwendungsprofil auf der Seite mods:part (https://deutsche-digitale-bibliothek.atlassian.net/wiki/x/0Q3eAg).</sch:assert>
      </sch:rule>
      <sch:rule context="mets:dmdSec[@ID=$work_dmdid]/mets:mdWrap/mets:xmlData/mods:mods/mods:part[not(matches(@order, '^[12]\d\d\d[01]\d[0123]\d(\d\d)?$'))]">
            <!-- 
               Abweichende Struktur der Ausgabenzählung im Attribut order in mods:part
             -->
         <sch:assert id="part_10"
                     role="warn"
                     test="matches(./@order, '^[12]\d\d\d[01]\d[0123]\d(\d\d)?$')"
                     properties="dmd_id"
                     see="https://deutsche-digitale-bibliothek.atlassian.net/wiki/x/cwLeAg">Um Ausgaben/Beilagen von Zeitungen in der richtigen Reihenfolge anzeigen zu können, muss die Zählung auch in maschinenlesbarer Form vorliegen. Der vorliegende Wert als Integer erfüllt die Anforderungen, weicht aber in der Struktur von der Empfehlung im Anwendungsprofil (<sch:span class="monotype">YYYYMMTT</sch:span> ggf. mit angehängter zweistelliger Zählung) ab. Wir empfehlen die empfohlene Struktur zu übernehmen, um Sortierfehler im Zeitungsportal zu vermeiden.
Weitere Informationen zu diesem Element und seinem Kontext finden Sie im DDB-METS/MODS-Anwendungsprofil auf der Seite mods:part (https://deutsche-digitale-bibliothek.atlassian.net/wiki/x/0Q3eAg).</sch:assert>
      </sch:rule>
   </sch:pattern>
   <sch:pattern>
      <sch:rule context="mets:dmdSec[@ID=$work_dmdid]/mets:mdWrap/mets:xmlData/mods:mods[not(mods:part[2])]/mods:part">
            <!-- 
               Das Attribut type oder das Unterelement mods:number fehlt in mods:detail bzw. enthält einen ungültigen Wert
             -->
         <sch:assert id="part_11"
                     role="error"
                     test="mods:detail[@type = 'issue'][mods:number[string-length(text()[1]) &gt; 0]]"
                     properties="dmd_id"
                     see="https://deutsche-digitale-bibliothek.atlassian.net/wiki/x/cwLeAg">In <sch:span class="monotype">mods:part</sch:span> von Ausgaben/Beilagen von Zeitungen muss das Unterelement <sch:span class="monotype">mods:detail</sch:span> ein Attribut <sch:span class="monotype">type</sch:span> mit dem Wert <sch:span class="monotype">issue</sch:span> enthalten. Darüber hinaus muss das Element <sch:span class="monotype">mods:detail</sch:span> ein Unterelement <sch:span class="monotype">mods:number</sch:span> enthalten.
Fehlen diese Angaben, wird bei der Transformation der Daten in dem vorhandenen <sch:span class="monotype">mods:part</sch:span> ein <sch:span class="monotype">mods:detail</sch:span> mit dem Attribut <sch:span class="monotype">type</sch:span> mit dem Wert <sch:span class="monotype">issue</sch:span> erzeugt und der Wert für das Unterelement <sch:span class="monotype">mods:number</sch:span> aus dem Erscheinungsdatum übernommen (s. <sch:span class="monotype">mods:dateIssued</sch:span>).
Weitere Informationen zu diesem Element und seinem Kontext finden Sie im DDB-METS/MODS-Anwendungsprofil auf der Seite mods:part (https://deutsche-digitale-bibliothek.atlassian.net/wiki/x/0Q3eAg).</sch:assert>
      </sch:rule>
   </sch:pattern>
   <sch:pattern>
      <sch:rule context="mets:dmdSec[@ID=$work_dmdid]/mets:mdWrap/mets:xmlData/mods:mods">
            <!-- 
               mods:recordIdentifier fehlt im primären mets:dmdSec
             -->
         <sch:assert id="recordInfo_01"
                     role="fatal"
                     test="mods:recordInfo/mods:recordIdentifier"
                     properties="dmd_id"
                     see="https://deutsche-digitale-bibliothek.atlassian.net/wiki/x/1gveAg">Das primäre <sch:span class="monotype">mets:dmdSec</sch:span>-Element muss das Element <sch:span class="monotype">mods:recordInfo</sch:span> mit dem Unterelement <sch:span class="monotype">mods:recordIdentifier</sch:span> enthalten. <sch:span class="monotype">mods:recordIdentifier</sch:span> muss darüber hinaus das Attribut <sch:span class="monotype">source</sch:span> enthalten, um eindeutig identifizierbar zu sein.
Fehlt <sch:span class="monotype">mods:recordIdentifier</sch:span> mit dem Attribut <sch:span class="monotype">source</sch:span>, wird der Datensatz nicht in das Zeitungsportal eingespielt.
Weitere Informationen zu diesem Element finden Sie im DDB-METS/MODS-Anwendungsprofil auf der Seite mods:recordInfo (https://deutsche-digitale-bibliothek.atlassian.net/wiki/x/eAjeAg).</sch:assert>
      </sch:rule>
   </sch:pattern>
   <sch:pattern>
      <sch:rule context="mets:xmlData/mods:mods/mods:recordInfo/mods:recordIdentifier">
            <!-- 
               Das Attribut source fehlt in mods:recordIdentifier
             -->
         <sch:assert id="recordInfo_02"
                     role="fatal"
                     test="string-length(normalize-space(@source)) &gt; 0"
                     properties="dmd_id"
                     see="https://deutsche-digitale-bibliothek.atlassian.net/wiki/x/1gveAg">Das Element <sch:span class="monotype">mods:recordIdentifier</sch:span> im Element <sch:span class="monotype">mods:recordInfo</sch:span> muss das Attribut <sch:span class="monotype">source</sch:span> enthalten, damit der Wert in <sch:span class="monotype">mods:recordIdentifier</sch:span> eindeutig identifizierbar ist.
Fehlt <sch:span class="monotype">source</sch:span> in <sch:span class="monotype">mods:recordIdentifier</sch:span>, wird der Datensatz nicht in das Zeitungsportal eingespielt.
Weitere Informationen zu diesem Attribut finden Sie im DDB-METS/MODS-Anwendungsprofil auf der Seite mods:recordInfo (https://deutsche-digitale-bibliothek.atlassian.net/wiki/x/eAjeAg).</sch:assert>
      </sch:rule>
   </sch:pattern>
   <sch:pattern>
      <sch:rule context="mets:xmlData/mods:mods/mods:recordInfo">
            <!-- 
               mods:recordIdentifier ist in mods:recordInfo mehrfach vorhanden
             -->
         <sch:report id="recordInfo_03"
                     role="fatal"
                     test="mods:recordIdentifier[2]"
                     properties="dmd_id"
                     see="https://deutsche-digitale-bibliothek.atlassian.net/wiki/x/1gveAg">Das Element <sch:span class="monotype">mods:recordInfo</sch:span> darf das Element <sch:span class="monotype">mods:recordIdentifier</sch:span> nur einmal enthalten.
Enthält <sch:span class="monotype">mods:recordInfo</sch:span> mehr als ein <sch:span class="monotype">mods:recordIdentifier</sch:span>, teilen Sie uns bitte mit, welches <sch:span class="monotype">mods:recordIdentifier</sch:span> in Abhängigkeit des Wertes im Attribut <sch:span class="monotype">source</sch:span> bei der Transformation des Datensatzes erhalten bleibt. Alle anderen Vorkommen von <sch:span class="monotype">mods:recordIdentifier</sch:span> werden entfernt.
Weitere Informationen zu diesem Element finden Sie im DDB-METS/MODS-Anwendungsprofil auf der Seite mods:recordInfo (https://deutsche-digitale-bibliothek.atlassian.net/wiki/x/eAjeAg).</sch:report>
      </sch:rule>
   </sch:pattern>
   <sch:pattern>
      <sch:rule context="mets:dmdSec[@ID=$work_dmdid]/mets:mdWrap/mets:xmlData/mods:mods[count(distinct-values(mods:recordInfo/mods:recordIdentifier[@source]/@source)) = 1]/mods:recordInfo[1]/mods:recordIdentifier[1]">
            <!-- 
               Ungültiger Wert in mods:recordIdentifier für den DDB-Identifier
             -->
         <sch:assert id="recordInfo_04"
                     role="fatal"
                     test="matches(text()[1], '^[a-zA-Z_0-9:\-.!]+$')"
                     properties="dmd_id"
                     see="https://deutsche-digitale-bibliothek.atlassian.net/wiki/x/1gveAg">Der Wert im für den DDB-Identifier relevanten Vorkommen des Elements <sch:span class="monotype">mods:recordIdentifier</sch:span> darf nur die folgenden Zeichen enthalten:
 * Buchstaben
 * Zahlen
 * <sch:span class="monotype">:</sch:span>
 * <sch:span class="monotype">.</sch:span>
 * <sch:span class="monotype">!</sch:span>
 * <sch:span class="monotype">-</sch:span>
 * <sch:span class="monotype">\</sch:span>
Die DDB wertet für den DDB-Identifier das erste Vorkommen (XML-Reihenfolge) von <sch:span class="monotype">mods:recordIdentifier</sch:span> aus.
Weitere Informationen zu diesem Element finden Sie im DDB-METS/MODS-Anwendungsprofil auf der Seite mods:recordInfo (https://deutsche-digitale-bibliothek.atlassian.net/wiki/x/eAjeAg).</sch:assert>
      </sch:rule>
      <sch:rule context="mets:dmdSec[@ID=$work_dmdid]/mets:mdWrap/mets:xmlData/mods:mods[count(distinct-values(mods:recordInfo/mods:recordIdentifier[@source]/@source)) &gt; 1]/mods:recordInfo/mods:recordIdentifier">
            <!-- 
               Ungültiger Wert in mods:recordIdentifier
             -->
         <sch:assert id="recordInfo_06"
                     role="fatal"
                     test="matches(text()[1], '^[^ /]+$')"
                     properties="dmd_id"
                     see="https://deutsche-digitale-bibliothek.atlassian.net/wiki/x/1gveAg">Der Wert im Element <sch:span class="monotype">mods:recordIdentifier</sch:span> enthält Leer- und / oder Sonderzeichen. Dies kann zu Problemen bei der Verarbeitung in der DDB führen, daher wird der Datensatz nicht in das Zeitungsportal eingespielt.
Weitere Informationen zu diesem Element finden Sie im DDB-METS/MODS-Anwendungsprofil auf der Seite mods:recordInfo (https://deutsche-digitale-bibliothek.atlassian.net/wiki/x/eAjeAg).</sch:assert>
      </sch:rule>
   </sch:pattern>
   <sch:pattern>
      <sch:rule context="mets:mets">
            <!-- 
               Das primäre mets:dmdSec-Element fehlt
             -->
         <sch:assert id="dmdSec_01"
                     role="fatal"
                     test="mets:dmdSec[@ID=$work_dmdid]/mets:mdWrap/mets:xmlData/mods:mods"
                     properties="id"
                     see="https://deutsche-digitale-bibliothek.atlassian.net/wiki/x/hALeAg">Das primäre <sch:span class="monotype">mets:dmdSec</sch:span>-Element beschreibt das gesamte im Datensatz beschriebene Dokument (Ausgabe/Beilage). Es muss das Unterelement <sch:span class="monotype">mets:mdWrap</sch:span> mit dem Unterelement <sch:span class="monotype">mets:xmlData</sch:span> enthalten, welches ein Unterelement <sch:span class="monotype">mods:mods</sch:span> besitzt.
Es muss mit dem <sch:span class="monotype">mets:div[@TYPE='issue']</sch:span> bzw. <sch:span class="monotype">mets:div[@TYPE='additional']</sch:span> in der <sch:span class="monotype">mets:structMap[@TYPE='LOGICAL']</sch:span> verlinkt sein.
Ein Datensatz darf nur ein <sch:span class="monotype">mets:div[@TYPE='issue']</sch:span> oder ein <sch:span class="monotype">mets:div[@TYPE='additional']</sch:span> in der <sch:span class="monotype">mets:structMap[@TYPE='LOGICAL']</sch:span> enthalten. Sind diese Voraussetzungen nicht erfüllt, wird der Datensatz nicht in das Zeitungsportal eingespielt.
Die Selektion des primären <sch:span class="monotype">mets:dmdSec</sch:span> erfolgt über ein im Element <sch:span class="monotype">mets:structMap[@TYPE='LOGICAL']</sch:span> enthaltenes <sch:span class="monotype">mets:div</sch:span>-Element über die folgenden Kriterien:
 * Falls <sch:span class="monotype">mets:structMap[@TYPE='LOGICAL']</sch:span> kein <sch:span class="monotype">mets:div</sch:span> mit dem Unterelement <sch:span class="monotype">mets:mptr</sch:span> enthält: Das primäre <sch:span class="monotype">mets:dmdSec</sch:span> ist das Kind von <sch:span class="monotype">mets:structMap[@TYPE='LOGICAL']</sch:span>
 * Falls <sch:span class="monotype">mets:structMap[@TYPE='LOGICAL']</sch:span> ein <sch:span class="monotype">mets:div</sch:span> mit dem Unterelement <sch:span class="monotype">mets:mptr</sch:span> enthält: Das primäre <sch:span class="monotype">mets:dmdSec</sch:span> ist das Kind des <sch:span class="monotype">mets:div</sch:span> mit dem Unterelement <sch:span class="monotype">mets:mptr</sch:span>
Das nach den o. g. Kriterien selektierte <sch:span class="monotype">mets:div</sch:span> referenziert über sein Attribut <sch:span class="monotype">DMDID</sch:span> das Attribut <sch:span class="monotype">ID</sch:span> des primären <sch:span class="monotype">mets:dmdSec</sch:span>.
Fehlt das primäre <sch:span class="monotype">mets:dmdSec</sch:span> bzw. ist keine eindeutige Selektion möglich, wird der Datensatz nicht in das Zeitungsportal eingespielt.
Weitere Informationen zu diesen Elementen und Ihrem Kontext finden Sie im DDB-METS/MODS-Anwendungsprofil auf den Seiten mets:dmdSec (https://deutsche-digitale-bibliothek.atlassian.net/wiki/x/jQLeAg) und mets:structMap[@TYPE='LOGICAL'] (https://deutsche-digitale-bibliothek.atlassian.net/wiki/x/bAXeAg) sowie im Bereich Aufbau einer METS/MODS-Datei für die DDB (https://deutsche-digitale-bibliothek.atlassian.net/wiki/x/MwLeAg).</sch:assert>
      </sch:rule>
      <sch:rule context="mets:dmdSec[not(@ID=$work_dmdid)]">
            <!-- 
               mets:dmdSec ist unvollständig
             -->
         <sch:assert id="dmdSec_02"
                     role="error"
                     test="mets:mdWrap/mets:xmlData/mods:mods"
                     properties="id"
                     see="https://deutsche-digitale-bibliothek.atlassian.net/wiki/x/hALeAg">Das Element <sch:span class="monotype">mets:dmdSec</sch:span> muss das Unterelement <sch:span class="monotype">mets:mdWrap</sch:span> mit dem Unterelement <sch:span class="monotype">mets:xmlData</sch:span> enthalten, welches ein Unterelement <sch:span class="monotype">mods:mods</sch:span> besitzt.
Ist dies nicht der Fall, wird <sch:span class="monotype">mets:dmdSec</sch:span> bei der Transformation des Datensatzes entfernt.
Weitere Informationen zu diesem Element finden Sie im DDB-METS/MODS-Anwendungsprofil auf der Seite mets:dmdSec (https://deutsche-digitale-bibliothek.atlassian.net/wiki/x/jQLeAg).</sch:assert>
      </sch:rule>
   </sch:pattern>
   <sch:pattern>
      <sch:rule context="mets:dmdSec">
            <!-- 
               mets:dmdSec ohne eindeutigen Identifier im Attribut ID
             -->
         <sch:assert id="dmdSec_03"
                     role="fatal"
                     test="count(key('mets_ids', @ID)) = 1 and matches(@ID, '^[\i-[:]][\c-[:]]*$')"
                     see="https://deutsche-digitale-bibliothek.atlassian.net/wiki/x/hALeAg">Das Element <sch:span class="monotype">mets:dmdSec</sch:span> muss das Attribut <sch:span class="monotype">ID</sch:span> mit einem im Datensatz eindeutigen Identifier enthalten. Dieser darf darüber hinaus keine ungültigen Zeichen enthalten.
Ist dies nicht der Fall, wird der Datensatz nicht in das Zeitungsportal eingespielt.
Weitere Informationen zu diesem Element und Attribut finden Sie im DDB-METS/MODS-Anwendungsprofil auf der Seite mets:dmdSec (https://deutsche-digitale-bibliothek.atlassian.net/wiki/x/jQLeAg).</sch:assert>
      </sch:rule>
   </sch:pattern>
   <sch:pattern>
      <sch:rule context="mets:dmdSec">
            <!-- 
               mets:dmdSec ohne Referenz
             -->
         <sch:assert id="dmdSec_04"
                     role="error"
                     test="key('structMap_LOGICAL_dmdids', @ID)"
                     properties="id"
                     see="https://deutsche-digitale-bibliothek.atlassian.net/wiki/x/hALeAg">Das Element <sch:span class="monotype">mets:dmdSec</sch:span> muss genau einmal von einem <sch:span class="monotype">mets:div</sch:span>-Element innerhalb des Elements <sch:span class="monotype">mets:structMap[@TYPE='LOGICAL']</sch:span> referenziert werden.
Die Referenzierung erfolgt über einen Wert im Attribut <sch:span class="monotype">DMDID</sch:span> von <sch:span class="monotype">mets:div</sch:span> auf das Attribut <sch:span class="monotype">ID</sch:span> des Elements <sch:span class="monotype">mets:dmdSec</sch:span>.
Fehlt diese Referenz, wird <sch:span class="monotype">mets:dmdSec</sch:span> bei der Transformation des Datensatzes entfernt.
Weitere Informationen zu diesen Elementen und Ihrem Kontext finden Sie im DDB-METS/MODS-Anwendungsprofil auf den Seiten mets:dmdSec (https://deutsche-digitale-bibliothek.atlassian.net/wiki/x/jQLeAg) und mets:structMap[@TYPE='LOGICAL'] (https://deutsche-digitale-bibliothek.atlassian.net/wiki/x/bAXeAg) sowie im Bereich Aufbau einer METS/MODS-Datei für die DDB (https://deutsche-digitale-bibliothek.atlassian.net/wiki/x/MwLeAg).</sch:assert>
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
                     see="https://deutsche-digitale-bibliothek.atlassian.net/wiki/x/NAfeAg">Ein Datensatz muss das Element <sch:span class="monotype">mets:amdSec</sch:span> enthalten. Ist dies nicht der Fall, wird der Datensatz nicht in das Zeitungsportal eingespielt.
Weitere Informationen zu diesem Element und seinem Kontext finden Sie im DDB-METS/MODS-Anwendungsprofil auf der Seite mets:amdSec (https://deutsche-digitale-bibliothek.atlassian.net/wiki/x/iwLeAg) und im Bereich Aufbau einer METS/MODS-Datei für die DDB (https://deutsche-digitale-bibliothek.atlassian.net/wiki/x/MwLeAg).</sch:assert>
      </sch:rule>
      <sch:rule context="mets:amdSec">
            <!-- 
               mets:amdSec ohne eindeutigen Identifier im Attribut ID
             -->
         <sch:assert id="amdSec_02"
                     role="warn"
                     test="count(key('mets_ids', @ID)) = 1 and matches(@ID, '^[\i-[:]][\c-[:]]*$')"
                     properties="id"
                     see="https://deutsche-digitale-bibliothek.atlassian.net/wiki/x/NAfeAg">Das Element <sch:span class="monotype">mets:amdSec</sch:span> muss das Attribut <sch:span class="monotype">ID</sch:span> mit einem im Datensatz eindeutigen Identifier enthalten. Dieser darf darüber hinaus keine ungültigen Zeichen enthalten.
Das Fehlen von <sch:span class="monotype">ID</sch:span> bzw. ungültige Zeichen in Attribut <sch:span class="monotype">ID</sch:span> verhindern nicht das Einspielen Ihrer Daten in das Zeitungsportal, wir bitten Sie jedoch, den Sachverhalt zu prüfen und die nötigen Korrekturen bis zur nächsten Datenlieferung vorzunehmen.
Weitere Informationen zu diesem Element und Attribut finden Sie im DDB-METS/MODS-Anwendungsprofil auf der Seite mets:amdSec (https://deutsche-digitale-bibliothek.atlassian.net/wiki/x/iwLeAg).</sch:assert>
      </sch:rule>
   </sch:pattern>
   <sch:pattern>
      <sch:rule context="mets:mets[mets:amdSec[@ID=$work_amdid]][not( mets:amdSec[@ID=$work_amdid]/mets:rightsMD/mets:mdWrap/mets:xmlData/dv:rights/dv:license or mets:dmdSec[@ID=$work_dmdid]/mets:mdWrap/mets:xmlData/mods:mods/mods:accessCondition[@type='use and reproduction'] )] | mets:mets[mets:amdSec[not(@ID=$work_amdid)][1]][not( mets:amdSec[not(@ID=$work_amdid)][1]/mets:rightsMD/mets:mdWrap/mets:xmlData/dv:rights/dv:license or mets:dmdSec[@ID=$work_dmdid]/mets:mdWrap/mets:xmlData/mods:mods/mods:accessCondition[@type='use and reproduction'] )]">
            <!-- 
               dv:license fehlt
             -->
         <sch:assert id="amdSec_04"
                     role="error"
                     test="mets:amdSec[@ID=$work_amdid]/mets:rightsMD/mets:mdWrap/mets:xmlData/dv:rights/dv:license or mets:amdSec[not(@ID=$work_amdid)][1]/mets:rightsMD/mets:mdWrap/mets:xmlData/dv:rights/dv:license or mets:dmdSec[@ID=$work_dmdid]/mets:mdWrap/mets:xmlData/mods:mods/mods:accessCondition[@type='use and reproduction']"
                     see="https://deutsche-digitale-bibliothek.atlassian.net/wiki/x/NAfeAg">Jeder Datensatz muss das Element <sch:span class="monotype">dv:license</sch:span> mit Rechteinformationen zum beschriebenen Digitalisat enthalten.
Alternativ zu diesem Element kann die Rechteinformation auch im Attribut <sch:span class="monotype">xlink:href</sch:span> des Elements <sch:span class="monotype">mods:accessCondition</sch:span> mit dem Attribut <sch:span class="monotype">type</sch:span> und dem Wert <sch:span class="monotype">use and reproduction</sch:span> angegeben werden.
Die Rechteinformation muss im o. g. Element bzw. Attribut in Form eines URI gemäß den Rechteangaben in der Deutschen Digitalen Bibliothek (https://pro.deutsche-digitale-bibliothek.de/daten-liefern/teilnahmekriterien/rechtliches/lizenzen-und-rechtehinweise-der-lizenzkorb-der-deutschen-digitalen-bibliothek) vorliegen. Im <sch:span class="monotype">dv:license</sch:span> können darüber hinaus die kodierten Werte aus dem METS-Anwendungsprofil (Kapitel 2.7.2.11) (https://dfg-viewer.de/fileadmin/groups/dfgviewer/METS-Anwendungsprofil_2.3.1.pdf) verwendet werden. Bitte beachten Sie hierbei, dass die DDB die CC-Lizenz-Werte als Version 4.0 und den Wert <sch:span class="monotype">reserved</sch:span> als Urheberrechtsschutz nicht bewertet (Europeana Rights Statement "CNE") (http://rightsstatements.org/vocab/CNE/1.0/) interpretiert.
Ist im Datensatz keine Rechteinformation wie oben beschrieben vorhanden, kann bei der Transformation des Datensatzes eine von Ihnen bestimmte Standard-URI von der Seite Rechteangaben in der Deutschen Digitalen Bibliothek (https://pro.deutsche-digitale-bibliothek.de/daten-liefern/teilnahmekriterien/rechtliches/lizenzen-und-rechtehinweise-der-lizenzkorb-der-deutschen-digitalen-bibliothek) gesetzt werden, die für alle Ihre Datensätze gilt. Bitte teilen Sie diese der Fachstelle Bibliothek mit.
Liegt der Fachstelle Bibliothek auch keine Standard-URI vor, wird der Datensatz nicht in das Zeitungsportal eingespielt.
Weitere Informationen zu diesen Elementen finden Sie im DDB-METS/MODS-Anwendungsprofil auf den Seiten mets:rightsMD (https://deutsche-digitale-bibliothek.atlassian.net/wiki/x/XALeAg) und mods:accessCondition (https://deutsche-digitale-bibliothek.atlassian.net/wiki/x/zQ3eAg). Informationen zu den möglichen Rechte-URI finden Sie auf der Seite Rechteangaben in der Deutschen Digitalen Bibliothek (https://pro.deutsche-digitale-bibliothek.de/daten-liefern/teilnahmekriterien/rechtliches/lizenzen-und-rechtehinweise-der-lizenzkorb-der-deutschen-digitalen-bibliothek).</sch:assert>
      </sch:rule>
      <sch:rule context="mets:mets[mets:amdSec[@ID=$work_amdid] or mets:amdSec[not(@ID=$work_amdid)][1]]">
            <!-- 
               Ungültiger Wert in dv:license bzw. im Attribut xlink:href von mods:accessCondition[@type='use and reproduction']
             -->
         <sch:assert id="amdSec_05"
                     role="error"
                     test="key('license_uris', mets:amdSec[@ID=$work_amdid]/mets:rightsMD/mets:mdWrap/mets:xmlData/dv:rights/dv:license[1], $license_uris) or key('license_uris', mets:amdSec[not(@ID=$work_amdid)][1]/mets:rightsMD/mets:mdWrap/mets:xmlData/dv:rights/dv:license[1], $license_uris) or key('license_uris', mets:dmdSec[@ID=$work_dmdid]/mets:mdWrap/mets:xmlData/mods:mods/mods:accessCondition[@type='use and reproduction'][string-length(@*[local-name()='href'][1]) &gt; 0][1]/@*[local-name()='href'][1], $license_uris) or key('mets_ap_dv_license_values', mets:amdSec[@ID=$work_amdid]/mets:rightsMD/mets:mdWrap/mets:xmlData/dv:rights/dv:license[1], $mets_ap_dv_license_values) or key('mets_ap_dv_license_values', mets:amdSec[not(@ID=$work_amdid)][1]/mets:rightsMD/mets:mdWrap/mets:xmlData/dv:rights/dv:license[1], $mets_ap_dv_license_values)"
                     see="https://deutsche-digitale-bibliothek.atlassian.net/wiki/x/NAfeAg">Jeder Datensatz muss das Element <sch:span class="monotype">dv:license</sch:span> mit Rechteinformationen zum beschriebenen Digitalisat enthalten.
Alternativ zu diesem Element kann die Rechteinformation auch im Attribut <sch:span class="monotype">xlink:href</sch:span> des Elements <sch:span class="monotype">mods:accessCondition</sch:span> mit dem Attribut <sch:span class="monotype">type</sch:span> und dem Wert <sch:span class="monotype">use and reproduction</sch:span> angegeben werden.
Die Rechteinformation muss im o. g. Element bzw. Attribut in Form eines URI gemäß den Rechteangaben in der Deutschen Digitalen Bibliothek (https://pro.deutsche-digitale-bibliothek.de/daten-liefern/teilnahmekriterien/rechtliches/lizenzen-und-rechtehinweise-der-lizenzkorb-der-deutschen-digitalen-bibliothek) vorliegen. Im <sch:span class="monotype">dv:license</sch:span> können darüber hinaus die kodierten Werte aus dem METS-Anwendungsprofil (Kapitel 2.7.2.11) (https://dfg-viewer.de/fileadmin/groups/dfgviewer/METS-Anwendungsprofil_2.3.1.pdf) verwendet werden. Bitte beachten Sie hierbei, dass die DDB die CC-Lizenz-Werte als Version 4.0 und den Wert <sch:span class="monotype">reserved</sch:span> als Urheberrechtsschutz nicht bewertet (Europeana Rights Statement "CNE") (http://rightsstatements.org/vocab/CNE/1.0/) interpretiert.
Ist im Datensatz keine Rechteinformation wie oben beschrieben vorhanden, kann bei der Transformation des Datensatzes eine von Ihnen bestimmte Standard-URI von der Seite Rechteangaben in der Deutschen Digitalen Bibliothek (https://pro.deutsche-digitale-bibliothek.de/daten-liefern/teilnahmekriterien/rechtliches/lizenzen-und-rechtehinweise-der-lizenzkorb-der-deutschen-digitalen-bibliothek) gesetzt werden, die für alle Ihre Datensätze gilt. Bitte teilen Sie diese der Fachstelle Bibliothek mit.
Liegt der Fachstelle Bibliothek auch keine Standard-URI vor, wird der Datensatz nicht in das Zeitungsportal eingespielt.
Weitere Informationen zu diesen Elementen finden Sie im DDB-METS/MODS-Anwendungsprofil auf den Seiten mets:rightsMD (https://deutsche-digitale-bibliothek.atlassian.net/wiki/x/XALeAg) und mods:accessCondition (https://deutsche-digitale-bibliothek.atlassian.net/wiki/x/zQ3eAg). Informationen zu den möglichen Rechte-URI finden Sie auf der Seite Rechteangaben in der Deutschen Digitalen Bibliothek (https://pro.deutsche-digitale-bibliothek.de/daten-liefern/teilnahmekriterien/rechtliches/lizenzen-und-rechtehinweise-der-lizenzkorb-der-deutschen-digitalen-bibliothek).</sch:assert>
      </sch:rule>
   </sch:pattern>
   <sch:pattern>
      <sch:rule context="mets:mets[ ( key('license_uris', mets:amdSec[@ID=$work_amdid]/mets:rightsMD/mets:mdWrap/mets:xmlData/dv:rights/dv:license[1], $license_uris) and not(mets:amdSec[@ID=$work_amdid]/mets:rightsMD/mets:mdWrap/mets:xmlData/dv:rights/dv:license[1][contains(text(), 'creativecommons.org/publicdomain/mark/1.0/')]) ) or ( key('license_uris', mets:amdSec[not(@ID=$work_amdid)][1]/mets:rightsMD/mets:mdWrap/mets:xmlData/dv:rights/dv:license[1], $license_uris) and not(mets:amdSec[not(@ID=$work_amdid)][1]/mets:rightsMD/mets:mdWrap/mets:xmlData/dv:rights/dv:license[1][contains(text(), 'creativecommons.org/publicdomain/mark/1.0/')]) ) or ( key('license_uris', mets:dmdSec[@ID=$work_dmdid]/mets:mdWrap/mets:xmlData/mods:mods/mods:accessCondition[@type='use and reproduction'][string-length(@*[local-name()='href'][1]) &gt; 0][1]/@*[local-name()='href'][1], $license_uris) and not(mets:dmdSec[@ID=$work_dmdid]/mets:mdWrap/mets:xmlData/mods:mods/mods:accessCondition[@type='use and reproduction'][string-length(@*[local-name()='href'][1]) &gt; 0][1]/@*[local-name()='href'][1][contains(., 'creativecommons.org/publicdomain/mark/1.0/')]) ) or ( key('mets_ap_dv_license_values', mets:amdSec[@ID=$work_amdid]/mets:rightsMD/mets:mdWrap/mets:xmlData/dv:rights/dv:license[1], $mets_ap_dv_license_values) and not(mets:amdSec[@ID=$work_amdid]/mets:rightsMD/mets:mdWrap/mets:xmlData/dv:rights/dv:license[1][text()='pdm']) ) or ( key('mets_ap_dv_license_values', mets:amdSec[not(@ID=$work_amdid)][1]/mets:rightsMD/mets:mdWrap/mets:xmlData/dv:rights/dv:license[1], $mets_ap_dv_license_values) and not(mets:amdSec[not(@ID=$work_amdid)][1]/mets:rightsMD/mets:mdWrap/mets:xmlData/dv:rights/dv:license[1][text()='pdm']) ) ]/mets:dmdSec[@ID=$work_dmdid]/mets:mdWrap/mets:xmlData/mods:mods">
            <!-- 
               Hinweis auf ungültige Rechteangabe
             -->
         <sch:report id="amdSec_13"
                     role="caution"
                     test="max( ( mods:originInfo[not(mods:edition[text()='[Electronic ed.]'])]/mods:dateIssued[matches(text()[1], '^((-\d\d\d\d+)|(\d\d\d\d))(-\d\d)?(-\d\d)?$')]/number(tokenize(text(), '-')[1]), mods:originInfo[not(mods:edition[text()='[Electronic ed.]'])]/mods:dateCreated[matches(text()[1], '^((-\d\d\d\d+)|(\d\d\d\d))(-\d\d)?(-\d\d)?$')]/number(tokenize(text(), '-')[1]) ) ) &lt; 1910"
                     properties="dmd_id">Die Lizenzen aus dem Lizenzkorb der DDB (https://pro.deutsche-digitale-bibliothek.de/daten-liefern/teilnahmekriterien/rechtliches/lizenzen-und-rechtehinweise-der-lizenzkorb-der-deutschen-digitalen-bibliothek) können nur für Materialien genutzt werden, an denen Urheberrechte nach § 2 UrhG oder Lichtbildrechte nach § 72 UrhG bestehen.
Der Scan oder die Fotografie von typischen Bibliotheksbeständen (Bücher, Zeitschriften und andere Schriftwerke) lässt solche Rechte in Fällen, in denen eine möglichst originalgetreue Reproduktion erzeugt werden soll, nicht entstehen. Daher kommt bei Scans / Fotos gemeinfreier Vorlagen in aller Regel nur der ebenfalls im "Lizenzkorb" enthaltene Rechtehinweis "Public Domain Mark" in Frage.
Dies ist nur ein Hinweis auf die Rechtslage in Verbindung mit der Bitte um Prüfung, ob Sie – dem entsprechend – in den Rechteangaben zu Ihren Digitalisaten den richtigen Rechtehinweis vergeben haben. Die Rechteangaben bleiben jedoch – wie im Kooperationsvertrag geregelt – in der Verantwortung Ihrer Einrichtung.
Weitere Informationen zu Rechteangaben in der DDB finden Sie auf der Seite Rechteangaben in der Deutschen Digitalen Bibliothek (https://pro.deutsche-digitale-bibliothek.de/daten-liefern/teilnahmekriterien/rechtliches/lizenzen-und-rechtehinweise-der-lizenzkorb-der-deutschen-digitalen-bibliothek). Bei Fragen wenden Sie sich bitte an Armin Talke (https://pro.deutsche-digitale-bibliothek.de/ueber-uns/ansprechpartner_innen/armin-talke).</sch:report>
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
                     properties="dmd_id">Der Datensatz enthält mehrere <sch:span class="monotype">dv:license</sch:span>-Elemente mit unterschiedlichen Rechteangaben aus dem Lizenzkorb der DDB (https://pro.deutsche-digitale-bibliothek.de/daten-liefern/teilnahmekriterien/rechtliches/lizenzen-und-rechtehinweise-der-lizenzkorb-der-deutschen-digitalen-bibliothek). Bitte beachten Sie hierbei, dass die DDB die CC-Lizenz-Werte aus dem METS-Anwendungsprofil (Kapitel 2.7.2.11) (https://dfg-viewer.de/fileadmin/groups/dfgviewer/METS-Anwendungsprofil_2.3.1.pdf) als Version 4.0 und den Wert <sch:span class="monotype">reserved</sch:span> als Urheberrechtsschutz nicht bewertet (Europeana Rights Statement "CNE") (http://rightsstatements.org/vocab/CNE/1.0/) interpretiert.
Die DDB benötigt eindeutige Rechteangaben, daher wird der Datensatz nicht in das Zeitungsportal eingespielt.</sch:report>
      </sch:rule>
      <sch:rule context="mets:mets[ mets:dmdSec[@ID=$work_dmdid]/mets:mdWrap/mets:xmlData/mods:mods[mods:accessCondition[@type='use and reproduction'][ key('license_uris', replace(text(), 'deed\.[a-z][a-z]$', ''), $license_uris) or key('license_uris', replace(@*[local-name()='href'][1], 'deed\.[a-z][a-z]$', ''), $license_uris) ][2]] ]">
            <!-- 
               Widersprüchliche Rechteangaben in mods:accessCondition[@type='use and reproduction']
             -->
         <sch:report id="amdSec_16"
                     role="fatal"
                     test="count(distinct-values(( mets:dmdSec[@ID=$work_dmdid]/mets:mdWrap/mets:xmlData/mods:mods/mods:accessCondition[@type='use and reproduction'][key('license_uris', replace(text(), 'deed\.[a-z][a-z]$', ''), $license_uris)]/replace(replace(text(), '^https', 'http'), 'deed\.[a-z][a-z]$', ''), mets:dmdSec[@ID=$work_dmdid]/mets:mdWrap/mets:xmlData/mods:mods/mods:accessCondition[@type='use and reproduction'][key('license_uris', replace(@*[local-name()='href'][1], 'deed\.[a-z][a-z]$', ''), $license_uris)]/replace(replace(@*[local-name()='href'][1], '^https', 'http'), 'deed\.[a-z][a-z]$', '') ))) &gt; 1"
                     properties="dmd_id">Der Datensatz enthält mehrere <sch:span class="monotype">mods:accessCondition[@type='use and reproduction']</sch:span>-Elemente mit unterschiedlichen Rechteangaben aus dem Lizenzkorb der DDB (https://pro.deutsche-digitale-bibliothek.de/daten-liefern/teilnahmekriterien/rechtliches/lizenzen-und-rechtehinweise-der-lizenzkorb-der-deutschen-digitalen-bibliothek) im Attribut <sch:span class="monotype">xlink:href</sch:span>.
Die DDB benötigt eindeutige Rechteangaben, daher wird der Datensatz nicht in das Zeitungsportal eingespielt.</sch:report>
      </sch:rule>
      <sch:rule context="mets:mets">
            <!-- 
               Widersprüchliche Rechteangaben in dv:license und im Attribut xlink:href von mods:accessCondition[@type='use and reproduction']
             -->
         <sch:report id="amdSec_17"
                     role="error"
                     test="count(distinct-values(( mets:amdSec[@ID=$work_amdid]/mets:rightsMD/mets:mdWrap/mets:xmlData/dv:rights/dv:license[key('license_uris', replace(text(), 'deed\.[a-z][a-z]$', ''), $license_uris)]/replace(replace(text(), '^https', 'http'), 'deed\.[a-z][a-z]$', ''), mets:amdSec[not(@ID=$work_amdid)][1]/mets:rightsMD/mets:mdWrap/mets:xmlData/dv:rights/dv:license[key('license_uris', replace(text(), 'deed\.[a-z][a-z]$', ''), $license_uris)]/replace(replace(text(), '^https', 'http'), 'deed\.[a-z][a-z]$', ''), mets:dmdSec[@ID=$work_dmdid]/mets:mdWrap/mets:xmlData/mods:mods/mods:accessCondition[@type='use and reproduction'][key('license_uris', replace(text(), 'deed\.[a-z][a-z]$', ''), $license_uris)]/replace(replace(text(), '^https', 'http'), 'deed\.[a-z][a-z]$', ''), mets:dmdSec[@ID=$work_dmdid]/mets:mdWrap/mets:xmlData/mods:mods/mods:accessCondition[@type='use and reproduction'][key('license_uris', replace(@*[local-name()='href'][1], 'deed\.[a-z][a-z]$', ''), $license_uris)]/replace(replace(@*[local-name()='href'][1], '^https', 'http'), 'deed\.[a-z][a-z]$', ''), key('mets_ap_dv_license_values', mets:amdSec[@ID=$work_amdid]/mets:rightsMD/mets:mdWrap/mets:xmlData/dv:rights/dv:license[key('mets_ap_dv_license_values', text(), $mets_ap_dv_license_values)]/text(), $mets_ap_dv_license_values)/@to ))) &gt; 1"
                     properties="dmd_id">Der Datensatz enthält im Element <sch:span class="monotype">mods:accessCondition[@type='use and reproduction']</sch:span> im Attribut <sch:span class="monotype">xlink:href</sch:span> und im Element <sch:span class="monotype">dv:license</sch:span> sich widersprechende Rechteangaben aus dem Lizenzkorb der DDB (https://pro.deutsche-digitale-bibliothek.de/daten-liefern/teilnahmekriterien/rechtliches/lizenzen-und-rechtehinweise-der-lizenzkorb-der-deutschen-digitalen-bibliothek). Bitte beachten Sie hierbei, dass die DDB die CC-Lizenz-Werte aus dem METS-Anwendungsprofil (Kapitel 2.7.2.11) (https://dfg-viewer.de/fileadmin/groups/dfgviewer/METS-Anwendungsprofil_2.3.1.pdf) als Version 4.0 und den Wert <sch:span class="monotype">reserved</sch:span> als Urheberrechtsschutz nicht bewertet (Europeana Rights Statement "CNE") (http://rightsstatements.org/vocab/CNE/1.0/) interpretiert.
Bei der Transformation des Datensatzes übernimmt die DDB in diesem Fall die Rechteangabe aus <sch:span class="monotype">mods:accessCondition[@type='use and reproduction']</sch:span>.</sch:report>
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
                     see="https://deutsche-digitale-bibliothek.atlassian.net/wiki/x/wwreAg">Das Element <sch:span class="monotype">mets:fileSec</sch:span> muss vorhanden sein, um Links zu den digitalen Bildern zu enthalten. Fehlt die <sch:span class="monotype">mets:fileSec</sch:span>, wird der Datensatz nicht in das Zeitungsportal eingespielt.
Weitere Informationen zu diesem Element und seinem Kontext finden Sie im DDB-METS/MODS-Anwendungsprofil auf der Seite mets:fileSec (https://deutsche-digitale-bibliothek.atlassian.net/wiki/x/dgPeAg) und in den entsprechenden Unterseiten der Seite Aufbau einer METS/MODS-Datei für die DDB (https://deutsche-digitale-bibliothek.atlassian.net/wiki/x/MwLeAg).</sch:assert>
      </sch:rule>
      <sch:rule context="mets:mets/mets:fileSec[not(mets:fileGrp[@USE='DEFAULT'])]">
            <!-- 
               mets:fileGrp[@USE='DEFAULT'] fehlt
             -->
         <sch:assert id="fileSec_02"
                     role="fatal"
                     test="mets:fileGrp[@USE='DEFAULT']"
                     see="https://deutsche-digitale-bibliothek.atlassian.net/wiki/x/wwreAg">Das Element <sch:span class="monotype">mets:fileSec</sch:span> enthält die Links zu den digitalen Bildern in unterschiedlichen Auflösungen. Um welche Art von Auflösung es sich dabei handelt, wird über die <sch:span class="monotype">mets:fileGrp</sch:span> angegeben. Jede Auflösung eines Bildes wird daher der entsprechenden <sch:span class="monotype">mets:fileGrp</sch:span> zugeordnet. Eine <sch:span class="monotype">mets:fileSec</sch:span> muss mindestens die <sch:span class="monotype">mets:fileGrp[@USE='DEFAULT']</sch:span> enthalten. Ist dies nicht der Fall, wird der Datensatz nicht in das Zeitungsportal eingespielt.
Weitere Informationen zu diesem Element finden Sie im DDB-METS/MODS-Anwendungsprofil auf der Seite mets:fileSec (https://deutsche-digitale-bibliothek.atlassian.net/wiki/x/dgPeAg).</sch:assert>
      </sch:rule>
      <sch:rule context="mets:mets/mets:fileSec/mets:fileGrp[@USE='DEFAULT']">
            <!-- 
               mets:fileGrp[@USE='DEFAULT'] ist unvollständig
             -->
         <sch:assert id="fileSec_03"
                     role="fatal"
                     test="mets:file[mets:FLocat[string-length(@xlink:href) &gt; 0]]"
                     see="https://deutsche-digitale-bibliothek.atlassian.net/wiki/x/wwreAg">Das Element <sch:span class="monotype">mets:fileGrp</sch:span> mit dem Attribut <sch:span class="monotype">USE</sch:span> mit dem Wert <sch:span class="monotype">DEFAULT</sch:span> muss mindestens ein <sch:span class="monotype">mets:file</sch:span>-Element enthalten. Dieses muss das Unterelement <sch:span class="monotype">mets:FLocat</sch:span> mit dem Attribut <sch:span class="monotype">xlink:href</sch:span> besitzen.
Ist dies nicht der Fall, wird der Datensatz nicht in das Zeitungsportal eingespielt.
Weitere Informationen zu diesem Element finden Sie im DDB-METS/MODS-Anwendungsprofil auf der Seite mets:fileSec (https://deutsche-digitale-bibliothek.atlassian.net/wiki/x/dgPeAg).</sch:assert>
      </sch:rule>
   </sch:pattern>
   <sch:pattern>
      <sch:rule context="mets:mets/mets:fileSec/mets:fileGrp[@USE='DEFAULT']/mets:file">
            <!-- 
               mets:file ohne eindeutigen Identifier im Attribut ID
             -->
         <sch:assert id="fileSec_04"
                     role="fatal"
                     test="count(key('mets_ids', @ID)) = 1 and matches(@ID, '^[\i-[:]][\c-[:]]*$')"
                     properties="id"
                     see="https://deutsche-digitale-bibliothek.atlassian.net/wiki/x/wwreAg">Das Element <sch:span class="monotype">mets:file</sch:span> muss das Attribut <sch:span class="monotype">ID</sch:span> mit einem im Datensatz eindeutigen Identifier enthalten. Dieser darf darüber hinaus keine ungültigen Zeichen enthalten.
Fehlt das Attribut <sch:span class="monotype">ID</sch:span> bzw. enthält es ungültige Zeichen, wird der Datensatz nicht in das Zeitungsportal eingespielt.
Weitere Informationen zu diesem Attribut finden Sie im DDB-METS/MODS-Anwendungsprofil auf der Seite mets:fileSec (https://deutsche-digitale-bibliothek.atlassian.net/wiki/x/dgPeAg).</sch:assert>
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
                     see="https://deutsche-digitale-bibliothek.atlassian.net/wiki/x/wwreAg">In der <sch:span class="monotype">mets:fileSec</sch:span> wird innerhalb der <sch:span class="monotype">mets:fileGrp[@USE='FULLTEXT']</sch:span> auf die Volltexte der einzelnen Seiten verlinkt. Die Bereitstellung von Volltexten ist für alle Zeitungsausgaben/-beilagen im Zeitungsportal gewünscht, aber nicht verpflichtend. Die Volltextsuche ist der zentrale Einstieg zu den Inhalten des Zeitungsportals. Die Inhalte von Zeitungen ohne Volltext sind für NutzerInnen schwerer zugänglich.
Weitere Informationen zu diesem Element und seinem Kontext finden Sie im DDB-METS/MODS-Anwendungsprofil auf der Seite mets:fileSec (https://deutsche-digitale-bibliothek.atlassian.net/wiki/x/dgPeAg) und in den entsprechenden Unterseiten der Seite Aufbau einer METS/MODS-Datei für die DDB (https://deutsche-digitale-bibliothek.atlassian.net/wiki/x/MwLeAg).</sch:assert>
      </sch:rule>
      <sch:rule context="mets:mets/mets:fileSec/mets:fileGrp[@USE='FULLTEXT']">
            <!-- 
               mets:file fehlt
             -->
         <sch:assert id="fileSec_06"
                     role="fatal"
                     test="mets:file[mets:FLocat[string-length(@xlink:href) &gt; 0]]"
                     see="https://deutsche-digitale-bibliothek.atlassian.net/wiki/x/wwreAg">Die <sch:span class="monotype">mets:fileGrp[@USE='FULLTEXT']</sch:span> muss mindestens ein <sch:span class="monotype">mets:file</sch:span> enthalten. Fehlt <sch:span class="monotype">mets:file</sch:span> mit dem Attribut <sch:span class="monotype">xlink:href</sch:span> im Unterelement <sch:span class="monotype">mets:FLocat</sch:span>, wird der Datensatz nicht in das Zeitungsportal eingespielt.
Weitere Informationen zu diesem Element und seinem Kontext finden Sie im DDB-METS/MODS-Anwendungsprofil auf der Seite mets:fileSec (https://deutsche-digitale-bibliothek.atlassian.net/wiki/x/dgPeAg) und in den entsprechenden Unterseiten der Seite Aufbau einer METS/MODS-Datei für die DDB (https://deutsche-digitale-bibliothek.atlassian.net/wiki/x/MwLeAg).</sch:assert>
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
                     see="https://deutsche-digitale-bibliothek.atlassian.net/wiki/x/wwreAg">In der <sch:span class="monotype">mets:fileGrp[@USE='FULLTEXT']</sch:span> fehlt mindestens einem enthaltenden <sch:span class="monotype">mets:file</sch:span> das Attribut MIMETYPE mit dem Wert <sch:span class="monotype">text/xml</sch:span>. Die <sch:span class="monotype">mets:file</sch:span> in <sch:span class="monotype">mets:fileGrp[@USE='FULLTEXT']</sch:span> müssen in ihrem Unterelement <sch:span class="monotype">mets:FLocat</sch:span> im Attribut <sch:span class="monotype">xlink:href</sch:span> auf eine ALTO-Datei verweisen.
Fehlt das zur entsprechenden Auszeichung benötigte Attribut <sch:span class="monotype">MIMETYPE</sch:span> in <sch:span class="monotype">mets:file</sch:span> oder besitzt es einen anderen Wert als <sch:span class="monotype">text/xml</sch:span>, geht das Zeitungsportal trotzdem davon aus, dass im Unterelement <sch:span class="monotype">mets:FLocat</sch:span> im Attribut <sch:span class="monotype">xlink:href</sch:span> eine ALTO-Datei referenziert wird.
Weitere Informationen zu diesem Element und seinem Kontext finden Sie im DDB-METS/MODS-Anwendungsprofil auf der Seite mets:fileSec (https://deutsche-digitale-bibliothek.atlassian.net/wiki/x/dgPeAg) und in den entsprechenden Unterseiten der Seite Aufbau einer METS/MODS-Datei für die DDB (https://deutsche-digitale-bibliothek.atlassian.net/wiki/x/MwLeAg).</sch:report>
      </sch:rule>
   </sch:pattern>
   <sch:pattern>
      <sch:rule context="mets:mets/mets:fileSec">
            <!-- 
               Attribut MIMETYPE fehlt in mets:file
             -->
         <sch:report id="fileSec_08"
                     role="warn"
                     test="//mets:file[string-length(@MIMETYPE) = 0]"
                     see="https://deutsche-digitale-bibliothek.atlassian.net/wiki/x/wwreAg">Das Element <sch:span class="monotype">mets:file</sch:span> muss das Attribut <sch:span class="monotype">MIMETYPE</sch:span> besitzen. Der Datensatz enthält mindestens ein <sch:span class="monotype">mets:file</sch:span> ohne das Attribut <sch:span class="monotype">MIMETYPE</sch:span>.
Das Fehlen des Attributs <sch:span class="monotype">MIMETYPE</sch:span> verhindert nicht das Einspielen des Datensatzes in das Zeitungsportal, kann aber zu Darstellungsproblemen führen. Wir bitten Sie daher den Sachverhalt zu prüfen und ggf. die nötigen Korrekturen bis zur nächsten Datenlieferung vorzunehmen.
Weitere Informationen zu diesem Attribut finden Sie im DDB-METS/MODS-Anwendungsprofil auf der Seite mets:fileSec (https://deutsche-digitale-bibliothek.atlassian.net/wiki/x/dgPeAg).</sch:report>
      </sch:rule>
   </sch:pattern>
   <sch:pattern>
      <sch:rule context="mets:mets/mets:fileSec/mets:fileGrp[@USE=('DEFAULT', 'THUMBS', 'FULLTEXT')]/mets:file">
            <!-- 
               mets:file ohne Referenzierung
             -->
         <sch:assert id="fileSec_09"
                     role="fatal"
                     test="key('structMap_PHYSICAL_fptr_FILEID', @ID)"
                     properties="id"
                     see="https://deutsche-digitale-bibliothek.atlassian.net/wiki/x/wwreAg">Das Element <sch:span class="monotype">mets:file</sch:span> in einem <sch:span class="monotype">mets:fileGrp</sch:span> Element mit einem der Werte <sch:span class="monotype">DEFAULT</sch:span>, <sch:span class="monotype">THUMBS</sch:span> oder <sch:span class="monotype">FULLTEXT</sch:span> im Attribut <sch:span class="monotype">USE</sch:span> muss über sein Attribut <sch:span class="monotype">ID</sch:span> mit einem <sch:span class="monotype">mets:fptr</sch:span>-Element im Element <sch:span class="monotype">mets:structMap[@TYPE='PHYSICAL']</sch:span> über dessen Attribut <sch:span class="monotype">FILEID</sch:span> referenziert werden.
Fehlt diese Referenzierung, wird der Datensatz nicht in das Zeitungsportal eingespielt.
Weitere Informationen zu diesen Elementen finden Sie im DDB-METS/MODS-Anwendungsprofil auf den Seiten mets:fileSec (https://deutsche-digitale-bibliothek.atlassian.net/wiki/x/dgPeAg) und mets:structMap[@TYPE='PHYSICAL'] (https://deutsche-digitale-bibliothek.atlassian.net/wiki/x/DgXeAg).</sch:assert>
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
                     see="https://deutsche-digitale-bibliothek.atlassian.net/wiki/x/uwreAg">Der Datensatz muss das Element <sch:span class="monotype">mets:structMap</sch:span> mit dem Attribut <sch:span class="monotype">TYPE</sch:span> mit dem Wert <sch:span class="monotype">LOGICAL</sch:span> enthalten.
Fehlt ein entsprechendes <sch:span class="monotype">mets:structMap</sch:span>, wird der Datensatz nicht in das Zeitungsportal eingespielt.
Weitere Informationen zu diesem Element und seinem Kontext finden Sie im DDB-METS/MODS-Anwendungsprofil auf der Seite mets:structMap[@TYPE='LOGICAL'] (https://deutsche-digitale-bibliothek.atlassian.net/wiki/x/bAXeAg) und im Bereich Aufbau einer METS/MODS-Datei für die DDB (https://deutsche-digitale-bibliothek.atlassian.net/wiki/x/MwLeAg).</sch:assert>
      </sch:rule>
      <sch:rule context="mets:mets/mets:structMap[@TYPE='LOGICAL']">
            <!-- 
               mets:structMap[@TYPE='LOGICAL'] ist unvollständig
             -->
         <sch:assert id="structMapLogical_02"
                     role="fatal"
                     test="mets:div"
                     see="https://deutsche-digitale-bibliothek.atlassian.net/wiki/x/uwreAg">Das Element <sch:span class="monotype">mets:structMap</sch:span> mit dem Attribut <sch:span class="monotype">TYPE</sch:span> mit dem Wert <sch:span class="monotype">LOGICAL</sch:span> muss mindestens ein <sch:span class="monotype">mets:div</sch:span>-Element enthalten.
Ist dies nicht der Fall, wird der Datensatz nicht in das Zeitungsportal eingespielt.
Weitere Informationen zu diesem Element und seinem Kontext finden Sie im DDB-METS/MODS-Anwendungsprofil auf der Seite mets:structMap[@TYPE='LOGICAL'] (https://deutsche-digitale-bibliothek.atlassian.net/wiki/x/bAXeAg) und im Bereich Aufbau einer METS/MODS-Datei für die DDB (https://deutsche-digitale-bibliothek.atlassian.net/wiki/x/MwLeAg).</sch:assert>
      </sch:rule>
   </sch:pattern>
   <sch:pattern>
      <sch:rule context="mets:mets/mets:structMap[@TYPE='LOGICAL']//mets:div">
            <!-- 
               mets:div in mets:structMap[@TYPE='LOGICAL'] ohne eindeutigen Identifier im Attribut ID
             -->
         <sch:assert id="structMapLogical_03"
                     role="fatal"
                     test="count(key('mets_ids', @ID)) = 1 and matches(@ID, '^[\i-[:]][\c-[:]]*$')"
                     properties="id"
                     see="https://deutsche-digitale-bibliothek.atlassian.net/wiki/x/uwreAg">Das Element <sch:span class="monotype">mets:div</sch:span> im Element <sch:span class="monotype">mets:structMap[@TYPE='LOGICAL']</sch:span> muss das Attribut <sch:span class="monotype">ID</sch:span> mit einem im Datensatz eindeutigen Identifier enthalten. Dieser darf darüber hinaus keine ungültigen Zeichen enthalten.
Fehlt das Attribut <sch:span class="monotype">ID</sch:span> bzw. enthält es ungültige Zeichen, wird der Datensatz nicht in das Zeitungsportal eingespielt.
Weitere Informationen zu diesem Attribut finden Sie im DDB-METS/MODS-Anwendungsprofil auf der Seite mets:structMap[@TYPE='LOGICAL'] (https://deutsche-digitale-bibliothek.atlassian.net/wiki/x/bAXeAg).</sch:assert>
      </sch:rule>
   </sch:pattern>
   <sch:pattern>
      <sch:rule context="mets:mets/mets:structMap[@TYPE='LOGICAL']//mets:div[@DMDID[tokenize(., ' ') = $work_dmdid]]//mets:div | mets:mets/mets:structMap[@TYPE='LOGICAL']//mets:div[@DMDID[tokenize(., ' ') = $work_dmdid]]">
            <!-- 
               mets:div in mets:structMap[@TYPE='LOGICAL'] ohne Referenzierung
             -->
         <sch:assert id="structMapLogical_04"
                     role="fatal"
                     test="key('structLink_from_ids', @ID)"
                     properties="id"
                     see="https://deutsche-digitale-bibliothek.atlassian.net/wiki/x/uwreAg">Das Element <sch:span class="monotype">mets:div</sch:span> im Element <sch:span class="monotype">mets:structMap[@TYPE='LOGICAL']</sch:span> mit dem Attribut <sch:span class="monotype">DMDID</sch:span> muss über sein Attribut <sch:span class="monotype">ID</sch:span> von mindestens einem <sch:span class="monotype">mets:smLink</sch:span>-Element im Element <sch:span class="monotype">mets:structLink</sch:span> über dessen Attribut <sch:span class="monotype">xlink:from</sch:span> referenziert werden.
Fehlt diese Referenzierung, wird der Datensatz nicht in das Zeitungsportal eingespielt.
Weitere Informationen zu diesen Elementen finden Sie im DDB-METS/MODS-Anwendungsprofil auf den Seiten mets:structMap[@TYPE='LOGICAL'] (https://deutsche-digitale-bibliothek.atlassian.net/wiki/x/bAXeAg) und mets:structLink (https://deutsche-digitale-bibliothek.atlassian.net/wiki/x/_QbeAg).</sch:assert>
      </sch:rule>
   </sch:pattern>
   <sch:pattern>
      <sch:rule context="mets:mets/mets:structMap[@TYPE='LOGICAL']//mets:div[@DMDID[tokenize(., ' ') = $work_dmdid]]">
            <!-- 
               Ausgabe/Beilage enthält mets:mptr zur Ausgabe/Beilage
             -->
         <sch:report id="structMapLogical_14"
                     role="error"
                     test="mets:mptr"
                     properties="id"
                     see="https://deutsche-digitale-bibliothek.atlassian.net/wiki/x/uwreAg">Im METS-Datensatz zu der Ausgabe/Beilage einer Zeitung darf kein <sch:span class="monotype">mets:mptr</sch:span> enhalten sein, der auf eben diesen METS-Datensatz verweist. Ist dies der Fall, wird der <sch:span class="monotype">mets:mptr</sch:span> bei der Transformation der Daten entfernt.
Weitere Informationen zu diesem Element finden Sie im DDB-METS/MODS-Anwendungsprofil auf der Seite mets:structMap[@TYPE='LOGICAL'] (https://deutsche-digitale-bibliothek.atlassian.net/wiki/x/bAXeAg).</sch:report>
      </sch:rule>
   </sch:pattern>
   <sch:pattern>
      <sch:rule context="mets:mets/mets:structMap[@TYPE='LOGICAL']//mets:div[@DMDID[tokenize(., ' ') = $work_dmdid]]">
            <!-- 
               Das Attribut DMDID des mets:div der Ausgabe/Beilage fehlt
             -->
         <sch:assert id="structMapLogical_15"
                     role="fatal"
                     test="string-length(./@DMDID) &gt; 0"
                     properties="id"
                     see="https://deutsche-digitale-bibliothek.atlassian.net/wiki/x/uwreAg">Jede Ausgabe/Beilage muss eine <sch:span class="monotype">mets:dmdSec</sch:span> enthalten, die die bibliographische Beschreibung der Ausgabe/Beilage enthält. Diese <sch:span class="monotype">mets:dmdSec</sch:span> muss durch einen Identifier eindeutig beschrieben werden, der in der <sch:span class="monotype">mets:structMap[@TYPE='LOGICAL']</sch:span> in der <sch:span class="monotype">mets:div</sch:span> mit dem Strukturtyp <sch:span class="monotype">issue</sch:span> bzw. <sch:span class="monotype">additional</sch:span> in dem Attribut <sch:span class="monotype">DMDID</sch:span> steht.
Weitere Informationen zu diesem Attribut finden Sie im DDB-METS/MODS-Anwendungsprofil auf der Seite mets:structMap[@TYPE='LOGICAL'] (https://deutsche-digitale-bibliothek.atlassian.net/wiki/x/bAXeAg).</sch:assert>
      </sch:rule>
   </sch:pattern>
   <sch:pattern>
      <sch:rule context="mets:mets/mets:structMap[@TYPE='LOGICAL']//mets:mptr">
            <!-- 
               Ungültige Referenz im Attribut xlink:href von mets:mptr in mets:structMap[@TYPE='LOGICAL']
             -->
         <sch:assert id="structMapLogical_17"
                     role="fatal"
                     test="matches(./@xlink:href, '^(http|https)://[a-zA-Z0-9\-\.]+\.[a-zA-Z][a-zA-Z]+(:[a-zA-Z0-9]*)?/?([a-zA-Z0-9\-\._\?,/\\\+&amp;%\$#=~:])*$')"
                     properties="id"
                     see="https://deutsche-digitale-bibliothek.atlassian.net/wiki/x/uwreAg">Das Attribut <sch:span class="monotype">xlink:href</sch:span> des <sch:span class="monotype">mets:mptr</sch:span>-Elements im Element <sch:span class="monotype">mets:structMap[@TYPE='LOGICAL']</sch:span> muss einen validen http-URL enthalten.
Ist dies nicht der Fall, wird der Datensatz nicht in das Zeitungsportal eingespielt.
Weitere Informationen zu diesem Attribut und seinem Kontext finden Sie im DDB-METS/MODS-Anwendungsprofil auf der Seite mets:structMap[@TYPE='LOGICAL'] (https://deutsche-digitale-bibliothek.atlassian.net/wiki/x/bAXeAg) und der Seite Aufbau für Teile Mehrteiliger Dokumente (https://deutsche-digitale-bibliothek.atlassian.net/wiki/x/4gbeAg).</sch:assert>
      </sch:rule>
   </sch:pattern>
   <sch:pattern>
      <sch:rule context="mets:mets/mets:structMap[@TYPE='LOGICAL']/descendant-or-self::*[mets:div[@DMDID[tokenize(., ' ') = $work_dmdid]]]/mets:div[@DMDID[tokenize(., ' ') != $work_dmdid] or not (@DMDID)]">
            <!-- 
               mets:mptr in mets:div innerhalb von mets:structMap[@TYPE='LOGICAL'] mehrfach vorhanden
             -->
         <sch:report id="structMapLogical_28"
                     role="fatal"
                     test="true()"
                     properties="id"
                     see="https://deutsche-digitale-bibliothek.atlassian.net/wiki/x/uwreAg">Ein Datensatz muss entweder eine Ausgabe oder eine Beilage beschreiben. Das Element <sch:span class="monotype">mets:mptr</sch:span> im Element <sch:span class="monotype">mets:div</sch:span> innerhalb des Elements <sch:span class="monotype">mets:structMap[@TYPE='LOGICAL']</sch:span> darf nicht wiederholt werden.
Enthält <sch:span class="monotype">mets:div</sch:span> mehr als ein <sch:span class="monotype">mets:mptr</sch:span>, wird der Datensatz nicht in das Zeitungsportal eingespielt.
Weitere Informationen zu diesem Attribut finden Sie im DDB-METS/MODS-Anwendungsprofil auf der Seite mets:structMap[@TYPE='LOGICAL'] (https://deutsche-digitale-bibliothek.atlassian.net/wiki/x/bAXeAg).</sch:report>
      </sch:rule>
   </sch:pattern>
   <sch:pattern>
      <sch:rule context="mets:mets/mets:structMap[@TYPE='LOGICAL']//mets:div[@DMDID[tokenize(., ' ') = $work_dmdid]]">
            <!-- 
               mets:structMap[@TYPE='LOGICAL'] enthält mehrere primäre mets:div
             -->
         <sch:report id="structMapLogical_29"
                     role="fatal"
                     test="./ancestor::mets:div/following-sibling::mets:div[descendant::mets:div[@TYPE=('issue', 'additional')]]"
                     properties="id"
                     see="https://deutsche-digitale-bibliothek.atlassian.net/wiki/x/uwreAg">Ein Datensatz muss entweder eine Ausgabe oder eine Beilage beschreiben. Das bedeutet, er darf im Element <sch:span class="monotype">mets:structMap[@TYPE='LOGICAL']</sch:span> nur in einem Zweig ein primäres <sch:span class="monotype">mets:div</sch:span>-Element enthalten. Ist dies nicht der Fall, wird der Datensatz nicht in das Zeitungsportal eingespielt.
Weitere Informationen zu diesem Element und seinem Kontext finden Sie im DDB-METS/MODS-Anwendungsprofil auf der Seite mets:structMap[@TYPE='LOGICAL'] (https://deutsche-digitale-bibliothek.atlassian.net/wiki/x/bAXeAg) und im Bereich Aufbau für Zeitungsausgaben (https://deutsche-digitale-bibliothek.atlassian.net/wiki/x/5wHeAg).</sch:report>
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
                     see="https://deutsche-digitale-bibliothek.atlassian.net/wiki/x/uwreAg">Um die Seiten des Dokuments in der richtigen Reihenfolge anzuzeigen, ist es notwendig, dass der Datensatz das Element <sch:span class="monotype">mets:structMap</sch:span> mit dem Attribut <sch:span class="monotype">TYPE</sch:span> mit dem Wert <sch:span class="monotype">PHYSICAL</sch:span> enthält.
Fehlt ein entsprechendes <sch:span class="monotype">mets:structMap</sch:span>, wird der Datensatz nicht in das Zeitungsportal eingespielt.
Weitere Informationen zu diesem Element und seinem Kontext finden Sie im DDB-METS/MODS-Anwendungsprofil auf der Seite mets:structMap[@TYPE='PHYSICAL'] (https://deutsche-digitale-bibliothek.atlassian.net/wiki/x/DgXeAg) und im Bereich Aufbau einer METS/MODS-Datei für die DDB (https://deutsche-digitale-bibliothek.atlassian.net/wiki/x/MwLeAg).</sch:assert>
      </sch:rule>
      <sch:rule context="mets:mets/mets:structMap[@TYPE='PHYSICAL'][not(mets:div[@TYPE='physSequence'])]">
            <!-- 
               mets:div[@TYPE='physSequence'] fehlt in mets:structMap[@TYPE='PHYSICAL']
             -->
         <sch:assert id="structMapPhysical_02"
                     role="fatal"
                     test="mets:div[@TYPE='physSequence']"
                     see="https://deutsche-digitale-bibliothek.atlassian.net/wiki/x/uwreAg">Das Element <sch:span class="monotype">mets:structMap</sch:span> mit dem Attribut <sch:span class="monotype">TYPE</sch:span> mit dem Wert <sch:span class="monotype">PHYSICAL</sch:span> muss das Unterelement <sch:span class="monotype">mets:div</sch:span> mit dem Attribut <sch:span class="monotype">TYPE</sch:span> den Wert <sch:span class="monotype">physSequence</sch:span> enthalten.
Ist dies nicht der Fall, wird der Datensatz nicht in das Zeitungsportal eingespielt.
Weitere Informationen zu diesem Element und seinem Kontext finden Sie im DDB-METS/MODS-Anwendungsprofil auf der Seite mets:structMap[@TYPE='PHYSICAL'] (https://deutsche-digitale-bibliothek.atlassian.net/wiki/x/DgXeAg) und im Bereich Aufbau einer METS/MODS-Datei für die DDB (https://deutsche-digitale-bibliothek.atlassian.net/wiki/x/MwLeAg).</sch:assert>
      </sch:rule>
      <sch:rule context="mets:mets/mets:structMap[@TYPE='PHYSICAL']">
            <!-- 
               mets:div[@TYPE='page'] fehlt in mets:div[@TYPE='physSequence']
             -->
         <sch:assert id="structMapPhysical_03"
                     role="fatal"
                     test="mets:div[@TYPE='physSequence']/mets:div[@TYPE='page']"
                     see="https://deutsche-digitale-bibliothek.atlassian.net/wiki/x/uwreAg">Das Element <sch:span class="monotype">mets:div</sch:span> mit dem Attribut <sch:span class="monotype">TYPE</sch:span> mit dem Wert <sch:span class="monotype">physSequence</sch:span> im Element <sch:span class="monotype">mets:structMap[@TYPE='PHYSICAL']</sch:span> muss mindestens ein <sch:span class="monotype">mets:div</sch:span>-Element mit dem Attribut <sch:span class="monotype">TYPE</sch:span> mit dem Wert <sch:span class="monotype">page</sch:span> enthalten.
Ist dies nicht der Fall, wird der Datensatz nicht in das Zeitungsportal eingespielt.
Weitere Informationen zu diesem Element und seinem Kontext finden Sie im DDB-METS/MODS-Anwendungsprofil auf der Seite mets:structMap[@TYPE='PHYSICAL'] (https://deutsche-digitale-bibliothek.atlassian.net/wiki/x/DgXeAg) und im Bereich Aufbau einer METS/MODS-Datei für die DDB (https://deutsche-digitale-bibliothek.atlassian.net/wiki/x/MwLeAg).</sch:assert>
      </sch:rule>
   </sch:pattern>
   <sch:pattern>
      <sch:rule context="mets:mets/mets:structMap[@TYPE='PHYSICAL']//mets:div">
            <!-- 
               mets:div in mets:structMap[@TYPE='PHYSICAL'] ohne eindeutigen Identifier im Attribut ID
             -->
         <sch:assert id="structMapPhysical_04"
                     role="fatal"
                     test="count(key('mets_ids', @ID)) = 1 and matches(@ID, '^[\i-[:]][\c-[:]]*$')"
                     properties="id"
                     see="https://deutsche-digitale-bibliothek.atlassian.net/wiki/x/uwreAg">Das Element <sch:span class="monotype">mets:div</sch:span> im Element <sch:span class="monotype">mets:structMap[@TYPE='PHYSICAL']</sch:span> muss das Attribut <sch:span class="monotype">ID</sch:span> mit einem im Datensatz eindeutigen Identifier enthalten. Dieser darf darüber hinaus keine ungültigen Zeichen enthalten.
Fehlt das Attribut <sch:span class="monotype">ID</sch:span> bzw. enthält es ungültige Zeichen, wird der Datensatz nicht in das Zeitungsportal eingespielt.
Weitere Informationen zu diesem Attribut finden Sie im DDB-METS/MODS-Anwendungsprofil auf der Seite mets:structMap[@TYPE='PHYSICAL'] (https://deutsche-digitale-bibliothek.atlassian.net/wiki/x/DgXeAg).</sch:assert>
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
                     see="https://deutsche-digitale-bibliothek.atlassian.net/wiki/x/uwreAg">Das Element <sch:span class="monotype">mets:div</sch:span> innerhalb des Elements <sch:span class="monotype">mets:structMap[@TYPE='PHYSICAL']</sch:span>, das das Attribut <sch:span class="monotype">TYPE</sch:span> mit dem Wert <sch:span class="monotype">page</sch:span> besitzt, muss auch das Attribut <sch:span class="monotype">order</sch:span> enthalten.
Fehlt das Attribut <sch:span class="monotype">order</sch:span>, verhindert dies nicht das Einspielen des Datensatzes in das Zeitungsportal, wir bitten Sie jedoch, den Sachverhalt zu prüfen und die nötigen Korrekturen bis zur nächsten Datenlieferung vorzunehmen.
Weitere Informationen zu diesem Attribut finden Sie im DDB-METS/MODS-Anwendungsprofil auf der Seite mets:structMap[@TYPE='PHYSICAL'] (https://deutsche-digitale-bibliothek.atlassian.net/wiki/x/DgXeAg).</sch:assert>
      </sch:rule>
      <sch:rule context="mets:mets/mets:structMap[@TYPE='PHYSICAL']//mets:div[@TYPE='page']">
            <!-- 
               Ungültiger Wert im Attribut order von mets:div in mets:structMap[@TYPE='PHYSICAL']
             -->
         <sch:assert id="structMapPhysical_06"
                     role="warn"
                     test="matches(@ORDER, '^\d+$')"
                     properties="id"
                     see="https://deutsche-digitale-bibliothek.atlassian.net/wiki/x/uwreAg">Das Attribut <sch:span class="monotype">order</sch:span> vom Element <sch:span class="monotype">mets:div[@TYPE='page']</sch:span> im Element <sch:span class="monotype">mets:structMap[@TYPE='PHYSICAL']</sch:span>muss als Wert einen Integer enthalten.
Die Verwendung eines ungültigen Wertes verhindert nicht das Einspielen des Datensatzes in das Zeitungsportal, kann aber zu Darstellungsproblemen führen. Wir bitten Sie daher den Sachverhalt zu prüfen und ggf. die nötigen Korrekturen bis zur nächsten Datenlieferung vorzunehmen.
Weitere Informationen zu diesem Attribut finden Sie im DDB-METS/MODS-Anwendungsprofil auf der Seite mets:structMap[@TYPE='PHYSICAL'] (https://deutsche-digitale-bibliothek.atlassian.net/wiki/x/DgXeAg).</sch:assert>
      </sch:rule>
   </sch:pattern>
   <sch:pattern>
      <sch:rule context="mets:mets/mets:structMap[@TYPE='PHYSICAL']//mets:div[@TYPE='page']">
            <!-- 
               Das Attribut FILEID fehlt in mets:fptr
             -->
         <sch:assert id="structMapPhysical_07"
                     role="fatal"
                     test="mets:fptr[string-length(@FILEID) &gt; 0]"
                     properties="id"
                     see="https://deutsche-digitale-bibliothek.atlassian.net/wiki/x/uwreAg">Das Element <sch:span class="monotype">mets:fptr</sch:span> im Element <sch:span class="monotype">mets:div[@TYPE='page']</sch:span> muss das Attribut <sch:span class="monotype">FILEID</sch:span> enthalten.
Fehlt <sch:span class="monotype">FILEID</sch:span> in <sch:span class="monotype">mets:div[@TYPE='page']</sch:span>, wird der Datensatz nicht in das Zeitungsportal eingespielt.
Weitere Informationen zu diesem Attribut finden Sie im DDB-METS/MODS-Anwendungsprofil auf der Seite mets:structMap[@TYPE='PHYSICAL'] (https://deutsche-digitale-bibliothek.atlassian.net/wiki/x/DgXeAg).</sch:assert>
      </sch:rule>
   </sch:pattern>
   <sch:pattern>
      <sch:rule context="mets:mets/mets:structMap[@TYPE='PHYSICAL'][//mets:div[@TYPE='page'][starts-with(@CONTENTIDS, 'urn:')]]//mets:div[@TYPE='page']">
            <!-- 
               Das Attribut CONTENTIDS fehlt in mets:div[@TYPE='page'] bzw. enthält keinen URN
             -->
         <sch:assert id="structMapPhysical_08"
                     role="fatal"
                     test="starts-with(@CONTENTIDS, 'urn:')"
                     properties="id"
                     see="https://deutsche-digitale-bibliothek.atlassian.net/wiki/x/uwreAg">Der Datensatz enthält in mindestens einem <sch:span class="monotype">mets:div[@TYPE='page']</sch:span>-Element im Element <sch:span class="monotype">mets:structMap[@TYPE='PHYSICAL']</sch:span>im Attribut <sch:span class="monotype">CONTENTIDS</sch:span> einen URN. Ist dies der Fall, müssen alle <sch:span class="monotype">mets:div[@TYPE='page']</sch:span> das Attribut <sch:span class="monotype">CONTENTIDS</sch:span> mit einem URN besitzen.
Fehlt <sch:span class="monotype">CONTENTIDS</sch:span> mit einem URN in einem <sch:span class="monotype">mets:div[@TYPE='page']</sch:span>, wird der Datensatz nicht in das Zeitungsportal eingespielt.
Weitere Informationen zu diesem Attribut finden Sie im DDB-METS/MODS-Anwendungsprofil auf der Seite mets:structMap[@TYPE='PHYSICAL'] (https://deutsche-digitale-bibliothek.atlassian.net/wiki/x/DgXeAg).</sch:assert>
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
                     see="https://deutsche-digitale-bibliothek.atlassian.net/wiki/x/RwPeAg">
            <sch:span class="monotype">mets:structLink</sch:span> ist notwendig, um die Ebenen der logischen Struktur mit den dazugehörigen Seiten zu verknüpfen.
Fehlt <sch:span class="monotype">mets:structLink</sch:span>, wird der Datensatz nicht in das Zeitungsportal eingespielt.
Weitere Informationen zu diesem Element und seinem Kontext finden Sie im DDB-METS/MODS-Anwendungsprofil auf der Seite mets:structLink (https://deutsche-digitale-bibliothek.atlassian.net/wiki/x/_QbeAg) und im Bereich Aufbau einer METS/MODS-Datei für die DDB (https://deutsche-digitale-bibliothek.atlassian.net/wiki/x/MwLeAg).</sch:assert>
      </sch:rule>
      <sch:rule context="mets:mets/mets:structLink[not(mets:smLink)]">
            <!-- 
               mets:smLink fehlt in mets:structLink
             -->
         <sch:assert id="structLink_02"
                     role="fatal"
                     test="mets:smLink"
                     see="https://deutsche-digitale-bibliothek.atlassian.net/wiki/x/RwPeAg">Das Element <sch:span class="monotype">mets:structLink</sch:span> muss mindestens ein <sch:span class="monotype">mets:smLink</sch:span>-Element enthalten.
Ist dies nicht der Fall, wird der Datensatz nicht in das Zeitungsportal eingespielt.
Weitere Informationen zu diesem Element und seinem Kontext finden Sie im DDB-METS/MODS-Anwendungsprofil auf der Seite mets:structLink (https://deutsche-digitale-bibliothek.atlassian.net/wiki/x/_QbeAg) und im Bereich Aufbau einer METS/MODS-Datei für die DDB (https://deutsche-digitale-bibliothek.atlassian.net/wiki/x/MwLeAg).</sch:assert>
      </sch:rule>
      <sch:rule context="mets:mets/mets:structLink/mets:smLink[not(string-length(@xlink:from) &gt; 0 and string-length(@xlink:to) &gt; 0)]">
            <!-- 
               Attribut xlink:from bzw. xlink:to fehlt in mets:smLink
             -->
         <sch:assert id="structLink_03"
                     role="fatal"
                     test="string-length(@xlink:from) &gt; 0 and string-length(@xlink:to) &gt; 0"
                     see="https://deutsche-digitale-bibliothek.atlassian.net/wiki/x/RwPeAg">Das Element <sch:span class="monotype">mets:smLink</sch:span> muss die Attribute <sch:span class="monotype">xlink:from</sch:span> und <sch:span class="monotype">xlink:to</sch:span> enthalten.
Fehlen diese Attribute, wird der Datensatz nicht in das Zeitungsportal eingespielt.
Weitere Informationen zu diesem Element, seinen Attributen und seinem Kontext finden Sie im DDB-METS/MODS-Anwendungsprofil auf der Seite mets:structLink (https://deutsche-digitale-bibliothek.atlassian.net/wiki/x/_QbeAg) und im Bereich Aufbau einer METS/MODS-Datei für die DDB (https://deutsche-digitale-bibliothek.atlassian.net/wiki/x/MwLeAg).</sch:assert>
      </sch:rule>
      <sch:rule context="mets:mets/mets:structLink/mets:smLink">
            <!-- 
               Ungültige Referenz im Attribut xlink:to von mets:smLink
             -->
         <sch:assert id="structLink_04"
                     role="fatal"
                     test="key('structMap_PHYSICAL_ids', @xlink:to)"
                     see="https://deutsche-digitale-bibliothek.atlassian.net/wiki/x/RwPeAg">Das Attribut <sch:span class="monotype">xlink:to</sch:span> des Elements <sch:span class="monotype">mets:smLink</sch:span> muss den Wert des Attributs <sch:span class="monotype">ID</sch:span> eines <sch:span class="monotype">mets:div</sch:span>-Elements im Element <sch:span class="monotype">mets:structMap[@TYPE='PHYSICAL']</sch:span> referenzieren.
Enthält ein <sch:span class="monotype">xlink:to</sch:span> eine ungültige Referenz, wird der Datensatz nicht in das Zeitungsportal eingespielt.
Weitere Informationen zu diesen Elementen, ihren Attributen und ihrem Kontext finden Sie im DDB-METS/MODS-Anwendungsprofil auf den Seiten mets:structLink (https://deutsche-digitale-bibliothek.atlassian.net/wiki/x/_QbeAg) und mets:structMap[@TYPE='PHYSICAL'] (https://deutsche-digitale-bibliothek.atlassian.net/wiki/x/DgXeAg) sowie im Bereich Aufbau einer METS/MODS-Datei für die DDB (https://deutsche-digitale-bibliothek.atlassian.net/wiki/x/MwLeAg).</sch:assert>
      </sch:rule>
   </sch:pattern>
   <sch:pattern>
      <sch:rule context="oai:record/oai:metadata/mets:mets/mets:structLink/mets:smLink[1]">
            <!-- 
               Ungültiger Namensraum für XLink-Attribute von mets:smLink
             -->
         <sch:assert id="structLink_05"
                     role="fatal"
                     test="@*[local-name() = 'from'][namespace-uri() = 'http://www.w3.org/1999/xlink']"
                     see="https://deutsche-digitale-bibliothek.atlassian.net/wiki/x/RwPeAg">Die Attribute <sch:span class="monotype">xlink:from</sch:span> und <sch:span class="monotype">xlink:to</sch:span> des Elements <sch:span class="monotype">mets:smLink</sch:span> verwenden einen ungültigen Namensraum. Der korrekte Namensraum für diese XLink-Attribute ist <sch:span class="monotype">http://www.w3.org/1999/xlink</sch:span>.
Verwenden die Attribute einen ungültigen Namensraum, ist eine Verarbeitung des Datensatzes nicht möglich und er wird nicht in das Zeitungsportal eingespielt.
Weitere Informationen zu diesem Element, seinen Attributen und seinem Kontext finden Sie im DDB-METS/MODS-Anwendungsprofil auf der Seite mets:structLink (https://deutsche-digitale-bibliothek.atlassian.net/wiki/x/_QbeAg).</sch:assert>
      </sch:rule>
   </sch:pattern>
</sch:schema>
