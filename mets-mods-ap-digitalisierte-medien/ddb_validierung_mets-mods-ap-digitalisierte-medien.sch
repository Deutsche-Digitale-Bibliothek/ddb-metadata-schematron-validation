<?xml version="1.0" encoding="UTF-8"?>
<sch:schema xmlns:sch="http://purl.oclc.org/dsdl/schematron"
            xmlns:xs="http://www.w3.org/2001/XMLSchema"
            xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
            schemaVersion="v2026-10-15T08:13:09"
            queryBinding="xslt2">
   <sch:title>Validierung der Fachstelle Bibliothek der Deutschen Digitalen Bibliothek für das Anwendungsprofil für die Verwendung von METS/MODS in der DDB</sch:title>
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
   <sch:let name="marc_relator_codes">
      <marc_relator_codes xmlns="dcg:maps">
         <marc_relator_code>abr</marc_relator_code>
         <marc_relator_code>acp</marc_relator_code>
         <marc_relator_code>act</marc_relator_code>
         <marc_relator_code>adi</marc_relator_code>
         <marc_relator_code>adp</marc_relator_code>
         <marc_relator_code>aft</marc_relator_code>
         <marc_relator_code>anc</marc_relator_code>
         <marc_relator_code>anl</marc_relator_code>
         <marc_relator_code>anm</marc_relator_code>
         <marc_relator_code>ann</marc_relator_code>
         <marc_relator_code>ant</marc_relator_code>
         <marc_relator_code>ape</marc_relator_code>
         <marc_relator_code>apl</marc_relator_code>
         <marc_relator_code>app</marc_relator_code>
         <marc_relator_code>aqt</marc_relator_code>
         <marc_relator_code>arc</marc_relator_code>
         <marc_relator_code>ard</marc_relator_code>
         <marc_relator_code>arr</marc_relator_code>
         <marc_relator_code>art</marc_relator_code>
         <marc_relator_code>asg</marc_relator_code>
         <marc_relator_code>asn</marc_relator_code>
         <marc_relator_code>ato</marc_relator_code>
         <marc_relator_code>att</marc_relator_code>
         <marc_relator_code>auc</marc_relator_code>
         <marc_relator_code>aud</marc_relator_code>
         <marc_relator_code>aue</marc_relator_code>
         <marc_relator_code>aui</marc_relator_code>
         <marc_relator_code>aup</marc_relator_code>
         <marc_relator_code>aus</marc_relator_code>
         <marc_relator_code>aut</marc_relator_code>
         <marc_relator_code>bdd</marc_relator_code>
         <marc_relator_code>bjd</marc_relator_code>
         <marc_relator_code>bka</marc_relator_code>
         <marc_relator_code>bkd</marc_relator_code>
         <marc_relator_code>bkp</marc_relator_code>
         <marc_relator_code>blw</marc_relator_code>
         <marc_relator_code>bnd</marc_relator_code>
         <marc_relator_code>bpd</marc_relator_code>
         <marc_relator_code>brd</marc_relator_code>
         <marc_relator_code>brl</marc_relator_code>
         <marc_relator_code>bsl</marc_relator_code>
         <marc_relator_code>cad</marc_relator_code>
         <marc_relator_code>cas</marc_relator_code>
         <marc_relator_code>ccp</marc_relator_code>
         <marc_relator_code>chr</marc_relator_code>
         <marc_relator_code>cli</marc_relator_code>
         <marc_relator_code>cll</marc_relator_code>
         <marc_relator_code>clr</marc_relator_code>
         <marc_relator_code>clt</marc_relator_code>
         <marc_relator_code>cmm</marc_relator_code>
         <marc_relator_code>cmp</marc_relator_code>
         <marc_relator_code>cmt</marc_relator_code>
         <marc_relator_code>cnd</marc_relator_code>
         <marc_relator_code>cng</marc_relator_code>
         <marc_relator_code>cns</marc_relator_code>
         <marc_relator_code>coe</marc_relator_code>
         <marc_relator_code>col</marc_relator_code>
         <marc_relator_code>com</marc_relator_code>
         <marc_relator_code>con</marc_relator_code>
         <marc_relator_code>cop</marc_relator_code>
         <marc_relator_code>cor</marc_relator_code>
         <marc_relator_code>cos</marc_relator_code>
         <marc_relator_code>cot</marc_relator_code>
         <marc_relator_code>cou</marc_relator_code>
         <marc_relator_code>cov</marc_relator_code>
         <marc_relator_code>cpc</marc_relator_code>
         <marc_relator_code>cpe</marc_relator_code>
         <marc_relator_code>cph</marc_relator_code>
         <marc_relator_code>cpl</marc_relator_code>
         <marc_relator_code>cpt</marc_relator_code>
         <marc_relator_code>cre</marc_relator_code>
         <marc_relator_code>crp</marc_relator_code>
         <marc_relator_code>crr</marc_relator_code>
         <marc_relator_code>crt</marc_relator_code>
         <marc_relator_code>csl</marc_relator_code>
         <marc_relator_code>csp</marc_relator_code>
         <marc_relator_code>cst</marc_relator_code>
         <marc_relator_code>ctb</marc_relator_code>
         <marc_relator_code>cte</marc_relator_code>
         <marc_relator_code>ctg</marc_relator_code>
         <marc_relator_code>ctr</marc_relator_code>
         <marc_relator_code>cts</marc_relator_code>
         <marc_relator_code>ctt</marc_relator_code>
         <marc_relator_code>cur</marc_relator_code>
         <marc_relator_code>cwt</marc_relator_code>
         <marc_relator_code>dbd</marc_relator_code>
         <marc_relator_code>dbp</marc_relator_code>
         <marc_relator_code>dfd</marc_relator_code>
         <marc_relator_code>dfe</marc_relator_code>
         <marc_relator_code>dft</marc_relator_code>
         <marc_relator_code>dgc</marc_relator_code>
         <marc_relator_code>dgg</marc_relator_code>
         <marc_relator_code>dgs</marc_relator_code>
         <marc_relator_code>dis</marc_relator_code>
         <marc_relator_code>djo</marc_relator_code>
         <marc_relator_code>dln</marc_relator_code>
         <marc_relator_code>dnc</marc_relator_code>
         <marc_relator_code>dnr</marc_relator_code>
         <marc_relator_code>dpc</marc_relator_code>
         <marc_relator_code>dpt</marc_relator_code>
         <marc_relator_code>drm</marc_relator_code>
         <marc_relator_code>drt</marc_relator_code>
         <marc_relator_code>dsr</marc_relator_code>
         <marc_relator_code>dst</marc_relator_code>
         <marc_relator_code>dtc</marc_relator_code>
         <marc_relator_code>dte</marc_relator_code>
         <marc_relator_code>dtm</marc_relator_code>
         <marc_relator_code>dto</marc_relator_code>
         <marc_relator_code>dub</marc_relator_code>
         <marc_relator_code>edc</marc_relator_code>
         <marc_relator_code>edd</marc_relator_code>
         <marc_relator_code>edm</marc_relator_code>
         <marc_relator_code>edt</marc_relator_code>
         <marc_relator_code>egr</marc_relator_code>
         <marc_relator_code>elg</marc_relator_code>
         <marc_relator_code>elt</marc_relator_code>
         <marc_relator_code>eng</marc_relator_code>
         <marc_relator_code>enj</marc_relator_code>
         <marc_relator_code>etr</marc_relator_code>
         <marc_relator_code>evp</marc_relator_code>
         <marc_relator_code>exp</marc_relator_code>
         <marc_relator_code>fac</marc_relator_code>
         <marc_relator_code>fds</marc_relator_code>
         <marc_relator_code>fld</marc_relator_code>
         <marc_relator_code>flm</marc_relator_code>
         <marc_relator_code>fmd</marc_relator_code>
         <marc_relator_code>fmk</marc_relator_code>
         <marc_relator_code>fmo</marc_relator_code>
         <marc_relator_code>fmp</marc_relator_code>
         <marc_relator_code>fnd</marc_relator_code>
         <marc_relator_code>fon</marc_relator_code>
         <marc_relator_code>fpy</marc_relator_code>
         <marc_relator_code>frg</marc_relator_code>
         <marc_relator_code>gdv</marc_relator_code>
         <marc_relator_code>gis</marc_relator_code>
         <marc_relator_code>his</marc_relator_code>
         <marc_relator_code>hnr</marc_relator_code>
         <marc_relator_code>hst</marc_relator_code>
         <marc_relator_code>ill</marc_relator_code>
         <marc_relator_code>ilu</marc_relator_code>
         <marc_relator_code>ins</marc_relator_code>
         <marc_relator_code>inv</marc_relator_code>
         <marc_relator_code>isb</marc_relator_code>
         <marc_relator_code>itr</marc_relator_code>
         <marc_relator_code>ive</marc_relator_code>
         <marc_relator_code>ivr</marc_relator_code>
         <marc_relator_code>jud</marc_relator_code>
         <marc_relator_code>jug</marc_relator_code>
         <marc_relator_code>lbr</marc_relator_code>
         <marc_relator_code>lbt</marc_relator_code>
         <marc_relator_code>ldr</marc_relator_code>
         <marc_relator_code>led</marc_relator_code>
         <marc_relator_code>lee</marc_relator_code>
         <marc_relator_code>lel</marc_relator_code>
         <marc_relator_code>len</marc_relator_code>
         <marc_relator_code>let</marc_relator_code>
         <marc_relator_code>lgd</marc_relator_code>
         <marc_relator_code>lie</marc_relator_code>
         <marc_relator_code>lil</marc_relator_code>
         <marc_relator_code>lit</marc_relator_code>
         <marc_relator_code>lsa</marc_relator_code>
         <marc_relator_code>lse</marc_relator_code>
         <marc_relator_code>lso</marc_relator_code>
         <marc_relator_code>ltg</marc_relator_code>
         <marc_relator_code>lyr</marc_relator_code>
         <marc_relator_code>mcp</marc_relator_code>
         <marc_relator_code>mdc</marc_relator_code>
         <marc_relator_code>med</marc_relator_code>
         <marc_relator_code>mfp</marc_relator_code>
         <marc_relator_code>mfr</marc_relator_code>
         <marc_relator_code>mka</marc_relator_code>
         <marc_relator_code>mod</marc_relator_code>
         <marc_relator_code>mon</marc_relator_code>
         <marc_relator_code>mrb</marc_relator_code>
         <marc_relator_code>mrk</marc_relator_code>
         <marc_relator_code>msd</marc_relator_code>
         <marc_relator_code>mte</marc_relator_code>
         <marc_relator_code>mtk</marc_relator_code>
         <marc_relator_code>mup</marc_relator_code>
         <marc_relator_code>mus</marc_relator_code>
         <marc_relator_code>mxe</marc_relator_code>
         <marc_relator_code>nan</marc_relator_code>
         <marc_relator_code>nrt</marc_relator_code>
         <marc_relator_code>onp</marc_relator_code>
         <marc_relator_code>opn</marc_relator_code>
         <marc_relator_code>org</marc_relator_code>
         <marc_relator_code>orm</marc_relator_code>
         <marc_relator_code>osp</marc_relator_code>
         <marc_relator_code>oth</marc_relator_code>
         <marc_relator_code>own</marc_relator_code>
         <marc_relator_code>pad</marc_relator_code>
         <marc_relator_code>pan</marc_relator_code>
         <marc_relator_code>pat</marc_relator_code>
         <marc_relator_code>pbd</marc_relator_code>
         <marc_relator_code>pbl</marc_relator_code>
         <marc_relator_code>pdr</marc_relator_code>
         <marc_relator_code>pfr</marc_relator_code>
         <marc_relator_code>pht</marc_relator_code>
         <marc_relator_code>plt</marc_relator_code>
         <marc_relator_code>pma</marc_relator_code>
         <marc_relator_code>pmn</marc_relator_code>
         <marc_relator_code>pop</marc_relator_code>
         <marc_relator_code>ppm</marc_relator_code>
         <marc_relator_code>ppt</marc_relator_code>
         <marc_relator_code>pra</marc_relator_code>
         <marc_relator_code>prc</marc_relator_code>
         <marc_relator_code>prd</marc_relator_code>
         <marc_relator_code>pre</marc_relator_code>
         <marc_relator_code>prf</marc_relator_code>
         <marc_relator_code>prg</marc_relator_code>
         <marc_relator_code>prm</marc_relator_code>
         <marc_relator_code>prn</marc_relator_code>
         <marc_relator_code>pro</marc_relator_code>
         <marc_relator_code>prp</marc_relator_code>
         <marc_relator_code>prs</marc_relator_code>
         <marc_relator_code>prt</marc_relator_code>
         <marc_relator_code>prv</marc_relator_code>
         <marc_relator_code>pta</marc_relator_code>
         <marc_relator_code>pte</marc_relator_code>
         <marc_relator_code>ptf</marc_relator_code>
         <marc_relator_code>pth</marc_relator_code>
         <marc_relator_code>ptt</marc_relator_code>
         <marc_relator_code>pup</marc_relator_code>
         <marc_relator_code>rap</marc_relator_code>
         <marc_relator_code>rbr</marc_relator_code>
         <marc_relator_code>rcd</marc_relator_code>
         <marc_relator_code>rce</marc_relator_code>
         <marc_relator_code>rcp</marc_relator_code>
         <marc_relator_code>rdd</marc_relator_code>
         <marc_relator_code>red</marc_relator_code>
         <marc_relator_code>ren</marc_relator_code>
         <marc_relator_code>res</marc_relator_code>
         <marc_relator_code>rev</marc_relator_code>
         <marc_relator_code>rpc</marc_relator_code>
         <marc_relator_code>rps</marc_relator_code>
         <marc_relator_code>rpt</marc_relator_code>
         <marc_relator_code>rpy</marc_relator_code>
         <marc_relator_code>rse</marc_relator_code>
         <marc_relator_code>rsg</marc_relator_code>
         <marc_relator_code>rsp</marc_relator_code>
         <marc_relator_code>rsr</marc_relator_code>
         <marc_relator_code>rst</marc_relator_code>
         <marc_relator_code>rth</marc_relator_code>
         <marc_relator_code>rtm</marc_relator_code>
         <marc_relator_code>rxa</marc_relator_code>
         <marc_relator_code>sad</marc_relator_code>
         <marc_relator_code>sce</marc_relator_code>
         <marc_relator_code>scl</marc_relator_code>
         <marc_relator_code>scr</marc_relator_code>
         <marc_relator_code>sde</marc_relator_code>
         <marc_relator_code>sds</marc_relator_code>
         <marc_relator_code>sec</marc_relator_code>
         <marc_relator_code>sfx</marc_relator_code>
         <marc_relator_code>sgd</marc_relator_code>
         <marc_relator_code>sgn</marc_relator_code>
         <marc_relator_code>sht</marc_relator_code>
         <marc_relator_code>sll</marc_relator_code>
         <marc_relator_code>sng</marc_relator_code>
         <marc_relator_code>spk</marc_relator_code>
         <marc_relator_code>spn</marc_relator_code>
         <marc_relator_code>spy</marc_relator_code>
         <marc_relator_code>srv</marc_relator_code>
         <marc_relator_code>std</marc_relator_code>
         <marc_relator_code>stg</marc_relator_code>
         <marc_relator_code>stl</marc_relator_code>
         <marc_relator_code>stm</marc_relator_code>
         <marc_relator_code>stn</marc_relator_code>
         <marc_relator_code>str</marc_relator_code>
         <marc_relator_code>swd</marc_relator_code>
         <marc_relator_code>tau</marc_relator_code>
         <marc_relator_code>tcd</marc_relator_code>
         <marc_relator_code>tch</marc_relator_code>
         <marc_relator_code>ths</marc_relator_code>
         <marc_relator_code>tld</marc_relator_code>
         <marc_relator_code>tlg</marc_relator_code>
         <marc_relator_code>tlh</marc_relator_code>
         <marc_relator_code>tlp</marc_relator_code>
         <marc_relator_code>trc</marc_relator_code>
         <marc_relator_code>trl</marc_relator_code>
         <marc_relator_code>tyd</marc_relator_code>
         <marc_relator_code>tyg</marc_relator_code>
         <marc_relator_code>uvp</marc_relator_code>
         <marc_relator_code>vac</marc_relator_code>
         <marc_relator_code>vdg</marc_relator_code>
         <marc_relator_code>vfx</marc_relator_code>
         <marc_relator_code>wac</marc_relator_code>
         <marc_relator_code>wal</marc_relator_code>
         <marc_relator_code>wam</marc_relator_code>
         <marc_relator_code>wat</marc_relator_code>
         <marc_relator_code>wdc</marc_relator_code>
         <marc_relator_code>wde</marc_relator_code>
         <marc_relator_code>win</marc_relator_code>
         <marc_relator_code>wit</marc_relator_code>
         <marc_relator_code>wpr</marc_relator_code>
         <marc_relator_code>wst</marc_relator_code>
      </marc_relator_codes>
   </sch:let>
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
   <sch:let name="work_dmdid">
      <xsl:variable name="root">
         <xsl:copy-of select="/"/>
      </xsl:variable>
      <xsl:for-each select="tokenize(//mets:mets/mets:structMap[@TYPE='LOGICAL']/descendant::mets:div[not(mets:mptr)][1]/@DMDID, ' ')">
         <xsl:variable name="ID" select="."/>
         <xsl:if test="$root//mets:mets/mets:dmdSec[@ID=$ID]/mets:mdWrap/mets:xmlData/mods:mods">
            <xsl:value-of select="$ID"/>
         </xsl:if>
      </xsl:for-each>
   </sch:let>
   <sch:let name="is_anchor"
            value="if ( //mets:mets/mets:structLink or //mets:mets/mets:fileSec/mets:fileGrp[@USE='DEFAULT'] ) then false() else true()"/>
   <sch:let name="work_amdid"
            value="//mets:mets/mets:structMap[@TYPE='LOGICAL']//mets:div[tokenize(@DMDID, ' ') = $work_dmdid]/@ADMID"/>
   <xsl:key name="mets_ids" match="mets:*[@ID]" use="@ID"/>
   <xsl:key name="dmdsec_ids" match="mets:dmdSec" use="@ID"/>
   <xsl:key name="amdsec_ids" match="mets:amdSec" use="@ID"/>
   <xsl:key name="fileGrp_DEFAULT_file_ids"
            match="mets:fileGrp[@USE='DEFAULT']/mets:file[@ID]"
            use="@ID"/>
   <xsl:key name="structMap_PHYSICAL_ids"
            match="mets:structMap[@TYPE='PHYSICAL']//mets:div"
            use="@ID"/>
   <xsl:key name="structMap_PHYSICAL_fptr_FILEID"
            match="mets:structMap[@TYPE='PHYSICAL']//mets:fptr"
            use="@FILEID"/>
   <xsl:key name="structMap_LOGICAL_dmdids"
            match="mets:structMap[@TYPE='LOGICAL']//mets:div[@DMDID]"
            use="tokenize(@DMDID, ' ')"/>
   <xsl:key name="structMap_LOGICAL_admids"
            match="mets:structMap[@TYPE='LOGICAL']//mets:div[@ADMID]"
            use="tokenize(@ADMID, ' ')"/>
   <xsl:key name="structLink_from_ids"
            match="mets:structLink/mets:smLink"
            use="@xlink:from"/>
   <xsl:key name="structLink_to_ids"
            match="mets:structLink/mets:smLink"
            use="@xlink:to"/>
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
   <xsl:key name="marc_relator_codes"
            match="maps:marc_relator_codes/maps:marc_relator_code"
            use="text()"/>
   <sch:pattern>
      <sch:rule context="mods:*">
            <!-- 
               Leeres MODS-Element
             -->
         <sch:assert id="all_01"
                     role="warn"
                     test="string-length(normalize-space(text()[1])) &gt; 0 or element()"
                     properties="dmd_id">Jedes MODS-Element muss entweder mindestens ein Unterelement oder Text enthalten. Leere MODS-Elemente verhindern nicht das Einspielen Ihrer Daten in die DDB, können aber auf Probleme beim Erzeugen des Datensatzes und damit verbundene Informationsverluste hinweisen.</sch:assert>
      </sch:rule>
   </sch:pattern>
   <sch:pattern>
      <sch:rule context="mets:dmdSec[@ID=$work_dmdid]/mets:mdWrap/mets:xmlData//mods:*[mods:*]">
            <!-- 
               MODS-Element enthält Unterelement und Text
             -->
         <sch:report id="all_02"
                     role="error"
                     test="matches(string-join(text(), ''), '\w')"
                     properties="dmd_id">MODS-Elemente im primären <sch:span class="monotype">mets:dmdSec</sch:span>-Element, die Unterelemente enthalten, dürfen keinen Text enthalten. Enthält ein MODS-Element mit mindestens einem Unterelement ebenfalls Text, wird der Text bei der Transformation des Datensatzes entfernt.</sch:report>
      </sch:rule>
   </sch:pattern>
   <sch:pattern>
      <sch:rule context="mets:dmdSec[@ID=$work_dmdid]/mets:mdWrap/mets:xmlData/mods:mods/mods:*">
            <!-- 
               Ungültige Elemente in der obersten MODS-Ebene im primären mets:dmdSec-Element
             -->
         <sch:assert id="all_03"
                     role="fatal"
                     test="./local-name() = ( 'titleInfo', 'name', 'typeOfResource', 'genre', 'originInfo', 'language', 'physicalDescription', 'abstract', 'tableOfContents', 'targetAudience', 'note', 'subject', 'classification', 'relatedItem', 'identifier', 'location', 'accessCondition', 'part', 'extension', 'recordInfo' )"
                     properties="dmd_id local_name">Der Datensatz verwendet im primären <sch:span class="monotype">mets:dmdSec</sch:span>-Element Elemente in der obersten MODS-Ebene, die dort nicht zulässig sind. Da diese zu Problemen in der Verarbeitung des Datensatzes führen können, wird der Datensatz nicht in die DDB eingespielt.
Eine Liste der zulässigen MODS-Elemente auf der obersten Ebene finden sie in den MODS User Guidelines (https://www.loc.gov/standards/mods/userguide/generalapp.html#top_level).</sch:assert>
      </sch:rule>
   </sch:pattern>
   <sch:pattern>
      <sch:rule context="mets:dmdSec[@ID!=$work_dmdid]/mets:mdWrap/mets:xmlData/mods:mods/mods:*">
            <!-- 
               Ungültige Elemente in der obersten MODS-Ebene in einem nicht-primären mets:dmdSec-Element
             -->
         <sch:assert id="all_10"
                     role="warn"
                     test="./local-name() = ( 'titleInfo', 'name', 'typeOfResource', 'genre', 'originInfo', 'language', 'physicalDescription', 'abstract', 'tableOfContents', 'targetAudience', 'note', 'subject', 'classification', 'relatedItem', 'identifier', 'location', 'accessCondition', 'part', 'extension', 'recordInfo' )"
                     properties="dmd_id local_name">Der Datensatz verwendet in einem nicht-primären <sch:span class="monotype">mets:dmdSec</sch:span>-Element Elemente in der obersten MODS-Ebene, die dort nicht zulässig sind. Dies verhindert nicht das Einspielen Ihrer Daten in die DDB, kann aber auf Probleme beim Erzeugen des Datensatzes und damit verbundene Informationsverluste hinweisen.
Eine Liste der zulässigen MODS-Elemente auf der obersten Ebene finden sie in den MODS User Guidelines (https://www.loc.gov/standards/mods/userguide/generalapp.html#top_level).</sch:assert>
      </sch:rule>
   </sch:pattern>
   <sch:pattern>
      <sch:rule context="mets:dmdSec[@ID=$work_dmdid]/mets:mdWrap/mets:xmlData/mods:*/@valueURI">
            <!-- 
               Der Wert im Attribut valueURI ist kein URL
             -->
         <sch:assert id="all_04"
                     role="error"
                     test="matches(., '^https?://[^ ]+$')"
                     properties="dmd_id">Das Attribut <sch:span class="monotype">valueURI</sch:span> muss im primären <sch:span class="monotype">mets:dmdSec</sch:span>-Element immer einen URL enthalten. Enthält es keinen URL, wird <sch:span class="monotype">valueURI</sch:span> bei der Transformation des Datensatzes entfernt.</sch:assert>
      </sch:rule>
   </sch:pattern>
   <sch:pattern>
      <sch:rule context="mets:dmdSec[@ID=$work_dmdid]/mets:mdWrap/mets:xmlData/mods:mods/mods:*//mods:mods">
            <!-- 
               mods:mods enthält mods:mods
             -->
         <sch:report id="all_05"
                     role="error"
                     test=".[not(./ancestor::mods:extension)]"
                     properties="dmd_id">Der Datensatz enthält innerhalb des MODS-Wurzelelements <sch:span class="monotype">mods:mods</sch:span> im primären Element <sch:span class="monotype">mets:dmdSec</sch:span> weitere <sch:span class="monotype">mods:mods</sch:span>-Elemente. Diese können zu Problemen in der Verarbeitung des Datensatzes führen und werden daher bei der Transformation des Datensatzes entfernt.</sch:report>
      </sch:rule>
   </sch:pattern>
   <sch:pattern>
      <sch:rule context="mets:dmdSec[@ID=$work_dmdid]/mets:mdWrap/mets:xmlData/mods:mods//mods:*[starts-with(@valueURI, 'http://d-nb.info/gnd/') or starts-with(@valueURI, 'https://d-nb.info/gnd/')]">
            <!-- 
               Ungültiger GND-URI im Attribut valueURI
             -->
         <sch:assert id="all_06"
                     role="error"
                     test="matches(substring-after(@valueURI, '/gnd/'), '^[0-9]*-[0-9xX]{1}$|^[0-9xX]*$')"
                     properties="dmd_id">Der Datensatz enthält im primären <sch:span class="monotype">mets:dmdSec</sch:span>-Element <sch:span class="monotype">valueURI</sch:span>-Attribute mit einem ungültigen GND-URI. Diese werden bei der Transformation des Datensatzes entfernt.</sch:assert>
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
Verwenden die METS-Elemente einen ungültigen Namensraum, ist eine Verarbeitung des Datensatzes nicht möglich und er wird nicht in die DDB eingespielt.</sch:assert>
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
Verwenden die MODS-Elemente einen ungültigen Namensraum, ist eine Verarbeitung des Datensatzes nicht möglich und er wird nicht in die DDB eingespielt.</sch:assert>
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
Verwenden die DFG-Viewer-Elemente einen ungültigen Namensraum, ist eine Verarbeitung des Datensatzes nicht möglich und er wird nicht in die DDB eingespielt.</sch:assert>
      </sch:rule>
   </sch:pattern>
   <sch:pattern>
      <sch:rule context="mets:dmdSec[@ID=$work_dmdid]/mets:mdWrap/mets:xmlData/mods:mods">
            <!-- 
               mods:titleInfo fehlt im primären mets:dmdSec
             -->
         <sch:assert id="titleInfo_01"
                     role="fatal"
                     test="mods:titleInfo[not(@type)][1]/mods:title[1][string-length(normalize-space(text())) &gt; 0] or mods:titleInfo[@type='uniform'][1]/mods:title[1][string-length(normalize-space(text())) &gt; 0] or mods:relatedItem[@type='host']"
                     properties="dmd_id"
                     see="https://deutsche-digitale-bibliothek.atlassian.net/wiki/x/qwneAg">Das primäre <sch:span class="monotype">mets:dmdSec</sch:span>-Element von Einteiligen Dokumenten muss ein <sch:span class="monotype">mods:titleInfo</sch:span>-Element ohne Attribut <sch:span class="monotype">type</sch:span> oder mit <sch:span class="monotype">type</sch:span> mit dem Wert <sch:span class="monotype">uniform</sch:span> besitzen. Darüber hinaus muss das <sch:span class="monotype">mods:titleInfo</sch:span> das Unterelement <sch:span class="monotype">mods:title</sch:span> enthalten.
Teile von Mehrteiligen Dokumenten können alternativ ein <sch:span class="monotype">mods:relatedItem</sch:span>-Element mit dem Attribut <sch:span class="monotype">type</sch:span> mit dem Wert <sch:span class="monotype">host</sch:span> enthalten, das auf den Ankersatz des Mehrteiligen Dokuments verweist.
Ist dies nicht der Fall, wird der Datensatz nicht in die DDB eingespielt.
Weitere Informationen zu diesen Elementen finden Sie im DDB-METS/MODS-Anwendungsprofil auf den Seiten mods:titleInfo (https://deutsche-digitale-bibliothek.atlassian.net/wiki/x/rwzeAg) und mods:relatedItem (https://deutsche-digitale-bibliothek.atlassian.net/wiki/x/gA3eAg) sowie im Bereich Aufbau einer METS/MODS-Datei für die DDB (https://deutsche-digitale-bibliothek.atlassian.net/wiki/x/MwLeAg).</sch:assert>
      </sch:rule>
   </sch:pattern>
   <sch:pattern>
      <sch:rule context="mets:dmdSec[@ID=$work_dmdid]/mets:mdWrap/mets:xmlData/mods:mods">
            <!-- 
               mets:dmdSec ohne eindeutiges mods:titleInfo
             -->
         <sch:report id="titleInfo_03"
                     role="error"
                     test="mods:titleInfo[not(@type)][2] or (not(mods:titleInfo[not(@type)]) and mods:titleInfo[@type='uniform'][2])"
                     properties="dmd_id"
                     see="https://deutsche-digitale-bibliothek.atlassian.net/wiki/x/qwneAg">Das primäre <sch:span class="monotype">mets:dmdSec</sch:span>-Element muss entweder genau ein <sch:span class="monotype">mods:titleInfo</sch:span> ohne das Attribut <sch:span class="monotype">type</sch:span> oder genau ein <sch:span class="monotype">mods:titleInfo</sch:span> mit <sch:span class="monotype">type</sch:span> und dem Wert <sch:span class="monotype">uniform</sch:span> (und kein weiteres <sch:span class="monotype">mods:titleInfo</sch:span> ohne <sch:span class="monotype">type</sch:span>) enthalten.
Ist dies nicht der Fall, kann die DDB keinen eindeutigen Objekttitel für die Anzeige des Datensatzes in der DDB ermitteln. Bei der Transformation des Datensatzes werden daher im primären <sch:span class="monotype">mets:dmdSec</sch:span>-Element alle weiteren Vorkommen von <sch:span class="monotype">mods:titleInfo</sch:span> ohne <sch:span class="monotype">type</sch:span> bzw. <sch:span class="monotype">mods:titleInfo</sch:span> mit <sch:span class="monotype">type</sch:span> und dem Wert <sch:span class="monotype">uniform</sch:span> entfernt.
Weitere Informationen zu diesem Element und seinem Kontext finden Sie im DDB-METS/MODS-Anwendungsprofil auf der Seite mods:titleInfo (https://deutsche-digitale-bibliothek.atlassian.net/wiki/x/rwzeAg) und im Bereich Aufbau einer METS/MODS-Datei für die DDB (https://deutsche-digitale-bibliothek.atlassian.net/wiki/x/MwLeAg).</sch:report>
      </sch:rule>
   </sch:pattern>
   <sch:pattern>
      <sch:rule context="mets:dmdSec[@ID=$work_dmdid]/mets:mdWrap/mets:xmlData/mods:mods/mods:titleInfo[@type]">
            <!-- 
               Ungültiger Wert im Attribut type von mods:titleInfo im primären mets:dmdSec-Element.
             -->
         <sch:assert id="titleInfo_04"
                     role="error"
                     test="./@type = ('abbreviated', 'translated', 'alternative', 'uniform')"
                     properties="dmd_id type"
                     see="https://deutsche-digitale-bibliothek.atlassian.net/wiki/x/qwneAg">Das Attribut <sch:span class="monotype">type</sch:span> im Element <sch:span class="monotype">mods:titleInfo</sch:span> im primären <sch:span class="monotype">mets:dmdSec</sch:span>-Element darf nur die folgenden Werte enthalten:
 * <sch:span class="monotype">abbreviated</sch:span>
 * <sch:span class="monotype">translated</sch:span>
 * <sch:span class="monotype">alternative</sch:span>
 * <sch:span class="monotype">uniform</sch:span>
Ist dies nicht der Fall, wird <sch:span class="monotype">mods:titleInfo</sch:span> bei der Bereinigung des Datensatzes entfernt.
Weitere Informationen zu diesem Attribut finden Sie im DDB-METS/MODS-Anwendungsprofil auf der Seite mods:titleInfo (https://deutsche-digitale-bibliothek.atlassian.net/wiki/x/rwzeAg).</sch:assert>
      </sch:rule>
   </sch:pattern>
   <sch:pattern>
      <sch:rule context="mets:dmdSec[@ID!=$work_dmdid]/mets:mdWrap/mets:xmlData/mods:mods/mods:titleInfo[@type]">
            <!-- 
               Ungültiger Wert im Attribut type von mods:titleInfo in einem nicht-primären mets:dmdSec-Element
             -->
         <sch:assert id="titleInfo_10"
                     role="warn"
                     test="./@type = ('abbreviated', 'translated', 'alternative', 'uniform')"
                     properties="dmd_id type"
                     see="https://deutsche-digitale-bibliothek.atlassian.net/wiki/x/qwneAg">Das Attribut <sch:span class="monotype">type</sch:span> im Element <sch:span class="monotype">mods:titleInfo</sch:span> darf nur die folgenden Werte enthalten:
 * <sch:span class="monotype">abbreviated</sch:span>
 * <sch:span class="monotype">translated</sch:span>
 * <sch:span class="monotype">alternative</sch:span>
 * <sch:span class="monotype">uniform</sch:span>
Abweichende Werte in einem nicht-primären <sch:span class="monotype">mets:dmdSec</sch:span>-Element haben keine Auswirkung auf das Einspielen in die DDB, entsprechen aber nicht dem MODS-Standard.
Ist dies nicht der Fall, wird <sch:span class="monotype">mods:titleInfo</sch:span> bei der Bereinigung des Datensatzes entfernt.
Weitere Informationen zu diesem Attribut finden Sie im DDB-METS/MODS-Anwendungsprofil auf der Seite mods:titleInfo (https://deutsche-digitale-bibliothek.atlassian.net/wiki/x/rwzeAg).</sch:assert>
      </sch:rule>
   </sch:pattern>
   <sch:pattern>
      <sch:rule context="mets:dmdSec[@ID=$work_dmdid]/mets:mdWrap/mets:xmlData/mods:mods/mods:titleInfo">
            <!-- 
               mods:title ist in mods:titleInfo mehrfach vorhanden
             -->
         <sch:report id="titleInfo_06"
                     role="error"
                     test="mods:title[2]"
                     properties="dmd_id"
                     see="https://deutsche-digitale-bibliothek.atlassian.net/wiki/x/qwneAg">Das Element <sch:span class="monotype">mods:titleInfo</sch:span> darf das Element <sch:span class="monotype">mods:title</sch:span> nur einmal enthalten. Enthält <sch:span class="monotype">mods:titleInfo</sch:span> mehr als ein <sch:span class="monotype">mods:title</sch:span>, wird bei der Transformation des Datensatzes das erste Vorkommen von <sch:span class="monotype">mods:title</sch:span> übernommen, alle anderen <sch:span class="monotype">mods:title</sch:span> werden entfernt.
Weitere Informationen zu diesem Element finden Sie im DDB-METS/MODS-Anwendungsprofil auf der Seite mods:titleInfo (https://deutsche-digitale-bibliothek.atlassian.net/wiki/x/rwzeAg).</sch:report>
      </sch:rule>
   </sch:pattern>
   <sch:pattern>
      <sch:rule context="mets:dmdSec[@ID=$work_dmdid]/mets:mdWrap/mets:xmlData/mods:mods/mods:titleInfo">
            <!-- 
               mods:nonSort ist in mods:titleInfo mehrfach vorhanden
             -->
         <sch:report id="titleInfo_07"
                     role="error"
                     test="mods:nonSort[2]"
                     properties="dmd_id"
                     see="https://deutsche-digitale-bibliothek.atlassian.net/wiki/x/qwneAg">Das Element <sch:span class="monotype">mods:titleInfo</sch:span> darf das Element <sch:span class="monotype">mods:nonSort</sch:span> nur einmal enthalten. Enthält <sch:span class="monotype">mods:titleInfo</sch:span> mehr als ein <sch:span class="monotype">mods:nonSort</sch:span>, wird bei der Transformation des Datensatzes das erste Vorkommen von <sch:span class="monotype">mods:nonSort</sch:span> übernommen, alle anderen <sch:span class="monotype">mods:nonSort</sch:span> werden entfernt.
Weitere Informationen zu diesem Element finden Sie im DDB-METS/MODS-Anwendungsprofil auf der Seite mods:titleInfo (https://deutsche-digitale-bibliothek.atlassian.net/wiki/x/rwzeAg).</sch:report>
      </sch:rule>
   </sch:pattern>
   <sch:pattern>
      <sch:rule context="mets:dmdSec[@ID=$work_dmdid]/mets:mdWrap/mets:xmlData/mods:mods/mods:titleInfo[not(@type='abbreviated')]/mods:title">
            <!-- 
               mods:titleInfo enthält keinen aussagekräftigen Objekttitel
             -->
         <sch:assert id="titleInfo_08"
                     role="caution"
                     test="string-length(text()[1]) &gt; 2"
                     properties="dmd_id"
                     see="https://deutsche-digitale-bibliothek.atlassian.net/wiki/x/qwneAg">Der Text im Element <sch:span class="monotype">mods:title</sch:span> im Element <sch:span class="monotype">mods:titleInfo</sch:span> im primären <sch:span class="monotype">mets:dmdSec</sch:span>-Element besteht aus weniger als drei Zeichen und ist daher wenig aussagekräftig.
Bitte beachten Sie dazu, dass in der DDB jedes <sch:span class="monotype">mets:dmdSec</sch:span>-Element ein Objekt erzeugt. Der Wert in <sch:span class="monotype">mods:title</sch:span> wird prominent und ggf. unabhängig vom Gesamtobjekt in der Trefferliste angezeigt. Daher erschweren nicht aussagekräftige Objekttitel die Nutzung Ihrer Objekte in der DDB.
Handelt es sich bei dem Text in <sch:span class="monotype">mods:title</sch:span> um eine Abkürzung, verwenden Sie bitte das Attribut <sch:span class="monotype">type</sch:span> mit dem Wert <sch:span class="monotype">abbreviated</sch:span> im Elternelement <sch:span class="monotype">mods:titleInfo</sch:span>. Enthält <sch:span class="monotype">mods:title</sch:span> eine Bandzählung geben Sie diese im Element <sch:span class="monotype">mods:part</sch:span> an.
Nicht aussagekräftige Titel verhindern nicht das Einspielen Ihrer Daten in die DDB, wir bitten Sie jedoch zu prüfen, ob es sich tatsächlich um einen Titel handelt und ggf. die nötigen Korrekturen bis zur nächsten Datenlieferung vorzunehmen.
Weitere Informationen zu diesem Element und seinem Kontext finden Sie im DDB-METS/MODS-Anwendungsprofil auf der Seite mods:titleInfo (https://deutsche-digitale-bibliothek.atlassian.net/wiki/x/rwzeAg) und im Bereich Aufbau einer METS/MODS-Datei für die DDB (https://deutsche-digitale-bibliothek.atlassian.net/wiki/x/MwLeAg).</sch:assert>
      </sch:rule>
   </sch:pattern>
   <sch:pattern>
      <sch:rule context="mets:dmdSec[@ID=$work_dmdid]/mets:mdWrap/mets:xmlData/mods:mods//mods:titleInfo">
            <!-- 
               mods:titleInfo ist unvollständig
             -->
         <sch:assert id="titleInfo_09"
                     role="error"
                     test="mods:title[string-length(normalize-space(text()[1])) &gt; 0]"
                     properties="dmd_id"
                     see="https://deutsche-digitale-bibliothek.atlassian.net/wiki/x/qwneAg">Das Element <sch:span class="monotype">mods:titleInfo</sch:span> im primären <sch:span class="monotype">mets:dmdSec</sch:span>-Element muss das Element <sch:span class="monotype">mods:title</sch:span> enthalten.
Ist dies nicht der Fall, wird <sch:span class="monotype">mods:titleInfo</sch:span> bei der Transformation des Datensatzes entfernt.
Weitere Informationen zu diesem Element finden Sie im DDB-METS/MODS-Anwendungsprofil auf der Seite mods:titleInfo (https://deutsche-digitale-bibliothek.atlassian.net/wiki/x/rwzeAg).</sch:assert>
      </sch:rule>
   </sch:pattern>
   <sch:pattern>
      <sch:rule context="mets:dmdSec[@ID=$work_dmdid]/mets:mdWrap/mets:xmlData/mods:mods/mods:name">
            <!-- 
               mods:name ist unvollständig
             -->
         <sch:assert id="name_01"
                     role="error"
                     test="mods:namePart[string-length(text()[1]) &gt; 0] or mods:displayForm[string-length(text()[1]) &gt; 0]"
                     properties="dmd_id"
                     see="https://deutsche-digitale-bibliothek.atlassian.net/wiki/x/7wTeAg">Das Element <sch:span class="monotype">mods:name</sch:span> muss im primären <sch:span class="monotype">mets:dmdSec</sch:span>-Element das Element <sch:span class="monotype">mods:displayForm</sch:span> enthalten.
Enthält <sch:span class="monotype">mods:name</sch:span> mindestens ein <sch:span class="monotype">mods:namePart</sch:span>-Element, wird bei der Bereinigung des Datensatzes aus den entsprechenden <sch:span class="monotype">mods:namePart</sch:span> ein <sch:span class="monotype">mods:displayForm</sch:span> generiert.
Enthält <sch:span class="monotype">mods:name</sch:span> weder <sch:span class="monotype">mods:displayForm</sch:span> noch ein <sch:span class="monotype">mods:namePart</sch:span> wird <sch:span class="monotype">mods:name</sch:span> bei der Bereinigung des Datensatzes entfernt.
Weitere Informationen zu diesen Elementen finden Sie im DDB-METS/MODS-Anwendungsprofil auf der Seite mods:name (https://deutsche-digitale-bibliothek.atlassian.net/wiki/x/MATeAg).</sch:assert>
      </sch:rule>
   </sch:pattern>
   <sch:pattern>
      <sch:rule context="mets:dmdSec[@ID=$work_dmdid]/mets:mdWrap/mets:xmlData/mods:mods/mods:name">
            <!-- 
               mods:displayForm ist in mods:name mehrfach vorhanden
             -->
         <sch:report id="name_02"
                     role="error"
                     test="mods:displayForm[2]"
                     properties="dmd_id"
                     see="https://deutsche-digitale-bibliothek.atlassian.net/wiki/x/7wTeAg">Das Element <sch:span class="monotype">mods:name</sch:span> darf im primären <sch:span class="monotype">mets:dmdSec</sch:span>-Element das Element <sch:span class="monotype">mods:displayForm</sch:span> nur einmal enthalten. Enthält <sch:span class="monotype">mods:name</sch:span> mehr als ein <sch:span class="monotype">mods:displayForm</sch:span>, wird bei der Transformation des Datensatzes das erste Vorkommen von <sch:span class="monotype">mods:displayForm</sch:span> übernommen, alle anderen <sch:span class="monotype">mods:displayForm</sch:span> werden entfernt.
Weitere Informationen zu diesem Element finden Sie im DDB-METS/MODS-Anwendungsprofil auf der Seite mods:name (https://deutsche-digitale-bibliothek.atlassian.net/wiki/x/MATeAg).</sch:report>
      </sch:rule>
   </sch:pattern>
   <sch:pattern>
      <sch:rule context="mets:xmlData/mods:mods/mods:name">
            <!-- 
               Hinweis auf falsche Verwendung von mods:name
             -->
         <sch:report id="name_03"
                     role="caution"
                     test="mods:displayForm[contains(text()[1], ';')] or mods:namePart[contains(text()[1], ';')]"
                     properties="dmd_id"
                     see="https://deutsche-digitale-bibliothek.atlassian.net/wiki/x/7wTeAg">Das Element <sch:span class="monotype">mods:name</sch:span> enthält im Unterelement <sch:span class="monotype">mods:namePart</sch:span> bzw. im Unterelement <sch:span class="monotype">mods:displayForm</sch:span> ein <sch:span class="monotype">;</sch:span> (Semikolon). Dies ist ein Hinweis, dass die Elemente eine Aufzählung enthalten und damit mehrere Personen bzw. Organisationen beschreiben.
Jede Person bzw. Organisation muss in einem eigenen <sch:span class="monotype">mods:name</sch:span> mit entsprechenden Unterelementen beschrieben sein. Ist dies nicht der Fall, kann dies zu Fehldarstellungen in der DDB führen.
Ein Semikolon in den o. g. Elementen verhindert nicht das Einspielen des Datensatzes in die DDB, wir bitten Sie jedoch zu prüfen, ob es sich um eine Aufzählung handelt und ggf. die nötigen Korrekturen bis zur nächsten Datenlieferung vorzunehmen.
Weitere Informationen zu diesem Element finden Sie im DDB-METS/MODS-Anwendungsprofil auf der Seite mods:name (https://deutsche-digitale-bibliothek.atlassian.net/wiki/x/MATeAg).</sch:report>
      </sch:rule>
   </sch:pattern>
   <sch:pattern>
      <sch:rule context="mets:dmdSec[@ID=$work_dmdid]/mets:mdWrap/mets:xmlData/mods:mods/mods:name[not(@type)]">
            <!-- 
               Das Attribut type fehlt in mods:name
             -->
         <sch:report id="name_04"
                     role="warn"
                     test="true()"
                     properties="dmd_id"
                     see="https://deutsche-digitale-bibliothek.atlassian.net/wiki/x/7wTeAg">Das Element <sch:span class="monotype">mods:name</sch:span> muss im primären <sch:span class="monotype">mets:dmdSec</sch:span>-Element das Attribut <sch:span class="monotype">type</sch:span> enthalten. Es dient zur Unterscheidung der Art des Namens und erlaubt die folgenden Werte:
 * <sch:span class="monotype">personal</sch:span> (Person)
 * <sch:span class="monotype">corporate</sch:span> (Organisation)
 * <sch:span class="monotype">family</sch:span> (Familie)
 * <sch:span class="monotype">conference</sch:span> (Konferenz)
Das Fehlen von <sch:span class="monotype">type</sch:span> verhindert nicht das Einspielen des Datensatzes in die DDB. Wir bitten Sie jedoch, den Sachverhalt zu prüfen und die nötigen Korrekturen bis zur nächsten Datenlieferung vorzunehmen.
Weitere Informationen zu diesem Attribut finden Sie im DDB-METS/MODS-Anwendungsprofil auf der Seite mods:name (https://deutsche-digitale-bibliothek.atlassian.net/wiki/x/MATeAg).</sch:report>
      </sch:rule>
      <sch:rule context="mets:xmlData/mods:mods/mods:name[@type]">
            <!-- 
               Ungültiger Wert im Attribut type von mods:name
             -->
         <sch:assert id="name_05"
                     role="warn"
                     test="@type = ('personal', 'corporate', 'family', 'conference')"
                     properties="dmd_id type"
                     see="https://deutsche-digitale-bibliothek.atlassian.net/wiki/x/7wTeAg">Das Attribut <sch:span class="monotype">type</sch:span> im Element <sch:span class="monotype">mods:name</sch:span> darf nur die folgenden Werte enthalten:
 * <sch:span class="monotype">personal</sch:span> (Person)
 * <sch:span class="monotype">corporate</sch:span> (Organisation)
 * <sch:span class="monotype">family</sch:span> (Familie)
 * <sch:span class="monotype">conference</sch:span> (Konferenz)
Die Verwendung falscher Attributwerte verhindert nicht das Einspielen des Datensatzes in die DDB. Wir bitten Sie jedoch, den Sachverhalt zu prüfen und die nötigen Korrekturen bis zur nächsten Datenlieferung vorzunehmen.
Weitere Informationen zu diesem Attribut finden Sie im DDB-METS/MODS-Anwendungsprofil auf der Seite mods:name (https://deutsche-digitale-bibliothek.atlassian.net/wiki/x/MATeAg).</sch:assert>
      </sch:rule>
   </sch:pattern>
   <sch:pattern>
      <sch:rule context="mets:dmdSec[@ID=$work_dmdid]/mets:mdWrap/mets:xmlData/mods:mods/mods:name[@type='personal']/mods:namePart[not(@type)]">
            <!-- 
               Das Attribut type fehlt in mods:namePart
             -->
         <sch:report id="name_07"
                     role="warn"
                     test="true()"
                     properties="dmd_id"
                     see="https://deutsche-digitale-bibliothek.atlassian.net/wiki/x/7wTeAg">Das Element <sch:span class="monotype">mods:namePart</sch:span> im Element <sch:span class="monotype">mods:name[@type='personal']</sch:span> muss das Attribut <sch:span class="monotype">type</sch:span> enthalten. Es dient zur Unterscheidung von Bestandteilen eines persönlichen Namens und erlaubt die folgenden Werte:
 * <sch:span class="monotype">family</sch:span> (Nachname)
 * <sch:span class="monotype">given</sch:span> (Vorname)
 * <sch:span class="monotype">termsOfAddress</sch:span> (Titel und andere Namenszusätze)
 * <sch:span class="monotype">date</sch:span> (Lebensdaten der Person)
Sollen die Bestandteile eines Namens in der DDB in einer bestimmten Reihenfolge angezeigt werden, verwenden Sie bitte das Element <sch:span class="monotype">mods:displayForm</sch:span>.
Das Fehlen von <sch:span class="monotype">type</sch:span> verhindert nicht das Einspielen des Datensatzes in die DDB. Wir bitten Sie jedoch, den Sachverhalt zu prüfen und die nötigen Korrekturen bis zur nächsten Datenlieferung vorzunehmen.
Weitere Informationen zu diesem Attribut und den genannten Elementen finden Sie im DDB-METS/MODS-Anwendungsprofil auf der Seite mods:name (https://deutsche-digitale-bibliothek.atlassian.net/wiki/x/MATeAg).</sch:report>
      </sch:rule>
      <sch:rule context="mets:dmdSec[@ID=$work_dmdid]/mets:mdWrap/mets:xmlData/mods:mods/mods:name[@type='personal']/mods:namePart[@type]">
            <!-- 
               Ungültiger Wert im Attribut type von mods:namePart im primären mets:dmdSec-Element
             -->
         <sch:assert id="name_08"
                     role="error"
                     test="@type = ('date', 'family', 'given', 'termsOfAddress')"
                     properties="dmd_id type"
                     see="https://deutsche-digitale-bibliothek.atlassian.net/wiki/x/7wTeAg">Das Attribut <sch:span class="monotype">type</sch:span> im Element <sch:span class="monotype">mods:namePart</sch:span> darf im primären <sch:span class="monotype">mets:dmdSec</sch:span>-Element nur die folgenden Werte enthalten:
 * <sch:span class="monotype">family</sch:span> (Nachname)
 * <sch:span class="monotype">given</sch:span> (Vorname)
 * <sch:span class="monotype">termsOfAddress</sch:span> (Titel und andere Namenszusätze)
 * <sch:span class="monotype">date</sch:span> (Lebensdaten der Person)
Enthält <sch:span class="monotype">type</sch:span> einen ungültigen Wert, wird <sch:span class="monotype">mods:namePart</sch:span> bei der Transformation des Datensatzes entfernt.
Weitere Informationen zu diesem Attribut finden Sie im DDB-METS/MODS-Anwendungsprofil auf der Seite mods:name (https://deutsche-digitale-bibliothek.atlassian.net/wiki/x/MATeAg).</sch:assert>
      </sch:rule>
   </sch:pattern>
   <sch:pattern>
      <sch:rule context="mets:dmdSec[@ID!=$work_dmdid]/mets:mdWrap/mets:xmlData/mods:mods/mods:name[@type='personal']/mods:namePart[@type]">
            <!-- 
               Ungültiger Wert im Attribut type von mods:namePart in einem nicht-primären mets:dmdSec-Element
             -->
         <sch:assert id="name_18"
                     role="warn"
                     test="@type = ('date', 'family', 'given', 'termsOfAddress')"
                     properties="dmd_id type"
                     see="https://deutsche-digitale-bibliothek.atlassian.net/wiki/x/7wTeAg">Das Attribut <sch:span class="monotype">type</sch:span> im Element <sch:span class="monotype">mods:namePart</sch:span> darf in einem nicht-primären <sch:span class="monotype">mets:dmdSec</sch:span>-Element nur die folgenden Werte enthalten:
 * <sch:span class="monotype">family</sch:span> (Nachname)
 * <sch:span class="monotype">given</sch:span> (Vorname)
 * <sch:span class="monotype">termsOfAddress</sch:span> (Titel und andere Namenszusätze)
 * <sch:span class="monotype">date</sch:span> (Lebensdaten der Person)
Abweichende Werte im Attribut <sch:span class="monotype">type</sch:span> in einem nicht-primären <sch:span class="monotype">mets:dmdSec</sch:span>-Element haben keine Auswirkung auf das Einspielen in die DDB, entsprechen aber nicht dem MODS-Standard.
Weitere Informationen zu diesem Attribut finden Sie im DDB-METS/MODS-Anwendungsprofil auf der Seite mods:name (https://deutsche-digitale-bibliothek.atlassian.net/wiki/x/MATeAg).</sch:assert>
      </sch:rule>
   </sch:pattern>
   <sch:pattern>
      <sch:rule context="mets:dmdSec[@ID=$work_dmdid]/mets:mdWrap/mets:xmlData/mods:mods/mods:name/mods:*[@valueURI]">
            <!-- 
               Unterelemente von mods:name enthalten im primären mets:dmdSec-Element das Attribut valueURI
             -->
         <sch:report id="name_09"
                     role="error"
                     test="@valueURI"
                     properties="dmd_id"
                     see="https://deutsche-digitale-bibliothek.atlassian.net/wiki/x/7wTeAg">Das Attribut <sch:span class="monotype">valueURI</sch:span> ist in Unterelementen des Elements <sch:span class="monotype">mods:name</sch:span> im primären <sch:span class="monotype">mets:dmdSec</sch:span>-Element nicht zulässig. Bitte verwenden Sie <sch:span class="monotype">valueURI</sch:span> nur in <sch:span class="monotype">mods:name</sch:span>.
Enthält ein Unterelement von <sch:span class="monotype">mods:name</sch:span>
            <sch:span class="monotype">valueURI</sch:span> wird <sch:span class="monotype">valueURI</sch:span> bei der Transformation des Datensatzes entfernt.
Weitere Informationen zu diesem Attribut finden Sie im DDB-METS/MODS-Anwendungsprofil auf der Seite mods:name (https://deutsche-digitale-bibliothek.atlassian.net/wiki/x/MATeAg).</sch:report>
      </sch:rule>
      <sch:rule context="mets:dmdSec[@ID=$work_dmdid]/mets:mdWrap/mets:xmlData/mods:mods/mods:name[@valueURI]">
            <!-- 
               Das Attribut valueURI von mods:name enthält keinen GND-URI
             -->
         <sch:assert id="name_10"
                     role="error"
                     test="starts-with(@valueURI, 'http://d-nb.info/gnd/') or starts-with(@valueURI, 'https://d-nb.info/gnd/')"
                     properties="dmd_id"
                     see="https://deutsche-digitale-bibliothek.atlassian.net/wiki/x/7wTeAg">Die DDB wertet das Attribut <sch:span class="monotype">valueURI</sch:span> im Element <sch:span class="monotype">mods:name</sch:span> nur aus, wenn es im einen GND-URI enthält. Ist dies nicht der Fall, wird <sch:span class="monotype">valueURI</sch:span> bei der Transformation des Datensatzes entfernt.
Weitere Informationen zu diesem Attribut finden Sie im DDB-METS/MODS-Anwendungsprofil auf der Seite mods:name (https://deutsche-digitale-bibliothek.atlassian.net/wiki/x/MATeAg).</sch:assert>
      </sch:rule>
   </sch:pattern>
   <sch:pattern>
      <sch:rule context="mets:dmdSec[@ID!=$work_dmdid]/mets:mdWrap/mets:xmlData/mods:mods/mods:name/mods:*[@valueURI]">
            <!-- 
               Unterelemente von mods:name enthalten in einem nicht-primären mets:dmdSec-Element das Attribut valueURI
             -->
         <sch:report id="name_19"
                     role="warn"
                     test="@valueURI"
                     properties="dmd_id"
                     see="https://deutsche-digitale-bibliothek.atlassian.net/wiki/x/7wTeAg">Das Attribut <sch:span class="monotype">valueURI</sch:span> ist in Unterelementen des Elements <sch:span class="monotype">mods:name</sch:span> in einem nicht-primären <sch:span class="monotype">mets:dmdSec</sch:span>-Element nicht zulässig. Bitte verwenden Sie <sch:span class="monotype">valueURI</sch:span> nur in <sch:span class="monotype">mods:name</sch:span>.
Die Verwendung dieses Attributs in einem nicht-primären <sch:span class="monotype">mets:dmdSec</sch:span>-Element hat keine Auswirkung auf das Einspielen in die DDB, entspricht aber nicht dem MODS-Standard.
Weitere Informationen zu diesem Attribut finden Sie im DDB-METS/MODS-Anwendungsprofil auf der Seite mods:name (https://deutsche-digitale-bibliothek.atlassian.net/wiki/x/MATeAg).</sch:report>
      </sch:rule>
   </sch:pattern>
   <sch:pattern>
      <sch:rule context="mets:dmdSec[@ID=$work_dmdid]/mets:mdWrap/mets:xmlData/mods:mods/mods:name[not(mods:role/mods:roleTerm)]">
            <!-- 
               mods:roleTerm fehlt in mods:name
             -->
         <sch:assert id="name_11"
                     role="error"
                     test="mods:role/mods:roleTerm"
                     properties="dmd_id"
                     see="https://deutsche-digitale-bibliothek.atlassian.net/wiki/x/7wTeAg">Das Element <sch:span class="monotype">mods:name</sch:span> muss mindestens ein <sch:span class="monotype">mods:role</sch:span>-Element mit dem Unterelement <sch:span class="monotype">mods:roleTerm</sch:span> mit einem gültigen MARC Relator Code (http://id.loc.gov/vocabulary/relators) enthalten.
Fehlt <sch:span class="monotype">mods:role</sch:span> mit dem Unterelement <sch:span class="monotype">mods:roleTerm</sch:span> wird bei der Transformation des Datensatzes ein <sch:span class="monotype">mods:role</sch:span> mit dem Unterelement <sch:span class="monotype">mods:roleTerm</sch:span> mit dem Wert <sch:span class="monotype">ctb</sch:span> (contributor) erzeugt.
Weitere Informationen zu diesen Elementen finden Sie im DDB-METS/MODS-Anwendungsprofil auf der Seite mods:name (https://deutsche-digitale-bibliothek.atlassian.net/wiki/x/MATeAg).</sch:assert>
      </sch:rule>
      <sch:rule context="mets:dmdSec[@ID=$work_dmdid]/mets:mdWrap/mets:xmlData/mods:mods/mods:name/mods:role[not(mods:roleTerm[@type='code'][@authority='marcrelator'])]">
            <!-- 
               Die Attribute type und authority fehlen oder enthalten ungültige Werte in mods:roleTerm
             -->
         <sch:assert id="name_12"
                     role="error"
                     test="mods:roleTerm[@type='code'][@authority='marcrelator']"
                     properties="dmd_id"
                     see="https://deutsche-digitale-bibliothek.atlassian.net/wiki/x/7wTeAg">Das Element <sch:span class="monotype">mods:name</sch:span> muss mindestens ein <sch:span class="monotype">mods:role</sch:span>-Element mit einem gültigen Unterelement <sch:span class="monotype">mods:roleTerm</sch:span> enthalten. Ein gültiges <sch:span class="monotype">mods:roleTerm</sch:span> muss die Attribute <sch:span class="monotype">type</sch:span> mit dem Wert <sch:span class="monotype">code</sch:span> und <sch:span class="monotype">authority</sch:span> mit dem Wert <sch:span class="monotype">marcrelator</sch:span> enthalten.
Ist dies nicht der Fall, werden die Attribute <sch:span class="monotype">type</sch:span> und <sch:span class="monotype">authority</sch:span> mit den genannten Werten ergänzt, bzw. ihre Werte überschrieben, wenn <sch:span class="monotype">mods:roleTerm</sch:span> einen gültigen Marcrelatorcode enthält. Falls nicht wird <sch:span class="monotype">mods:role</sch:span> bei der Transformation des Datensatzes entfernt und ein <sch:span class="monotype">mods:role</sch:span> mit dem Unterelement <sch:span class="monotype">mods:roleTerm</sch:span> mit dem Wert <sch:span class="monotype">ctb</sch:span> (contributor) erzeugt.
Weitere Informationen zu diesen Elementen und Attributen finden Sie im DDB-METS/MODS-Anwendungsprofil auf der Seite mods:name (https://deutsche-digitale-bibliothek.atlassian.net/wiki/x/MATeAg).</sch:assert>
      </sch:rule>
      <sch:rule context="mets:dmdSec[@ID=$work_dmdid]/mets:mdWrap/mets:xmlData/mods:mods/mods:name/mods:role/mods:roleTerm[@type='code'][@authority='marcrelator'][string-length(text()[1]) &gt; 0]">
            <!-- 
               Ungültiger Wert in mods:roleTerm
             -->
         <sch:assert id="name_13"
                     role="error"
                     test="key('marc_relator_codes', text()[1], $marc_relator_codes)"
                     properties="dmd_id text">Das Element <sch:span class="monotype">mods:role</sch:span> muss ein <sch:span class="monotype">mods:roleTerm</sch:span>-Element mit einem Wert aus dem MARC Relator Code Vokabular (http://id.loc.gov/vocabulary/relators) enthalten.
Ist dies nicht der Fall, wird <sch:span class="monotype">mods:role</sch:span> bei der Transformation des Datensatzes entfernt und ein <sch:span class="monotype">mods:role</sch:span> mit dem Unterelement <sch:span class="monotype">mods:roleTerm</sch:span> mit dem Wert <sch:span class="monotype">ctb</sch:span> (contributor) erzeugt.
Weitere Informationen zu diesem Element finden Sie im DDB-METS/MODS-Anwendungsprofil auf der Seite mods:name (https://deutsche-digitale-bibliothek.atlassian.net/wiki/x/MATeAg).</sch:assert>
      </sch:rule>
   </sch:pattern>
   <sch:pattern>
      <sch:rule context="mets:dmdSec[@ID=$work_dmdid]/mets:mdWrap/mets:xmlData/mods:mods/mods:name">
            <!-- 
               Nicht unterstützter Wert in mods:roleTerm
             -->
         <sch:report id="name_14"
                     role="error"
                     test="mods:role/mods:roleTerm[text() = ('len', 'lso')]"
                     properties="dmd_id">Das Element <sch:span class="monotype">mods:name</sch:span> enthält im Unterelement <sch:span class="monotype">mods:roleTerm</sch:span> des Unterelements <sch:span class="monotype">mods:role</sch:span> einen Wert, der von der DDB aufgrund von Problemen mit der Anzeige nicht unterstützt wird.
Dies betrifft die folgenden Werte:
 * <sch:span class="monotype">len</sch:span>
 * <sch:span class="monotype">lso</sch:span>
Enthält <sch:span class="monotype">mods:name</sch:span> neben <sch:span class="monotype">mods:role</sch:span>-Elementen mit einem der o. g. Werte in <sch:span class="monotype">mods:roleTerm</sch:span> weitere <sch:span class="monotype">mods:role</sch:span>-Elemente mit anderen gültigen Werten, werden die <sch:span class="monotype">mods:role</sch:span> mit den nicht unterstützten Werten bei der Transformation des Datensatzes entfernt.
Enthält <sch:span class="monotype">mods:name</sch:span> nur <sch:span class="monotype">mods:role</sch:span>-Elemente mit einem der o. g. Werte in <sch:span class="monotype">mods:roleTerm</sch:span> wird <sch:span class="monotype">mods:name</sch:span> bei der Transformation des Datensatzes entfernt.
Weitere Informationen zu diesen Elementen finden Sie im DDB-METS/MODS-Anwendungsprofil auf der Seite mods:name (https://deutsche-digitale-bibliothek.atlassian.net/wiki/x/MATeAg).</sch:report>
      </sch:rule>
   </sch:pattern>
   <sch:pattern>
      <sch:rule context="mets:dmdSec[@ID=$work_dmdid]/mets:mdWrap/mets:xmlData/mods:mods/mods:name[not(./parent::mods:subject)]/mods:role">
            <!-- 
               mods:roleTerm[@type='code'][@authority='marcrelator'] ist in mods:role mehrfach vorhanden
             -->
         <sch:report id="name_15"
                     role="error"
                     test="mods:roleTerm[@type='code'][@authority='marcrelator'][2]"
                     properties="dmd_id">Das Element <sch:span class="monotype">mods:role</sch:span> darf das Unterelement <sch:span class="monotype">mods:roleTerm[@type='code'][@authority='marcrelator']</sch:span> für einen MARC Relator Code nur einmal enthalten. Verwenden Sie für jeden MARC Relator Code jeweils ein <sch:span class="monotype">mods:role</sch:span> mit <sch:span class="monotype">mods:roleTerm[@type='code'][@authority='marcrelator']</sch:span>.
Enthält <sch:span class="monotype">mods:role</sch:span> mehr als ein <sch:span class="monotype">mods:roleTerm[@type='code'][@authority='marcrelator']</sch:span> mit gültigem MARC Relator Code wird bei der Transformation des Datensatzes für jedes <sch:span class="monotype">mods:roleTerm[@type='code'][@authority='marcrelator']</sch:span> ein <sch:span class="monotype">mods:role</sch:span> erzeugt. Dabei gehen alle weiteren Unterelemente von <sch:span class="monotype">mods:role</sch:span> verloren.
Weitere Informationen zu diesen Elementen finden Sie im DDB-METS/MODS-Anwendungsprofil auf der Seite mods:name (https://deutsche-digitale-bibliothek.atlassian.net/wiki/x/MATeAg).</sch:report>
      </sch:rule>
   </sch:pattern>
   <sch:pattern>
      <sch:rule context="mets:dmdSec[@ID=$work_dmdid]/mets:mdWrap/mets:xmlData/mods:mods/mods:name[not(./parent::mods:subject)]/mods:role">
            <!-- 
               mods:roleTerm[@type='text'] ist in mods:role mehrfach vorhanden
             -->
         <sch:report id="name_16"
                     role="error"
                     test="mods:roleTerm[@type='text'][2]"
                     properties="dmd_id">Das Element <sch:span class="monotype">mods:role</sch:span> darf das Unterelement <sch:span class="monotype">mods:roleTerm[@type='text']</sch:span> für eine textliche Bezeichnung der Funktion nur einmal enthalten.
Enthält <sch:span class="monotype">mods:role</sch:span> mehr als ein <sch:span class="monotype">mods:roleTerm[@type='text']</sch:span> wird bei der Transformation des Datensatzes das erste Vorkommen von <sch:span class="monotype">mods:roleTerm[@type='text']</sch:span> übernommen, alle anderen <sch:span class="monotype">mods:roleTerm[@type='text']</sch:span> werden entfernt.
Weitere Informationen zu diesen Elementen finden Sie im DDB-METS/MODS-Anwendungsprofil auf der Seite mods:name (https://deutsche-digitale-bibliothek.atlassian.net/wiki/x/MATeAg).</sch:report>
      </sch:rule>
   </sch:pattern>
   <sch:pattern>
      <sch:rule context="mets:dmdSec[@ID=$work_dmdid]/mets:mdWrap/mets:xmlData/mods:mods/mods:name[not(./parent::mods:subject)]/mods:role/mods:roleTerm[contains(@valueURI, 'id.loc.gov/vocabulary/relators')][key('marc_relator_codes', text()[1], $marc_relator_codes)]">
            <!-- 
               Wert in mods:roleTerm entspricht nicht dem Wert im Attribut valueURI
             -->
         <sch:assert id="name_17"
                     role="error"
                     test="substring-after(@valueURI, 'id.loc.gov/vocabulary/relators/') = text()[1]"
                     properties="dmd_id">Der Wert im Element <sch:span class="monotype">mods:roleTerm</sch:span> muss dem URI in seinem Attribut <sch:span class="monotype">valueURI</sch:span> entsprechen.
Ist dies nicht der Fall, wird das Elternelement <sch:span class="monotype">mods:role</sch:span> und seine Unterelemente bei der Transformation des Datensatzes entfernt und ein <sch:span class="monotype">mods:role</sch:span> mit dem Unterelement <sch:span class="monotype">mods:roleTerm</sch:span> mit dem Wert <sch:span class="monotype">ctb</sch:span> (contributor) erzeugt.
Weitere Informationen zu diesem Element finden Sie im DDB-METS/MODS-Anwendungsprofil auf der Seite mods:name (https://deutsche-digitale-bibliothek.atlassian.net/wiki/x/MATeAg).</sch:assert>
      </sch:rule>
   </sch:pattern>
   <sch:pattern>
      <sch:rule context="mets:dmdSec[@ID=$work_dmdid]/mets:mdWrap/mets:xmlData/mods:mods/mods:originInfo">
            <!-- 
               mods:date*-Elemente sind ohne Attribut point in mods:originInfo mehrfach vorhanden
             -->
         <sch:report id="originInfo_01"
                     role="error"
                     test="mods:dateIssued[not(@point)][position() &gt; 1] or mods:dateCreated[not(@point)][position() &gt; 1] or mods:dateCaptured[not(@point)][position() &gt; 1] or (mods:dateIssued[not(@point)] and mods:dateIssued[@point]) or (mods:dateCreated[not(@point)] and mods:dateCreated[@point]) or (mods:dateCaptured[not(@point)] and mods:dateCaptured[@point])"
                     properties="dmd_id"
                     see="https://deutsche-digitale-bibliothek.atlassian.net/wiki/x/FALeAg">Die Elemente <sch:span class="monotype">mods:dateIssued</sch:span>, <sch:span class="monotype">mods:dateCreated</sch:span> und <sch:span class="monotype">mods:dateCaptured</sch:span> im Element <sch:span class="monotype">mods:originInfo</sch:span> im primären <sch:span class="monotype">mets:dmdSec</sch:span>-Element dürfen ohne das Attribut <sch:span class="monotype">point</sch:span> mit den Werten <sch:span class="monotype">start</sch:span> und <sch:span class="monotype">end</sch:span> nicht wiederholt werden.
Fehlt <sch:span class="monotype">point</sch:span> in den o. g. Elementen wird bei der Transformation des Datensatzes das erste Vorkommen des jeweiligen Elements übernommen und alle anderen entfernt.
Bitte nutzen Sie für Zeitangaben in textlicher Form das Element <sch:span class="monotype">mods:displayDate</sch:span>.
Weitere Informationen zu diesen Elementen und Attributen finden Sie im DDB-METS/MODS-Anwendungsprofil auf der Seite mods:originInfo (https://deutsche-digitale-bibliothek.atlassian.net/wiki/x/FQveAg).</sch:report>
      </sch:rule>
   </sch:pattern>
   <sch:pattern>
      <sch:rule context="mets:dmdSec[@ID=$work_dmdid]/mets:mdWrap/mets:xmlData/mods:mods/mods:originInfo[ not(@eventType='digitization' or mods:edition[text()= '[Electronic ed.]']) and not(mods:dateIssued or mods:dateCreated) ]">
            <!-- 
               mods:originInfo muss mods:dateIssued oder mods:dateCreated enthalten
             -->
         <sch:assert id="originInfo_17"
                     role="warn"
                     test="mods:dateIssued or mods:dateCreated"
                     properties="dmd_id"
                     see="https://deutsche-digitale-bibliothek.atlassian.net/wiki/x/FALeAg">Das Element <sch:span class="monotype">mods:originInfo</sch:span>, das nicht die Angaben zur Digitalisierung des Dokuments enthält, muss im primären <sch:span class="monotype">mets:dmdSec</sch:span>-Element das Element <sch:span class="monotype">mods:dateIssued</sch:span> oder das Element <sch:span class="monotype">mods:dateCreated</sch:span> mit einem ISO 8601-konformen Wert enthalten.
Das Fehlen eines ISO 8601-konformen Wertes verhindert nicht das Einspielen des Datensatzes in die DDB, führt aber u. a. zu Problemen bei der Filterung von Suchergebnissen nach Datumsangabe. Wir bitten Sie daher, den Sachverhalt zu prüfen und die nötigen Korrekturen bis zur nächsten Datenlieferung vorzunehmen.
Weitere Informationen zu diesen Elementen finden Sie im DDB-METS/MODS-Anwendungsprofil auf der Seite mods:originInfo (https://deutsche-digitale-bibliothek.atlassian.net/wiki/x/FQveAg).</sch:assert>
      </sch:rule>
      <sch:rule context="mets:dmdSec[@ID=$work_dmdid]/mets:mdWrap/mets:xmlData/mods:mods/mods:originInfo/mods:dateIssued | mets:dmdSec[@ID=$work_dmdid]/mets:mdWrap/mets:xmlData/mods:mods/mods:originInfo/mods:dateCreated">
            <!-- 
               Ungültiger Wert in mods:dateIssued bzw. mods:dateCreated
             -->
         <sch:assert id="originInfo_02"
                     role="warn"
                     test="matches(text()[1], '^((-\d\d\d\d+)|(\d\d\d\d))(-\d\d)?(-\d\d)?$')"
                     properties="dmd_id"
                     see="https://deutsche-digitale-bibliothek.atlassian.net/wiki/x/FALeAg">Die Elemente <sch:span class="monotype">mods:dateIssued</sch:span> bzw. <sch:span class="monotype">mods:dateCreated</sch:span> müssen im primären <sch:span class="monotype">mets:dmdSec</sch:span>-Element einen ISO 8601-konformen Wert enthalten. Bitte nutzen Sie für unsichere bzw. ungenaue Zeitangaben in textlicher Form das Element <sch:span class="monotype">mods:displayDate</sch:span>.
Die Verwendung von nicht ISO 8601-konformen Werten in <sch:span class="monotype">mods:dateIssued</sch:span> bzw. <sch:span class="monotype">mods:dateCreated</sch:span> kann zu Informationsverlusten und Einschränkungen in der Suche in der DDB führen.
Weitere Informationen zu diesen Elementen finden Sie im DDB-METS/MODS-Anwendungsprofil auf der Seite mods:originInfo (https://deutsche-digitale-bibliothek.atlassian.net/wiki/x/FQveAg).</sch:assert>
      </sch:rule>
   </sch:pattern>
   <sch:pattern>
      <sch:rule context="mets:xmlData/mods:mods/mods:originInfo/mods:place/mods:placeTerm">
            <!-- 
               Hinweis auf falsche Verwendung von mods:place
             -->
         <sch:report id="originInfo_03"
                     role="caution"
                     test="contains(text()[1], ';')"
                     properties="dmd_id"
                     see="https://deutsche-digitale-bibliothek.atlassian.net/wiki/x/FALeAg">Das Element <sch:span class="monotype">mods:place</sch:span> enthält im Unterelement <sch:span class="monotype">mods:placeTerm</sch:span> ein <sch:span class="monotype">;</sch:span> (Semikolon). Dies ist ein Hinweis, dass das Element eine Aufzählung enthält und damit mehrere Orte beschreibt.
Jeder Ort muss in einem eigenen <sch:span class="monotype">mods:place</sch:span> mit dem Unterelement <sch:span class="monotype">mods:placeTerm</sch:span> beschrieben sein. Ist dies nicht der Fall, kann dies zu Fehldarstellungen in der DDB führen.
Ein Semikolon im <sch:span class="monotype">mods:placeTerm</sch:span> verhindert nicht das Einspielen des Datensatzes in die DDB, wir bitten Sie jedoch zu prüfen, ob es sich um eine Aufzählung handelt und ggf. die nötigen Korrekturen bis zur nächsten Datenlieferung vorzunehmen.
Weitere Informationen zu diesen Elementen finden Sie im DDB-METS/MODS-Anwendungsprofil auf der Seite mods:originInfo (https://deutsche-digitale-bibliothek.atlassian.net/wiki/x/FQveAg).</sch:report>
      </sch:rule>
   </sch:pattern>
   <sch:pattern>
      <sch:rule context="mets:xmlData/mods:mods/mods:originInfo/mods:place/mods:placeTerm">
            <!-- 
               Hinweis auf falsche Verwendung von mods:place
             -->
         <sch:report id="originInfo_04"
                     role="caution"
                     test="contains(text()[1], ':')"
                     properties="dmd_id"
                     see="https://deutsche-digitale-bibliothek.atlassian.net/wiki/x/FALeAg">Das Element <sch:span class="monotype">mods:place</sch:span> enthält im Unterelement <sch:span class="monotype">mods:placeTerm</sch:span> einen <sch:span class="monotype">:</sch:span> (Doppelpunkt). Dies ist ein Hinweis, dass das Element auch Angaben zu Verlegern enthält.
<sch:span class="monotype">mods:place</sch:span> darf nur Angaben zu einem Ort enthalten. Verwenden Sie für Informationen zu einem Verleger das Element <sch:span class="monotype">mods:publisher</sch:span> und wiederholen Sie es ggf. für weitere Verleger.
Angaben zu Verlegen in <sch:span class="monotype">mods:placeTerm</sch:span> können zu Fehldarstellungen in der DDB führen.
Ein Doppelpunkt im <sch:span class="monotype">mods:placeTerm</sch:span> verhindert nicht das Einspielen des Datensatzes in die DDB, wir bitten Sie jedoch zu prüfen, ob es sich um Angaben zu Verlegern handelt und ggf. die nötigen Korrekturen bis zur nächsten Datenlieferung vorzunehmen.
Weitere Informationen zu diesen Elementen finden Sie im DDB-METS/MODS-Anwendungsprofil auf der Seite mods:originInfo (https://deutsche-digitale-bibliothek.atlassian.net/wiki/x/FQveAg).</sch:report>
      </sch:rule>
   </sch:pattern>
   <sch:pattern>
      <sch:rule context="mets:dmdSec[@ID=$work_dmdid]/mets:mdWrap/mets:xmlData/mods:mods/mods:originInfo[ not(../mods:originInfo[@eventType='digitization'] or ../mods:originInfo[mods:edition[text()[1] = '[Electronic ed.]']]) and (mods:dateIssued[number(substring(text()[1], 1, 4)) &gt; 1999] or mods:dateCreated[number(substring(text()[1], 1, 4)) &gt; 1999]) ]">
            <!-- 
               Hinweis auf ungültige Datumsangabe in mods:originInfo
             -->
         <sch:assert id="originInfo_05"
                     role="caution"
                     test="mods:edition[text()[1] = '[Electronic ed.]'] or ./@eventType='digitization'"
                     properties="dmd_id"
                     see="https://deutsche-digitale-bibliothek.atlassian.net/wiki/x/FALeAg">Der Wert im Unterelement <sch:span class="monotype">mods:dateIssued</sch:span> bzw. im Unterelement <sch:span class="monotype">mods:dateCreated</sch:span> von <sch:span class="monotype">mods:originInfo</sch:span> im primären <sch:span class="monotype">mets:dmdSec</sch:span>-Element enthält das Jahr 2000 oder später. Dies deutet darauf hin, dass sich <sch:span class="monotype">mods:originInfo</sch:span> nicht auf die Veröffentlichung bzw. Entstehung sondern auf die Digitalisierung des Dokuments bezieht.
Bitte verwenden Sie für die Angaben zur Digitalisierung ein eigenes  <sch:span class="monotype">mods:originInfo</sch:span> mit dem Attribut <sch:span class="monotype">eventType</sch:span> mit dem Wert <sch:span class="monotype">digitization</sch:span> sowie dem Unterelement <sch:span class="monotype">mods:edition</sch:span> mit dem Wert <sch:span class="monotype">[Electronic ed.]</sch:span>.
Dieser Fehler verhindert nicht das Einspielen des Datensatzes in die DDB, wir bitten Sie jedoch, zu prüfen, ob es sich tatsächlich um die richtige Datumsangabe handelt und ggf. die nötigen Korrekturen bis zur nächsten Datenlieferung vorzunehmen.
Weitere Informationen zu diesen Elementen finden Sie im DDB-METS/MODS-Anwendungsprofil auf der Seite mods:originInfo (https://deutsche-digitale-bibliothek.atlassian.net/wiki/x/FQveAg).</sch:assert>
      </sch:rule>
   </sch:pattern>
   <sch:pattern>
      <sch:rule context="mets:dmdSec[@ID=$work_dmdid]/mets:mdWrap/mets:xmlData/mods:mods/mods:originInfo/mods:place">
            <!-- 
               mods:placeTerm fehlt in mods:place
             -->
         <sch:assert id="originInfo_06"
                     role="error"
                     test="mods:placeTerm[@type='text']"
                     properties="dmd_id"
                     see="https://deutsche-digitale-bibliothek.atlassian.net/wiki/x/FALeAg">Das Element <sch:span class="monotype">mods:place</sch:span> im primären <sch:span class="monotype">mets:dmdSec</sch:span>-Element muss das Unterelement <sch:span class="monotype">mods:placeTerm</sch:span> mit dem Attribut <sch:span class="monotype">type</sch:span> mit dem Wert <sch:span class="monotype">text</sch:span> enthalten. Ist dies nicht der Fall, wird <sch:span class="monotype">mods:place</sch:span> bei der Transformation des Datensatzes entfernt.
Weitere Informationen zu diesen Elementen und dem Attribut finden Sie im DDB-METS/MODS-Anwendungsprofil auf der Seite mods:originInfo (https://deutsche-digitale-bibliothek.atlassian.net/wiki/x/FQveAg).</sch:assert>
      </sch:rule>
   </sch:pattern>
   <sch:pattern>
      <sch:rule context="mets:dmdSec[@ID=$work_dmdid]/mets:mdWrap/mets:xmlData/mods:mods/mods:originInfo/mods:*[local-name() = ('dateIssued', 'dateCreated', 'dateOther') and namespace-uri() = 'http://www.loc.gov/mods/v3'][@point]">
         <sch:let name="point" value="./@point"/>
         <sch:let name="name" value="./local-name()"/>
         <!-- 
               mods:date*-Elemente sind mit gleichem Wert im Attribut point in mods:originInfo mehrfach vorhanden
             -->
         <sch:report id="originInfo_15"
                     role="error"
                     test="./preceding-sibling::*[local-name() = $name and namespace-uri() = 'http://www.loc.gov/mods/v3'][@point = $point]"
                     properties="dmd_id"
                     see="https://deutsche-digitale-bibliothek.atlassian.net/wiki/x/FALeAg">Die Unterelemente <sch:span class="monotype">mods:dateIssued</sch:span>, <sch:span class="monotype">mods:dateCreated</sch:span> und <sch:span class="monotype">mods:dateOther</sch:span> im Element <sch:span class="monotype">mods:originInfo</sch:span> im primären <sch:span class="monotype">mets:dmdSec</sch:span>-Element dürfen nicht mit dem gleichen Wert im Attribut <sch:span class="monotype">point</sch:span> wiederholt werden.
Wird eines der o. g. Elemente mit dem identischen Wert in <sch:span class="monotype">point</sch:span> wiederholt, werden alle weiteren Vorkommen (XML-Reihenfolge) bei der Transformation des Datensatzes entfernt.
Weitere Informationen zu diesen Elementen und Attributen finden Sie im DDB-METS/MODS-Anwendungsprofil auf der Seite mods:originInfo (https://deutsche-digitale-bibliothek.atlassian.net/wiki/x/FQveAg).</sch:report>
      </sch:rule>
   </sch:pattern>
   <sch:pattern>
      <sch:rule context="mets:dmdSec[@ID=$work_dmdid]/mets:mdWrap/mets:xmlData/mods:mods/mods:originInfo">
            <!-- 
               mods:displayDate ist in mods:originInfo mehrmals vorhanden
             -->
         <sch:report id="originInfo_16"
                     role="error"
                     test="mods:displayDate[2]"
                     properties="dmd_id"
                     see="https://deutsche-digitale-bibliothek.atlassian.net/wiki/x/FALeAg">Das Element <sch:span class="monotype">mods:displayDate</sch:span> darf innerhalb des Elements <sch:span class="monotype">mods:originInfo</sch:span> im primären <sch:span class="monotype">mets:dmdSec</sch:span>-Element nicht wiederholt werden. Enthält <sch:span class="monotype">mods:originInfo</sch:span> mehr als ein <sch:span class="monotype">mods:displayDate</sch:span>, wird das erste Vorkommen (XML-Reihenfolge) übernommen, alle anderen werden bei der Transformation des Datensatzes entfernt.
Weitere Informationen zu diesem Element finden Sie im DDB-METS/MODS-Anwendungsprofil auf der Seite mods:originInfo (https://deutsche-digitale-bibliothek.atlassian.net/wiki/x/FQveAg).</sch:report>
      </sch:rule>
   </sch:pattern>
   <sch:pattern>
      <sch:rule context="mets:dmdSec[@ID=$work_dmdid]/mets:mdWrap/mets:xmlData/mods:mods">
            <!-- 
               mods:originInfo ist mit Attribut eventType mit dem Wert digitization bzw. mit mods:edition mit dem Wert [Electronic ed.] mehrfach vorhanden
             -->
         <sch:report id="originInfo_18"
                     role="error"
                     test="mods:originInfo[@eventType='digitization' or mods:edition[text()[1] = '[Electronic ed.]']][2]"
                     properties="dmd_id"
                     see="https://deutsche-digitale-bibliothek.atlassian.net/wiki/x/FALeAg">Das Element <sch:span class="monotype">mods:originInfo</sch:span> innerhalb des primären <sch:span class="monotype">mets:dmdSec</sch:span>-Elements darf mit dem Attribut <sch:span class="monotype">eventType</sch:span> mit dem Wert <sch:span class="monotype">digitization</sch:span> bzw. mit <sch:span class="monotype">mods:edition</sch:span> mit dem Wert <sch:span class="monotype">[Electronic ed.]</sch:span> nicht wiederholt werden.
Enthält <sch:span class="monotype">mets:dmdSec</sch:span> mehr als ein <sch:span class="monotype">mods:originInfo</sch:span> mit dem Attribut <sch:span class="monotype">eventType</sch:span> mit dem Wert <sch:span class="monotype">digitization</sch:span> bzw. mit <sch:span class="monotype">mods:edition</sch:span> mit dem Wert <sch:span class="monotype">[Electronic ed.]</sch:span>, wird bei der Transformation des Datensatzes das erste entsprechende Vorkommen von <sch:span class="monotype">mods:originInfo</sch:span> übernommen, alle anderen <sch:span class="monotype">mods:originInfo</sch:span> werden entfernt.
Weitere Informationen zu diesen Elementen und Attributen finden Sie im DDB-METS/MODS-Anwendungsprofil auf der Seite mods:originInfo (https://deutsche-digitale-bibliothek.atlassian.net/wiki/x/FQveAg).</sch:report>
      </sch:rule>
   </sch:pattern>
   <sch:pattern>
      <sch:rule context="mets:dmdSec[@ID=$work_dmdid]/mets:mdWrap/mets:xmlData/mods:mods">
            <!-- 
               mods:language fehlt
             -->
         <sch:assert id="language_01"
                     role="warn"
                     test="mods:language/mods:languageTerm[text() != 'und'] or ancestor::mets:mets/mets:structMap[@TYPE='LOGICAL']//mets:div[contains(@DMDID, $work_dmdid)][@TYPE = ('image', 'photograph', 'illustration', 'map', 'poster', 'plan')]"
                     properties="dmd_id"
                     see="https://deutsche-digitale-bibliothek.atlassian.net/wiki/x/FwLeAg">Ein Datensatz zu einem Textdokument muss im primären <sch:span class="monotype">mets:dmdSec</sch:span>-Element das Element <sch:span class="monotype">mods:language</sch:span> mit dem Unterelement <sch:span class="monotype">mods:languageTerm</sch:span> mit einem ISO 639-2b (https://id.loc.gov/vocabulary/iso639-2)-konformen Wert enthalten.
Bitte beachten Sie, dass das Fehlen von <sch:span class="monotype">mods:language</sch:span>, die Verwendung eines nicht-ISO 639-2b (https://id.loc.gov/vocabulary/iso639-2)-konformen Wertes in <sch:span class="monotype">mods:languageTerm</sch:span> oder die Verwendung des Sprachcode und (https://id.loc.gov/vocabulary/iso639-2/und) (Nicht zu entscheiden (https://id.loc.gov/vocabulary/iso639-2/und)) die Weitergabe des Datensatzes an Europeana verhindert.
Darüber hinaus gelten im Kontext der DDB und Europeana auch Noten als Textdokumente. Falls Ihre Noten keinen Sprachtext enthalten, verwenden Sie bitte den Code zxx (https://id.loc.gov/vocabulary/iso639-2/zxx) (Kein linguistischer Inhalt (https://id.loc.gov/vocabulary/iso639-2/zxx)).
Weitere Informationen zu diesem Element finden Sie im DDB-METS/MODS-Anwendungsprofil auf der Seite mods:language (https://deutsche-digitale-bibliothek.atlassian.net/wiki/x/9wLeAg).</sch:assert>
      </sch:rule>
   </sch:pattern>
   <sch:pattern>
      <sch:rule context="mets:dmdSec[@ID=$work_dmdid]/mets:mdWrap/mets:xmlData/mods:mods/mods:language/mods:languageTerm[string-length(text()) &gt; 0]">
            <!-- 
               Ungültiger Wert in mods:languageTerm
             -->
         <sch:assert id="language_02"
                     role="error"
                     test="key('iso639-1_codes', text()[1], $iso639-1_codes) or key('iso639-2_codes', text()[1], $iso639-2_codes)"
                     properties="dmd_id text"
                     see="https://deutsche-digitale-bibliothek.atlassian.net/wiki/x/FwLeAg">Das Element <sch:span class="monotype">mods:languageTerm</sch:span> im Element <sch:span class="monotype">mods:language</sch:span> im primären <sch:span class="monotype">mets:dmdSec</sch:span>-Element muss einen ISO 639-2b (https://id.loc.gov/vocabulary/iso639-2)-konformen Wert enthalten.
Bitte beachten Sie, dass wiederholte Sprachangaben innerhalb von <sch:span class="monotype">mods:language</sch:span> bzw. im Wert von <sch:span class="monotype">mods:languageTerm</sch:span> nicht zulässig sind. Verwenden Sie für jede Sprachangabe jeweils ein <sch:span class="monotype">mods:language</sch:span> mit <sch:span class="monotype">mods:languageTerm</sch:span>.
Enthält <sch:span class="monotype">mods:language</sch:span> kein <sch:span class="monotype">mods:languageTerm</sch:span> mit einem ISO 639-2b (https://id.loc.gov/vocabulary/iso639-2)-konformen Wert, wird <sch:span class="monotype">mods:language</sch:span> bei der Transformation des Datensatzes entfernt.
Weitere Informationen zu diesem Element finden Sie im DDB-METS/MODS-Anwendungsprofil auf der Seite mods:language (https://deutsche-digitale-bibliothek.atlassian.net/wiki/x/9wLeAg).</sch:assert>
      </sch:rule>
   </sch:pattern>
   <sch:pattern>
      <sch:rule context="mets:dmdSec[@ID=$work_dmdid]/mets:mdWrap/mets:xmlData/mods:mods/mods:physicalDescription/mods:extent">
            <!-- 
               Die Angaben in mods:extent beziehen sich auf das Digitalisat
             -->
         <sch:report id="physicalDescription_01"
                     role="error"
                     test="contains(lower-case(text()), 'online') or contains(lower-case(text()[1]), 'electronic')"
                     properties="dmd_id"
                     see="https://deutsche-digitale-bibliothek.atlassian.net/wiki/x/LwLeAg">Das Element <sch:span class="monotype">mods:extent</sch:span> im Element <sch:span class="monotype">mods:physicalDescription</sch:span> im primären <sch:span class="monotype">mets:dmdSec</sch:span>-Element enthält die Begriffe <sch:span class="monotype">online</sch:span> bzw. <sch:span class="monotype">electronic</sch:span> und beschreibt damit das Digitalisat.
Da <sch:span class="monotype">mods:extent</sch:span> aber nur zur Beschreibung des originalen Dokuments dient, wird es bei der Transformation des Datensatzes entfernt.
Weitere Informationen zu diesem Element finden Sie im DDB-METS/MODS-Anwendungsprofil auf der Seite mods:physicalDescription (https://deutsche-digitale-bibliothek.atlassian.net/wiki/x/KwLeAg).</sch:report>
      </sch:rule>
   </sch:pattern>
   <sch:pattern>
      <sch:rule context="mets:dmdSec[@ID=$work_dmdid]/mets:mdWrap/mets:xmlData/mods:mods//mods:note[parent::mods:mods or parent::mods:physicalDescription][not(@type)]">
            <!-- 
               Das Attribut type fehlt in mods:note
             -->
         <sch:assert id="note_01"
                     role="error"
                     test="@type"
                     properties="dmd_id"
                     see="https://deutsche-digitale-bibliothek.atlassian.net/wiki/x/dALeAg">Im primären <sch:span class="monotype">mets:dmdSec</sch:span>-Element muss das Top-Level-Element <sch:span class="monotype">mods:note</sch:span> bzw. <sch:span class="monotype">mods:note</sch:span> im Element <sch:span class="monotype">mods:physicalDescription</sch:span> das Attribut <sch:span class="monotype">type</sch:span> mit einem Wert aus der Liste der MODS &lt;note&gt; Types (https://www.loc.gov/standards/mods/mods-notes.html) enthalten.
Fehlt <sch:span class="monotype">type</sch:span> in <sch:span class="monotype">mods:note</sch:span> wird <sch:span class="monotype">mods:note</sch:span> bei der Transformation des Datensatzes entfernt.
Weitere Informationen zu diesem Element finden Sie im DDB-METS/MODS-Anwendungsprofil auf den Seiten mods:note (https://deutsche-digitale-bibliothek.atlassian.net/wiki/x/FgfeAg) und mods:physicalDescription (https://deutsche-digitale-bibliothek.atlassian.net/wiki/x/KwLeAg).</sch:assert>
      </sch:rule>
      <sch:rule context="mets:dmdSec[@ID=$work_dmdid]/mets:mdWrap/mets:xmlData/mods:mods//mods:note[parent::mods:mods or parent::mods:physicalDescription][@type]">
            <!-- 
               Ungültiger Wert im Attribut type von mods:note
             -->
         <sch:assert id="note_02"
                     role="error"
                     test="@type = ( 'accrual method', 'accrual policy', 'acquisition', 'action', 'additional physical form', 'admin', 'bibliographic history', 'bibliography', 'biographical/historical', 'citation/reference', 'conservation history', 'content', 'creation/production credits', 'date', 'exhibitions', 'funding', 'handwritten', 'language', 'numbering', 'date/sequential designation', 'original location', 'original version', 'ownership', 'performers', 'preferred citation', 'publications', 'reproduction', 'restriction', 'source characteristics', 'source dimensions', 'source identifier', 'source note', 'source type', 'statement of responsibility', 'subject completeness', 'system details', 'thesis', 'venue', 'version identification', 'condition', 'marks', 'medium', 'organization', 'physical description', 'physical details', 'presentation', 'script', 'support', 'technique' )"
                     properties="dmd_id type"
                     see="https://deutsche-digitale-bibliothek.atlassian.net/wiki/x/dALeAg">Das Attribut <sch:span class="monotype">type</sch:span> im Element <sch:span class="monotype">mods:note</sch:span> im primären <sch:span class="monotype">mets:dmdSec</sch:span>-Element darf nur einem Wert aus der Liste der MODS &lt;note&gt; Types (https://www.loc.gov/standards/mods/mods-notes.html) enthalten.
Enthält <sch:span class="monotype">type</sch:span> einen ungültigen Wert, wird <sch:span class="monotype">mods:note</sch:span> bei der Transformation des Datensatzes entfernt.
Weitere Informationen zu diesem Element und Attribut finden Sie im DDB-METS/MODS-Anwendungsprofil auf der Seite mods:note (https://deutsche-digitale-bibliothek.atlassian.net/wiki/x/FgfeAg).</sch:assert>
      </sch:rule>
   </sch:pattern>
   <sch:pattern>
      <sch:rule context="mets:dmdSec[@ID=$work_dmdid]/mets:mdWrap/mets:xmlData/mods:mods/mods:subject">
            <!-- 
               Unvollständiges bzw. nicht unterstütztes mods:subject
             -->
         <sch:assert id="subject_05"
                     role="info"
                     test="( (mods:topic or mods:genre) and ( starts-with(@valueURI, 'http://d-nb.info/gnd/') or starts-with(@valueURI, 'https://d-nb.info/gnd/') or starts-with(@valueURI, 'http://www.wikidata.org/') or starts-with(@valueURI, 'https://www.wikidata.org/') or starts-with(@valueURI, 'http://vocab.getty.edu/aat/') or starts-with(@valueURI, 'https://vocab.getty.edu/aat/') ) ) or ( mods:topic[ starts-with(@valueURI, 'http://d-nb.info/gnd/') or starts-with(@valueURI, 'https://d-nb.info/gnd/') or starts-with(@valueURI, 'http://www.wikidata.org/') or starts-with(@valueURI, 'https://www.wikidata.org/') or starts-with(@valueURI, 'http://vocab.getty.edu/aat/') or starts-with(@valueURI, 'https://vocab.getty.edu/aat/') ] ) or ( mods:genre[ starts-with(@valueURI, 'http://d-nb.info/gnd/') or starts-with(@valueURI, 'https://d-nb.info/gnd/') or starts-with(@valueURI, 'http://www.wikidata.org/') or starts-with(@valueURI, 'https://www.wikidata.org/') or starts-with(@valueURI, 'http://vocab.getty.edu/aat/') or starts-with(@valueURI, 'https://vocab.getty.edu/aat/') ] )"
                     properties="dmd_id"
                     see="https://deutsche-digitale-bibliothek.atlassian.net/wiki/x/ewHeAg">Die DDB berücksichtigt das Element <sch:span class="monotype">mods:subject</sch:span> im primären <sch:span class="monotype">mets:dmdSec</sch:span>-Element nur, wenn es das Unterelement <sch:span class="monotype">mods:topic</sch:span> oder <sch:span class="monotype">mods:genre</sch:span> enthält. Darüber hinaus müssen diese Unterelemente im Attribut <sch:span class="monotype">valueURI</sch:span> einen URI aus der GND (https://www.dnb.de/DE/Professionell/Standardisierung/GND/gnd_node.html), Wikidata (https://www.wikidata.org) oder dem AAT (https://www.getty.edu/research/tools/vocabularies/aat/) enthälten.
Weitere Informationen zu diesem Element und Attribut finden Sie im DDB-METS/MODS-Anwendungsprofil auf der Seite mods:subject (https://deutsche-digitale-bibliothek.atlassian.net/wiki/x/GgPeAg).</sch:assert>
      </sch:rule>
   </sch:pattern>
   <sch:pattern>
      <sch:rule context="mets:dmdSec[@ID=$work_dmdid]/mets:mdWrap/mets:xmlData/mods:mods/mods:subject[@valueURI][ starts-with(@valueURI, 'http://d-nb.info/gnd/') or starts-with(@valueURI, 'https://d-nb.info/gnd/') or starts-with(@valueURI, 'http://www.wikidata.org/') or starts-with(@valueURI, 'https://www.wikidata.org/') or starts-with(@valueURI, 'http://vocab.getty.edu/aat/') or starts-with(@valueURI, 'https://vocab.getty.edu/aat/') ]">
            <!-- 
               Unklare Zuordnung einer URI in mods:subject
             -->
         <sch:report id="subject_06"
                     role="error"
                     test="element()[2]"
                     properties="dmd_id"
                     see="https://deutsche-digitale-bibliothek.atlassian.net/wiki/x/ewHeAg">Das Element <sch:span class="monotype">mods:subject</sch:span> im primären <sch:span class="monotype">mets:dmdSec</sch:span>-Element enthält das Attribut <sch:span class="monotype">valueURI</sch:span> mit einem von der DDB unterstütztem URI aber und mehr als ein Unterelment ohne <sch:span class="monotype">valueURI</sch:span>.
Eine Zuordnung von <sch:span class="monotype">valueURI</sch:span> ist dadurch nicht möglich und daher wird <sch:span class="monotype">mods:subject</sch:span> bei der Transformation des Datensatzes entfernt.
Weitere Informationen zu diesem Element finden Sie im DDB-METS/MODS-Anwendungsprofil auf der Seite mods:subject (https://deutsche-digitale-bibliothek.atlassian.net/wiki/x/GgPeAg).</sch:report>
      </sch:rule>
   </sch:pattern>
   <sch:pattern>
      <sch:rule context="mets:dmdSec[@ID=$work_dmdid]/mets:mdWrap/mets:xmlData/mods:mods [ancestor::mets:mets/mets:structMap[@TYPE='LOGICAL']/mets:div/mets:mptr]">
            <!-- 
               mods:relatedItem[@type='host'] fehlt im primären mets:dmdSec
             -->
         <sch:assert id="relatedItem_01"
                     role="fatal"
                     test="mods:relatedItem[@type = 'host']"
                     properties="dmd_id"
                     see="https://deutsche-digitale-bibliothek.atlassian.net/wiki/x/sAneAg">Der Datensatz beschreibt den Teil eines Mehrteiligen Dokuments und muss den Ankersatz des Mehrteiligen Dokuments referenzieren.
Die Referenzierung erfolgt im primären <sch:span class="monotype">mets:dmdSec</sch:span>-Element des Teiles des Mehrteiligen Dokuments im Element <sch:span class="monotype">mods:relatedItem[@type='host']</sch:span> über einen Identifier im Unterelement <sch:span class="monotype">mods:recordIdentifier</sch:span> des Elements <sch:span class="monotype">mods:recordInfo</sch:span>. Dieser Identifier muss dem Identifier im Unterelement <sch:span class="monotype">mods:recordIdentifier</sch:span> des Top-Level-Elements <sch:span class="monotype">mods:recordInfo</sch:span> im Ankersatz des Mehrteiligen Dokuments entsprechen.
Der Identifier muss dazu im Unterelement <sch:span class="monotype">mods:recordIdentifier</sch:span> des Elements <sch:span class="monotype">mods:recordInfo</sch:span> angegeben sein. <sch:span class="monotype">mods:recordIdentifier</sch:span> muss darüber hinaus jeweils das Attribut <sch:span class="monotype">source</sch:span> mit identischem Wert besitzen.
Ist dies nicht der Fall, besteht keine Referenzierung zwischen den Datensätzen und der Datensatz wird nicht in die DDB eingespielt.
Weitere Informationen zu diesen Elementen und ihrem Kontext finden Sie im DDB-METS/MODS-Anwendungsprofil auf den Seiten mods:relatedItem (https://deutsche-digitale-bibliothek.atlassian.net/wiki/x/gA3eAg), mods:recordInfo (https://deutsche-digitale-bibliothek.atlassian.net/wiki/x/eAjeAg) und  METS/MODS für Mehrteilige Dokumente (https://deutsche-digitale-bibliothek.atlassian.net/wiki/x/GwLeAg).</sch:assert>
      </sch:rule>
   </sch:pattern>
   <sch:pattern>
      <sch:rule context="mets:dmdSec[@ID=$work_dmdid]/mets:mdWrap/mets:xmlData/mods:mods/mods:relatedItem[@type='host'][not(mods:recordInfo/mods:recordIdentifier[@source])]">
            <!-- 
               mods:recordIdentifier fehlt im mods:relatedItem[@type='host'] der primären mets:dmdSec
             -->
         <sch:assert id="relatedItem_02"
                     role="fatal"
                     test="mods:recordInfo/mods:recordIdentifier"
                     properties="dmd_id"
                     see="https://deutsche-digitale-bibliothek.atlassian.net/wiki/x/sAneAg">Der Datensatz beschreibt den Teil eines Mehrteiligen Dokuments und muss den Ankersatz des Mehrteiligen Dokuments referenzieren.
Die Referenzierung erfolgt im primären <sch:span class="monotype">mets:dmdSec</sch:span>-Element des Teiles des Mehrteiligen Dokuments im Element <sch:span class="monotype">mods:relatedItem[@type='host']</sch:span> über einen Identifier im Unterelement <sch:span class="monotype">mods:recordIdentifier</sch:span> des Elements <sch:span class="monotype">mods:recordInfo</sch:span>. Dieser Identifier muss dem Identifier im Unterelement <sch:span class="monotype">mods:recordIdentifier</sch:span> des Top-Level-Elements <sch:span class="monotype">mods:recordInfo</sch:span> im Ankersatz des Mehrteiligen Dokuments entsprechen.
Der Identifier muss dazu im Unterelement <sch:span class="monotype">mods:recordIdentifier</sch:span> des Elements <sch:span class="monotype">mods:recordInfo</sch:span> angegeben sein. <sch:span class="monotype">mods:recordIdentifier</sch:span> muss darüber hinaus jeweils das Attribut <sch:span class="monotype">source</sch:span> mit identischem Wert besitzen.
Ist dies nicht der Fall, besteht keine Referenzierung zwischen den Datensätzen und der Datensatz wird nicht in die DDB eingespielt.
Weitere Informationen zu diesen Elementen und ihrem Kontext finden Sie im DDB-METS/MODS-Anwendungsprofil auf den Seiten mods:relatedItem (https://deutsche-digitale-bibliothek.atlassian.net/wiki/x/gA3eAg), mods:recordInfo (https://deutsche-digitale-bibliothek.atlassian.net/wiki/x/eAjeAg) und  METS/MODS für Mehrteilige Dokumente (https://deutsche-digitale-bibliothek.atlassian.net/wiki/x/GwLeAg).</sch:assert>
      </sch:rule>
      <sch:rule context="mets:dmdSec[@ID=$work_dmdid]/mets:mdWrap/mets:xmlData/mods:mods/mods:relatedItem[@type='host']/mods:recordInfo/mods:recordIdentifier">
            <!-- 
               Das Attribut source fehlt in mods:recordIdentifier im mods:relatedItem[@type='host'] der primären mets:dmdSec
             -->
         <sch:assert id="relatedItem_03"
                     role="fatal"
                     test="@source"
                     properties="dmd_id"
                     see="https://deutsche-digitale-bibliothek.atlassian.net/wiki/x/sAneAg">Der Datensatz beschreibt den Teil eines Mehrteiligen Dokuments und muss den Ankersatz des Mehrteiligen Dokuments referenzieren.
Die Referenzierung erfolgt im primären <sch:span class="monotype">mets:dmdSec</sch:span>-Element des Teiles des Mehrteiligen Dokuments im Element <sch:span class="monotype">mods:relatedItem[@type='host']</sch:span> über einen Identifier im Unterelement <sch:span class="monotype">mods:recordIdentifier</sch:span> des Elements <sch:span class="monotype">mods:recordInfo</sch:span>. Dieser Identifier muss dem Identifier im Unterelement <sch:span class="monotype">mods:recordIdentifier</sch:span> des Top-Level-Elements <sch:span class="monotype">mods:recordInfo</sch:span> im Ankersatz des Mehrteiligen Dokuments entsprechen.
Der Identifier muss dazu im Unterelement <sch:span class="monotype">mods:recordIdentifier</sch:span> des Elements <sch:span class="monotype">mods:recordInfo</sch:span> angegeben sein. <sch:span class="monotype">mods:recordIdentifier</sch:span> muss darüber hinaus jeweils das Attribut <sch:span class="monotype">source</sch:span> mit identischem Wert besitzen.
Ist dies nicht der Fall, besteht keine Referenzierung zwischen den Datensätzen und der Datensatz wird nicht in die DDB eingespielt.
Weitere Informationen zu diesen Elementen und ihrem Kontext finden Sie im DDB-METS/MODS-Anwendungsprofil auf den Seiten mods:relatedItem (https://deutsche-digitale-bibliothek.atlassian.net/wiki/x/gA3eAg), mods:recordInfo (https://deutsche-digitale-bibliothek.atlassian.net/wiki/x/eAjeAg) und  METS/MODS für Mehrteilige Dokumente (https://deutsche-digitale-bibliothek.atlassian.net/wiki/x/GwLeAg).</sch:assert>
      </sch:rule>
   </sch:pattern>
   <sch:pattern>
      <sch:rule context="mets:dmdSec[@ID=$work_dmdid]/mets:mdWrap/mets:xmlData/mods:mods/mods:relatedItem[not(@type = ('host', 'series'))]">
            <!-- 
               Das Attribut type fehlt in mods:relatedItem bzw. enthält einen nicht unterstützten Wert
             -->
         <sch:assert id="relatedItem_04"
                     role="info"
                     test="@type = ('host', 'series')"
                     properties="dmd_id"
                     see="https://deutsche-digitale-bibliothek.atlassian.net/wiki/x/sAneAg">Das Element <sch:span class="monotype">mods:relatedItem</sch:span> muss das Attribut <sch:span class="monotype">type</sch:span> mit einem der folgenden Werte enthalten:
 * <sch:span class="monotype">host</sch:span>
 * <sch:span class="monotype">series</sch:span>
Fehlt <sch:span class="monotype">type</sch:span> bzw. enthält es einen ungültigen Wert, wird <sch:span class="monotype">mods:relatedItem</sch:span> bei der Transformation des Datensatzes entfernt.
Weitere Informationen zu diesem Attribut finden Sie im DDB-METS/MODS-Anwendungsprofil auf der Seite mods:relatedItem (https://deutsche-digitale-bibliothek.atlassian.net/wiki/x/gA3eAg).</sch:assert>
      </sch:rule>
      <sch:rule context="mets:dmdSec[@ID=$work_dmdid]/mets:mdWrap/mets:xmlData/mods:mods/mods:relatedItem[@type = 'series']">
            <!-- 
               mods:titleInfo fehlt in mods:relatedItem[@type='series']
             -->
         <sch:assert id="relatedItem_05"
                     role="error"
                     test="mods:titleInfo/mods:title[1][string-length(normalize-space(text()[1])) &gt; 0]"
                     properties="dmd_id"
                     see="https://deutsche-digitale-bibliothek.atlassian.net/wiki/x/sAneAg">Das Element <sch:span class="monotype">mods:relatedItem</sch:span> mit dem Wert <sch:span class="monotype">series</sch:span> im Attribut <sch:span class="monotype">type</sch:span> im primären <sch:span class="monotype">mets:dmdSec</sch:span>-Element muss mindestens ein Element <sch:span class="monotype">mods:titleInfo</sch:span>-Element mit dem Unterelement <sch:span class="monotype">mods:title</sch:span> enthalten.
Ist dies nicht der Fall, wird <sch:span class="monotype">mods:relatedItem</sch:span> bei der Transformation des Datensatzes entfernt.
Weitere Informationen zu diesem Element finden Sie im DDB-METS/MODS-Anwendungsprofil auf der Seite mods:relatedItem (https://deutsche-digitale-bibliothek.atlassian.net/wiki/x/gA3eAg).</sch:assert>
      </sch:rule>
   </sch:pattern>
   <sch:pattern>
      <sch:rule context="mets:dmdSec[@ID=$work_dmdid]/mets:mdWrap/mets:xmlData/mods:mods">
            <!-- 
               mods:relatedItem ist mit dem Attribut type mit dem Wert host mehrfach vorhanden
             -->
         <sch:report id="relatedItem_12"
                     role="error"
                     test="mods:relatedItem[@type='host'][mods:recordInfo/mods:recordIdentifier][2]"
                     properties="dmd_id"
                     see="https://deutsche-digitale-bibliothek.atlassian.net/wiki/x/sAneAg">Das Element <sch:span class="monotype">mods:relatedItem</sch:span> innerhalb des Elements <sch:span class="monotype">mets:dmdSec</sch:span> darf mit dem Attribut <sch:span class="monotype">type</sch:span> mit dem Wert <sch:span class="monotype">host</sch:span> nicht wiederholt werden, da die DDB zurzeit keine Polyhierarchie unterstützt.
Enthält <sch:span class="monotype">mets:dmdSec</sch:span> mehr als ein <sch:span class="monotype">mods:relatedItem</sch:span> mit dem Attribut <sch:span class="monotype">type</sch:span> mit dem Wert <sch:span class="monotype">host</sch:span>, wird bei der Transformation des Datensatzes das erste Vorkommen von <sch:span class="monotype">mods:relatedItem</sch:span> übernommen, alle anderen <sch:span class="monotype">mods:relatedItem</sch:span> werden entfernt.
Weitere Informationen zu diesem Element finden Sie im DDB-METS/MODS-Anwendungsprofil auf der Seite mods:relatedItem (https://deutsche-digitale-bibliothek.atlassian.net/wiki/x/gA3eAg).</sch:report>
      </sch:rule>
   </sch:pattern>
   <sch:pattern>
      <sch:rule context="mets:dmdSec[@ID=$work_dmdid]/mets:mdWrap/mets:xmlData/mods:mods/mods:relatedItem[@type='host']">
         <sch:let name="recordidentifiers"
                  value="../mods:recordInfo/mods:recordIdentifier"/>
         <!-- 
               Selbstreferenz in mods:relatedItem[@type='host']
             -->
         <sch:report id="relatedItem_13"
                     role="fatal"
                     test="mods:recordInfo/mods:recordIdentifier = $recordidentifiers"
                     properties="dmd_id"
                     see="https://deutsche-digitale-bibliothek.atlassian.net/wiki/x/sAneAg">Der Identifier im Element <sch:span class="monotype">mods:recordIdentifier</sch:span> im Element <sch:span class="monotype">mods:recordInfo</sch:span> innerhalb des Elements <sch:span class="monotype">mods:relatedItem[@type='host']</sch:span> verweist auf den Ankersatz eines Mehrteiligen Dokuments. In diesem Datensatz entspricht der Identifier mind. einem Identifier des Datensatzes selbst (einem <sch:span class="monotype">mods:recordIdentifier</sch:span> im Element <sch:span class="monotype">mods:recordInfo</sch:span>).
Aufgrund der Selbstreferenz ist eine Verarbeitung des Datensatzes nicht möglich und er wird nicht in die DDB eingespielt.
Weitere Informationen zu diesem Element finden Sie im DDB-METS/MODS-Anwendungsprofil auf der Seite mods:relatedItem (https://deutsche-digitale-bibliothek.atlassian.net/wiki/x/gA3eAg).</sch:report>
      </sch:rule>
   </sch:pattern>
   <sch:pattern>
      <sch:rule context="mets:dmdSec[@ID=$work_dmdid]/mets:mdWrap/mets:xmlData/mods:mods/mods:identifier">
            <!-- 
               Das Attribut type fehlt in mods:identifier bzw. enthält einen nicht unterstützten Wert
             -->
         <sch:assert id="identifier_01"
                     role="info"
                     test="@type = ( 'purl', 'urn', 'isbn', 'issn', 'doi', 'handle', 'vd16', 'vd17', 'vd18', 'zdb', 'rism', 'kope', 'qal', 'hsp', 'gw' )"
                     properties="dmd_id type"
                     see="https://deutsche-digitale-bibliothek.atlassian.net/wiki/x/SwPeAg">Das Element <sch:span class="monotype">mods:identifier</sch:span> muss im primären <sch:span class="monotype">mets:dmdSec</sch:span>-Element das Attribut <sch:span class="monotype">type</sch:span> mit einem der folgenden Werte enthalten:
 * <sch:span class="monotype">doi</sch:span>
 * <sch:span class="monotype">handle</sch:span>
 * <sch:span class="monotype">isbn</sch:span>
 * <sch:span class="monotype">issn</sch:span>
 * <sch:span class="monotype">purl</sch:span>
 * <sch:span class="monotype">urn</sch:span>
 * <sch:span class="monotype">vd16</sch:span>
 * <sch:span class="monotype">vd17</sch:span>
 * <sch:span class="monotype">vd18</sch:span>
 * <sch:span class="monotype">zdb</sch:span>
 * <sch:span class="monotype">rism</sch:span>
 * <sch:span class="monotype">kope</sch:span>
 * <sch:span class="monotype">qal</sch:span>
 * <sch:span class="monotype">hsp</sch:span>
 * <sch:span class="monotype">gw</sch:span>
Fehlt <sch:span class="monotype">type</sch:span> in <sch:span class="monotype">mods:identifier</sch:span> bzw. enthält es einen nicht unterstützten Wert, wird <sch:span class="monotype">mods:identifier</sch:span> bei der Transformation des Datensatzes entfernt.
Weitere Informationen zu diesem Attribut finden Sie im DDB-METS/MODS-Anwendungsprofil auf der Seite mods:identifier (https://deutsche-digitale-bibliothek.atlassian.net/wiki/x/vg-eAg).</sch:assert>
      </sch:rule>
   </sch:pattern>
   <sch:pattern>
      <sch:rule context="mets:dmdSec[@ID=$work_dmdid]/mets:mdWrap/mets:xmlData/mods:mods/mods:location[not(mods:url)]">
            <!-- 
               mods:location ist unvollständig
             -->
         <sch:assert id="location_01"
                     role="error"
                     test="mods:physicalLocation"
                     properties="dmd_id"
                     see="https://deutsche-digitale-bibliothek.atlassian.net/wiki/x/_wPeAg">Das Element <sch:span class="monotype">mods:location</sch:span> muss im primären <sch:span class="monotype">mets:dmdSec</sch:span>-Element das Element <sch:span class="monotype">mods:physicalLocation</sch:span> oder das Element <sch:span class="monotype">mods:url</sch:span> enthalten.
Ist dies nicht der Fall, wird <sch:span class="monotype">mods:location</sch:span> bei der Transformation des Datensatzes entfernt.
Weitere Informationen zu diesen Elementen finden Sie im DDB-METS/MODS-Anwendungsprofil auf der Seite mods:location (https://deutsche-digitale-bibliothek.atlassian.net/wiki/x/kw3eAg).</sch:assert>
      </sch:rule>
   </sch:pattern>
   <sch:pattern>
      <sch:rule context="mets:dmdSec[@ID=$work_dmdid]/mets:mdWrap/mets:xmlData/mods:mods">
            <!-- 
               mods:physicalLocation fehlt in der primären mets:dmdSec
             -->
         <sch:assert id="location_03"
                     role="warn"
                     test="mods:location/mods:physicalLocation"
                     properties="dmd_id"
                     see="https://deutsche-digitale-bibliothek.atlassian.net/wiki/x/_wPeAg">Das primäre <sch:span class="monotype">mets:dmdSec</sch:span>-Element muss das Element <sch:span class="monotype">mods:location</sch:span> mit dem Unterelement <sch:span class="monotype">mods:physicalLocation</sch:span> enthalten.
Das Fehlen von <sch:span class="monotype">mods:physicalLocation</sch:span> verhindert nicht das Einspielen des Datensatzes in die DDB, Ihr Objekt wird dort aber ohne Standort angezeigt. Wir bitten Sie daher, den Sachverhalt zu prüfen und die nötigen Korrekturen bis zur nächsten Datenlieferung vorzunehmen.
Weitere Informationen zu diesem Element finden Sie im DDB-METS/MODS-Anwendungsprofil auf der Seite mods:location (https://deutsche-digitale-bibliothek.atlassian.net/wiki/x/kw3eAg).</sch:assert>
      </sch:rule>
   </sch:pattern>
   <sch:pattern>
      <sch:rule context="mets:dmdSec[@ID=$work_dmdid]/mets:mdWrap/mets:xmlData/mods:mods/mods:location/mods:physicalLocation[starts-with(text()[1], 'DE-')]">
            <!-- 
               Das Attribut valueURI im Element mods:physicalLocation fehlt oder enthält einen ungültigen Wert
             -->
         <sch:assert id="location_04"
                     role="warn"
                     test="starts-with(@valueURI, 'http://ld.zdb-services.de/resource/organisations/') or starts-with(@valueURI, 'https://ld.zdb-services.de/resource/organisations/') or starts-with(@valueURI, 'http://lobid.org/organisations/') or starts-with(@valueURI, 'https://lobid.org/organisations/')"
                     properties="dmd_id"
                     see="https://deutsche-digitale-bibliothek.atlassian.net/wiki/x/_wPeAg">Enthält das Element <sch:span class="monotype">mods:physicalLocation</sch:span> im Element <sch:span class="monotype">mods:location</sch:span> im primären <sch:span class="monotype">mets:dmdSec</sch:span>-Element als Wert einen ISIL, muss das Attribut <sch:span class="monotype">valueURI</sch:span> von <sch:span class="monotype">mods:physicalLocation</sch:span> einen entsprechenden URI der ISIL enthalten.
Die DDB unterstützt entsprechende URI der Deutschen ISIL-Agentur und Sigelstelle (https://sigel.staatsbibliothek-berlin.de) (z. B. <sch:span class="monotype">https://ld.zdb-services.de/resource/organisations/DE-7</sch:span>) und lobid (http://lobid.org/organisations) (z. B. <sch:span class="monotype">https://lobid.org/organisations/DE-7</sch:span>).
Das Fehlen von <sch:span class="monotype">valueURI</sch:span> verhindert nicht das Einspielen des Datensatzes in die DDB. Wir bitten Sie jedoch, den Sachverhalt zu prüfen und die nötigen Korrekturen bis zur nächsten Datenlieferung vorzunehmen.
Weitere Informationen zu diesem Attribut finden Sie im DDB-METS/MODS-Anwendungsprofil auf der Seite mods:location (https://deutsche-digitale-bibliothek.atlassian.net/wiki/x/kw3eAg).</sch:assert>
      </sch:rule>
   </sch:pattern>
   <sch:pattern>
      <sch:rule context="mets:dmdSec[@ID=$work_dmdid]/mets:mdWrap/mets:xmlData/mods:mods/mods:location[mods:physicalLocation]">
            <!-- 
               mods:physicalLocation ist in mods:location mehrfach vorhanden
             -->
         <sch:report id="location_05"
                     role="error"
                     test="mods:physicalLocation[2]"
                     properties="dmd_id"
                     see="https://deutsche-digitale-bibliothek.atlassian.net/wiki/x/_wPeAg">Das Element <sch:span class="monotype">mods:location</sch:span> im primären <sch:span class="monotype">mets:dmdSec</sch:span>-Element darf das Element <sch:span class="monotype">mods:physicalLocation</sch:span> nur einmal enthalten. Enthält <sch:span class="monotype">mods:titleInfo</sch:span> mehr als ein <sch:span class="monotype">mods:physicalLocation</sch:span>, wird bei der Transformation des Datensatzes das erste Vorkommen von <sch:span class="monotype">mods:physicalLocation</sch:span> übernommen, alle anderen <sch:span class="monotype">mods:physicalLocation</sch:span> werden entfernt.
Weitere Informationen zu diesem Element finden Sie im DDB-METS/MODS-Anwendungsprofil auf der Seite mods:location (https://deutsche-digitale-bibliothek.atlassian.net/wiki/x/kw3eAg).</sch:report>
      </sch:rule>
   </sch:pattern>
   <sch:pattern>
      <sch:rule context="mets:dmdSec[@ID=$work_dmdid]/mets:mdWrap/mets:xmlData/mods:mods/mods:location/mods:url">
            <!-- 
               Das Attribut access fehlt in mods:url bzw. enthält einen ungültigen Wert
             -->
         <sch:assert id="location_06"
                     role="error"
                     test="./@access = ('preview', 'object in context', 'raw object')"
                     properties="dmd_id"
                     see="https://deutsche-digitale-bibliothek.atlassian.net/wiki/x/_wPeAg">Das Element <sch:span class="monotype">mods:url</sch:span> im primären <sch:span class="monotype">mets:dmdSec</sch:span>-Element wird zurzeit bei der Transformation des Datensatzes entfernt.
Perspektivisch unterstützt die DDB <sch:span class="monotype">mods:url</sch:span> nur mit dem Attribut <sch:span class="monotype">access</sch:span> mit einem der folgenden Werte:
 * <sch:span class="monotype">preview</sch:span>
 * <sch:span class="monotype">object in context</sch:span>
 * <sch:span class="monotype">raw object</sch:span>
Weitere Informationen zu diesem Attribut finden Sie im DDB-METS/MODS-Anwendungsprofil auf der Seite mods:location (https://deutsche-digitale-bibliothek.atlassian.net/wiki/x/kw3eAg).</sch:assert>
      </sch:rule>
   </sch:pattern>
   <sch:pattern>
      <sch:rule context="mets:dmdSec[@ID=$work_dmdid]/mets:mdWrap/mets:xmlData/mods:mods/mods:location[mods:physicalLocation]">
         <sch:let name="current_physicalLocation" value="mods:physicalLocation[1]"/>
         <!-- 
               mods:physicalLocation enthält unterschiedliche Werte
             -->
         <sch:report id="location_07"
                     role="error"
                     test="./preceding-sibling::mods:location[mods:physicalLocation/text() != $current_physicalLocation]"
                     properties="dmd_id"
                     see="https://deutsche-digitale-bibliothek.atlassian.net/wiki/x/_wPeAg">Der Datensatz enthält im primären <sch:span class="monotype">mets:dmdSec</sch:span>-Element <sch:span class="monotype">mods:location</sch:span>-Elemente mit unterschiedlichen Werten im Unterelement <sch:span class="monotype">mods:physicalLocation</sch:span>.
Ein Dokument kann nicht mehrere Standorte besitzen und daher werden bei der Transformation des Datensatzes die weiteren Vorkommen (XML-Reihenfolge) von <sch:span class="monotype">mods:physicalLocation</sch:span> innerhalb von <sch:span class="monotype">mods:location</sch:span> bzw. die entsprechenden weiteren Vorkommen von <sch:span class="monotype">mods:location</sch:span> entfernt.
Weitere Informationen zu diesem Element finden Sie im DDB-METS/MODS-Anwendungsprofil auf der Seite mods:location (https://deutsche-digitale-bibliothek.atlassian.net/wiki/x/kw3eAg).</sch:report>
      </sch:rule>
   </sch:pattern>
   <sch:pattern>
      <sch:rule context="mets:dmdSec[@ID=$work_dmdid]/mets:mdWrap/mets:xmlData/mods:mods/mods:accessCondition[@type='use and reproduction']/@*[local-name()= 'href']">
            <!-- 
               Falscher Namensraum für das Attribut href in mods:accessCondition
             -->
         <sch:assert id="accessCondition_02"
                     role="error"
                     test="namespace-uri() = 'http://www.w3.org/1999/xlink'"
                     properties="dmd_id"
                     see="https://wiki.dnb.de/pages/viewpage.action?pageId=148607412#MODS(Empfehlung2.0)-Rechtehinweis/Lizenz">Das Attribut <sch:span class="monotype">href</sch:span> im Element <sch:span class="monotype">mods:accessCondition</sch:span> im primären <sch:span class="monotype">mets:dmdSec</sch:span>-Element muss zum Namensraum <sch:span class="monotype">http://www.w3.org/1999/xlink</sch:span> gehören.
Ist dies nicht der Fall, wird bei der Transformation das erste Vorkommen des Attributs <sch:span class="monotype">href</sch:span> in den Namensraum <sch:span class="monotype">http://www.w3.org/1999/xlink</sch:span> gesetzt und entsprechend ausgewertet.
Weitere Informationen zu diesem Attribut finden Sie im DDB-METS/MODS-Anwendungsprofil auf der Seite mods:accessCondition (https://deutsche-digitale-bibliothek.atlassian.net/wiki/x/zQ3eAg).</sch:assert>
      </sch:rule>
   </sch:pattern>
   <sch:pattern>
      <sch:rule context="mets:dmdSec[@ID=$work_dmdid]/mets:mdWrap/mets:xmlData/mods:mods[mods:relatedItem[@type='host']][not(mods:part)]">
            <!-- 
               mods:part fehlt
             -->
         <sch:report id="part_01"
                     role="warn"
                     test="true()"
                     properties="dmd_id"
                     see="https://deutsche-digitale-bibliothek.atlassian.net/wiki/x/cwLeAg">Der Datensatz enthält im primären <sch:span class="monotype">mets:dmdSec</sch:span>-Element das Element <sch:span class="monotype">mods:relatedItem</sch:span> mit dem Wert <sch:span class="monotype">host</sch:span> im Attribut <sch:span class="monotype">type</sch:span> und beschreibt daher den Teil eines Mehrteiligen Dokuments.
Diese müssen im primären <sch:span class="monotype">mets:dmdSec</sch:span>-Element im Element <sch:span class="monotype">mods:part</sch:span> Informationen zur Bandzählung enthalten. Die textliche Angabe erfolgt im Unterelement <sch:span class="monotype">mods:number</sch:span> des Unterelements <sch:span class="monotype">mods:detail</sch:span> und die maschinenlesbare Form (als Integer) im Attribut <sch:span class="monotype">order</sch:span> von <sch:span class="monotype">mods:part</sch:span>.
Das Fehlen von <sch:span class="monotype">mods:part</sch:span> verhindert nicht das Einspielen des Datensatzes in die DDB, kann aber zu Darstellungsproblemen führen. Wir bitten Sie daher, den Sachverhalt zu prüfen und ggf. die nötigen Korrekturen bis zur nächsten Datenlieferung vorzunehmen.
Weitere Informationen zu diesem Element und seinem Kontext finden Sie im DDB-METS/MODS-Anwendungsprofil auf der Seite mods:part (https://deutsche-digitale-bibliothek.atlassian.net/wiki/x/0Q3eAg) und der Seite METS/MODS für Mehrteilige Dokumente (https://deutsche-digitale-bibliothek.atlassian.net/wiki/x/GwLeAg).</sch:report>
      </sch:rule>
      <sch:rule context="mets:dmdSec[@ID=$work_dmdid]/mets:mdWrap/mets:xmlData/mods:mods[mods:relatedItem[@type='host']][not(mods:part[@order])]">
            <!-- 
               Das Attribut order fehlt in mods:part
             -->
         <sch:report id="part_02"
                     role="warn"
                     test="true()"
                     properties="dmd_id"
                     see="https://deutsche-digitale-bibliothek.atlassian.net/wiki/x/cwLeAg">Der Datensatz enthält im primären <sch:span class="monotype">mets:dmdSec</sch:span>-Element das Element <sch:span class="monotype">mods:relatedItem</sch:span> mit dem Wert <sch:span class="monotype">host</sch:span> im Attribut <sch:span class="monotype">type</sch:span> und beschreibt daher den Teil eines Mehrteiligen Dokuments.
Das Element <sch:span class="monotype">mods:part</sch:span> muss im primären <sch:span class="monotype">mets:dmdSec</sch:span>-Element mindestens das Attribut <sch:span class="monotype">order</sch:span> enthalten. Der Wert dient zur Anzeige von Bänden in der richtigen Reihenfolge und muss als Zahl in maschinenlesbarer Form (als Integer) vorliegen.
Das Fehlen von <sch:span class="monotype">order</sch:span> verhindert nicht das Einspielen des Datensatzes in die DDB, kann aber zu Darstellungsproblemen führen. Wir bitten Sie daher, den Sachverhalt zu prüfen und ggf. die nötigen Korrekturen bis zur nächsten Datenlieferung vorzunehmen.
Weitere Informationen zu diesem Attribut und seinem Kontext finden Sie im DDB-METS/MODS-Anwendungsprofil auf der Seite mods:part (https://deutsche-digitale-bibliothek.atlassian.net/wiki/x/0Q3eAg) und der Seite METS/MODS für Mehrteilige Dokumente (https://deutsche-digitale-bibliothek.atlassian.net/wiki/x/GwLeAg).</sch:report>
      </sch:rule>
      <sch:rule context="mets:dmdSec[@ID=$work_dmdid]/mets:mdWrap/mets:xmlData/mods:mods[mods:relatedItem[@type='host']]/mods:part">
            <!-- 
               Ungültiger Wert im Attribut order von mods:part
             -->
         <sch:assert id="part_03"
                     role="error"
                     test="matches(@order, '^\d+$')"
                     properties="dmd_id"
                     see="https://deutsche-digitale-bibliothek.atlassian.net/wiki/x/cwLeAg">Der Datensatz enthält im primären <sch:span class="monotype">mets:dmdSec</sch:span>-Element das Element <sch:span class="monotype">mods:relatedItem</sch:span> mit dem Wert <sch:span class="monotype">host</sch:span> im Attribut <sch:span class="monotype">type</sch:span> und beschreibt daher den Teil eines Mehrteiligen Dokuments.
Das Attribut <sch:span class="monotype">order</sch:span> im Element <sch:span class="monotype">mods:part</sch:span> muss daher mindestens die Bandzählung in maschinenlesbarer Form (als Integer) enthalten.
Enthält <sch:span class="monotype">order</sch:span> keine maschinenlesbare Form der Bandzählung wird <sch:span class="monotype">order</sch:span> bei der Transformation des Datensatzes entfernt. Das Fehlen einer maschinenlesbaren Form der Bandzählung kann zu Darstellungsproblemen führen. Wir bitten Sie daher, den Sachverhalt zu prüfen und ggf. die nötigen Korrekturen bis zur nächsten Datenlieferung vorzunehmen.
Weitere Informationen zu diesem Attribut und seinem Kontext finden Sie im DDB-METS/MODS-Anwendungsprofil auf der Seite mods:part (https://deutsche-digitale-bibliothek.atlassian.net/wiki/x/0Q3eAg) und der Seite METS/MODS für Mehrteilige Dokumente (https://deutsche-digitale-bibliothek.atlassian.net/wiki/x/GwLeAg).</sch:assert>
      </sch:rule>
   </sch:pattern>
   <sch:pattern>
      <sch:rule context="mets:dmdSec[@ID=$work_dmdid]/mets:mdWrap/mets:xmlData/mods:mods/mods:part[not(mods:detail/mods:number)]">
            <!-- 
               mods:number fehlt in mods:part
             -->
         <sch:assert id="part_04"
                     role="error"
                     test="mods:detail/mods:number"
                     properties="dmd_id"
                     see="https://deutsche-digitale-bibliothek.atlassian.net/wiki/x/cwLeAg">Das Element <sch:span class="monotype">mods:part</sch:span> muss im primären <sch:span class="monotype">mets:dmdSec</sch:span>-Element das Element <sch:span class="monotype">mods:detail</sch:span> mit dem Unterelement <sch:span class="monotype">mods:number</sch:span> enthalten. <sch:span class="monotype">mods:number</sch:span> enthält die textliche Zählung des Teils eines Mehrteiligen Dokuments.
Fehlt <sch:span class="monotype">mods:detail</sch:span> mit dem Unterelement <sch:span class="monotype">mods:number</sch:span> in <sch:span class="monotype">mods:part</sch:span>, wird <sch:span class="monotype">mods:part</sch:span> bei der Transformation des Datensatzes entfernt.
Weitere Informationen zu diesem Element und seinem Kontext finden Sie im DDB-METS/MODS-Anwendungsprofil auf der Seite mods:part (https://deutsche-digitale-bibliothek.atlassian.net/wiki/x/0Q3eAg) und der Seite METS/MODS für Mehrteilige Dokumente (https://deutsche-digitale-bibliothek.atlassian.net/wiki/x/GwLeAg).</sch:assert>
      </sch:rule>
      <sch:rule context="mets:dmdSec[@ID=$work_dmdid]/mets:mdWrap/mets:xmlData/mods:mods/mods:part[mods:detail/mods:number]/mods:detail">
            <!-- 
               Das Attribut type fehlt im Element mods:detail bzw. enthält einen ungültigen Wert
             -->
         <sch:assert id="part_05"
                     role="warn"
                     test="@type = ('volume', 'issue')"
                     properties="dmd_id"
                     see="https://deutsche-digitale-bibliothek.atlassian.net/wiki/x/cwLeAg">Das Element <sch:span class="monotype">mods:detail</sch:span> muss im primären <sch:span class="monotype">mets:dmdSec</sch:span>-Element das Attribut <sch:span class="monotype">type</sch:span> mit einem der folgenden Werte enthalten:
 * <sch:span class="monotype">volume</sch:span>
 * <sch:span class="monotype">issue</sch:span>
Das Fehlen vom <sch:span class="monotype">type</sch:span> verhindert nicht das Einspielen des Datensatzes in die DDB, kann aber zu Darstellungsproblemen führen. Wir bitten Sie daher, den Sachverhalt zu prüfen und ggf. die nötigen Korrekturen bis zur nächsten Datenlieferung vorzunehmen.
Weitere Informationen zu diesem Attribut und seinem Kontext finden Sie im DDB-METS/MODS-Anwendungsprofil auf der Seite mods:part (https://deutsche-digitale-bibliothek.atlassian.net/wiki/x/0Q3eAg) und der Seite METS/MODS für Mehrteilige Dokumente (https://deutsche-digitale-bibliothek.atlassian.net/wiki/x/GwLeAg).</sch:assert>
      </sch:rule>
   </sch:pattern>
   <sch:pattern>
      <sch:rule context="mets:dmdSec[@ID=$work_dmdid]/mets:mdWrap/mets:xmlData/mods:mods/mods:part">
            <!-- 
               mods:detail[@type='volume'] ist in mods:part mehrfach vorhanden
             -->
         <sch:report id="part_12"
                     role="error"
                     test="mods:detail[@type='volume'][mods:number][2] or mods:detail[mods:number[@type='volume']][2]"
                     properties="dmd_id"
                     see="https://deutsche-digitale-bibliothek.atlassian.net/wiki/x/cwLeAg">Das Element <sch:span class="monotype">mods:part</sch:span> darf im primären <sch:span class="monotype">mets:dmdSec</sch:span>-Element das Element <sch:span class="monotype">mods:detail</sch:span> mit dem Attribut <sch:span class="monotype">type</sch:span> mit dem Wert <sch:span class="monotype">volume</sch:span> nur einmal enthalten.
Enthält <sch:span class="monotype">mods:part</sch:span> mehr als ein entsprechendes <sch:span class="monotype">mods:detail</sch:span>, werden bei der Transformation des Datensatzes alle entsprechenden Vorkommen von <sch:span class="monotype">mods:detail</sch:span> im ersten Vorkommen von <sch:span class="monotype">mods:detail</sch:span> zusammengefasst.
Weitere Informationen zu diesem Element finden Sie im DDB-METS/MODS-Anwendungsprofil auf der Seite mods:part (https://deutsche-digitale-bibliothek.atlassian.net/wiki/x/0Q3eAg).</sch:report>
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
                     see="https://deutsche-digitale-bibliothek.atlassian.net/wiki/x/1gveAg">Das primäre <sch:span class="monotype">mets:dmdSec</sch:span>-Element muss das Element <sch:span class="monotype">mods:recordInfo</sch:span> mit dem Unterelement <sch:span class="monotype">mods:recordIdentifier</sch:span> enthalten. <sch:span class="monotype">mods:recordIdentifier</sch:span> muss darüber hinaus das Attribut <sch:span class="monotype">source</sch:span> enthalten um eindeutig identifizierbar zu sein.
Fehlt <sch:span class="monotype">mods:recordIdentifier</sch:span> mit dem Attribut <sch:span class="monotype">source</sch:span>, wird der Datensatz nicht in die DDB eingespielt.
Weitere Informationen zu diesem Element finden Sie im DDB-METS/MODS-Anwendungsprofil auf der Seite mods:recordInfo (https://deutsche-digitale-bibliothek.atlassian.net/wiki/x/eAjeAg).</sch:assert>
      </sch:rule>
   </sch:pattern>
   <sch:pattern>
      <sch:rule context="mets:dmdSec[@ID=$work_dmdid]/mets:mdWrap/mets:xmlData/mods:mods/mods:recordInfo/mods:recordIdentifier">
            <!-- 
               Das Attribut source fehlt in mods:recordIdentifier
             -->
         <sch:assert id="recordInfo_02"
                     role="fatal"
                     test="string-length(normalize-space(@source)) &gt; 0"
                     properties="dmd_id"
                     see="https://deutsche-digitale-bibliothek.atlassian.net/wiki/x/1gveAg">Das Element <sch:span class="monotype">mods:recordIdentifier</sch:span> im Element <sch:span class="monotype">mods:recordInfo</sch:span> muss im primären <sch:span class="monotype">mets:dmdSec</sch:span>-Element das Attribut <sch:span class="monotype">source</sch:span> enthalten, damit der Wert in <sch:span class="monotype">mods:recordIdentifier</sch:span> eindeutig identifizierbar ist.
Fehlt <sch:span class="monotype">source</sch:span> in <sch:span class="monotype">mods:recordIdentifier</sch:span>, wird der Datensatz nicht in die DDB eingespielt.
Weitere Informationen zu diesem Attribut finden Sie im DDB-METS/MODS-Anwendungsprofil auf der Seite mods:recordInfo (https://deutsche-digitale-bibliothek.atlassian.net/wiki/x/eAjeAg).</sch:assert>
      </sch:rule>
   </sch:pattern>
   <sch:pattern>
      <sch:rule context="mets:dmdSec[@ID=$work_dmdid]/mets:mdWrap/mets:xmlData/mods:mods">
            <!-- 
               mods:recordIdentifier ist in mods:recordInfo mehrfach vorhanden
             -->
         <sch:report id="recordInfo_03"
                     role="error"
                     test="mods:recordInfo/mods:recordIdentifier[2] or mods:recordInfo[mods:recordIdentifier][2]"
                     properties="dmd_id"
                     see="https://deutsche-digitale-bibliothek.atlassian.net/wiki/x/1gveAg">Das Element <sch:span class="monotype">mods:recordInfo</sch:span> darf das Element <sch:span class="monotype">mods:recordIdentifier</sch:span> im primären <sch:span class="monotype">mets:dmdSec</sch:span>-Element nur einmal enthalten.
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
                     see="https://deutsche-digitale-bibliothek.atlassian.net/wiki/x/1gveAg">Der Wert im für den DDB-Identifier relevanten Vorkommen des Elements <sch:span class="monotype">mods:recordIdentifier</sch:span> im primären <sch:span class="monotype">mets:dmdSec</sch:span>-Element darf nur die folgenden Zeichen enthalten:
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
                     see="https://deutsche-digitale-bibliothek.atlassian.net/wiki/x/1gveAg">Der Wert im Element <sch:span class="monotype">mods:recordIdentifier</sch:span> im primären <sch:span class="monotype">mets:dmdSec</sch:span>-Element enthält Leer- und / oder Sonderzeichen. Dies kann zu Problemen bei der Verarbeitung in der DDB führen, daher wird der Datensatz nicht in die DDB eingespielt.
Weitere Informationen zu diesem Element finden Sie im DDB-METS/MODS-Anwendungsprofil auf der Seite mods:recordInfo (https://deutsche-digitale-bibliothek.atlassian.net/wiki/x/eAjeAg).</sch:assert>
      </sch:rule>
   </sch:pattern>
   <sch:pattern>
      <sch:rule context="mets:dmdSec[@ID=$work_dmdid]/mets:mdWrap/mets:xmlData/mods:mods">
            <!-- 
               mods:recordInfo ist in mods:mods mehrmals vorhanden
             -->
         <sch:report id="recordInfo_05"
                     role="error"
                     test="mods:recordInfo[2]"
                     properties="dmd_id"
                     see="https://deutsche-digitale-bibliothek.atlassian.net/wiki/x/1gveAg">Das Element <sch:span class="monotype">mods:mods</sch:span> im primären <sch:span class="monotype">mets:dmdSec</sch:span>-Element darf das Element <sch:span class="monotype">mods:recordInfo</sch:span> nur einmal enthalten. Enthält <sch:span class="monotype">mods:mods</sch:span> mehr als ein <sch:span class="monotype">mods:recordInfo</sch:span>, werden bei der Bereinigung des Datensatzes die Unterelemente aller <sch:span class="monotype">mods:recordInfo</sch:span> im erste Vorkommen zusammengefasst und die weiteren Vorkommen von <sch:span class="monotype">mods:recordInfo</sch:span> entfernt.
Weitere Informationen zu diesem Element finden Sie im DDB-METS/MODS-Anwendungsprofil auf der Seite mods:recordInfo (https://deutsche-digitale-bibliothek.atlassian.net/wiki/x/eAjeAg).</sch:report>
      </sch:rule>
   </sch:pattern>
   <sch:pattern>
      <sch:rule context="mets:mets">
            <!-- 
               Das primäre mets:dmdSec-Element fehlt
             -->
         <sch:assert id="dmdSec_01"
                     role="fatal"
                     test="count(mets:dmdSec[@ID=$work_dmdid]/mets:mdWrap/mets:xmlData/mods:mods) = 1 and matches($work_dmdid, '^[\i-[:]][\c-[:]]*$')"
                     properties="id"
                     see="https://deutsche-digitale-bibliothek.atlassian.net/wiki/x/hALeAg">Das primäre <sch:span class="monotype">mets:dmdSec</sch:span>-Element beschreibt das gesamte im Datensatz beschriebene Dokument. Es muss das Unterelement <sch:span class="monotype">mets:mdWrap</sch:span> mit dem Unterelement <sch:span class="monotype">mets:xmlData</sch:span> enthalten, welches ein Unterelement <sch:span class="monotype">mods:mods</sch:span> besitzt.
Die Selektion des primären <sch:span class="monotype">mets:dmdSec</sch:span> erfolgt über ein im Element <sch:span class="monotype">mets:structMap[@TYPE='LOGICAL']</sch:span> enthaltenes <sch:span class="monotype">mets:div</sch:span>-Element über die folgenden Kriterien:
 * <sch:span class="monotype">mets:structMap[@TYPE='LOGICAL']</sch:span> enthält kein <sch:span class="monotype">mets:div</sch:span> mit dem Unterelement <sch:span class="monotype">mets:mptr</sch:span>: Das Kind von <sch:span class="monotype">mets:structMap[@TYPE='LOGICAL']</sch:span>
 * <sch:span class="monotype">mets:structMap[@TYPE='LOGICAL']</sch:span> enthält ein <sch:span class="monotype">mets:div</sch:span> mit dem Unterelement <sch:span class="monotype">mets:mptr</sch:span>: Das Kind des <sch:span class="monotype">mets:div</sch:span> mit dem Unterelement <sch:span class="monotype">mets:mptr</sch:span>
Das nach den o. g. Kriterien selektierte <sch:span class="monotype">mets:div</sch:span> referenziert über sein Attribut <sch:span class="monotype">DMDID</sch:span> das Attribut <sch:span class="monotype">ID</sch:span> des primären <sch:span class="monotype">mets:dmdSec</sch:span>.
Fehlt das primäre <sch:span class="monotype">mets:dmdSec</sch:span>, enthält sein <sch:span class="monotype">DMDID</sch:span> ungültige Zeichen oder ist keine eindeutige Selektion möglich, wird der Datensatz nicht in die DDB eingespielt.
Weitere Informationen zu diesen Elementen und ihrem Kontext finden Sie im DDB-METS/MODS-Anwendungsprofil auf den Seiten mets:dmdSec (https://deutsche-digitale-bibliothek.atlassian.net/wiki/x/jQLeAg) und mets:structMap[@TYPE='LOGICAL'] (https://deutsche-digitale-bibliothek.atlassian.net/wiki/x/bAXeAg) sowie im Bereich Aufbau einer METS/MODS-Datei für die DDB (https://deutsche-digitale-bibliothek.atlassian.net/wiki/x/MwLeAg).</sch:assert>
      </sch:rule>
   </sch:pattern>
   <sch:pattern>
      <sch:rule context="mets:dmdSec[@ID!=$work_dmdid]">
            <!-- 
               mets:dmdSec ohne eindeutigen Identifier im Attribut ID
             -->
         <sch:assert id="dmdSec_03"
                     role="warn"
                     test="count(key('mets_ids', @ID)) = 1 and matches(@ID, '^[\i-[:]][\c-[:]]*$')"
                     see="https://deutsche-digitale-bibliothek.atlassian.net/wiki/x/hALeAg">Das Element <sch:span class="monotype">mets:dmdSec</sch:span> muss das Attribut <sch:span class="monotype">ID</sch:span> mit einem im Datensatz eindeutigen Identifier enthalten. Dieser darf darüber hinaus keine ungültigen Zeichen enthalten.
Enthält der Identifier einer nicht-primären <sch:span class="monotype">mets:dmdSec</sch:span> ungültige Zeichen oder ist nicht eindutig verhindert dies nicht das Einspielen des Datensatzes in die DDB. Wir bitten Sie jedoch, den Sachverhalt zu prüfen und die nötigen Korrekturen bis zur nächsten Datenlieferung vorzunehmen.
Weitere Informationen zu diesem Element und Attribut finden Sie im DDB-METS/MODS-Anwendungsprofil auf der Seite mets:dmdSec (https://deutsche-digitale-bibliothek.atlassian.net/wiki/x/jQLeAg).</sch:assert>
      </sch:rule>
   </sch:pattern>
   <sch:pattern>
      <sch:rule context="mets:dmdSec[@ID!=$work_dmdid]">
            <!-- 
               mets:dmdSec ohne Referenz
             -->
         <sch:assert id="dmdSec_04"
                     role="warn"
                     test="key('structMap_LOGICAL_dmdids', @ID)"
                     properties="id"
                     see="https://deutsche-digitale-bibliothek.atlassian.net/wiki/x/hALeAg">Das Element <sch:span class="monotype">mets:dmdSec</sch:span> muss genau einmal von einem <sch:span class="monotype">mets:div</sch:span>-Element innerhalb des Elements <sch:span class="monotype">mets:structMap[@TYPE='LOGICAL']</sch:span> referenziert werden.
Die Referenzierung erfolgt über einen Wert im Attribut <sch:span class="monotype">DMDID</sch:span> von <sch:span class="monotype">mets:div</sch:span> auf das Attribut <sch:span class="monotype">ID</sch:span> des Elements <sch:span class="monotype">mets:dmdSec</sch:span>.
Das Fehlen dieser Referenz verhindert nicht das Einspielen des Datensatzes in die DDB. Wir bitten Sie jedoch, den Sachverhalt zu prüfen und die nötigen Korrekturen bis zur nächsten Datenlieferung vorzunehmen.
Weitere Informationen zu diesen Elementen und ihrem Kontext finden Sie im DDB-METS/MODS-Anwendungsprofil auf den Seiten mets:dmdSec (https://deutsche-digitale-bibliothek.atlassian.net/wiki/x/jQLeAg) und mets:structMap[@TYPE='LOGICAL'] (https://deutsche-digitale-bibliothek.atlassian.net/wiki/x/bAXeAg) sowie im Bereich Aufbau einer METS/MODS-Datei für die DDB (https://deutsche-digitale-bibliothek.atlassian.net/wiki/x/MwLeAg).</sch:assert>
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
                     see="https://deutsche-digitale-bibliothek.atlassian.net/wiki/x/NAfeAg">Ein Datensatz muss das Element <sch:span class="monotype">mets:amdSec</sch:span> enthalten. Ist dies nicht der Fall, wird der Datensatz nicht in die DDB eingespielt.
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
Das Fehlen von <sch:span class="monotype">ID</sch:span> bzw. ungültige Zeichen in Attribut <sch:span class="monotype">ID</sch:span> verhindern nicht das Einspielen Ihrer Daten in die DDB, wir bitten Sie jedoch, den Sachverhalt zu prüfen und die nötigen Korrekturen bis zur nächsten Datenlieferung vorzunehmen.
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
Alternativ zu diesem Element kann die Rechteinformation auch im primären <sch:span class="monotype">mets:dmdSec</sch:span>-Element im Attribut <sch:span class="monotype">xlink:href</sch:span> des Elements <sch:span class="monotype">mods:accessCondition</sch:span> mit dem Attribut <sch:span class="monotype">type</sch:span> und dem Wert <sch:span class="monotype">use and reproduction</sch:span> angegeben werden.
Die Rechteinformation muss im o. g. Element bzw. Attribut in Form eines URI gemäß den Rechteangaben in der Deutschen Digitalen Bibliothek (https://pro.deutsche-digitale-bibliothek.de/daten-liefern/teilnahmekriterien/rechtliches/lizenzen-und-rechtehinweise-der-lizenzkorb-der-deutschen-digitalen-bibliothek) vorliegen. Im <sch:span class="monotype">dv:license</sch:span> können darüber hinaus die kodierten Werte aus dem METS-Anwendungsprofil (Kapitel 2.7.2.11) (https://dfg-viewer.de/fileadmin/groups/dfgviewer/METS-Anwendungsprofil_2.3.1.pdf) verwendet werden. Bitte beachten Sie hierbei, dass die DDB die CC-Lizenz-Werte als Version 4.0 und den Wert <sch:span class="monotype">reserved</sch:span> als Urheberrechtsschutz nicht bewertet (Europeana Right Statement "CNE") (http://rightsstatements.org/vocab/CNE/1.0/) interpretiert.
Ist im Datensatz keine Rechteinformation wie oben beschrieben vorhanden, kann bei der Transformation des Datensatzes eine von Ihnen bestimmte Standard-URI von der Seite Rechteangaben in der Deutschen Digitalen Bibliothek (https://pro.deutsche-digitale-bibliothek.de/daten-liefern/teilnahmekriterien/rechtliches/lizenzen-und-rechtehinweise-der-lizenzkorb-der-deutschen-digitalen-bibliothek) gesetzt werden, die für alle Ihre Datensätze gilt. Bitte teilen Sie diese der Fachstelle Bibliothek mit.
Liegt der Fachstelle Bibliothek auch keine Standard-URI vor, wird der Datensatz nicht in die DDB eingespielt.
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
Alternativ zu diesem Element kann die Rechteinformation auch im primären <sch:span class="monotype">mets:dmdSec</sch:span>-Element im Attribut <sch:span class="monotype">xlink:href</sch:span> des Elements <sch:span class="monotype">mods:accessCondition</sch:span> mit dem Attribut <sch:span class="monotype">type</sch:span> und dem Wert <sch:span class="monotype">use and reproduction</sch:span> angegeben werden.
Die Rechteinformation muss im o. g. Element bzw. Attribut in Form eines URI gemäß den Rechteangaben in der Deutschen Digitalen Bibliothek (https://pro.deutsche-digitale-bibliothek.de/daten-liefern/teilnahmekriterien/rechtliches/lizenzen-und-rechtehinweise-der-lizenzkorb-der-deutschen-digitalen-bibliothek) vorliegen. Im <sch:span class="monotype">dv:license</sch:span> können darüber hinaus die kodierten Werte aus dem METS-Anwendungsprofil (Kapitel 2.7.2.11) (https://dfg-viewer.de/fileadmin/groups/dfgviewer/METS-Anwendungsprofil_2.3.1.pdf) verwendet werden. Bitte beachten Sie hierbei, dass die DDB die CC-Lizenz-Werte als Version 4.0 und den Wert <sch:span class="monotype">reserved</sch:span> als Urheberrechtsschutz nicht bewertet (Europeana Right Statement "CNE") (http://rightsstatements.org/vocab/CNE/1.0/) interpretiert.
Ist im Datensatz keine Rechteinformation wie oben beschrieben vorhanden, kann bei der Transformation des Datensatzes eine von Ihnen bestimmte Standard-URI von der Seite Rechteangaben in der Deutschen Digitalen Bibliothek (https://pro.deutsche-digitale-bibliothek.de/daten-liefern/teilnahmekriterien/rechtliches/lizenzen-und-rechtehinweise-der-lizenzkorb-der-deutschen-digitalen-bibliothek) gesetzt werden, die für alle Ihre Datensätze gilt. Bitte teilen Sie diese der Fachstelle Bibliothek mit.
Liegt der Fachstelle Bibliothek auch keine Standard-URI vor, wird der Datensatz nicht in die DDB eingespielt.
Weitere Informationen zu diesen Elementen finden Sie im DDB-METS/MODS-Anwendungsprofil auf den Seiten mets:rightsMD (https://deutsche-digitale-bibliothek.atlassian.net/wiki/x/XALeAg) und mods:accessCondition (https://deutsche-digitale-bibliothek.atlassian.net/wiki/x/zQ3eAg). Informationen zu den möglichen Rechte-URI finden Sie auf der Seite Rechteangaben in der Deutschen Digitalen Bibliothek (https://pro.deutsche-digitale-bibliothek.de/daten-liefern/teilnahmekriterien/rechtliches/lizenzen-und-rechtehinweise-der-lizenzkorb-der-deutschen-digitalen-bibliothek).</sch:assert>
      </sch:rule>
   </sch:pattern>
   <sch:pattern>
      <sch:rule context="mets:amdSec[@ID=$work_amdid]/mets:digiprovMD | mets:amdSec[not(@ID=$work_amdid)][1]/mets:digiprovMD">
            <!-- 
               mets:digiprovMD ist unvollständig
             -->
         <sch:assert id="amdSec_06"
                     role="error"
                     test="mets:mdWrap/mets:xmlData/dv:links/dv:reference[matches(text()[1], '^http[s]?://.+')] or mets:mdWrap/mets:xmlData/dv:links/dv:presentation[matches(text()[1], '^http[s]?://.+')]"
                     properties="id"
                     see="https://deutsche-digitale-bibliothek.atlassian.net/wiki/x/NAfeAg">Das Element <sch:span class="monotype">mets:amdSec</sch:span>, das über sein Attribut <sch:span class="monotype">ID</sch:span> vom primären <sch:span class="monotype">mets:div</sch:span> im Element <sch:span class="monotype">mets:structMap[@TYPE='LOGICAL']</sch:span> über dessen Attribut <sch:span class="monotype">ADMID</sch:span> referenziert wird, muss das Unterelement <sch:span class="monotype">mets:digiprovMD</sch:span> enthalten.
Dieses muss auf der untersten Ebene das Element <sch:span class="monotype">dv:presentation</sch:span> oder das Element <sch:span class="monotype">dv:reference</sch:span> mit einem http- oder https-URI enthalten, der auf die Anzeige des Digitalisats bei Ihrer Institution, bzw. das Katalogisat in Ihrem Katalog referenziert.
Fehlt sowohl <sch:span class="monotype">dv:presentation</sch:span> als auch <sch:span class="monotype">dv:reference</sch:span> bzw. enthält keines dieser Elemente einen http- bzw. https-URI, wird <sch:span class="monotype">mets:digiprovMD</sch:span> bei der Transformation des Datensatzes entfernt.
Weitere Informationen zu diesen Elementen finden Sie im DDB-METS/MODS-Anwendungsprofil auf der Seite mets:digiprovMD (https://deutsche-digitale-bibliothek.atlassian.net/wiki/x/5AbeAg).</sch:assert>
      </sch:rule>
   </sch:pattern>
   <sch:pattern>
      <sch:rule context="mets:amdSec[@ID=$work_amdid]/mets:rightsMD/mets:mdWrap/mets:xmlData/dv:rights">
            <!-- 
               dv:owner ist in dv:rights mehrfach vorhanden
             -->
         <sch:report id="amdSec_07"
                     role="fatal"
                     test="dv:owner[2]"
                     properties="id"
                     see="https://deutsche-digitale-bibliothek.atlassian.net/wiki/x/NAfeAg">Das Element <sch:span class="monotype">dv:rights</sch:span> darf das Element <sch:span class="monotype">dv:owner</sch:span> im primären <sch:span class="monotype">mets:amdSec</sch:span>-Element nur einmal enthalten. Enthält <sch:span class="monotype">dv:rights</sch:span> mehr als ein <sch:span class="monotype">dv:owner</sch:span>, wird der Datensatz nicht in die DDB eingespielt.
Weitere Informationen zu diesem Element finden Sie im DDB-METS/MODS-Anwendungsprofil auf der Seite mets:rightsMD (https://deutsche-digitale-bibliothek.atlassian.net/wiki/x/XALeAg).</sch:report>
      </sch:rule>
   </sch:pattern>
   <sch:pattern>
      <sch:rule context="mets:mets[mets:structMap[@TYPE='LOGICAL']//mets:div[tokenize(@DMDID, ' ') = $work_dmdid][contains(@ADMID, ' ')]]">
            <!-- 
               Das primäre mets:div in mets:structMap[@TYPE='LOGICAL'] referenziert mehr als ein mets:amdSec
             -->
         <sch:report id="amdSec_08"
                     role="fatal"
                     test="contains($work_amdid, ' ')"
                     see="https://deutsche-digitale-bibliothek.atlassian.net/wiki/x/NAfeAg">Das primäre <sch:span class="monotype">mets:div</sch:span>-Element im Element <sch:span class="monotype">mets:structMap[@TYPE='LOGICAL']</sch:span> referenziert im Attribut <sch:span class="monotype">ADMID</sch:span> mehrere <sch:span class="monotype">mets:amdSec</sch:span>-Elemente.
Dadurch ist keine eindeutige Zuordnung der adminstrativen Metadaten für den Datensatz möglich und er wird nicht in die DDB eingespielt.
Weitere Informationen zu diesen Elementen finden Sie im DDB-METS/MODS-Anwendungsprofil auf den Seiten mets:amdSec (https://deutsche-digitale-bibliothek.atlassian.net/wiki/x/iwLeAg) und mets:structMap[@TYPE='LOGICAL'] (https://deutsche-digitale-bibliothek.atlassian.net/wiki/x/bAXeAg). Informationen zum Kontext der Elemente finden Sie im Bereich Aufbau einer METS/MODS-Datei für die DDB (https://deutsche-digitale-bibliothek.atlassian.net/wiki/x/MwLeAg).</sch:report>
      </sch:rule>
      <sch:rule context="mets:mets[not(mets:amdSec[@ID=$work_amdid]) and mets:amdSec[not(key('structMap_LOGICAL_admids', @ID))][2]]">
            <!-- 
               mets:amdSec ohne Referenzierung
             -->
         <sch:report id="amdSec_09"
                     role="fatal"
                     test="not(mets:amdSec[@ID=$work_amdid]) and mets:amdSec[not(key('structMap_LOGICAL_admids', @ID))][2]"
                     see="https://deutsche-digitale-bibliothek.atlassian.net/wiki/x/NAfeAg">Das Element <sch:span class="monotype">mets:amdSec</sch:span> muss über sein Attribut <sch:span class="monotype">ID</sch:span> mit einem <sch:span class="monotype">mets:div</sch:span>-Element im Element <sch:span class="monotype">mets:structMap[@TYPE='LOGICAL']</sch:span> über dessen Attribut <sch:span class="monotype">ADMID</sch:span> referenziert werden.
Enthält ein Datensatz kein <sch:span class="monotype">mets:amdSec</sch:span>, das vom primären <sch:span class="monotype">mets:div</sch:span> im <sch:span class="monotype">mets:structMap[@TYPE='LOGICAL']</sch:span> referenziert wird und darüber hinaus mehrere <sch:span class="monotype">mets:amdSec</sch:span> ohne eine Referenzierung, ist keine eindeutige Zuordnung der adminstrativen Metadaten für den Datensatz möglich und er wird nicht in die DDB eingespielt. 
Weitere Informationen zu diesen Elementen finden Sie im DDB-METS/MODS-Anwendungsprofil auf den Seiten mets:amdSec (https://deutsche-digitale-bibliothek.atlassian.net/wiki/x/iwLeAg) und mets:structMap[@TYPE='LOGICAL'] (https://deutsche-digitale-bibliothek.atlassian.net/wiki/x/bAXeAg). Informationen zum Kontext der Elemente finden Sie im Bereich Aufbau einer METS/MODS-Datei für die DDB (https://deutsche-digitale-bibliothek.atlassian.net/wiki/x/MwLeAg).</sch:report>
      </sch:rule>
      <sch:rule context="mets:mets">
            <!-- 
               Das primäre mets:div in mets:structMap[@TYPE='LOGICAL'] referenziert kein mets:amdSec
             -->
         <sch:assert id="amdSec_10"
                     role="error"
                     test="mets:amdSec[@ID=$work_amdid]"
                     see="https://deutsche-digitale-bibliothek.atlassian.net/wiki/x/NAfeAg">Das primäre <sch:span class="monotype">mets:div</sch:span>-Element im Element <sch:span class="monotype">mets:structMap[@TYPE='LOGICAL']</sch:span> muss im Attribut <sch:span class="monotype">ADMID</sch:span> genau ein <sch:span class="monotype">mets:amdSec</sch:span>-Element über dessen Attribut <sch:span class="monotype">ID</sch:span> referenzieren.
Ist dies nicht der Fall und der Datensatz verfügt nur über genau ein <sch:span class="monotype">mets:amdSec</sch:span>, wird eine Referenz auf dieses bei Transformation des Datensatzes erzeugt.
Weitere Informationen zu diesen Elementen finden Sie im DDB-METS/MODS-Anwendungsprofil auf den Seiten mets:amdSec (https://deutsche-digitale-bibliothek.atlassian.net/wiki/x/iwLeAg) und mets:structMap[@TYPE='LOGICAL'] (https://deutsche-digitale-bibliothek.atlassian.net/wiki/x/bAXeAg). Informationen zum Kontext der Elemente finden Sie im Bereich Aufbau einer METS/MODS-Datei für die DDB (https://deutsche-digitale-bibliothek.atlassian.net/wiki/x/MwLeAg).</sch:assert>
      </sch:rule>
   </sch:pattern>
   <sch:pattern>
      <sch:rule context="mets:mets/mets:structMap[@TYPE='LOGICAL']//mets:div[not(tokenize(@DMDID, ' ') = $work_dmdid)][@ADMID]">
            <!-- 
               mets:amdSec für nicht-primäre mets:div
             -->
         <sch:report id="amdSec_11"
                     role="info"
                     test="key('amdsec_ids', @ADMID)"
                     see="https://deutsche-digitale-bibliothek.atlassian.net/wiki/x/NAfeAg">Der Datensatz enthält <sch:span class="monotype">mets:amdSec</sch:span>-Elemente, die im Element <sch:span class="monotype">mets:structMap[@TYPE='LOGICAL']</sch:span> von dem primären <sch:span class="monotype">mets:div</sch:span>-Element untergeordneten <sch:span class="monotype">mets:div</sch:span>-Elementen referenziert werden.
Die DDB berücksichtigt zurzeit nur das <sch:span class="monotype">mets:amdSec</sch:span>, das von primären <sch:span class="monotype">mets:div</sch:span> referenziert wird.
Weitere Informationen zu diesem Element und seinem Kontext finden Sie im DDB-METS/MODS-Anwendungsprofil auf der Seite mets:amdSec (https://deutsche-digitale-bibliothek.atlassian.net/wiki/x/iwLeAg) und im Bereich Aufbau einer METS/MODS-Datei für die DDB (https://deutsche-digitale-bibliothek.atlassian.net/wiki/x/MwLeAg).</sch:report>
      </sch:rule>
   </sch:pattern>
   <sch:pattern>
      <sch:rule context="mets:amdSec[@ID=$work_amdid]/mets:rightsMD/mets:mdWrap/mets:xmlData/dv:rights">
            <!-- 
               dv:license ist in dv:rights mehrmals vorhanden
             -->
         <sch:report id="amdSec_12"
                     role="error"
                     test="dv:license[2]"
                     see="https://deutsche-digitale-bibliothek.atlassian.net/wiki/x/NAfeAg">Das Element <sch:span class="monotype">dv:rights</sch:span> darf das Element <sch:span class="monotype">dv:license</sch:span> im primären <sch:span class="monotype">mets:amdSec</sch:span>-Element nur einmal enthalten. Enthält <sch:span class="monotype">dv:rights</sch:span> mehr als ein <sch:span class="monotype">dv:license</sch:span>, wird bei der Bereinigung des Datensatzes das erste Vorkommen von <sch:span class="monotype">dv:license</sch:span> mit gültigem Rechte-URI übernommen, alle anderen <sch:span class="monotype">dv:license</sch:span> werden entfernt.
Weitere Informationen zu diesem Element finden Sie im DDB-METS/MODS-Anwendungsprofil auf der Seite mets:rightsMD (https://deutsche-digitale-bibliothek.atlassian.net/wiki/x/XALeAg).</sch:report>
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
Dies ist nur ein Hinweis auf die Rechtslage in Verbindung mit der Bitte um Prüfung, ob Sie – dementsprechend – in den Rechteangaben zu Ihren Digitalisaten den richtigen Rechtehinweis vergeben haben. Die Rechteangaben bleiben jedoch – wie im Kooperationsvertrag geregelt – in der Verantwortung Ihrer Einrichtung.
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
                     properties="dmd_id">Der Datensatz enthält im primären <sch:span class="monotype">mets:amdSec</sch:span>-Element mehrere <sch:span class="monotype">dv:license</sch:span>-Elemente mit unterschiedlichen Rechteangaben aus dem Lizenzkorb der DDB (https://pro.deutsche-digitale-bibliothek.de/daten-liefern/teilnahmekriterien/rechtliches/lizenzen-und-rechtehinweise-der-lizenzkorb-der-deutschen-digitalen-bibliothek). Bitte beachten Sie hierbei, dass die DDB die CC-Lizenz-Werte aus dem METS-Anwendungsprofil (Kapitel 2.7.2.11) (https://dfg-viewer.de/fileadmin/groups/dfgviewer/METS-Anwendungsprofil_2.3.1.pdf) als Version 4.0 und den Wert <sch:span class="monotype">reserved</sch:span> als Urheberrechtsschutz nicht bewertet (Europeana Right Statement "CNE") (http://rightsstatements.org/vocab/CNE/1.0/) interpretiert.
Die DDB benötigt eindeutige Rechteangaben, daher wird der Datensatz nicht in die DDB eingespielt.</sch:report>
      </sch:rule>
      <sch:rule context="mets:mets[ mets:dmdSec[@ID=$work_dmdid]/mets:mdWrap/mets:xmlData/mods:mods[mods:accessCondition[@type='use and reproduction'][ key('license_uris', replace(text(), 'deed\.[a-z][a-z]$', ''), $license_uris) or key('license_uris', replace(@*[local-name()='href'][1], 'deed\.[a-z][a-z]$', ''), $license_uris) ][2]] ]">
            <!-- 
               Widersprüchliche Rechteangaben in mods:accessCondition[@type='use and reproduction']
             -->
         <sch:report id="amdSec_16"
                     role="fatal"
                     test="count(distinct-values(( mets:dmdSec[@ID=$work_dmdid]/mets:mdWrap/mets:xmlData/mods:mods/mods:accessCondition[@type='use and reproduction'][key('license_uris', replace(text(), 'deed\.[a-z][a-z]$', ''), $license_uris)]/replace(replace(text(), '^https', 'http'), 'deed\.[a-z][a-z]$', ''), mets:dmdSec[@ID=$work_dmdid]/mets:mdWrap/mets:xmlData/mods:mods/mods:accessCondition[@type='use and reproduction'][key('license_uris', replace(@*[local-name()='href'][1], 'deed\.[a-z][a-z]$', ''), $license_uris)]/replace(replace(@*[local-name()='href'][1], '^https', 'http'), 'deed\.[a-z][a-z]$', '') ))) &gt; 1"
                     properties="dmd_id">Der Datensatz enthält im primären <sch:span class="monotype">mets:dmdSec</sch:span>-Element mehrere <sch:span class="monotype">mods:accessCondition[@type='use and reproduction']</sch:span>-Elemente mit unterschiedlichen Rechteangaben aus dem Lizenzkorb der DDB (https://pro.deutsche-digitale-bibliothek.de/daten-liefern/teilnahmekriterien/rechtliches/lizenzen-und-rechtehinweise-der-lizenzkorb-der-deutschen-digitalen-bibliothek) im Attribut <sch:span class="monotype">xlink:href</sch:span>.
Die DDB benötigt eindeutige Rechteangaben, daher wird der Datensatz nicht in die DDB eingespielt.</sch:report>
      </sch:rule>
      <sch:rule context="mets:mets">
            <!-- 
               Widersprüchliche Rechteangaben in dv:license und im Attribut xlink:href von mods:accessCondition[@type='use and reproduction']
             -->
         <sch:report id="amdSec_17"
                     role="error"
                     test="count(distinct-values(( mets:amdSec[@ID=$work_amdid]/mets:rightsMD/mets:mdWrap/mets:xmlData/dv:rights/dv:license[key('license_uris', replace(text(), 'deed\.[a-z][a-z]$', ''), $license_uris)]/replace(replace(text(), '^https', 'http'), 'deed\.[a-z][a-z]$', ''), mets:amdSec[not(@ID=$work_amdid)][1]/mets:rightsMD/mets:mdWrap/mets:xmlData/dv:rights/dv:license[key('license_uris', replace(text(), 'deed\.[a-z][a-z]$', ''), $license_uris)]/replace(replace(text(), '^https', 'http'), 'deed\.[a-z][a-z]$', ''), mets:dmdSec[@ID=$work_dmdid]/mets:mdWrap/mets:xmlData/mods:mods/mods:accessCondition[@type='use and reproduction'][key('license_uris', replace(text(), 'deed\.[a-z][a-z]$', ''), $license_uris)]/replace(replace(text(), '^https', 'http'), 'deed\.[a-z][a-z]$', ''), mets:dmdSec[@ID=$work_dmdid]/mets:mdWrap/mets:xmlData/mods:mods/mods:accessCondition[@type='use and reproduction'][key('license_uris', replace(@*[local-name()='href'][1], 'deed\.[a-z][a-z]$', ''), $license_uris)]/replace(replace(@*[local-name()='href'][1], '^https', 'http'), 'deed\.[a-z][a-z]$', ''), key('mets_ap_dv_license_values', mets:amdSec[@ID=$work_amdid]/mets:rightsMD/mets:mdWrap/mets:xmlData/dv:rights/dv:license[key('mets_ap_dv_license_values', text(), $mets_ap_dv_license_values)]/text(), $mets_ap_dv_license_values)/@to ))) &gt; 1"
                     properties="dmd_id">Der Datensatz enthält im primären <sch:span class="monotype">mets:dmdSec</sch:span>-Element im Element <sch:span class="monotype">mods:accessCondition[@type='use and reproduction']</sch:span> im Attribut <sch:span class="monotype">xlink:href</sch:span> und im Element <sch:span class="monotype">dv:license</sch:span> im primären <sch:span class="monotype">mets:amdSec</sch:span>-Element sich widersprechende Rechteangaben aus dem Lizenzkorb der DDB (https://pro.deutsche-digitale-bibliothek.de/daten-liefern/teilnahmekriterien/rechtliches/lizenzen-und-rechtehinweise-der-lizenzkorb-der-deutschen-digitalen-bibliothek). Bitte beachten Sie hierbei, dass die DDB die CC-Lizenz-Werte aus dem METS-Anwendungsprofil (Kapitel 2.7.2.11) (https://dfg-viewer.de/fileadmin/groups/dfgviewer/METS-Anwendungsprofil_2.3.1.pdf) als Version 4.0 und den Wert <sch:span class="monotype">reserved</sch:span> als Urheberrechtsschutz nicht bewertet (Europeana Right Statement "CNE") (http://rightsstatements.org/vocab/CNE/1.0/) interpretiert.
Bei der Transformation des Datensatzes übernimmt die DDB in diesem Fall die Rechteangabe aus <sch:span class="monotype">mods:accessCondition[@type='use and reproduction']</sch:span>.</sch:report>
      </sch:rule>
   </sch:pattern>
   <sch:pattern>
      <sch:rule context="mets:mets[not( mets:amdSec[@ID=$work_amdid]/mets:digiprovMD/mets:mdWrap/mets:xmlData/dv:links/dv:presentation or mets:amdSec[not(@ID=$work_amdid)][1]/mets:digiprovMD/mets:mdWrap/mets:xmlData/dv:links/dv:presentation )]">
            <!-- 
               dv:presentation fehlt in dv:digiprovMD
             -->
         <sch:report id="amdSec_15"
                     role="warn"
                     test="true()"
                     see="https://deutsche-digitale-bibliothek.atlassian.net/wiki/x/NAfeAg">Das primäre <sch:span class="monotype">mets:amdSec</sch:span>-Element muss das Unterelement <sch:span class="monotype">mets:digiprovMD</sch:span> enthalten.
Dieses muss auf der untersten Ebene das Element <sch:span class="monotype">dv:presentation</sch:span> enthalten, das einen http- bzw. https-URI enthält, der auf die Anzeige des Digitalisats bei Ihrer Institution referenziert.
Fehlt <sch:span class="monotype">dv:presentation</sch:span> im Datensatz wird in der DDB der Button "Original beim Datenpartner anzeigen" ausgeblendet.
Weitere Informationen zu diesem Element finden Sie im DDB-METS/MODS-Anwendungsprofil auf der Seite mets:digiprovMD (https://deutsche-digitale-bibliothek.atlassian.net/wiki/x/5AbeAg).</sch:report>
      </sch:rule>
      <sch:rule context="mets:amdSec[@ID=$work_amdid]/mets:digiprovMD/mets:mdWrap/mets:xmlData/dv:links/dv:presentation | mets:amdSec[not(@ID=$work_amdid)][1]/mets:digiprovMD/mets:mdWrap/mets:xmlData/dv:links/dv:presentation">
            <!-- 
               Ungültiger URL in dv:presentation
             -->
         <sch:assert id="amdSec_19"
                     role="fatal"
                     test="matches(text(), '^(http|https)://[a-zA-Z0-9\-\.]+\.[a-zA-Z][a-zA-Z]+(:[a-zA-Z0-9]*)?/?([a-zA-Z0-9\-\._\?,/\\\+&amp;%\$#=~:])*$')"
                     properties="dmd_id"
                     see="https://deutsche-digitale-bibliothek.atlassian.net/wiki/x/NAfeAg">Das Element <sch:span class="monotype">dv:presentation</sch:span> im primären <sch:span class="monotype">mets:amdSec</sch:span>-Element muss einen validen http-URL enthalten.
Enthält <sch:span class="monotype">dv:presentation</sch:span> einen ungültigen http-URL, wird der Datensatz nicht in die DDB eingespielt.
Weitere Informationen zu diesem Element finden Sie im DDB-METS/MODS-Anwendungsprofil auf der Seite mets:digiprovMD (https://deutsche-digitale-bibliothek.atlassian.net/wiki/x/5AbeAg).</sch:assert>
      </sch:rule>
   </sch:pattern>
   <sch:pattern>
      <sch:rule context="mets:mets">
            <!-- 
               dv:ownerSiteURL fehlt in mets:rightsMD
             -->
         <sch:assert id="amdSec_18"
                     role="warn"
                     test="mets:amdSec[@ID=$work_amdid]/mets:rightsMD/mets:mdWrap/mets:xmlData/dv:rights/dv:ownerSiteURL[matches(text(), '^https?://')] or mets:amdSec[not(@ID=$work_amdid)][1]/mets:rightsMD/mets:mdWrap/mets:xmlData/dv:rights/dv:ownerSiteURL[matches(text(), '^https?://')]"
                     see="https://deutsche-digitale-bibliothek.atlassian.net/wiki/x/NAfeAg">Das primäre <sch:span class="monotype">mets:amdSec</sch:span>-Element muss das Unterelement <sch:span class="monotype">mets:rightsMD</sch:span> enthalten.
Dieses muss auf der untersten Ebene das Element <sch:span class="monotype">dv:ownerSiteURL</sch:span> enthalten, das einen http- bzw. https-URI enthält, der auf die Webseite Ihrer Institution referenziert.
Fehlt <sch:span class="monotype">dv:ownerSiteURL</sch:span> im Datensatz, ist der Datengeber-Link im Buchviewer der DDB ohne Referenz.
Weitere Informationen zu diesem Element finden Sie im DDB-METS/MODS-Anwendungsprofil auf der Seite mets:rightsMD (https://deutsche-digitale-bibliothek.atlassian.net/wiki/x/XALeAg).</sch:assert>
      </sch:rule>
   </sch:pattern>
   <sch:pattern>
      <sch:rule context="mets:mets">
            <!-- 
               mets:fileSec fehlt
             -->
         <sch:assert id="fileSec_01"
                     role="fatal"
                     test="$is_anchor or mets:fileSec"
                     see="https://deutsche-digitale-bibliothek.atlassian.net/wiki/x/wwreAg">Datensätze, die Einteilige Dokumente oder Teile von Mehrteiligen Dokumenten beschreiben, müssen das Element <sch:span class="monotype">mets:fileSec</sch:span> enthalten. Fehlt <sch:span class="monotype">mets:fileSec</sch:span>, wird der Datensatz nicht in die DDB eingespielt.
Weitere Informationen zu diesem Element und seinem Kontext finden Sie im DDB-METS/MODS-Anwendungsprofil auf der Seite mets:fileSec (https://deutsche-digitale-bibliothek.atlassian.net/wiki/x/dgPeAg) und in den entsprechenden Unterseiten der Seite Aufbau einer METS/MODS-Datei für die DDB (https://deutsche-digitale-bibliothek.atlassian.net/wiki/x/MwLeAg).</sch:assert>
      </sch:rule>
      <sch:rule context="mets:mets/mets:fileSec[not(mets:fileGrp[@USE='DEFAULT'])]">
            <!-- 
               mets:fileGrp[@USE='DEFAULT'] fehlt
             -->
         <sch:assert id="fileSec_02"
                     role="fatal"
                     test="mets:fileGrp[@USE='DEFAULT'] or $is_anchor"
                     see="https://deutsche-digitale-bibliothek.atlassian.net/wiki/x/wwreAg">Beschreibt der Datensatz Einteilige Dokumente oder Teile von Mehrteiligen Dokumenten, muss das Element <sch:span class="monotype">mets:fileSec</sch:span> das Element <sch:span class="monotype">mets:fileGrp</sch:span> mit dem Attribut <sch:span class="monotype">USE</sch:span> mit dem Wert <sch:span class="monotype">DEFAULT</sch:span> enthalten.
Fehlt ein entsprechendes <sch:span class="monotype">mets:fileGrp</sch:span>, wird der Datensatz nicht in die DDB eingespielt.
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
Ist dies nicht der Fall, wird der Datensatz nicht in die DDB eingespielt.
Weitere Informationen zu diesem Element finden Sie im DDB-METS/MODS-Anwendungsprofil auf der Seite mets:fileSec (https://deutsche-digitale-bibliothek.atlassian.net/wiki/x/dgPeAg).</sch:assert>
      </sch:rule>
   </sch:pattern>
   <sch:pattern>
      <sch:rule context="mets:mets/mets:fileSec/mets:fileGrp/mets:file">
            <!-- 
               mets:file ohne eindeutigen Identifier im Attribut ID
             -->
         <sch:assert id="fileSec_04"
                     role="fatal"
                     test="count(key('mets_ids', @ID)) = 1 and matches(@ID, '^[\i-[:]][\c-[:]]*$')"
                     properties="id"
                     see="https://deutsche-digitale-bibliothek.atlassian.net/wiki/x/wwreAg">Das Element <sch:span class="monotype">mets:file</sch:span> muss das Attribut <sch:span class="monotype">ID</sch:span> mit einem im Datensatz eindeutigen Identifier enthalten. Dieser darf darüber hinaus keine ungültigen Zeichen enthalten.
Fehlt das Attribut <sch:span class="monotype">ID</sch:span> bzw. enthält es ungültige Zeichen, wird der Datensatz nicht in die DDB eingespielt.
Weitere Informationen zu diesem Attribut finden Sie im DDB-METS/MODS-Anwendungsprofil auf der Seite mets:fileSec (https://deutsche-digitale-bibliothek.atlassian.net/wiki/x/dgPeAg).</sch:assert>
      </sch:rule>
   </sch:pattern>
   <sch:pattern>
      <sch:rule context="mets:mets/mets:fileSec">
            <!-- 
               Attribut MIMETYPE fehlt in mets:file
             -->
         <sch:report id="fileSec_08"
                     role="warn"
                     test=".//mets:file[string-length(@MIMETYPE) = 0]"
                     see="https://deutsche-digitale-bibliothek.atlassian.net/wiki/x/wwreAg">Das Element <sch:span class="monotype">mets:file</sch:span> muss das Attribut <sch:span class="monotype">MIMETYPE</sch:span> besitzen. Der Datensatz enthält mindestens ein <sch:span class="monotype">mets:file</sch:span> ohne das Attribut <sch:span class="monotype">MIMETYPE</sch:span>.
Das Fehlen des Attributs <sch:span class="monotype">MIMETYPE</sch:span> verhindert nicht das Einspielen des Datensatzes in die DDB, kann aber zu Darstellungsproblemen führen. Wir bitten Sie daher, den Sachverhalt zu prüfen und ggf. die nötigen Korrekturen bis zur nächsten Datenlieferung vorzunehmen.
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
                     see="https://deutsche-digitale-bibliothek.atlassian.net/wiki/x/wwreAg">Das Element <sch:span class="monotype">mets:file</sch:span> muss über sein Attribut <sch:span class="monotype">ID</sch:span> mit einem <sch:span class="monotype">mets:fptr</sch:span>-Element im Element <sch:span class="monotype">mets:structMap[@TYPE='PHYSICAL']</sch:span> über dessen Attribut <sch:span class="monotype">FILEID</sch:span> referenziert werden.
Fehlt diese Referenzierung, wird der Datensatz nicht in die DDB eingespielt.
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
Fehlt ein entsprechendes <sch:span class="monotype">mets:structMap</sch:span>, wird der Datensatz nicht in die DDB eingespielt.
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
Ist dies nicht der Fall, wird der Datensatz nicht in die DDB eingespielt.
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
Fehlt das Attribut <sch:span class="monotype">ID</sch:span> bzw. enthält es ungültige Zeichen, wird der Datensatz nicht in die DDB eingespielt.
Weitere Informationen zu diesem Attribut finden Sie im DDB-METS/MODS-Anwendungsprofil auf der Seite mets:structMap[@TYPE='LOGICAL'] (https://deutsche-digitale-bibliothek.atlassian.net/wiki/x/bAXeAg).</sch:assert>
      </sch:rule>
   </sch:pattern>
   <sch:pattern>
      <sch:rule context="key('structMap_LOGICAL_dmdids', $work_dmdid)">
            <!-- 
               mets:div in mets:structMap[@TYPE='LOGICAL'] ohne Referenzierung
             -->
         <sch:assert id="structMapLogical_04"
                     role="fatal"
                     test="$is_anchor or key('structLink_from_ids', @ID)"
                     properties="id"
                     see="https://deutsche-digitale-bibliothek.atlassian.net/wiki/x/uwreAg">Das primäre <sch:span class="monotype">mets:div</sch:span>-Element im Element <sch:span class="monotype">mets:structMap[@TYPE='LOGICAL']</sch:span> muss über sein Attribut <sch:span class="monotype">ID</sch:span> von mindestens einem <sch:span class="monotype">mets:smLink</sch:span>-Element im Element <sch:span class="monotype">mets:structLink</sch:span> über dessen Attribut <sch:span class="monotype">xlink:from</sch:span> referenziert werden.
Fehlt diese Referenzierung, wird der Datensatz nicht in die DDB eingespielt.
Weitere Informationen zu diesen Elementen finden Sie im DDB-METS/MODS-Anwendungsprofil auf den Seiten mets:structMap[@TYPE='LOGICAL'] (https://deutsche-digitale-bibliothek.atlassian.net/wiki/x/bAXeAg) und mets:structLink (https://deutsche-digitale-bibliothek.atlassian.net/wiki/x/_QbeAg).</sch:assert>
      </sch:rule>
      <sch:rule context="key('structMap_LOGICAL_dmdids', $work_dmdid)//mets:div">
            <!-- 
               mets:div in mets:structMap[@TYPE='LOGICAL'] ohne Referenzierung
             -->
         <sch:assert id="structMapLogical_21"
                     role="warn"
                     test="$is_anchor or key('structLink_from_ids', @ID)"
                     properties="id"
                     see="https://deutsche-digitale-bibliothek.atlassian.net/wiki/x/uwreAg">Ein nicht-primäres <sch:span class="monotype">mets:div</sch:span>-Element im Element <sch:span class="monotype">mets:structMap[@TYPE='LOGICAL']</sch:span> muss über sein Attribut <sch:span class="monotype">ID</sch:span> von mindestens einem <sch:span class="monotype">mets:smLink</sch:span>-Element im Element <sch:span class="monotype">mets:structLink</sch:span> über dessen Attribut <sch:span class="monotype">xlink:from</sch:span> referenziert werden.
Eine fehlende Referenzierung verhindert nicht das Einspielen des Datensatzes in die DDB, kann aber zu Darstellungsproblemen im Buchviewer führen. Wir bitten Sie daher, den Sachverhalt zu prüfen und die nötigen Korrekturen bis zur nächsten Datenlieferung vorzunehmen.
Weitere Informationen zu diesen Elementen finden Sie im DDB-METS/MODS-Anwendungsprofil auf den Seiten mets:structMap[@TYPE='LOGICAL'] (https://deutsche-digitale-bibliothek.atlassian.net/wiki/x/bAXeAg) und mets:structLink (https://deutsche-digitale-bibliothek.atlassian.net/wiki/x/_QbeAg).</sch:assert>
      </sch:rule>
   </sch:pattern>
   <sch:pattern>
      <sch:rule context="mets:mets/mets:structMap[@TYPE='LOGICAL']//mets:div[not(@TYPE)]">
            <!-- 
               Das Attribut TYPE fehlt in mets:div in mets:structMap[@TYPE='LOGICAL']
             -->
         <sch:assert id="structMapLogical_05"
                     role="fatal"
                     test="@TYPE"
                     properties="id"
                     see="https://deutsche-digitale-bibliothek.atlassian.net/wiki/x/uwreAg">Das Element <sch:span class="monotype">mets:div</sch:span> im Element <sch:span class="monotype">mets:structMap[@TYPE='LOGICAL']</sch:span> muss das Attribut <sch:span class="monotype">TYPE</sch:span> mit einem Wert aus dem Strukturdatenset des DFG-Viewers (https://dfg-viewer.de/strukturdatenset/) (Spalte "XML") oder der Tabelle der Hierarchietypen in METS/MODS (Spalte B) (https://deutsche-digitale-bibliothek.atlassian.net/wiki/x/EQPeAg) enthalten.
Fehlt das Attribut <sch:span class="monotype">TYPE</sch:span> in <sch:span class="monotype">mets:div</sch:span>, wird der Datensatz nicht in die DDB eingespielt.
Weitere Informationen zu diesem Attribut finden Sie im DDB-METS/MODS-Anwendungsprofil auf der Seite mets:structMap[@TYPE='LOGICAL'] (https://deutsche-digitale-bibliothek.atlassian.net/wiki/x/bAXeAg).</sch:assert>
      </sch:rule>
      <sch:let name="structtypes"
               value="( 'section', 'file', 'album', 'register', 'annotation', 'address', 'article', 'atlas', 'issue', 'bachelor_thesis', 'volume', 'contained_work', 'additional', 'report', 'official_notification', 'provenance', 'inventory', 'image', 'collation', 'ornament', 'letter', 'cover', 'cover_front', 'cover_back', 'diploma_thesis', 'doctoral_thesis', 'document', 'printers_mark', 'printed_archives', 'binding', 'entry', 'corrigenda', 'bookplate', 'fascicle', 'leaflet', 'research_paper', 'photograph', 'fragment', 'land_register', 'ground_plan', 'habilitation_thesis', 'manuscript', 'illustration', 'imprint', 'contents', 'initial_decoration', 'year', 'chapter', 'map', 'cartulary', 'colophon', 'ephemera', 'engraved_titlepage', 'magister_thesis', 'folder', 'master_thesis', 'multivolume_work', 'month', 'monograph', 'musical_notation', 'periodical', 'poster', 'plan', 'privileges', 'index', 'spine', 'scheme', 'edge', 'seal', 'paste_down', 'stamp', 'study', 'table', 'day', 'proceeding', 'text', 'title_page', 'subinventory', 'act', 'judgement', 'verse', 'note', 'preprint', 'dossier', 'lecture', 'endsheet', 'paper', 'preface', 'dedication', 'newspaper', 'review')"/>
      <sch:rule context="mets:mets/mets:structMap[@TYPE='LOGICAL']//mets:div[not(@TYPE = $structtypes)]">
            <!-- 
               Ungültiger Wert im Attribut TYPE von mets:div in mets:structMap[@TYPE='LOGICAL']
             -->
         <sch:assert id="structMapLogical_06"
                     role="error"
                     test="@TYPE = $structtypes"
                     properties="id TYPE"
                     see="https://deutsche-digitale-bibliothek.atlassian.net/wiki/x/uwreAg">Das Element <sch:span class="monotype">mets:div</sch:span> im Element <sch:span class="monotype">mets:structMap[@TYPE='LOGICAL']</sch:span> muss im Attribut <sch:span class="monotype">TYPE</sch:span> einem Wert aus dem Strukturdatenset des DFG-Viewers (https://dfg-viewer.de/strukturdatenset/) (Spalte "XML") oder der Tabelle der Hierarchietypen in METS/MODS (Spalte B) (https://deutsche-digitale-bibliothek.atlassian.net/wiki/x/EQPeAg) enthalten.
Enthält das Attribut <sch:span class="monotype">TYPE</sch:span> von <sch:span class="monotype">mets:div</sch:span> einen ungültigen Wert, wird er bei der Transformation des Datensatzes durch den Wert <sch:span class="monotype">section</sch:span> ersetzt.
Weitere Informationen zu diesem Attribut finden Sie im DDB-METS/MODS-Anwendungsprofil auf der Seite mets:structMap[@TYPE='LOGICAL'] (https://deutsche-digitale-bibliothek.atlassian.net/wiki/x/bAXeAg).</sch:assert>
      </sch:rule>
      <sch:rule context="mets:mets/mets:structMap[@TYPE='LOGICAL']//mets:div">
            <!-- 
               Zeitungsstrukturen in mets:structMap[@TYPE='LOGICAL']
             -->
         <sch:report id="structMapLogical_19"
                     role="fatal"
                     test="./@TYPE = ('year', 'month', 'day')"
                     properties="id">Der Datensatz enthält im Element <sch:span class="monotype">mets:structMap[@TYPE='LOGICAL']</sch:span> mindestens ein <sch:span class="monotype">mets:div</sch:span>-Element mit einem der folgenden Werte im Attribut <sch:span class="monotype">TYPE</sch:span>:
 * <sch:span class="monotype">year</sch:span>
 * <sch:span class="monotype">month</sch:span>
 * <sch:span class="monotype">day</sch:span>
Diese Werte sind nur in Datensätzen, die für das Zeitungsportal bestimmt sind, gültig und werden daher nicht in die DDB eingespielt.
Wenn Sie den Datensatz in das Zeitungsportal einspielen möchten (https://pro.deutsche-digitale-bibliothek.de/daten-liefern/lieferung-subportale/lieferungen-an-das-deutsche-zeitungsportal), teilen Sie dies bitte der Fachstelle Bibliothek (mailto:bibliothek@deutsche-digitale-bibliothek.de) mit.
Weitere Informationen zur Struktur von Datensätzen für das Zeitungsportal finden Sie im DDB-METS/MODS-Anwendungsprofil auf der Seite Aufbau für Zeitungsausgaben (https://deutsche-digitale-bibliothek.atlassian.net/wiki/x/5wHeAg).</sch:report>
      </sch:rule>
   </sch:pattern>
   <sch:pattern>
      <sch:rule context="key('structMap_LOGICAL_dmdids', $work_dmdid) [ancestor::mets:mets/mets:dmdSec[@ID=$work_dmdid]/mets:mdWrap/mets:xmlData/mods:mods/mods:relatedItem[@type='host']]">
            <!-- 
               Ungültiger Wert im Attribut TYPE des primären mets:div in mets:structMap[@TYPE='LOGICAL'] für den Teil eines Mehrteiligen Dokuments
             -->
         <sch:assert id="structMapLogical_07"
                     role="warn"
                     test="@TYPE = ('volume', 'additional', 'illustration', 'map', 'folder', 'musical_notation', 'part')"
                     properties="id TYPE"
                     see="https://deutsche-digitale-bibliothek.atlassian.net/wiki/x/uwreAg">Das primäre <sch:span class="monotype">mets:div</sch:span>-Element im Element <sch:span class="monotype">mets:structMap[@TYPE='LOGICAL']</sch:span> enthält im referenzierten <sch:span class="monotype">mets:dmdSec</sch:span>-Element das Element <sch:span class="monotype">mods:relatedItem[@type='host']</sch:span>. Es beschreibt damit den Teil eines Mehrteiligen Dokuments und muss daher im Attribut <sch:span class="monotype">TYPE</sch:span> einen der folgenden Werte enthalten:
 * <sch:span class="monotype">additional</sch:span>
 * <sch:span class="monotype">folder</sch:span>
 * <sch:span class="monotype">illustration</sch:span>
 * <sch:span class="monotype">map</sch:span>
 * <sch:span class="monotype">musical_notation</sch:span>
 * <sch:span class="monotype">part</sch:span>
 * <sch:span class="monotype">volume</sch:span>
Die Verwendung eines ungültigen Wertes verhindert nicht das Einspielen des Datensatzes in die DDB. Wir bitten Sie jedoch, den Sachverhalt zu prüfen und die nötigen Korrekturen bis zur nächsten Datenlieferung vorzunehmen.
Weitere Informationen zu diesem Attribut und seinem Kontext finden Sie im DDB-METS/MODS-Anwendungsprofil auf der Seite mets:structMap[@TYPE='LOGICAL'] (https://deutsche-digitale-bibliothek.atlassian.net/wiki/x/bAXeAg) und der Seite Aufbau für Teile Mehrteiliger Dokumente (https://deutsche-digitale-bibliothek.atlassian.net/wiki/x/4gbeAg).</sch:assert>
      </sch:rule>
   </sch:pattern>
   <sch:pattern>
      <sch:rule context="key('structMap_LOGICAL_dmdids', $work_dmdid)[1] [ancestor::mets:mets/mets:dmdSec[@ID=$work_dmdid]/mets:mdWrap/mets:xmlData/mods:mods/mods:relatedItem[@type='host']]">
            <!-- 
               mets:mptr fehlt in mets:div
             -->
         <sch:assert id="structMapLogical_08"
                     role="fatal"
                     test="./parent::mets:div/mets:mptr"
                     properties="id"
                     see="https://deutsche-digitale-bibliothek.atlassian.net/wiki/x/uwreAg">Der Datensatz enthält im primären <sch:span class="monotype">mets:dmdSec</sch:span>-Element das Element <sch:span class="monotype">mods:relatedItem[@type='host']</sch:span> und beschreibt damit den Teil eines Mehrteiligen Dokuments. Daher muss das Elternelement <sch:span class="monotype">mets:div</sch:span> des primären <sch:span class="monotype">mets:div</sch:span>-Elements im Element <sch:span class="monotype">mets:structMap[@TYPE='LOGICAL']</sch:span> das Unterelement <sch:span class="monotype">mets:mptr</sch:span> enthalten.
Ist dies nicht der Fall, fehlt dem Datensatz die Referenz auf den Ankersatz des Mehrteiligen Dokuments und er wird nicht in die DDB eingespielt.
Weitere Informationen zu diesem Kontext finden Sie im DDB-METS/MODS-Anwendungsprofil im Bereich METS/MODS für Mehrteilige Dokumente (https://deutsche-digitale-bibliothek.atlassian.net/wiki/x/GwLeAg).</sch:assert>
      </sch:rule>
   </sch:pattern>
   <sch:pattern>
      <sch:rule context="mets:mets/mets:structMap[@TYPE='LOGICAL']//mets:div[@DMDID!=$work_dmdid]">
            <!-- 
               Ungültige Referenz im Attribut DMDID von mets:div in mets:structMap[@TYPE='LOGICAL']
             -->
         <sch:assert id="structMapLogical_09"
                     role="warn"
                     test="sum( for $dmdid in tokenize(@DMDID, ' ') return if (key('dmdsec_ids', $dmdid)) then 0 else 1 ) = 0"
                     properties="id"
                     see="https://deutsche-digitale-bibliothek.atlassian.net/wiki/x/uwreAg">Das Attribut <sch:span class="monotype">DMDID</sch:span> eines nicht-primären <sch:span class="monotype">mets:div</sch:span>-Elements im Element <sch:span class="monotype">mets:structMap[@TYPE='LOGICAL']</sch:span> muss den Wert des Attributs <sch:span class="monotype">ID</sch:span> eines <sch:span class="monotype">mets:dmdSec</sch:span>-Elements referenzieren.
Fehlt ein <sch:span class="monotype">mets:dmdSec</sch:span> mit einem entsprechendem Wert im Attribut <sch:span class="monotype">ID</sch:span>hat keine Auswirkung auf das Einspielen in die DDB, entspricht aber nicht dem METS-Standard.
Weitere Informationen zu diesem Attribut finden Sie im DDB-METS/MODS-Anwendungsprofil auf der Seite mets:structMap[@TYPE='LOGICAL'] (https://deutsche-digitale-bibliothek.atlassian.net/wiki/x/bAXeAg).</sch:assert>
      </sch:rule>
   </sch:pattern>
   <sch:pattern>
      <sch:rule context="mets:mets/mets:structMap[@TYPE='LOGICAL']//mets:div[mets:mptr]">
            <!-- 
               mets:div mit mets:mptr enthält innerhalb mets:structMap[@TYPE='LOGICAL'] mets:div mit mets:mptr
             -->
         <sch:report id="structMapLogical_10"
                     role="fatal"
                     test="./descendant::mets:div[mets:mptr]"
                     properties="id"
                     see="https://deutsche-digitale-bibliothek.atlassian.net/wiki/x/uwreAg">Im Element <sch:span class="monotype">mets:structMap[@TYPE='LOGICAL']</sch:span> beschreibt das Element <sch:span class="monotype">mets:div</sch:span>, das das Unterelement <sch:span class="monotype">mets:mptr</sch:span> enthält, das Mehrteilige Dokument des im Datensatz beschriebenen Teils eines Mehrteiligen Dokuments. <sch:span class="monotype">mets:mptr</sch:span> dient dabei zur Referenzierung des entsprechenden Ankersatzes. Alle Nachkommen dieses <sch:span class="monotype">mets:div</sch:span> beschreiben den Teil des Mehrteiligen Dokuments bzw. Unselbständige Dokumente innerhalb desselben und dürfen daher keine <sch:span class="monotype">mets:mptr</sch:span> enthalten.
Gibt es <sch:span class="monotype">mets:div</sch:span>-Nachkommen eines <sch:span class="monotype">mets:div</sch:span> mit <sch:span class="monotype">mets:mptr</sch:span>, die <sch:span class="monotype">mets:mptr</sch:span> enthalten, wird der Datensatz nicht in die DDB eingespielt.
Weitere Informationen zu diesen Elementen und ihrem Kontext finden Sie im DDB-METS/MODS-Anwendungsprofil auf der Seite mets:structMap[@TYPE='LOGICAL'] (https://deutsche-digitale-bibliothek.atlassian.net/wiki/x/bAXeAg) und der Seite Aufbau für Teile Mehrteiliger Dokumente (https://deutsche-digitale-bibliothek.atlassian.net/wiki/x/4gbeAg).</sch:report>
      </sch:rule>
   </sch:pattern>
   <sch:pattern>
      <sch:rule context="mets:mets/mets:structMap[@TYPE='LOGICAL']//mets:div[tokenize(@DMDID, ' ') = $work_dmdid][@TYPE='periodical']">
            <!-- 
               Primäres mets:div mit Attribut TYPE mit Wert periodical im Teil eines Mehrteiligen Dokuments
             -->
         <sch:report id="structMapLogical_11"
                     role="fatal"
                     test="./ancestor::mets:mets/mets:structLink/mets:smLink or ./ancestor::mets:mets/mets:fileSec/mets:fileGrp[@USE='DEFAULT']"
                     properties="id"
                     see="https://deutsche-digitale-bibliothek.atlassian.net/wiki/x/uwreAg">Der Datensatz enthält das Element <sch:span class="monotype">mets:fileSec</sch:span> mit dem Unterelement <sch:span class="monotype">mets:fileGrp[@USE='DEFAULT']</sch:span> bzw. das Element <sch:span class="monotype">mets:structLink</sch:span> mit mindestens einem Unterelement <sch:span class="monotype">mets:smLink</sch:span> und beschreibt damit den Teil eines Mehrteiligen Dokuments.
Das primäre <sch:span class="monotype">mets:div</sch:span>-Element enthält im Attribut <sch:span class="monotype">TYPE</sch:span> jedoch den Wert <sch:span class="monotype">periodical</sch:span>. Dieser Wert darf nur für das primäre <sch:span class="monotype">mets:div</sch:span> in Ankersätzen, die das Mehrteilige Dokument beschreiben, verwendet werden. Der Datensatz wird daher nicht in die DDB eingespielt.
Bitte verwenden Sie im Attribut <sch:span class="monotype">TYPE</sch:span> des primären <sch:span class="monotype">mets:div</sch:span> in Teilen von Mehrteiligen Dokumenten des Typs <sch:span class="monotype">periodical</sch:span> die Werte <sch:span class="monotype">volume</sch:span> oder <sch:span class="monotype">issue</sch:span>.
Weitere Informationen zu diesem Kontext finden Sie im DDB-METS/MODS-Anwendungsprofil im Bereich METS/MODS für Mehrteilige Dokumente (https://deutsche-digitale-bibliothek.atlassian.net/wiki/x/GwLeAg).</sch:report>
      </sch:rule>
   </sch:pattern>
   <sch:pattern>
      <sch:rule context="mets:mets/mets:structMap[@TYPE='LOGICAL']//mets:div[tokenize(@DMDID, ' ') = $work_dmdid][@TYPE='multivolume_work']">
            <!-- 
               Primäres mets:div mit Attribut TYPE mit Wert multivolume_work im Teil eines Mehrteiligen Dokuments
             -->
         <sch:report id="structMapLogical_16"
                     role="fatal"
                     test="./ancestor::mets:mets/mets:structLink/mets:smLink or ./ancestor::mets:mets/mets:fileSec/mets:fileGrp[@USE='DEFAULT']"
                     properties="id"
                     see="https://deutsche-digitale-bibliothek.atlassian.net/wiki/x/uwreAg">Der Datensatz enthält das Element <sch:span class="monotype">mets:fileSec</sch:span> mit dem Unterelement <sch:span class="monotype">mets:fileGrp[@USE='DEFAULT']</sch:span> bzw. das Element <sch:span class="monotype">mets:structLink</sch:span> mit mindestens einem Unterelement <sch:span class="monotype">mets:smLink</sch:span> und beschreibt damit den Teil eines Mehrteiligen Dokuments.
Das primäre <sch:span class="monotype">mets:div</sch:span>-Element enthält im Attribut <sch:span class="monotype">TYPE</sch:span> jedoch den Wert <sch:span class="monotype">multivolume_work</sch:span>. Dieser Wert darf nur für das primäre <sch:span class="monotype">mets:div</sch:span> in Ankersätzen, die das Mehrteilige Dokument beschreiben, verwendet werden. Der Datensatz wird daher nicht in die DDB eingespielt.
Bitte verwenden Sie im Attribut <sch:span class="monotype">TYPE</sch:span> des primären <sch:span class="monotype">mets:div</sch:span> in Teilen von Mehrteiligen Dokumenten des Typs <sch:span class="monotype">multivolume_work</sch:span> nur den Wert <sch:span class="monotype">volume</sch:span>.
Weitere Informationen zu diesem Kontext finden Sie im DDB-METS/MODS-Anwendungsprofil im Bereich METS/MODS für Mehrteilige Dokumente (https://deutsche-digitale-bibliothek.atlassian.net/wiki/x/GwLeAg).</sch:report>
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
Ist dies nicht der Fall, wird der Datensatz nicht in die DDB eingespielt.
Weitere Informationen zu diesem Attribut und seinem Kontext finden Sie im DDB-METS/MODS-Anwendungsprofil auf der Seite mets:structMap[@TYPE='LOGICAL'] (https://deutsche-digitale-bibliothek.atlassian.net/wiki/x/bAXeAg) und der Seite Aufbau für Teile Mehrteiliger Dokumente (https://deutsche-digitale-bibliothek.atlassian.net/wiki/x/4gbeAg).</sch:assert>
      </sch:rule>
   </sch:pattern>
   <sch:pattern>
      <sch:rule context="mets:mets/mets:structMap[@TYPE='LOGICAL']//mets:div[@DMDID = $work_dmdid][not(./ancestor::mets:div[@DMDID = $work_dmdid])]">
            <!-- 
               Primäre mets:dmdSec mit mehrfacher Referenzierung
             -->
         <sch:report id="structMapLogical_20"
                     role="fatal"
                     test="sum( for $dmdid in tokenize(@DMDID, ' ') return count(key('structMap_LOGICAL_dmdids', $dmdid)) ) &gt; count(tokenize(@DMDID, ' '))"
                     properties="id"
                     see="https://deutsche-digitale-bibliothek.atlassian.net/wiki/x/uwreAg">Das primäre <sch:span class="monotype">mets:div</sch:span>-Element im Element <sch:span class="monotype">mets:structMap[@TYPE='LOGICAL']</sch:span> muss über sein Attribut <sch:span class="monotype">DMDID</sch:span> ein <sch:span class="monotype">mets:dmdSec</sch:span>-Element über dessen Attribut <sch:span class="monotype">ID</sch:span> referenzieren.
Ein <sch:span class="monotype">mets:dmdSec</sch:span> darf aber nur von genau einem <sch:span class="monotype">mets:div</sch:span> in <sch:span class="monotype">mets:structMap[@TYPE='LOGICAL']</sch:span> referenziert werden, daher wird der Datensatz nicht in die DDB eingespielt.
Weitere Informationen zu diesem Element und seinem Kontext finden Sie im DDB-METS/MODS-Anwendungsprofil auf der Seite mets:structMap[@TYPE='LOGICAL'] (https://deutsche-digitale-bibliothek.atlassian.net/wiki/x/bAXeAg) und im Bereich Aufbau einer METS/MODS-Datei für die DDB (https://deutsche-digitale-bibliothek.atlassian.net/wiki/x/MwLeAg).</sch:report>
      </sch:rule>
   </sch:pattern>
   <sch:pattern>
      <sch:rule context="mets:mets/mets:structMap[@TYPE='LOGICAL']//mets:div[@DMDID != $work_dmdid]">
            <!-- 
               Nicht-primäre mets:dmdSec mit mehrfacher Referenzierung
             -->
         <sch:report id="structMapLogical_29"
                     role="warn"
                     test="sum( for $dmdid in tokenize(@DMDID, ' ') return count(key('structMap_LOGICAL_dmdids', $dmdid)) ) &gt; count(tokenize(@DMDID, ' '))"
                     properties="id"
                     see="https://deutsche-digitale-bibliothek.atlassian.net/wiki/x/uwreAg">Der Datensatz enthält im Element <sch:span class="monotype">mets:structMap[@TYPE='LOGICAL']</sch:span> nicht-primäre <sch:span class="monotype">mets:div</sch:span>-Elemente, die über ihr Attribut <sch:span class="monotype">DMDID</sch:span> dasselbe <sch:span class="monotype">mets:dmdSec</sch:span>-Element über dessen Attribut <sch:span class="monotype">ID</sch:span> referenzieren.
Ein <sch:span class="monotype">mets:dmdSec</sch:span> darf nur von genau einem <sch:span class="monotype">mets:div</sch:span> in <sch:span class="monotype">mets:structMap[@TYPE='LOGICAL']</sch:span> referenziert werden. Dies hat keine Auswirkung auf das Einspielen in die DDB, entspricht aber nicht dem METS-Standard.
Weitere Informationen zu diesem Element und seinem Kontext finden Sie im DDB-METS/MODS-Anwendungsprofil auf der Seite mets:structMap[@TYPE='LOGICAL'] (https://deutsche-digitale-bibliothek.atlassian.net/wiki/x/bAXeAg) und im Bereich Aufbau einer METS/MODS-Datei für die DDB (https://deutsche-digitale-bibliothek.atlassian.net/wiki/x/MwLeAg).</sch:report>
      </sch:rule>
   </sch:pattern>
   <sch:pattern>
      <sch:rule context="mets:mets/mets:structMap[@TYPE='LOGICAL']//mets:div[tokenize(@DMDID, ' ') = $work_dmdid]//mets:div[@DMDID]">
         <sch:let name="logid" value="@ID"/>
         <sch:let name="physical_div_id"
                  value="./ancestor::mets:mets/mets:structLink/mets:smLink[@xlink:from = $logid][1]/@xlink:to"/>
         <sch:let name="fileids"
                  value="key('structMap_PHYSICAL_ids', $physical_div_id)/descendant-or-self::mets:div[mets:fptr][parent::mets:div][1]/mets:fptr/@FILEID"/>
         <!-- 
               mets:div in mets:structMap[@TYPE='LOGICAL'] ohne Referenz auf mets:file in mets:fileGrp[@USE='DEFAULT']
             -->
         <sch:assert id="structMapLogical_22"
                     role="warn"
                     test="key('fileGrp_DEFAULT_file_ids', $fileids) or $is_anchor"
                     properties="id"
                     see="https://deutsche-digitale-bibliothek.atlassian.net/wiki/x/uwreAg">Der Datensatz beschreibt ein Einteiliges Dokument bzw. einen Teil eines Mehrteiligen Dokuments und daher muss das Element <sch:span class="monotype">mets:div</sch:span> im Element <sch:span class="monotype">mets:structMap[@TYPE='LOGICAL']</sch:span> über die Elemente <sch:span class="monotype">mets:structLink</sch:span> und <sch:span class="monotype">mets:structMap[@TYPE='PHYSICAL']</sch:span> mindestens ein <sch:span class="monotype">mets:file</sch:span>-Element im Element <sch:span class="monotype">mets:fileGrp[@USE='DEFAULT']</sch:span> referenzieren.
Fehlt diese Referenz, kann dem <sch:span class="monotype">mets:div</sch:span> im Buchviewer der DDB kein Bild zugewiesen werden. Dies verhindert nicht das Einspielen des Datensatzes in die DDB. Wir bitten Sie jedoch, den Sachverhalt zu prüfen und die nötigen Korrekturen bis zur nächsten Datenlieferung vorzunehmen.
Weitere Informationen zu diesem Kontext finden Sie im DDB-METS/MODS-Anwendungsprofil im Bereich Aufbau einer METS/MODS-Datei für die DDB (https://deutsche-digitale-bibliothek.atlassian.net/wiki/x/MwLeAg).</sch:assert>
      </sch:rule>
   </sch:pattern>
   <sch:pattern>
      <sch:rule context="mets:mets/mets:structMap[@TYPE='LOGICAL']//mets:div[@DMDID = $work_dmdid]">
            <!-- 
               Primäre mets:div in mets:structMap[@TYPE='LOGICAL'] hat Elternelement mets:div in Ankersatz
             -->
         <sch:report id="structMapLogical_23"
                     role="fatal"
                     test="$is_anchor and ./parent::mets:div"
                     properties="id"
                     see="https://deutsche-digitale-bibliothek.atlassian.net/wiki/x/uwreAg">Der Datensatz besitzt kein <sch:span class="monotype">mets:fileSec</sch:span>-Element mit dem Unterelement <sch:span class="monotype">mets:fileGrp[@USE='DEFAULT']</sch:span> bzw. das Element <sch:span class="monotype">mets:structLink</sch:span> und beschreibt daher einen Ankersatz. Dadurch darf das primäre <sch:span class="monotype">mets:div</sch:span>-Element im Element <sch:span class="monotype">mets:structMap[@TYPE='LOGICAL']</sch:span> kein <sch:span class="monotype">mets:div</sch:span>-Elternelement besitzen und muss die oberste logische Ebene darstellen.
Ist dies nicht der Fall, wird der Datensatz nicht in die DDB eingespielt.
Weitere Informationen zu diesem Element und seinem Kontext finden Sie im DDB-METS/MODS-Anwendungsprofil auf den Seiten mets:structMap[@TYPE='LOGICAL'] (https://deutsche-digitale-bibliothek.atlassian.net/wiki/x/bAXeAg) und Aufbau eines Ankersatzes (https://deutsche-digitale-bibliothek.atlassian.net/wiki/x/zQveAg).</sch:report>
      </sch:rule>
   </sch:pattern>
   <sch:pattern>
      <sch:rule context="mets:mets/mets:structMap[@TYPE='LOGICAL']/mets:div">
            <!-- 
               Ungültiger Wert im Attribut TYPE des primären mets:div in mets:structMap[@TYPE='LOGICAL'] in Ankersatz
             -->
         <sch:report id="structMapLogical_24"
                     role="warn"
                     test="$is_anchor and not(@TYPE = ('multivolume_work', 'periodical', 'newspaper'))"
                     properties="id"
                     see="https://deutsche-digitale-bibliothek.atlassian.net/wiki/x/uwreAg">Der Datensatz beschreibt ein Mehrteiliges Dokument (Ankersatz) und muss daher im Attribut <sch:span class="monotype">TYPE</sch:span> des primären <sch:span class="monotype">mets:div</sch:span>-Element im Element <sch:span class="monotype">mets:structMap[@TYPE='LOGICAL']</sch:span> einen der folgenden Werte im Attribut <sch:span class="monotype">TYPE</sch:span> enthalten:
 * <sch:span class="monotype">multivolume_work</sch:span>
 * <sch:span class="monotype">newspaper</sch:span>
 * <sch:span class="monotype">periodical</sch:span>
Die Verwendung ungültiger Attributwerte verhindert das Einspielen des Datensatzes in die DDB zurzeit noch nicht, eine Verschärfung dieser Anforderungen ist aber perspektivisch geplant. Wir bitten Sie daher, den Sachverhalt zu prüfen und die nötigen Korrekturen bis zur nächsten Datenlieferung vorzunehmen.
Weitere Informationen zu diesem Attribut und seinem Kontext finden Sie im DDB-METS/MODS-Anwendungsprofil auf den Seiten mets:structMap[@TYPE='LOGICAL'] (https://deutsche-digitale-bibliothek.atlassian.net/wiki/x/bAXeAg) und Hierarchietypen in METS/MODS (https://deutsche-digitale-bibliothek.atlassian.net/wiki/x/EQPeAg).</sch:report>
      </sch:rule>
   </sch:pattern>
   <sch:pattern>
      <sch:rule context="mets:mets/mets:structMap[@TYPE='LOGICAL']/mets:div/mets:div[tokenize(@DMDID, ' ') = $work_dmdid]">
            <!-- 
               Ungültiger Wert im Attribut TYPE des primären mets:div in mets:structMap[@TYPE='LOGICAL'] im Teil eines mehrteiligen Dokuments
             -->
         <sch:report id="structMapLogical_25"
                     role="warn"
                     test="not($is_anchor) and not(@TYPE = ('volume', 'additional', 'illustration', 'map', 'folder', 'musical_notation', 'part'))"
                     properties="id"
                     see="https://deutsche-digitale-bibliothek.atlassian.net/wiki/x/uwreAg">Der Datensatz beschreibt einen Teil eines mehrteiligen Dokuments und muss daher im Attribut <sch:span class="monotype">TYPE</sch:span> des primären <sch:span class="monotype">mets:div</sch:span>-Element im Element <sch:span class="monotype">mets:structMap[@TYPE='LOGICAL']</sch:span> einen der folgenden Werte im Attribut <sch:span class="monotype">TYPE</sch:span> enthalten:
 * <sch:span class="monotype">additional</sch:span>
 * <sch:span class="monotype">folder</sch:span>
 * <sch:span class="monotype">illustration</sch:span>
 * <sch:span class="monotype">map</sch:span>
 * <sch:span class="monotype">musical_notation</sch:span>
 * <sch:span class="monotype">part</sch:span>
 * <sch:span class="monotype">volume</sch:span>
Die Verwendung ungültiger Attributwerte verhindert das Einspielen des Datensatzes in die DDB zurzeit noch nicht, eine Verschärfung dieser Anforderungen ist aber perspektivisch geplant. Wir bitten Sie daher, den Sachverhalt zu prüfen und die nötigen Korrekturen bis zur nächsten Datenlieferung vorzunehmen.
Weitere Informationen zu diesem Attribut und seinem Kontext finden Sie im DDB-METS/MODS-Anwendungsprofil auf den Seiten mets:structMap[@TYPE='LOGICAL'] (https://deutsche-digitale-bibliothek.atlassian.net/wiki/x/bAXeAg) und Hierarchietypen in METS/MODS (https://deutsche-digitale-bibliothek.atlassian.net/wiki/x/EQPeAg).</sch:report>
      </sch:rule>
   </sch:pattern>
   <sch:pattern>
      <sch:rule context="mets:mets/mets:structMap[@TYPE='LOGICAL']/mets:div[tokenize(@DMDID, ' ') = $work_dmdid]">
            <!-- 
               Ungültiger Wert im Attribut TYPE des primären mets:div in mets:structMap[@TYPE='LOGICAL'] in einteiligem Dokument
             -->
         <sch:report id="structMapLogical_26"
                     role="warn"
                     test="not($is_anchor) and not(@TYPE = ( 'letter', 'fascicle', 'fragment', 'manuscript', 'illustration', 'map', 'bundle', 'folder', 'monograph', 'musical_notation', 'privilege', 'text', 'verse' ))"
                     properties="id"
                     see="https://deutsche-digitale-bibliothek.atlassian.net/wiki/x/uwreAg">Der Datensatz beschreibt ein einteiliges Dokument und muss daher im Attribut <sch:span class="monotype">TYPE</sch:span> des primären <sch:span class="monotype">mets:div</sch:span>-Element im Element <sch:span class="monotype">mets:structMap[@TYPE='LOGICAL']</sch:span> einen entsprechenden Wert aus der Tabelle der Hierarchietypen in METS/MODS (Spalte B) (https://deutsche-digitale-bibliothek.atlassian.net/wiki/x/EQPeAg) enthalten.
Die Verwendung ungültiger Attributwerte verhindert das Einspielen des Datensatzes in die DDB zurzeit noch nicht, eine Verschärfung dieser Anforderungen ist aber perspektivisch geplant. Wir bitten Sie daher, den Sachverhalt zu prüfen und die nötigen Korrekturen bis zur nächsten Datenlieferung vorzunehmen.
Weitere Informationen zu diesem Attribut und seinem Kontext finden Sie im DDB-METS/MODS-Anwendungsprofil auf den Seiten mets:structMap[@TYPE='LOGICAL'] (https://deutsche-digitale-bibliothek.atlassian.net/wiki/x/bAXeAg) und Hierarchietypen in METS/MODS (https://deutsche-digitale-bibliothek.atlassian.net/wiki/x/EQPeAg).</sch:report>
      </sch:rule>
   </sch:pattern>
   <sch:pattern>
      <sch:rule context="mets:mets/mets:structMap[@TYPE='LOGICAL']//mets:div[tokenize(@DMDID, ' ') = $work_dmdid]//mets:div">
            <!-- 
               Ungültiger Wert im Attribut TYPE vom mets:div in mets:structMap[@TYPE='LOGICAL'] unselbständiger Dokumente
             -->
         <sch:report id="structMapLogical_27"
                     role="warn"
                     test="not($is_anchor) and not(@TYPE = ( 'additional', 'address', 'annotation', 'appendix', 'article', 'binding', 'bookplate', 'chapter', 'contained_work', 'dedication', 'entry', 'illustration', 'index', 'issue', 'letter', 'map', 'musical_notation', 'part', 'preface', 'printers_mark', 'privilege', 'review', 'section', 'stamp', 'contents', 'text', 'title_page', 'verse' ))"
                     properties="id"
                     see="https://deutsche-digitale-bibliothek.atlassian.net/wiki/x/uwreAg">Ein <sch:span class="monotype">mets:div</sch:span>-Element im Element <sch:span class="monotype">mets:structMap[@TYPE='LOGICAL']</sch:span>, das ein unselbständiges Dokument beschreibt, muss im Attribut <sch:span class="monotype">TYPE</sch:span> entsprechenden Wert aus der Tabelle der Hierarchietypen in METS/MODS (Spalte B) (https://deutsche-digitale-bibliothek.atlassian.net/wiki/x/EQPeAg) enthalten.
Die Verwendung ungültiger Attributwerte verhindert das Einspielen des Datensatzes in die DDB zurzeit noch nicht, eine Verschärfung dieser Anforderungen ist aber perspektivisch geplant. Wir bitten Sie daher, den Sachverhalt zu prüfen und die nötigen Korrekturen bis zur nächsten Datenlieferung vorzunehmen.
Weitere Informationen zu diesem Attribut und seinem Kontext finden Sie im DDB-METS/MODS-Anwendungsprofil auf den Seiten mets:structMap[@TYPE='LOGICAL'] (https://deutsche-digitale-bibliothek.atlassian.net/wiki/x/bAXeAg) und Hierarchietypen in METS/MODS (https://deutsche-digitale-bibliothek.atlassian.net/wiki/x/EQPeAg).</sch:report>
      </sch:rule>
   </sch:pattern>
   <sch:pattern>
      <sch:rule context="mets:mets/mets:structMap[@TYPE='LOGICAL']//mets:div">
            <!-- 
               mets:mptr in mets:div innerhalb von mets:structMap[@TYPE='LOGICAL'] mehrfach vorhanden
             -->
         <sch:report id="structMapLogical_28"
                     role="fatal"
                     test="mets:mptr[2]"
                     properties="id"
                     see="https://deutsche-digitale-bibliothek.atlassian.net/wiki/x/uwreAg">Das Element <sch:span class="monotype">mets:mptr</sch:span> im Element <sch:span class="monotype">mets:div</sch:span> innerhalb des Elements <sch:span class="monotype">mets:structMap[@TYPE='LOGICAL']</sch:span> darf nicht wiederholt werden.
Enthält <sch:span class="monotype">mets:div</sch:span> mehr als ein <sch:span class="monotype">mets:mptr</sch:span>, wird der Datensatz nicht in die DDB eingespielt.
Weitere Informationen zu diesem Attribut finden Sie im DDB-METS/MODS-Anwendungsprofil auf der Seite mets:structMap[@TYPE='LOGICAL'] (https://deutsche-digitale-bibliothek.atlassian.net/wiki/x/bAXeAg).</sch:report>
      </sch:rule>
   </sch:pattern>
   <sch:pattern>
      <sch:rule context="mets:mets">
            <!-- 
               mets:structMap[@TYPE='PHYSICAL'] fehlt
             -->
         <sch:assert id="structMapPhysical_01"
                     role="fatal"
                     test="$is_anchor or mets:structMap[@TYPE='PHYSICAL']"
                     see="https://deutsche-digitale-bibliothek.atlassian.net/wiki/x/uwreAg">Der Datensatz beschreibt ein Einteiliges Dokument bzw. einen Teil eines Mehrteiligen Dokuments und muss daher das Element <sch:span class="monotype">mets:structMap</sch:span> mit dem Attribut <sch:span class="monotype">TYPE</sch:span> mit dem Wert <sch:span class="monotype">PHYSICAL</sch:span> enthalten.
Fehlt ein entsprechendes <sch:span class="monotype">mets:structMap</sch:span>, wird der Datensatz nicht in die DDB eingespielt.
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
Ist dies nicht der Fall, wird der Datensatz nicht in die DDB eingespielt.
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
Ist dies nicht der Fall, wird der Datensatz nicht in die DDB eingespielt.
Weitere Informationen zu diesem Element und seinem Kontext finden Sie im DDB-METS/MODS-Anwendungsprofil auf der Seite mets:structMap[@TYPE='PHYSICAL'] (https://deutsche-digitale-bibliothek.atlassian.net/wiki/x/DgXeAg) und im Bereich Aufbau einer METS/MODS-Datei für die DDB (https://deutsche-digitale-bibliothek.atlassian.net/wiki/x/MwLeAg).</sch:assert>
      </sch:rule>
   </sch:pattern>
   <sch:pattern>
      <sch:rule context="mets:mets/mets:structMap[@TYPE='PHYSICAL']/mets:div | mets:mets/mets:structMap[@TYPE='PHYSICAL']/mets:div/mets:div">
            <!-- 
               mets:div in mets:structMap[@TYPE='PHYSICAL'] ohne eindeutigen Identifier im Attribut ID
             -->
         <sch:assert id="structMapPhysical_04"
                     role="fatal"
                     test="count(key('mets_ids', @ID)) = 1 and matches(@ID, '^[\i-[:]][\c-[:]]*$')"
                     properties="id"
                     see="https://deutsche-digitale-bibliothek.atlassian.net/wiki/x/uwreAg">In den obersten zwei Ebenen muss das Element <sch:span class="monotype">mets:div</sch:span> im Element <sch:span class="monotype">mets:structMap[@TYPE='PHYSICAL']</sch:span> das Attribut <sch:span class="monotype">ID</sch:span> mit einem im Datensatz eindeutigen Identifier enthalten. Dieser darf darüber hinaus keine ungültigen Zeichen enthalten.
Fehlt das Attribut <sch:span class="monotype">ID</sch:span> bzw. enthält es ungültige Zeichen, wird der Datensatz nicht in die DDB eingespielt.
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
Fehlt das Attribut <sch:span class="monotype">order</sch:span>, verhindert dies nicht das Einspielen des Datensatzes in die DDB, wir bitten Sie jedoch, den Sachverhalt zu prüfen und die nötigen Korrekturen bis zur nächsten Datenlieferung vorzunehmen.
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
                     see="https://deutsche-digitale-bibliothek.atlassian.net/wiki/x/uwreAg">Das Attribut <sch:span class="monotype">order</sch:span> vom Element <sch:span class="monotype">mets:div</sch:span> im Element <sch:span class="monotype">mets:structMap[@TYPE='PHYSICAL']</sch:span>muss als Wert einen Integer enthalten.
Die Verwendung eines ungültigen Wertes verhindert nicht das Einspielen des Datensatzes in die DDB, kann aber zu Darstellungsproblemen führen. Wir bitten Sie daher, den Sachverhalt zu prüfen und ggf. die nötigen Korrekturen bis zur nächsten Datenlieferung vorzunehmen.
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
Fehlt <sch:span class="monotype">FILEID</sch:span> in <sch:span class="monotype">mets:div[@TYPE='page']</sch:span>, wird der Datensatz nicht in die DDB eingespielt.
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
Fehlt <sch:span class="monotype">CONTENTIDS</sch:span> mit einem URN in einem <sch:span class="monotype">mets:div[@TYPE='page']</sch:span>, wird der Datensatz nicht in die DDB eingespielt.
Weitere Informationen zu diesem Attribut finden Sie im DDB-METS/MODS-Anwendungsprofil auf der Seite mets:structMap[@TYPE='PHYSICAL'] (https://deutsche-digitale-bibliothek.atlassian.net/wiki/x/DgXeAg).</sch:assert>
      </sch:rule>
   </sch:pattern>
   <sch:pattern>
      <sch:rule context="mets:mets/mets:structMap[@TYPE='PHYSICAL']/mets:div/mets:div">
            <!-- 
               mets:structMap[@TYPE='PHYSICAL'] enthält 3. mets:div-Ebene
             -->
         <sch:report id="structMapPhysical_09"
                     role="info"
                     test="mets:div"
                     properties="id"
                     see="https://deutsche-digitale-bibliothek.atlassian.net/wiki/x/uwreAg">Das Element <sch:span class="monotype">mets:structMap[@TYPE='PHYSICAL']</sch:span> enthält eine 3. Ebene des Elements <sch:span class="monotype">mets:div</sch:span>.
Die DDB berücksichtigt im Element <sch:span class="monotype">mets:structMap[@TYPE='PHYSICAL']</sch:span> nur die oberste <sch:span class="monotype">mets:div</sch:span>-Ebene als Sequenz der Einzelseiten und die darunter liegenden <sch:span class="monotype">mets:div</sch:span> für die Einzelseiten.
Weitere Informationen zu diesem Attribut finden Sie im DDB-METS/MODS-Anwendungsprofil auf der Seite mets:structMap[@TYPE='PHYSICAL'] (https://deutsche-digitale-bibliothek.atlassian.net/wiki/x/DgXeAg).</sch:report>
      </sch:rule>
   </sch:pattern>
   <sch:pattern>
      <sch:rule context="mets:mets">
            <!-- 
               mets:structLink fehlt
             -->
         <sch:assert id="structLink_01"
                     role="fatal"
                     test="$is_anchor or mets:structLink"
                     see="https://deutsche-digitale-bibliothek.atlassian.net/wiki/x/RwPeAg">Der Datensatz beschreibt ein Einteiliges Dokument bzw. einen Teil eines Mehrteiligen Dokuments und muss daher das Element <sch:span class="monotype">mets:structLink</sch:span> enthalten.
Fehlt <sch:span class="monotype">mets:structLink</sch:span>, wird der Datensatz nicht in die DDB eingespielt.
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
Ist dies nicht der Fall, wird der Datensatz nicht in die DDB eingespielt.
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
Fehlen diese Attribute, wird der Datensatz nicht in die DDB eingespielt.
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
Enthält ein <sch:span class="monotype">xlink:to</sch:span> eine ungültige Referenz, wird der Datensatz nicht in die DDB eingespielt.
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
                     test="@*[local-name() = 'from'][namespace-uri() = 'http://www.w3.org/1999/xlink']">Die Attribute <sch:span class="monotype">xlink:from</sch:span> und <sch:span class="monotype">xlink:to</sch:span> des Elements <sch:span class="monotype">mets:smLink</sch:span> verwenden einen ungültigen Namensraum. Der korrekte Namensraum für diese XLink-Attribute ist <sch:span class="monotype">http://www.w3.org/1999/xlink</sch:span>.
Verwenden die Attribute einen ungültigen Namensraum, ist eine Verarbeitung des Datensatzes nicht möglich und er wird nicht in die DDB eingespielt.</sch:assert>
      </sch:rule>
   </sch:pattern>
</sch:schema>
