<?xml version="1.0" encoding="UTF-8"?>
<sch:schema xmlns:sch="http://purl.oclc.org/dsdl/schematron"
            xmlns:xs="http://www.w3.org/2001/XMLSchema"
            xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
            schemaVersion="v2022-11-10T08:51:13"
            queryBinding="xslt2">
   <sch:title>Validierung der Fachstelle Bibliothek der Deutschen Digitalen Bibliothek für das METS/MODS Anwendungsprofil für digitalisierte Medien</sch:title>
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
         <license_uri>http://www.deutsche-digitale-bibliothek.de/lizenzen/rv-fz/</license_uri>
         <license_uri>https://www.deutsche-digitale-bibliothek.de/lizenzen/rv-fz/</license_uri>
         <license_uri>http://www.deutsche-digitale-bibliothek.de/lizenzen/rv-ez/</license_uri>
         <license_uri>https://www.deutsche-digitale-bibliothek.de/lizenzen/rv-ez/</license_uri>
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
         <marc_relator_code>aui</marc_relator_code>
         <marc_relator_code>aus</marc_relator_code>
         <marc_relator_code>aut</marc_relator_code>
         <marc_relator_code>bdd</marc_relator_code>
         <marc_relator_code>bjd</marc_relator_code>
         <marc_relator_code>bkd</marc_relator_code>
         <marc_relator_code>bkp</marc_relator_code>
         <marc_relator_code>blw</marc_relator_code>
         <marc_relator_code>bnd</marc_relator_code>
         <marc_relator_code>bpd</marc_relator_code>
         <marc_relator_code>brd</marc_relator_code>
         <marc_relator_code>brl</marc_relator_code>
         <marc_relator_code>bsl</marc_relator_code>
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
         <marc_relator_code>dbp</marc_relator_code>
         <marc_relator_code>dfd</marc_relator_code>
         <marc_relator_code>dfe</marc_relator_code>
         <marc_relator_code>dft</marc_relator_code>
         <marc_relator_code>dgg</marc_relator_code>
         <marc_relator_code>dgs</marc_relator_code>
         <marc_relator_code>dis</marc_relator_code>
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
         <marc_relator_code>fpy</marc_relator_code>
         <marc_relator_code>frg</marc_relator_code>
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
         <marc_relator_code>mod</marc_relator_code>
         <marc_relator_code>mon</marc_relator_code>
         <marc_relator_code>mrb</marc_relator_code>
         <marc_relator_code>mrk</marc_relator_code>
         <marc_relator_code>msd</marc_relator_code>
         <marc_relator_code>mte</marc_relator_code>
         <marc_relator_code>mtk</marc_relator_code>
         <marc_relator_code>mus</marc_relator_code>
         <marc_relator_code>nrt</marc_relator_code>
         <marc_relator_code>opn</marc_relator_code>
         <marc_relator_code>org</marc_relator_code>
         <marc_relator_code>orm</marc_relator_code>
         <marc_relator_code>osp</marc_relator_code>
         <marc_relator_code>oth</marc_relator_code>
         <marc_relator_code>own</marc_relator_code>
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
         <marc_relator_code>sad</marc_relator_code>
         <marc_relator_code>sce</marc_relator_code>
         <marc_relator_code>scl</marc_relator_code>
         <marc_relator_code>scr</marc_relator_code>
         <marc_relator_code>sds</marc_relator_code>
         <marc_relator_code>sec</marc_relator_code>
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
         <marc_relator_code>tcd</marc_relator_code>
         <marc_relator_code>tch</marc_relator_code>
         <marc_relator_code>ths</marc_relator_code>
         <marc_relator_code>tld</marc_relator_code>
         <marc_relator_code>tlp</marc_relator_code>
         <marc_relator_code>trc</marc_relator_code>
         <marc_relator_code>trl</marc_relator_code>
         <marc_relator_code>tyd</marc_relator_code>
         <marc_relator_code>tyg</marc_relator_code>
         <marc_relator_code>uvp</marc_relator_code>
         <marc_relator_code>vac</marc_relator_code>
         <marc_relator_code>vdg</marc_relator_code>
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
            value="//mets:mets/mets:structMap[@TYPE='LOGICAL']//mets:div[@DMDID = $work_dmdid]/@ADMID"/>
   <xsl:key name="mets_ids" match="mets:*[@ID]" use="@ID"/>
   <xsl:key name="dmdsec_ids" match="mets:dmdSec" use="@ID"/>
   <xsl:key name="amdsec_ids" match="mets:amdSec" use="@ID"/>
   <xsl:key name="fileGrp_DEFAULT_file_ids"
            match="mets:fileGrp[@USE='DEFAULT']/mets:file[@ID]"
            use="@ID"/>
   <xsl:key name="structMap_PHYSICAL_ids"
            match="mets:structMap[@TYPE='PHYSICAL']//mets:div"
            use="@ID"/>
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
            <!-- Der Datensatz enthält leere MODS-Elemente -->
         <sch:assert id="all_01"
                     role="warn"
                     test="string-length(normalize-space(text()[1])) &gt; 0 or element()"
                     properties="dmd_id">Jedes MODS-Element muss entweder Text als Inhalt haben oder ein Kindelement das Text enthält. Leere MODS-Elemente verhindern nicht das Einspielen der Daten in die DDB. Wir bitten Sie jedoch, diesen Fehler in den folgenden Datensätzen bis zur nächsten Datenlieferung zu beheben.</sch:assert>
      </sch:rule>
   </sch:pattern>
   <sch:pattern>
      <sch:rule context="mods:*[mods:*]">
            <!-- Text in Elementen, die Unterelemente enthalten -->
         <sch:report id="all_02"
                     role="error"
                     test="matches(string-join(text(), ''), '\w')"
                     properties="dmd_id">In MODS-Elementen, die Unterelemente enthalten, darf es keinen Text geben. Enthält ein solches Element Text, wird der Text bei der Bereinigung der Daten entfernt.</sch:report>
      </sch:rule>
   </sch:pattern>
   <sch:pattern>
      <sch:rule context="mets:xmlData/mods:mods/mods:*">
            <!-- Nicht erlaubte Elemente in der obersten MODS-Ebene -->
         <sch:assert id="all_03"
                     role="fatal"
                     test="./local-name() = ( 'titleInfo', 'name', 'typeOfResource', 'genre', 'originInfo', 'language', 'physicalDescription', 'abstract', 'tableOfContents', 'targetAudience', 'note', 'subject', 'classification', 'relatedItem', 'identifier', 'location', 'accessCondition', 'part', 'extension', 'recordInfo' )"
                     properties="dmd_id local_name">In der obersten MODS-Ebene werden MODS-Elemente verwendet, die dort nicht zulässig sind. Da diese zu Problemen in der Verarbeitung der Datensätze führen kann, werden sie nicht in die DDB eingespielt.</sch:assert>
      </sch:rule>
   </sch:pattern>
   <sch:pattern>
      <sch:rule context="mods:*/@valueURI">
            <!-- Der Wert im Attribut valueURI ist kein URL -->
         <sch:assert id="all_04"
                     role="error"
                     test="matches(., '^https?://[^ ]+$')"
                     properties="dmd_id">Das Attribut valueURI muss immer einen URL enthalten. Enthält es keinen URL, wird valueURI bei der Transformation der Daten entfernt.</sch:assert>
      </sch:rule>
   </sch:pattern>
   <sch:pattern>
      <sch:rule context="mets:xmlData/mods:mods/mods:*//mods:mods">
            <!-- mods:mods enthält weitere mods:mods Elemente -->
         <sch:report id="all_05"
                     role="error"
                     test=".[not(./ancestor::mods:extension)]"
                     properties="dmd_id">Das mods:mods Wurzelelement der mets:dmdSec enthält weitere mods:mods Elemente, die dort nicht zulässig sind. Sie werden bei der Transformation der Daten entfernt.</sch:report>
      </sch:rule>
   </sch:pattern>
   <sch:pattern>
      <sch:rule context="mods:*[starts-with(@valueURI, 'http://d-nb.info/gnd/') or starts-with(@valueURI, 'https://d-nb.info/gnd/')]">
            <!-- Ungültiger GND-URI im Attribut valueURI -->
         <sch:assert id="all_06"
                     role="error"
                     test="matches(substring-after(@valueURI, '/gnd/'), '^[0-9]*-[0-9xX]{1}$|^[0-9xX]*$')"
                     properties="dmd_id">Der Datensatz enthält valueURI Attribute mit einer ungültigen GND-URI. Diese valueURI-Attribute werden bei der Transformation der Daten entfernt.</sch:assert>
      </sch:rule>
   </sch:pattern>
   <sch:pattern>
      <sch:rule context="mets:dmdSec[@ID=$work_dmdid]/mets:mdWrap/mets:xmlData/mods:mods">
            <!-- Der Titel des Werks fehlt -->
         <sch:assert id="titleInfo_01"
                     role="fatal"
                     test="mods:titleInfo[not(@type)][1]/mods:title[1][string-length(normalize-space(text())) &gt; 0] or mods:titleInfo[@type='uniform'][1]/mods:title[1][string-length(normalize-space(text())) &gt; 0] or mods:relatedItem[@type='host']"
                     properties="dmd_id"
                     see="https://wiki.deutsche-digitale-bibliothek.de/display/DFD/titleInfo">Die primäre mets:dmdSec von Monographien, Handschriften u.Ä. muss ein mods:titleInfo ohne Attribut type oder mit dem Attribut type mit dem Wert "uniform" besitzen. Darüber hinaus muss das mods:titleInfo das Unterelement mods:title enthalten. Bände von mehrteiligen Monografien und Zeitschriften können alternativ ein mods:relatedItem type="host" enthalten, das auf den Datensatz des übergeordneten Werks verweist. Ist dies nicht der Fall, wird der METS-Datensatz nicht in die DDB eingespielt. Weitere Informationen zu diesem Element s. MODS-Anwendungsprofil Kapitel 2.1</sch:assert>
      </sch:rule>
   </sch:pattern>
   <sch:pattern>
      <sch:rule context="mets:dmdSec[@ID!=$work_dmdid]/mets:mdWrap/mets:xmlData/mods:mods">
            <!-- Teile eines Werkes haben keinen Titel -->
         <sch:assert id="titleInfo_02"
                     role="error"
                     test="mods:titleInfo[not(@type)][1]/mods:title[1][string-length(normalize-space(text())) &gt; 0]"
                     properties="dmd_id"
                     see="https://wiki.deutsche-digitale-bibliothek.de/display/DFD/titleInfo">Die bibliographische Beschreibung von Teilen eines Werks wird nur dann in die DDB eingespielt, wenn mods:titleInfo/mods:title mit einem aussagekräftigen Titel vorhanden ist. Ist dies nicht der Fall, wird die mets:dmdSec, die die Beschreibung des Teils enthält, aus dem METS-Datensatz entfernt. Weitere Informationen zu diesem Element s. MODS-Anwendungsprofil Kapitel 2.1</sch:assert>
      </sch:rule>
   </sch:pattern>
   <sch:pattern>
      <sch:rule context="mets:dmdSec/mets:mdWrap/mets:xmlData/mods:mods">
            <!-- Kein eindeutiger Haupttitel vorhanden -->
         <sch:report id="titleInfo_03"
                     role="error"
                     test="mods:titleInfo[not(@type)][2] or (not(mods:titleInfo[not(@type)]) and mods:titleInfo[@type='uniform'][2])"
                     properties="dmd_id"
                     see="https://wiki.deutsche-digitale-bibliothek.de/display/DFD/titleInfo">Für die Anzeige der Daten in der DDB wird ein eindeutiger Haupttitel benötigt. Dieser wird sowohl für die Anzeige in der Trefferliste als auch für die Überschrift in der Anzeige des Objekts benötigt. Dieser Haupttitel muss in dem mods:titleInfo stehen, das kein Attribut type bzw. ein Attribut type mit dem Wert "uniform" besitzt. Damit der Haupttitel eindeutig identifiziert werden kann, ist das nur einmal erlaubt. Ist mehr als ein mods:titleInfo ohne Attribut bzw. mit dem Attribut type mit dem Wert "uniform" vorhanden, wird bei der Transformation der erste entsprechende Titel als Haupttitel übernommen. Alle anderen mods:titleInfo ohne Attribut type werden bei der Transformation der Daten entfernt. Weitere Informationen zu diesem Element s. MODS-Anwendungsprofil Kapitel 2.1.1</sch:report>
      </sch:rule>
   </sch:pattern>
   <sch:pattern>
      <sch:rule context="mets:xmlData/mods:mods/mods:titleInfo[@type]">
            <!-- Falsche Attributwerte in mods:titleInfo -->
         <sch:assert id="titleInfo_04"
                     role="error"
                     test="./@type = ('abbreviated', 'translated', 'alternative', 'uniform')"
                     properties="dmd_id type"
                     see="https://wiki.deutsche-digitale-bibliothek.de/display/DFD/titleInfo">In mods:titleInfo dürfen in dem Attribut type nur die im MODS-Anwendungsprofil genannten Werte verwendet werden. Diese Werte sind: "abbreviated", "translated", "alternative", "uniform". Werden andere Werte verwendet, wird mods:titleInfo bei der Bereinigung der Daten entfernt. Weitere Informationen zu diesem Element s. MODS-Anwendungsprofil Kapitel 2.1.1</sch:assert>
      </sch:rule>
   </sch:pattern>
   <sch:pattern>
      <sch:rule context="mets:xmlData/mods:mods/mods:titleInfo">
            <!-- Kein eindeutiger Titel vorhanden -->
         <sch:report id="titleInfo_06"
                     role="error"
                     test="mods:title[2]"
                     properties="dmd_id"
                     see="https://wiki.deutsche-digitale-bibliothek.de/display/DFD/titleInfo">Innerhalb des Elements mods:titleInfo ist mods:title nicht wiederholbar. Ist mehr als ein mods:title vorhanden, wird bei der Transformation das erste Vorkommen innerhalb von mods:titleInfo übernommen, alle anderen mods:title werden entfernt. Weitere Informationen zu diesem Element s. MODS-Anwendungsprofil Kapitel 2.1.2.1</sch:report>
      </sch:rule>
   </sch:pattern>
   <sch:pattern>
      <sch:rule context="mets:xmlData/mods:mods/mods:titleInfo">
            <!-- Wiederholung von Bestandteilen, die nicht in der alphabetischen Sortierung berücksichtigt werden sollen, in mods:titleInfo -->
         <sch:report id="titleInfo_07"
                     role="error"
                     test="mods:nonSort[2]"
                     properties="dmd_id"
                     see="https://wiki.deutsche-digitale-bibliothek.de/display/DFD/titleInfo">Innerhalb des Elements mods:titleInfo ist mods:nonSort nicht wiederholbar. Ist mehr als ein mods:nonSort vorhanden, wird bei der Transformation das erste Vorkommen innerhalb von mods:titleInfo übernommen, alle anderen mods:nonSort werden entfernt. Weitere Informationen zu diesem Element s. MODS-Anwendungsprofil Kapitel 2.1.2.2</sch:report>
      </sch:rule>
   </sch:pattern>
   <sch:pattern>
      <sch:rule context="mets:xmlData/mods:mods/mods:titleInfo[not(@type='abbreviated')]/mods:title">
            <!-- Kein aussagekräftiger Titel -->
         <sch:assert id="titleInfo_08"
                     role="warn"
                     test="string-length(text()[1]) &gt; 2"
                     properties="dmd_id"
                     see="https://wiki.deutsche-digitale-bibliothek.de/display/DFD/titleInfo">Der Text in mods:title ist als Titel nicht aussagekräftig. In der DDB erzeugt jede mets:dmdSec ein Objekt und der Wert in mods:title wird prominent und ggf. unabhängig vom Gesamtobjekt in der Trefferliste angezeigt. Daher erschweren nicht aussagekräftige Titel die Nutzung Ihrer Objekte in der DDB. Handelt es sich bei dem Text in mods:title um eine Abkürzung verwenden Sie bitte mods:titleInfo[@type='abbreviated']. Enthält mods:title eine Bandzählung muss diese in mods:part angegeben werden. Nicht aussagekräftige Titel verhindern nicht das Einspielen der Daten in die DDB, wir bitten Sie jedoch zu prüfen, ob es sich tatsächlich um einen Titel handelt und ggf. die nötigen Korrekturen bis zur nächsten Datenlieferung vorzunehmen. Weitere Informationen zu diesem Element s. MODS-Anwendungsprofil Kapitel 2.1</sch:assert>
      </sch:rule>
   </sch:pattern>
   <sch:pattern>
      <sch:rule context="mets:xmlData/mods:mods/mods:name">
            <!-- Keine Namensangabe in mods:name vorhanden -->
         <sch:assert id="name_01"
                     role="error"
                     test="mods:namePart[string-length(text()[1]) &gt; 0] or mods:displayForm[string-length(text()[1]) &gt; 0]"
                     properties="dmd_id"
                     see="https://wiki.deutsche-digitale-bibliothek.de/display/DFD/name">mods:name muss entweder mods:namePart oder mods:displayForm enthalten. Ist keines der beiden Elemente vorhanden, wird mods:name bei der Transformation aus den Daten entfernt. Weitere Informationen zu diesem Element s. MODS-Anwendungsprofil Kapitel 2.2</sch:assert>
      </sch:rule>
   </sch:pattern>
   <sch:pattern>
      <sch:rule context="mets:xmlData/mods:mods/mods:name">
            <!-- Wiederholung der Anzeigeform des Namens -->
         <sch:report id="name_02"
                     role="error"
                     test="mods:displayForm[2]"
                     properties="dmd_id"
                     see="https://wiki.deutsche-digitale-bibliothek.de/display/DFD/name">mods:displayForm enthält den Namen einer Person oder Organisation in der Form, in der er in der DDB angezeigt werden soll. Da nur eine Anzeigeform berücksichtigt werden kann, darf dieses Element innerhalb von mods:name nicht wiederholt werden. Enthält mods:name mehr als ein mods:displayForm, wird das erste Vorkommen übernommen, alle anderen werden bei der Transformation der Daten entfernt. Weitere Informationen zu diesem Element s. MODS-Anwendungsprofil Kapitel 2.2.2.2</sch:report>
      </sch:rule>
   </sch:pattern>
   <sch:pattern>
      <sch:rule context="mets:xmlData/mods:mods/mods:name">
            <!-- mods:name enthält wahrscheinlich Angaben zu mehreren Personen -->
         <sch:report id="name_03"
                     role="info"
                     test="mods:displayForm[contains(text()[1], ';')] or mods:namePart[contains(text()[1], ';')]"
                     properties="dmd_id"
                     see="https://wiki.deutsche-digitale-bibliothek.de/display/DFD/name">Für jede Person oder Organisation, die an einem Werk beteiligt war, muss jeweils ein eigenes mods:name angelegt werden. Der Name der Person oder Organisation steht dabei entweder in mods:namePart oder in mods:displayForm. Wenn in einem dieser Elemente Trennungszeichen wie ein Semikolon vorkommen, gehen wir davon aus, dass hier mehr als ein Personenname enthalten ist. In diesem Fall wird mods:name bei der Bereinigung der Daten entfernt. Weitere Informationen zu diesem Element s. MODS-Anwendungsprofil Kapitel 2.2</sch:report>
      </sch:rule>
   </sch:pattern>
   <sch:pattern>
      <sch:rule context="mets:xmlData/mods:mods/mods:name[not(@type)]">
            <!-- Das Attribut type in mods:name ist nicht vorhanden -->
         <sch:assert id="name_04"
                     role="warn"
                     test="@type"
                     properties="dmd_id"
                     see="https://wiki.deutsche-digitale-bibliothek.de/display/DFD/name">MODS unterscheidet zwischen Namen von Personen, Körperschaften u.a. Diese Unterscheidung erfolgt durch das Attribut type im Element mods:name. Die laut Anwendungsprofil zulässigen Werte des Attributs type sind: "personal" für Personen, "corporate" für Organisationen, "conference" für Konferenzen, "family" für Familien. Das Fehlen des Attributs type verhindert nicht das Einspielen der Daten in die DDB, wir bitten Sie jedoch, den Sachverhalt zu prüfen und die nötigen Korrekturen bis zur nächsten Datenlieferung vorzunehmen. Weitere Informationen zu diesem Element s. MODS-Anwendungsprofil Kapitel 2.2</sch:assert>
      </sch:rule>
      <sch:rule context="mets:xmlData/mods:mods/mods:name">
            <!-- Falsche Attributwerte in mods:name -->
         <sch:assert id="name_05"
                     role="warn"
                     test="@type = ('personal', 'corporate', 'family', 'conference')"
                     properties="dmd_id type"
                     see="https://wiki.deutsche-digitale-bibliothek.de/display/DFD/name">MODS unterscheidet zwischen Namen von Personen, Körperschaften u.a. Diese Unterscheidung erfolgt durch das Attribut type im Element mods:name. Die laut Anwendungsprofil zulässigen Werte des Attributs type sind: "personal" für Personen, "corporate" für Organisationen, "conference" für Konferenzen, "family" für Familien. Die Verwendung falscher Attributwerte verhindert nicht das Einspielen der Daten in die DDB, wir bitten Sie jedoch, den Sachverhalt zu prüfen und die nötigen Korrekturen bis zur nächsten Datenlieferung vorzunehmen. Weitere Informationen zu diesem Element s. MODS-Anwendungsprofil Kapitel 2.2.1</sch:assert>
      </sch:rule>
   </sch:pattern>
   <sch:pattern>
      <sch:rule context="mets:xmlData/mods:mods/mods:name[@type = ('corporate', 'family', 'conference')]">
            <!-- Wiederholung von mods:namePart in mods:namePart bei Körperschaften -->
         <sch:report id="name_06"
                     role="error"
                     test="mods:namePart[2]"
                     properties="dmd_id"
                     see="https://wiki.deutsche-digitale-bibliothek.de/display/DFD/name">Wenn das Attribut type in mods:name den Wert "corporate", "conference" oder "family" hat, darf mods:namePart innerhalb von mdos:name nicht wiederholt werden. Für jede Körperschaft, Konferenz oder Familie muss ein eigenes mods:name vorhanden sein. Enthält mods:name in diesen Fällen mehr als ein mods:namePart, wird bei der Bereinigung der Daten nur das erste mods:namePart übernommen, die anderen mods:namePart werden entfernt. Weitere Informationen zu diesem Element s. MODS-Anwendungsprofil Kapitel 2.2</sch:report>
      </sch:rule>
   </sch:pattern>
   <sch:pattern>
      <sch:rule context="mets:xmlData/mods:mods/mods:name[@type='personal']/mods:namePart[not(@type)]">
            <!-- Das Attribut type fehlt in mods:namePart für Personennamen -->
         <sch:assert id="name_07"
                     role="warn"
                     test="@type"
                     properties="dmd_id"
                     see="https://wiki.deutsche-digitale-bibliothek.de/display/DFD/name">Bei Personennamen (mods:name type="personal") sollte mods:namePart wiederholt werden, um die verschiedenen Bestandteile eines persönlichen Namens zu unterscheiden. Es ist daher verpflichtend, in diesen Fällen das Attribut type in mods:namePart zu verwenden. Folgende Werte sind in diesem Attribut type erlaubt: "family" für den Nachnamen, "given" für den Vornamen, "termsOfAddress" für Titel und andere Namenszusätze, "date" für Lebensdaten der Person. Sollen die Bestandteile eines Namens in der DDB in einer bestimmten Reihenfolge angezeigt werden, verwenden Sie bitte mods:displayForm. Die Daten werden in diesen Fällen auch ohne Attribut type in die DDB eingespielt, wir bitten Sie jedoch, den Sachverhalt zu prüfen und die nötigen Korrekturen bis zur nächsten Datenlieferung vorzunehmen. Weitere Informationen zu diesem Element s. MODS-Anwendungsprofil Kapitel 2.2.2.1</sch:assert>
      </sch:rule>
      <sch:rule context="mets:xmlData/mods:mods/mods:name[@type='personal']/mods:namePart">
            <!-- Falsche Attributwerte in mods:namePart für Personennamen -->
         <sch:assert id="name_08"
                     role="error"
                     test="@type = ('date', 'family', 'given', 'termsOfAddress')"
                     properties="dmd_id type"
                     see="https://wiki.deutsche-digitale-bibliothek.de/display/DFD/name">Bei Personennamen (mods:name type="personal") sollte mods:namePart wiederholt werden, um die verschiedenen Bestandteile eines persönlichen Namens zu unterscheiden. Es ist daher verpflichtend, in diesen Fällen das Attribut type in mods:namePart zu verwenden. Folgende Werte sind in diesem Attribut type erlaubt: "family" für den Nachnamen, "given" für den Vornamen, "termsOfAddress" für Titel und andere Namenszusätze, "date" für Lebensdaten der Person. Wird in dem Attribut type in mods:namePart ein anderer Wert verwendet, dann wird mods:namePart bei der Transformation entfernt. Weitere Informationen zu diesem Element s. MODS-Anwendungsprofil Kapitel 2.2.2.1</sch:assert>
      </sch:rule>
   </sch:pattern>
   <sch:pattern>
      <sch:rule context="mets:xmlData/mods:mods/mods:name/mods:*[@valueURI]">
            <!-- Falsche Verwendung von URIs -->
         <sch:report id="name_09"
                     role="error"
                     test="@valueURI"
                     properties="dmd_id"
                     see="https://wiki.deutsche-digitale-bibliothek.de/display/DFD/name">URIs zu Personen, Organisationen, Familien und Konferenzen müssen in dem Attribut valueURI in mods:name angegeben werden. Ist dies nicht der Fall, wird der URI bei der Transformation der Daten entfernt. Weitere Informationen zu diesem Element s. MODS-Anwendungsprofil Kapitel 2.2.1</sch:report>
      </sch:rule>
      <sch:rule context="mets:xmlData/mods:mods/mods:name[@valueURI]">
            <!-- URI ist kein GND-URI -->
         <sch:assert id="name_10"
                     role="error"
                     test="starts-with(@valueURI, 'http://d-nb.info/gnd/') or starts-with(@valueURI, 'https://d-nb.info/gnd/')"
                     properties="dmd_id"
                     see="https://wiki.deutsche-digitale-bibliothek.de/display/DFD/name">Die URIs, die in dem Attribut valueURI in mods:name verwendet werden, werden in der DDB nur dann ausgewertet, wenn es sich um http-URIs der GND handelt. Handelt es sich nicht um einen GND-URI, wird der URI bei der Transformation der Daten entfernt.</sch:assert>
      </sch:rule>
   </sch:pattern>
   <sch:pattern>
      <sch:rule context="mets:xmlData/mods:mods/mods:name[not(mods:role/mods:roleTerm)]">
            <!-- Die Angabe der Rolle fehlt in mods:name -->
         <sch:assert id="name_11"
                     role="warn"
                     test="mods:role/mods:roleTerm"
                     properties="dmd_id"
                     see="https://wiki.deutsche-digitale-bibliothek.de/display/DFD/name">Jedes mods:name muss mindestens ein mods:role mit dem Unterelement mods:roleTerm enthalten, in dem die Rolle beschrieben wird, die eine Person oder Organisation bei der Entstehung des Werks hatte. Die Daten werden auch ohne mods:role in die DDB eingespielt, wir bitten Sie jedoch, den Sachverhalt zu prüfen und die nötigen Korrekturen bis zur nächsten Datenlieferung vorzunehmen. Weitere Informationen zu diesem Element s. MODS-Anwendungsprofil Kapitel 2.2.2.3</sch:assert>
      </sch:rule>
      <sch:rule context="mets:xmlData/mods:mods/mods:name/mods:role[not(mods:roleTerm[@type='code'][@authority='marcrelator'])]">
            <!-- Attribut type fehlt in mods:roleTerm -->
         <sch:assert id="name_12"
                     role="error"
                     test="mods:roleTerm[@type='code'][@authority='marcrelator']"
                     properties="dmd_id"
                     see="https://wiki.deutsche-digitale-bibliothek.de/display/DFD/name">In jedem mods:role muss mindestens ein mods:roleTerm mit dem Attribut type und dem Wert "code" , sowie das Attribut authority mit dem Wert "marcrelator" enthalten sein. Ist dies nicht der Fall, wird mods:role bei der Transformation der Daten entfernt. Weitere Informationen zu diesem Element s. MODS-Anwendungsprofil Kapitel 2.2.2.4.1</sch:assert>
      </sch:rule>
      <sch:rule context="mets:xmlData/mods:mods/mods:name/mods:role/mods:roleTerm[@type='code'][@authority='marcrelator']">
            <!-- Falscher Relator-Code im Attribut bei der Verwendung von mods:roleTerm -->
         <sch:assert id="name_13"
                     role="error"
                     test="key('marc_relator_codes', text()[1], $marc_relator_codes)"
                     properties="dmd_id text"
                     see="https://wiki.deutsche-digitale-bibliothek.de/display/DFD/name">Für die Beschreibung der Rolle, die eine Person oder Organisation bei der Entstehung des Werks hatte, müssen die Codes der "MARC Code List for Relators" verwendet werden. Diese müssen in mods:roleTerm type="code" enthalten sein. Ist dies nicht der Fall, wird mods:role bei der Transformation der Daten entfernt. Weitere Informationen zu diesem Element s. MODS-Anwendungsprofil Kapitel 2.2.2.4.1</sch:assert>
      </sch:rule>
   </sch:pattern>
   <sch:pattern>
      <sch:rule context="mets:xmlData/mods:mods/mods:originInfo">
            <!-- Wiederholung von Datumsangaben ohne Attribut point in mods:originInfo -->
         <sch:report id="originInfo_01"
                     role="error"
                     test="mods:dateIssued[not(@point)][position() &gt; 1] or mods:dateCreated[not(@point)][position() &gt; 1] or mods:dateCaptured[not(@point)][position() &gt; 1] or (mods:dateIssued[not(@point)] and mods:dateIssued[@point]) or (mods:dateCreated[not(@point)] and mods:dateCreated[@point]) or (mods:dateCaptured[not(@point)] and mods:dateCaptured[@point])"
                     properties="dmd_id"
                     see="https://wiki.deutsche-digitale-bibliothek.de/display/DFD/originInfo">mods:dateIssued darf innerhalb von mods:originInfo nur wiederholt werden, wenn es sich um die Beschreibung einer Zeitspanne handelt. Dafür muss das Attribut point mit den Werten "start" und "end" vorhanden sein. Dasselbe gilt für mods:dateCreated und mods:dateCaptured. Fehlt das Attribut point, wird bei der Transformation der Daten die erste Datumsangabe übernommen, alle anderen werden entfernt. Weitere Informationen zu diesem Element s. MODS-Anwendungsprofil Kapitel 2.4.2.4 – 2.4.2.6</sch:report>
      </sch:rule>
   </sch:pattern>
   <sch:pattern>
      <sch:rule context="mets:xmlData/mods:mods/mods:originInfo/mods:dateIssued | mets:xmlData/mods:mods/mods:originInfo/mods:dateCreated | mets:xmlData/mods:mods/mods:originInfo/mods:dateCaptured">
            <!-- Datumsangaben sind nicht standardkonform -->
         <sch:assert id="originInfo_02"
                     role="info"
                     test="matches(text()[1], '^((-\d\d\d\d+)|(\d\d\d\d))(-\d\d)?(-\d\d)?$')"
                     properties="dmd_id"
                     see="https://wiki.deutsche-digitale-bibliothek.de/display/DFD/originInfo">Die Datumsangaben in mods:dateIssued, mods:dateCreated und mods:dateCaptured müssen ISO 8601 konform sein. Ist dies nicht der Fall, kann es vorkommen, dass bei der Transformation der Daten Datumsangaben verloren gehen.  Weitere Informationen zu diesem Element s. MODS-Anwendungsprofil Kapitel 2.4.2.4 – 2.4.2.6</sch:assert>
      </sch:rule>
   </sch:pattern>
   <sch:pattern>
      <sch:rule context="mets:xmlData/mods:mods/mods:originInfo/mods:place/mods:placeTerm">
            <!-- mods:place enthält wahrscheinlich Angaben zu verschiedenen Orten -->
         <sch:report id="originInfo_03"
                     role="error"
                     test="contains(text()[1], ';')"
                     properties="dmd_id"
                     see="https://wiki.deutsche-digitale-bibliothek.de/display/DFD/originInfo">Für jede Ortsangabe in mods:originInfo muss jeweils ein eigenes mods:place/mods:placeTerm angelegt werden. Wenn in mods:placeTerm Trennungszeichen wie Semikolon vorkommen, wird bei der Bereinigung der Daten davon ausgegangen, dass hier mehr als ein Ortsname enthalten ist. In diesem Fall wird mods:place bei der Bereinigung der Daten entfernt. Weitere Informationen zu diesem Element s. MODS-Anwendungsprofil Kapitel 2.4.2.1</sch:report>
      </sch:rule>
   </sch:pattern>
   <sch:pattern>
      <sch:rule context="mets:xmlData/mods:mods/mods:originInfo/mods:place/mods:placeTerm">
            <!-- mods:place enthält wahrscheinlich Angaben zu Verlegern -->
         <sch:report id="originInfo_04"
                     role="error"
                     test="contains(text()[1], ':')"
                     properties="dmd_id"
                     see="https://wiki.deutsche-digitale-bibliothek.de/display/DFD/originInfo">Angaben zu Verlegern dürfen nicht in mods:place/mods:placeTerm stehen, sondern müssen in mods:publisher abgelegt werden. Handelt es sich um mehrere Verleger, muss mods:publisher wiederholt werden. Wenn in mods:placeTerm Trennungszeichen wie ein Doppelpunkt vorkommen, wird bei der Bereinigung der Daten davon ausgegangen, dass hier neben dem Ortsnamen auch ein Verlagsangabe vorhanden ist. In diesem Fall wird mods:place bei der Bereinigung der Daten entfernt. Weitere Informationen zu diesem Element s. MODS-Anwendungsprofil Kapitel 2.4.2.1 und 2.4.2.3</sch:report>
      </sch:rule>
   </sch:pattern>
   <sch:pattern>
      <sch:rule context="mets:xmlData/mods:mods/mods:originInfo[ not(../mods:originInfo[@eventType='digitization'] or ../mods:originInfo[mods:edition[text()[1] = '[Electronic ed.]']]) and (mods:dateIssued[number(substring(text()[1], 1, 4)) &gt; 1999] or mods:dateCreated[number(substring(text()[1], 1, 4)) &gt; 1999]) ]">
            <!-- Die Datumsangabe für die digitale Ausgabe ist nicht eindeutig -->
         <sch:assert id="originInfo_05"
                     role="warn"
                     test="mods:edition[text()[1] = '[Electronic ed.]'] or ./@eventType='digitization'"
                     properties="dmd_id"
                     see="https://wiki.deutsche-digitale-bibliothek.de/display/DFD/originInfo">Wenn das Erscheinungsdatum in mods:dateIssued bzw. das Entstehungsdatum in mods:dateCreated später als 2000 liegt, ist es wahrscheinlich, dass es sich nicht um das Datum der originalen Ausgabe handelt, sondern um das Entstehungsdatum der digitalen Ausgabe. In diesem Fall muss das Datum in einem eigenen mods:originInfo enthalten sein, das den eventType="digitization" enthält sowie das Element mods:edition mit dem Wert (Electronic ed.]. Dieser Fehler verhindert nicht das Einspielen der Daten in die DDB, wir bitten Sie jedoch, zu prüfen, ob es sich tatsächlich um das richtige Datum handelt und ggf. die nötigen Korrekturen bis zur nächsten Datenlieferung vorzunehmen. Weitere Informationen zu diesem Element s. MODS-Anwendungsprofil Kapitel 2.4.1</sch:assert>
      </sch:rule>
   </sch:pattern>
   <sch:pattern>
      <sch:rule context="mets:xmlData/mods:mods/mods:originInfo/mods:place">
            <!-- mods:placeTerm fehlt -->
         <sch:assert id="originInfo_06"
                     role="error"
                     test="mods:placeTerm[@type='text']"
                     properties="dmd_id"
                     see="https://wiki.deutsche-digitale-bibliothek.de/display/DFD/originInfo">Ortsnamen stehen in dem Unterelement mods:placeTerm, das in mods:place enthalten ist. Dieses Unterelement muss zudem das Attribut type="text" enthalten. Ist dies nicht der Fall, wird mods:place bei der Transformation der Daten entfernt. Weitere Informationen zu diesem Element s. MODS-Anwendungsprofil Kapitel 2.4.2.2.1</sch:assert>
      </sch:rule>
   </sch:pattern>
   <sch:pattern>
      <sch:rule context="mets:xmlData/mods:mods/mods:originInfo/mods:*[local-name() = ('dateIssued', 'dateCreated', 'dateOther') and namespace-uri() = 'http://www.loc.gov/mods/v3'][@point]">
         <sch:let name="point" value="./@point"/>
         <sch:let name="name" value="./local-name()"/>
         <!-- Wiederholung von Datumsangaben mit identischem Wert im Attribut point in mods:originInfo -->
         <sch:report id="originInfo_15"
                     role="error"
                     test="./preceding-sibling::*[local-name() = $name and namespace-uri() = 'http://www.loc.gov/mods/v3'][@point = $point]"
                     properties="dmd_id"
                     see="https://wiki.deutsche-digitale-bibliothek.de/display/DFD/originInfo">Die Elemente mods:dateIssued, mods:dateCreated und mods:dateOther dürfen innerhalb eines Elements mods:originInfo nicht mit dem gleichen Wert im Attribut point wiederholt werden. Wird eines dieser Elemente mit dem gleichen Wert in point wiederholt, werden alle weiteren Vorkommen (XML-Reihenfolge) bei der Bereinigung der Daten entfernt. Weitere Informationen zu diesem Element s. MODS-Anwendungsprofil Kapitel 2.4.2.4 – 2.4.2.6</sch:report>
      </sch:rule>
   </sch:pattern>
   <sch:pattern>
      <sch:rule context="mets:dmdSec[@ID=$work_dmdid]/mets:mdWrap/mets:xmlData/mods:mods">
            <!-- Die Angabe der Sprache fehlt -->
         <sch:assert id="language_01"
                     role="warn"
                     test="mods:language/mods:languageTerm[text() != 'und'] or ancestor::mets:mets/mets:structMap[@TYPE='LOGICAL']//mets:div[contains(@DMDID, $work_dmdid)][@TYPE = ('image', 'photograph', 'illustration', 'map', 'poster', 'plan')]"
                     properties="dmd_id"
                     see="https://wiki.deutsche-digitale-bibliothek.de/display/DFD/language">Die Sprache muss in mods:language/mods:languageTerm angegeben werden, wenn es sich bei der Ressource überwiegend um Text handelt. Dabei sind die Codes des ISO 639-2b Standards zu verwenden. Fehlt die Angabe der Sprache, ist der Sprachcode "und" (Nicht zu entscheiden) bzw. entspricht die Sprachangabe nicht ISO 639-2b, können die betroffenen Datensätze nicht an Europeana weitergegeben werden. Bitte beachten: Im Kontext der DDB und Europeana fallen auch Noten unter den Dokumenttyp Text. Falls die Noten keinen Sprachtext enthalten, verwenden Sie bitte den Code "zxx" für "Kein linguistischer Inhalt" (s. \url{http://id.loc.gov/vocabulary/iso639-2/zxx}). Weitere Informationen zu diesem Element s. MODS-Anwendungsprofil Kapitel 2.5</sch:assert>
      </sch:rule>
   </sch:pattern>
   <sch:pattern>
      <sch:rule context="mets:xmlData/mods:mods/mods:language/mods:languageTerm">
            <!-- Verwendung eines falschen Sprachcodes -->
         <sch:assert id="language_02"
                     role="error"
                     test="key('iso639-1_codes', text()[1], $iso639-1_codes) or key('iso639-2_codes', text()[1], $iso639-2_codes)"
                     properties="dmd_id text"
                     see="https://wiki.deutsche-digitale-bibliothek.de/display/DFD/language">mods:language/mods:languageTerm muss einen Code aus ISO 639-2 enthalten. Sollen mehrere Sprachen angegeben werden, muss mods:language/mods:languageTerm wiederholt werden. Die Angaben von mehreren Sprachen in einem mod:languageTerm Element ist nicht erlaubt. Handelt es sich bei dem Eintrag in mods:language/mods:languageTerm um einen anderen Wert als die oben genannten Codes bzw. sind mehrere Codes enthalten, wird mods:language bei der Bereinigung der Daten entfernt. Weitere Informationen zu diesem Element s. MODS-Anwendungsprofil Kapitel 2.5.2.1</sch:assert>
      </sch:rule>
   </sch:pattern>
   <sch:pattern>
      <sch:rule context="mets:xmlData/mods:mods/mods:physicalDescription/mods:extent">
            <!-- Falsche Angaben in mods:extent -->
         <sch:report id="physicalDescription_01"
                     role="error"
                     test="contains(lower-case(text()), 'online') or contains(lower-case(text()[1]), 'electronic')"
                     properties="dmd_id"
                     see="https://wiki.deutsche-digitale-bibliothek.de/display/DFD/physicalDescription">mods:extent sollte die Umfangsangabe des digitalisierten Originals enthalten. Wenn in mods:extent Begriffe wie "Online" oder "Electronic" enthalten sind, wird davon ausgegangen, dass es sich um Angaben zum Digitalisat handelt. In diesem Fall wird mods:extent bei der Bereinigung der Daten entfernt. Weitere Informationen zu diesem Element s. MODS-Anwendungsprofil Kapitel 2.6.2.1</sch:report>
      </sch:rule>
   </sch:pattern>
   <sch:pattern>
      <sch:rule context="mods:note[parent::mods:mods or parent::mods:physicalDescription][not(@type)]">
            <!-- Attribut type fehlt in mods:note -->
         <sch:assert id="note_01"
                     role="error"
                     test="@type"
                     properties="dmd_id"
                     see="https://wiki.deutsche-digitale-bibliothek.de/display/DFD/note">mods:note muss ein Attribut type enthalten. Erlaubt sind in diesem Attribut nur Werte aus der Liste der MODS Note Type (\url{http://www.loc.gov/standards/mods/mods-notes.html}). Ist kein Attribut type mit einem der erlaubten Werte vorhanden, wird mods:note bei der Transformation der Daten entfernt. Weitere Informationen zu diesem Element s. MODS-Anwendungsprofil Kapitel 2.8</sch:assert>
      </sch:rule>
      <sch:rule context="mods:note[parent::mods:mods or parent::mods:physicalDescription][@type]">
            <!-- Falscher Attributwert in mods:note -->
         <sch:assert id="note_02"
                     role="error"
                     test="@type = ( 'accrual method', 'accrual policy', 'acquisition', 'action', 'additional physical form', 'admin', 'bibliographic history', 'bibliography', 'biographical/historical', 'citation/reference', 'conservation history', 'content', 'creation/production credits', 'date', 'exhibitions', 'funding', 'handwritten', 'language', 'numbering', 'date/sequential designation', 'original location', 'original version', 'ownership', 'performers', 'preferred citation', 'publications', 'reproduction', 'restriction', 'source characteristics', 'source dimensions', 'source identifier', 'source note', 'source type', 'statement of responsibility', 'subject completeness', 'system details', 'thesis', 'venue', 'version identification', 'condition', 'marks', 'medium', 'organization', 'physical description', 'physical details', 'presentation', 'script', 'support', 'technique' )"
                     properties="dmd_id type"
                     see="https://wiki.deutsche-digitale-bibliothek.de/display/DFD/note">In dem Attribut type in mods:note sind nur Werte aus der Liste der MODS Note Type (\url{http://www.loc.gov/standards/mods/mods-notes.html}) erlaubt. Enthält das Attribut type andere Werte, wird mods:note bei der Bereinigung der Daten entfernt. Weitere Informationen zu diesem Element s. MODS-Anwendungsprofil Kapitel 2.8.1</sch:assert>
      </sch:rule>
   </sch:pattern>
   <sch:pattern>
      <sch:rule context="mets:xmlData/mods:mods/mods:subject[mods:topic]/mods:topic | mets:xmlData/mods:mods/mods:subject[mods:genre]/mods:genre">
            <!-- Kein unterstützter URI in mods:subject -->
         <sch:assert id="subject_01"
                     role="info"
                     test="starts-with(../@valueURI, 'http://d-nb.info/gnd/') or starts-with(../@valueURI, 'https://d-nb.info/gnd/') or starts-with(../@valueURI, 'http://www.wikidata.org/') or starts-with(../@valueURI, 'https://www.wikidata.org/') or starts-with(../@valueURI, 'http://vocab.getty.edu/aat/') or starts-with(../@valueURI, 'https://vocab.getty.edu/aat/') or starts-with(@valueURI, 'http://d-nb.info/gnd/') or starts-with(@valueURI, 'https://d-nb.info/gnd/') or starts-with(@valueURI, 'http://www.wikidata.org/') or starts-with(@valueURI, 'https://www.wikidata.org/') or starts-with(@valueURI, 'http://vocab.getty.edu/aat/') or starts-with(@valueURI, 'https://vocab.getty.edu/aat/')"
                     properties="dmd_id"
                     see="https://wiki.deutsche-digitale-bibliothek.de/display/DFD/subject">Die DDB berücksichtigt das Element mods:subject nur, wenn es Schlagworte aus der GND, Wikidata oder dem AAT enthält. Diese müssen in dem Unterelement zu mods:subject stehen und dort mittels einer der genannten URIs in dem Attribut valueURI eindeutig identifiziert werden. Weitere Informationen zu diesem Element s. MODS-Anwendungsprofil Kapitel 2.9</sch:assert>
      </sch:rule>
   </sch:pattern>
   <sch:pattern>
      <sch:rule context="mets:dmdSec[@ID=$work_dmdid]/mets:mdWrap/mets:xmlData/mods:mods [ancestor::mets:mets/mets:structMap[@TYPE='LOGICAL']/mets:div/mets:mptr]">
            <!-- Die Verknüpfung zur Gesamtaufnahme ist nicht möglich -->
         <sch:assert id="relatedItem_01"
                     role="fatal"
                     test="mods:relatedItem[@type = 'host']"
                     properties="dmd_id"
                     see="https://wiki.deutsche-digitale-bibliothek.de/display/DFD/relatedItem">Bände von Mehrbändigen Werken, Zeitschriften und Ausgaben von Zeitungen werden über den Identifier des Datensatzes, der das gesamte Werk beschreibt (die sogenannte Gesamtaufnahme) mit dem übergeordneten Werk verknüpft. Aus diesem Grund muss eine mets:dmdSec, die einen solchen Band bzw. eine solche Ausgabe beschreibt, ein mods:relatedItem type="host" enthalten, das den mods:recordInfo/mods:recordIdentifier der Gesamtaufnahme enthält. Zudem muss mods:recordIdentifier das Attribut source enthalten und der Wert in diesem Attribut muss dem Wert entsprechen, der auch in der Gesamtaufnahme in dem Element mods:recordIdentifier verwendet wird. Fehlt mods:relatedItem type="host" odermods:recordIdentifier oder das Attribut source, so lassen sich die Daten der Bände bzw. Ausgaben nicht mit den Daten der Gesamtaufnahme verknüpfen. Der METS-Datensatz wird daher nicht in die DDB eingespielt. Weitere Informationen zu diesem Element s. MODS-Anwendungsprofil Kapitel 2.11</sch:assert>
      </sch:rule>
   </sch:pattern>
   <sch:pattern>
      <sch:rule context="mets:xmlData/mods:mods/mods:relatedItem[@type='host']">
            <!-- Die Verknüpfung zur Gesamtaufnahme ist nicht möglich -->
         <sch:assert id="relatedItem_02"
                     role="fatal"
                     test="mods:recordInfo/mods:recordIdentifier"
                     properties="dmd_id"
                     see="https://wiki.deutsche-digitale-bibliothek.de/display/DFD/relatedItem">Bände von Mehrbändigen Werken, Zeitschriften und Ausgaben von Zeitungen werden über den Identifier des Datensatzes, der das gesamte Werk beschreibt (die sogenannte Gesamtaufnahme) mit dem übergeordneten Werk verknüpft. Aus diesem Grund muss mods:relatedItem type="host" den mods:recordInfo/mods:recordIdentifier der Gesamtaufnahme enthalten. Zudem muss mods:recordIdentifier das Attribut source enthalten und der Wert in diesem Attribut muss dem Wert entsprechen, der auch in der Gesamtaufnahme in dem Element mods:recordIdentifier verwendet wird. Fehlen mods:recordIdentifier oder das Attribut source, lassen sich die Daten der Bände bzw. Ausgaben nicht mit den Daten der Gesamtaufnahme verknüpfen. Der METS-Datensatz wird daher nicht in die DDB eingespielt. Weitere Informationen zu diesem Element s. MODS-Anwendungsprofil Kapitel 2.11</sch:assert>
      </sch:rule>
      <sch:rule context="mets:xmlData/mods:mods/mods:relatedItem[@type='host']/mods:recordInfo/mods:recordIdentifier">
            <!-- Die Verknüpfung zur Gesamtaufnahme ist nicht möglich -->
         <sch:assert id="relatedItem_03"
                     role="fatal"
                     test="@source"
                     properties="dmd_id"
                     see="https://wiki.deutsche-digitale-bibliothek.de/display/DFD/relatedItem">Bände von Mehrbändigen Werken, Zeitschriften und Ausgaben von Zeitungen werden über den Identifier des Datensatzes, der das gesamte Werk beschreibt (die sogenannte Gesamtaufnahme) mit dem übergeordneten Werk verknüpft. Dieser Identifier muss durch den Inhalt in dem Attribut source eindeutig identifiziert werden. Der Wert in diesem Attribut muss dem Wert entsprechen, der auch in der Gesamtaufnahme in dem Element mods:recordIdentifier verwendet wird. Fehlt das Attribut source, lassen sich die Daten der Bände bzw. Ausgaben nicht mit den Daten der Gesamtaufnahme verknüpfen. Der METS-Datensatz wird daher nicht in die DDB eingespielt. Weitere Informationen zu diesem Element s. MODS-Anwendungsprofil Kapitel 2.11</sch:assert>
      </sch:rule>
      <sch:rule context="mets:xmlData/mods:mods/mods:relatedItem">
            <!-- Das Attribut type in mods:relatedItem ist nicht vorhanden oder enthält einen falschen Attributwert. -->
         <sch:assert id="relatedItem_04"
                     role="error"
                     test="@type = ('enumerated', 'preceding', 'succeeding', 'original', 'host', 'constituent', 'series', 'otherVersion', 'otherFormat', 'isReferencedBy', 'references', 'reviewOf')"
                     properties="dmd_id"
                     see="https://wiki.deutsche-digitale-bibliothek.de/display/DFD/relatedItem">mods:relatedItem wird in der DDB nur dann berücksichtigt, wenn ein Attribut type vorhanden ist und dieses den Wert "host" oder den Wert "series" enthält. Ist dies nicht der Fall, wird mods:relatedItem bei der Transformation der Daten entfernt. Weitere Informationen zu diesem Element s. MODS-Anwendungsprofil Kapitel 2.11.1</sch:assert>
      </sch:rule>
   </sch:pattern>
   <sch:pattern>
      <sch:rule context="mets:xmlData/mods:mods/mods:relatedItem[@type = 'series']">
            <!-- mods:relatedItem type="series" enthält keinen Titel -->
         <sch:assert id="relatedItem_05"
                     role="error"
                     test="mods:titleInfo/mods:title"
                     properties="dmd_id"
                     see="https://wiki.deutsche-digitale-bibliothek.de/display/DFD/relatedItem">mods:relatedItem type="series" muss immer mindestens ein mods:titleInfo/mods:title enthalten. Ist dies nicht der Fall, wird mods:relatedItem type="series" bei der Transformation der Daten entfernt. Weitere Informationen zu diesem Element s. MODS-Anwendungsprofil Kapitel 2.11.2.1</sch:assert>
      </sch:rule>
   </sch:pattern>
   <sch:pattern>
      <sch:rule context="mets:xmlData/mods:mods[mods:relatedItem[@type='host']][not(mods:part)]">
            <!-- mods:part fehlt -->
         <sch:assert id="part_01"
                     role="warn"
                     test="mods:part"
                     properties="dmd_id"
                     see="https://wiki.deutsche-digitale-bibliothek.de/display/DFD/part">Bände von Mehrbändigen Werken, Zeitschriften und Ausgaben von Zeitungen müssen Informationen zur Bandzählung enthalten. Diese Information muss in mods:part/mods:detail/mods:number zur Verfügung gestellt werden. Zudem muss mods:part das Attribut order enthalten, in dem die Zählung in maschinenlesbarer Form (als integer) bereitgestellt wird. Diese Fehler verhindern nicht das Einspielen der Daten in die DDB, wir bitten Sie jedoch, die Daten zu prüfen und ggf. die nötigen Korrekturen bis zur nächsten Datenlieferung vorzunehmen. Weitere Informationen zu diesem Element s. MODS-Anwendungsprofil Kapitel 2.14</sch:assert>
      </sch:rule>
      <sch:rule context="mets:xmlData/mods:mods[mods:relatedItem[@type='host']][not(mods:part[@order])]">
            <!-- Attribut order fehlt in mods:part -->
         <sch:assert id="part_02"
                     role="warn"
                     test="mods:part[@order]"
                     properties="dmd_id"
                     see="https://wiki.deutsche-digitale-bibliothek.de/display/DFD/part">Um Bände bei Mehrbändigen Werken, Zeitschriften und Ausgaben von Zeitungen in der richtigen Reihenfolge anzeigen zu können, muss die Bandzählung auch in maschinenlesbarer Form vorliegen. Aus diesem Grund muss mods:part das Attribut order enthalten, dessen Wert ein integer ist. Das Fehlen des Attributs verhindert nicht das Einspielen der Daten in die DDB, wir bitten Sie jedoch, die Daten zu prüfen und ggf. die nötigen Korrekturen bis zur nächsten Datenlieferung vorzunehmen. Weitere Informationen zu diesem Element s. MODS-Anwendungsprofil Kapitel 2.14.1</sch:assert>
      </sch:rule>
      <sch:rule context="mets:xmlData/mods:mods[mods:relatedItem[@type='host']]/mods:part">
            <!-- Falscher Wert in dem Attribut order in mods:part -->
         <sch:assert id="part_03"
                     role="warn"
                     test="matches(@order, '^\d+$')"
                     properties="dmd_id"
                     see="https://wiki.deutsche-digitale-bibliothek.de/display/DFD/part">Um Bände bei Mehrbändigen Werken, Zeitschriften und Ausgaben von Zeitungen in der richtigen Reihenfolge anzeigen zu können, muss die Bandzählung auch in maschinenlesbarer Form vorliegen. Aus diesem Grund muss mods:part das Attribut order enthalten, dessen Wert ein integer ist. Handelt es sich um einen Wert, der nicht maschinenlesbar ist, so verhindert dies nicht das Einspielen der Daten in die DDB, wir bitten Sie jedoch, die Daten zu prüfen und ggf. die nötigen Korrekturen bis zur nächsten Datenlieferung vorzunehmen. Weitere Informationen zu diesem Element s. MODS-Anwendungsprofil Kapitel 2.14.1</sch:assert>
      </sch:rule>
   </sch:pattern>
   <sch:pattern>
      <sch:rule context="mets:xmlData/mods:mods/mods:part[not(mods:detail/mods:number)]">
            <!-- mods:number ist in mods:part nicht vorhanden -->
         <sch:assert id="part_04"
                     role="error"
                     test="mods:detail/mods:number"
                     properties="dmd_id"
                     see="https://wiki.deutsche-digitale-bibliothek.de/display/DFD/part">Bände von Mehrbändigen Werken, Zeitschriften und Ausgaben von Zeitungen müssen Informationen zur Bandzählung enthalten. Diese Information muss in mods:part/mods:detail/mods:number zur Verfügung gestellt werden. Ist dies nicht der Fall, dann wird mods:part bei der Transformation der Daten entfernt. Weitere Informationen zu diesem Element s. MODS-Anwendungsprofil Kapitel 2.14.2.1 und 2.14.2.2</sch:assert>
      </sch:rule>
      <sch:rule context="mets:xmlData/mods:mods/mods:part/mods:detail">
            <!-- Attribut type fehlt in mods:detail -->
         <sch:assert id="part_05"
                     role="warn"
                     test="@type = ('volume', 'issue')"
                     properties="dmd_id"
                     see="https://wiki.deutsche-digitale-bibliothek.de/display/DFD/part">In mods:part muss das Unterelement mods:detail ein Attribut type enthalten, dessen Wert volume oder issue sein muss. Die Verwendung anderer Werte verhindert nicht das Einspielen der Daten in die DDB, wir bitten Sie jedoch, die Daten zu prüfen und ggf. die nötigen Korrekturen bis zur nächsten Datenlieferung vorzunehmen.</sch:assert>
      </sch:rule>
   </sch:pattern>
   <sch:pattern>
      <sch:rule context="mods:mods/mods:part">
            <!-- Wiederholung von mods:detail[@type='volume'] in mods:part -->
         <sch:report id="part_12"
                     role="error"
                     test="mods:detail[@type='volume'][mods:number][2] or mods:detail[mods:number[@type='volume']][2]"
                     properties="dmd_id"
                     see="https://wiki.deutsche-digitale-bibliothek.de/display/DFD/part">Das Element mods:detail[@type='volume'] darf innerhalb von mods:part nicht wiederholt werden. Ist dies der Fall, werden bei der Transformation der Daten die weiteren Vorkommen von mods:detail[@type='volume'] entfernt und die Inhalte des Unterlements mods:number im ersten Vorkommen zusammengefasst. Weitere Informationen zu diesem Element s. MODS-Anwendungsprofil Kapitel 2.11.2.3.2</sch:report>
      </sch:rule>
   </sch:pattern>
   <sch:pattern>
      <sch:rule context="mets:xmlData/mods:mods/mods:identifier">
            <!-- Attribut type fehlt in mods:identifier oder der Attributwert ist falsch -->
         <sch:assert id="identifier_01"
                     role="info"
                     test="@type = ('purl', 'urn', 'isbn', 'issn', 'doi', 'handle', 'vd16', 'vd17', 'vd18', 'zdb')"
                     properties="dmd_id type"
                     see="https://wiki.deutsche-digitale-bibliothek.de/display/DFD/identifier">mods:identifier muss ein Attribut type enthalten. Nur die folgenden Werte werden bei der Transformation der Daten für die DDB berücksichtigt: purl, urn, isbn, issn, doi, handle, zdb, vd16, vd17 und vd18. Fehlt das Attribut type oder werden andere Werte verwendet, wird mods:identifier bei der Transformation der Daten entfernt. Weitere Informationen zu diesem Element s. MODS-Anwendungsprofil Kapitel 2.12</sch:assert>
      </sch:rule>
   </sch:pattern>
   <sch:pattern>
      <sch:rule context="mets:xmlData/mods:mods/mods:location">
            <!--  mods:physicalLocation fehlt in mods:location -->
         <sch:assert id="location_01"
                     role="error"
                     test="mods:physicalLocation"
                     properties="dmd_id"
                     see="https://wiki.deutsche-digitale-bibliothek.de/display/DFD/location">mods:location muss das Element mods:physicalLocation enthalten. Fehlt mods:physicalLocation, wird mods:location bei der Bereinigung der Daten entfernt. Weitere Informationen zu diesem Element s. MODS-Anwendungsprofil Kapitel 2.13</sch:assert>
      </sch:rule>
   </sch:pattern>
   <sch:pattern>
      <sch:rule context="mets:dmdSec[@ID=$work_dmdid]/mets:mdWrap/mets:xmlData/mods:mods">
            <!-- Standortangabe fehlt -->
         <sch:assert id="location_03"
                     role="warn"
                     test="mods:location/mods:physicalLocation"
                     properties="dmd_id"
                     see="https://wiki.deutsche-digitale-bibliothek.de/display/DFD/location">Ist kein mods:location mit dem Unterelement mods:physicalLocation in der primären mets:dmdSec vorhanden, kann der Standort eines Bandes bzw. eines Objekts nicht in der DDB angezeigt werden. Das Fehlen von mods:physicalLocation verhindert nicht das Einspielen der Daten in die DDB, wir bitten Sie jedoch die Daten zu prüfen und ggf. die nötigen Korrekturen bis zur nächsten Datenlieferung vorzunehmen. Weitere Informationen zu diesem Element s. MODS-Anwendungsprofil Kapitel 2.13</sch:assert>
      </sch:rule>
   </sch:pattern>
   <sch:pattern>
      <sch:rule context="mets:xmlData/mods:mods/mods:location/mods:physicalLocation[starts-with(text()[1], 'DE-')]">
            <!-- URI der ISIL nicht vorhanden -->
         <sch:assert id="location_04"
                     role="warn"
                     test="starts-with(@valueURI, 'http://ld.zdb-services.de/resource/organisations/') or starts-with(@valueURI, 'https://ld.zdb-services.de/resource/organisations/') or starts-with(@valueURI, 'http://lobid.org/organisations/') or starts-with(@valueURI, 'https://lobid.org/organisations/')"
                     properties="dmd_id"
                     see="https://wiki.deutsche-digitale-bibliothek.de/display/DFD/location">Wenn mods:physicalLocation den ISIL der Institution enthalten soll, in der sich der digitalisierte Band bzw. das digitalisierte Objekt befindet, dann muss dieser ISIL in Form des http-URI in dem Attribut valueURI stehen. Das Fehlen der valueURI verhindert nicht das Einspielen der Daten in die DDB, wir bitten Sie jedoch die Daten zu prüfen und ggf. die nötigen Korrekturen bis zur nächsten Datenlieferung vorzunehmen.  Weitere Informationen zu diesem Element s. MODS-Anwendungsprofil Kapitel 2.13.2.1</sch:assert>
      </sch:rule>
   </sch:pattern>
   <sch:pattern>
      <sch:rule context="mets:xmlData/mods:mods/mods:location[mods:physicalLocation]">
            <!-- Wiederholung von mods:physicalLocation -->
         <sch:report id="location_05"
                     role="error"
                     test="mods:physicalLocation[2]"
                     properties="dmd_id"
                     see="https://wiki.deutsche-digitale-bibliothek.de/display/DFD/location">Innerhalb eines mods:location darf mods:physicalLocation nicht wiederholt werden. Ist mehr als ein mods:physicalLocation in mods:location vorhanden, wird das erste Vorkommen bei der Transformation der Daten berücksichtigt, alle anderen Vorkommen werden entfernt. Weitere Informationen zu diesem Element s. MODS-Anwendungsprofil Kapitel 2.13.2</sch:report>
      </sch:rule>
   </sch:pattern>
   <sch:pattern>
      <sch:rule context="mets:xmlData/mods:mods/mods:location/mods:url">
            <!-- mods:url mit ungültigem Wert im Attribut access -->
         <sch:assert id="location_06"
                     role="error"
                     test="./@access = ('preview', 'object in context', 'raw object')"
                     properties="dmd_id"
                     see="https://wiki.deutsche-digitale-bibliothek.de/display/DFD/location">Das Element mods:url wird zurzeit bei der Bearbeitung der Datensätze entfernt. Perspektivisch unterstützt die DDB mods:url nur mit einem gültigen Wert im Attribut access ("preview", "object in context" und "raw object"). Weitere Informationen zu diesem Element s. MODS-Anwendungsprofil Kapitel 2.13.2</sch:assert>
      </sch:rule>
   </sch:pattern>
   <sch:pattern>
      <sch:rule context="mets:xmlData/mods:mods/mods:location[mods:physicalLocation]">
         <sch:let name="current_physicalLocation" value="mods:physicalLocation[1]"/>
         <!-- mods:physicalLocation mit unterschiedlichen Werten -->
         <sch:report id="location_07"
                     role="error"
                     test="./preceding-sibling::mods:location[mods:physicalLocation/text() != $current_physicalLocation]"
                     properties="dmd_id"
                     see="https://wiki.deutsche-digitale-bibliothek.de/display/DFD/location">Ein Datensatz darf im allen Unterelementen mods:physicalLocation von mods:location nur einen Wert enthalten. Enthält der Datensatz mehr als einen unterschiedlichen Wert in allen mods:physicalLocation, werden die weiteren Vorkommen (XML-Reihenfolge) von mods:physicalLocation bzw. die entsprechenden mods:location bei der Bereinigung der Daten entfernt. Weitere Informationen zu diesem Element s. MODS-Anwendungsprofil Kapitel 2.13.2</sch:report>
      </sch:rule>
   </sch:pattern>
   <sch:pattern>
      <sch:rule context="mods:accessCondition[@type='use and reproduction']/@*[local-name()= 'href']">
            <!-- Falscher Namensraum für das Attribut href von mods:accessCondition -->
         <sch:assert id="accessCondition_02"
                     role="error"
                     test="namespace-uri() = 'http://www.w3.org/1999/xlink'"
                     properties="dmd_id"
                     see="https://wiki.dnb.de/pages/viewpage.action?pageId=148607412#MODS(Empfehlung2.0)-Rechtehinweis/Lizenz">Das Attribut href des Elements mods:accessCondition muss zum Namensraum "http://www.w3.org/1999/xlink" gehören. Ist dies nicht der Fall, wird bei der Transformation das erste Vorkommen des Attributs href in den Namensraum "http://www.w3.org/1999/xlink" gesetzt und entsprechend ausgewertet.</sch:assert>
      </sch:rule>
   </sch:pattern>
   <sch:pattern>
      <sch:rule context="mets:dmdSec[@ID=$work_dmdid]/mets:mdWrap/mets:xmlData/mods:mods">
            <!-- Der Identifier des Datensatzes fehlt -->
         <sch:assert id="recordInfo_01"
                     role="fatal"
                     test="mods:recordInfo/mods:recordIdentifier"
                     properties="dmd_id"
                     see="https://wiki.deutsche-digitale-bibliothek.de/display/DFD/recordInfo">Die mets:dmdSec, die das gesamte Werk beschreibt, muss ein mods:recordInfo mit dem Unterelement mods:recordIdentifier enthalten. Dieser mods:recordIdentifier muss durch den Wert im Attribut source eindeutig identifizierbar sein. Wenn mods:recordIdentifier und/oder das Attribut source fehlt, lässt sich der METS-Datensatz nicht eindeutig identifizieren und kann nicht in die DDB eingespielt werden. Weitere Informationen zu diesem Element s. MODS-Anwendungsprofil Kapitel 2.15</sch:assert>
      </sch:rule>
   </sch:pattern>
   <sch:pattern>
      <sch:rule context="mets:xmlData/mods:mods/mods:recordInfo/mods:recordIdentifier">
            <!-- Identifier des Datensatzes ist nicht eindeutig -->
         <sch:assert id="recordInfo_02"
                     role="fatal"
                     test="string-length(normalize-space(@source)) &gt; 0"
                     properties="dmd_id"
                     see="https://wiki.deutsche-digitale-bibliothek.de/display/DFD/recordInfo">mods:recordIdentifier muss das Attribut source enthalten. Der Wert dieses Attribut muss die Herkunft des Identifiers des Datensatzes eindeutig identifizieren. Wenn das Attribut source fehlt, lässt sich der METS-Datensatz nicht eindeutig identifizieren und kann nicht in die DDB eingespielt werden. Weitere Informationen zu diesem Element s. MODS-Anwendungsprofil Kapitel 2.15.2.1</sch:assert>
      </sch:rule>
   </sch:pattern>
   <sch:pattern>
      <sch:rule context="mets:xmlData/mods:mods">
            <!-- Der Identifier des Datensatzes wird wiederholt -->
         <sch:report id="recordInfo_03"
                     role="error"
                     test="mods:recordInfo/mods:recordIdentifier[2] or mods:recordInfo[mods:recordIdentifier][2]"
                     properties="dmd_id source"
                     see="https://wiki.deutsche-digitale-bibliothek.de/display/DFD/recordInfo">Jeder METS-Datensatz muss durch ein mods:recordIdentifier Element eindeutig identifiziert werden. Ist mehr als ein mods:recordIdentifier vorhanden, wird nach Rücksprache mit dem DP anhand der im Attribut source genannten Quelle des Identifiers entschieden, welches mods:recordIdentifier bei der Bereinigung des Datensatzes erhalten bleibt. Alle anderen mods:recordIdentifier werden bei der Bereinigung des Datensatzes entfernt. Weitere Informationen zu diesem Element s. MODS-Anwendungsprofil Kapitel 2.15.2.1</sch:report>
      </sch:rule>
   </sch:pattern>
   <sch:pattern>
      <sch:rule context="mets:xmlData/mods:mods/mods:recordInfo/mods:recordIdentifier">
            <!-- Der Identifier des Datensatzes ist nicht valide -->
         <sch:assert id="recordInfo_04"
                     role="fatal"
                     test="matches(text()[1], '^[^ /]+$')"
                     properties="dmd_id"
                     see="https://wiki.deutsche-digitale-bibliothek.de/display/DFD/recordInfo">Damit die DDB Identifier verarbeiten kann, dürfen sie keine Leerzeichen und/oder Sonderzeichen enthalten. Ist dies der Fall, kann es Probleme bei der Verarbeitung geben. Daher werden Datensätze, deren Identifier Leerzeichen und/oder Sonderzeichen enthalten, nicht in die DDB eingespielt. Weitere Informationen zu diesem Element s. MODS-Anwendungsprofil Kapitel 2.15</sch:assert>
      </sch:rule>
   </sch:pattern>
   <sch:pattern>
      <sch:rule context="mets:xmlData/mods:mods">
            <!-- mods:recordInfo ist in mods:mods mehrmals vorhanden -->
         <sch:report id="recordInfo_05"
                     role="error"
                     test="mods:recordInfo[2]"
                     properties="dmd_id"
                     see="https://wiki.deutsche-digitale-bibliothek.de/display/DFD/recordInfo">Das Element mods:mods darf das Element mods:recordInfo nur einmal enthalten. Enthält mods:mods mehr als ein mods:recordInfo, werden bei der Bereinigung des Datensatzes die Unterelemente aller mods:recordInfo im erste Vorkommen zusammengefasst und die weiteren Vorkommen von mods:recordInfo entfernt. Weitere Informationen zu diesem Element s. MODS-Anwendungsprofil Kapitel 2.15.1</sch:report>
      </sch:rule>
   </sch:pattern>
   <sch:pattern>
      <sch:rule context="mets:mets">
            <!-- mets:structMap TYPE="LOGICAL" fehlt -->
         <sch:assert id="structMapLogical_01"
                     role="fatal"
                     test="mets:structMap[@TYPE='LOGICAL']"
                     see="https://wiki.deutsche-digitale-bibliothek.de/display/DFD/structMap">mets:structMap TYPE="LOGICAL" ist notwendig, um die logische Struktur eines Dokuments anzuzeigen. Fehlt diese Information, wird der Datensatz nicht in die DDB eingespielt. Weitere Informationen zu diesem Element s. METS-Anwendungsprofil Kapitel 2.1.1</sch:assert>
      </sch:rule>
      <sch:rule context="mets:mets/mets:structMap[@TYPE='LOGICAL']">
            <!-- mets:structMap TYPE="LOGICAL" enthält keine mets:div -->
         <sch:assert id="structMapLogical_02"
                     role="fatal"
                     test="mets:div"
                     see="https://wiki.deutsche-digitale-bibliothek.de/display/DFD/structMap">Die logische Struktur eines Dokuments kann aus beliebig vielen Ebenen bestehen, die in der structMap TYPE="LOGICAL" durch ineinander verschachtelte mets:div repräsentiert werden. Die mets:structMap TYPE="LOGICAL" muss mindestens für die oberste dieser Ebenen eine mets:div enthalten, in der die oberste Ebene des Dokuments beschrieben wird. Ist dies nicht der Fall, wird der METS-Datensatz nicht in die DDB eingespielt. Weitere Informationen zu diesem Element s. METS-Anwendungsprofil Kapitel 2.1.2.1</sch:assert>
      </sch:rule>
   </sch:pattern>
   <sch:pattern>
      <sch:rule context="mets:mets/mets:structMap[@TYPE='LOGICAL']//mets:div">
            <!-- Eindeutiger Identifier fehlt in mets:div in mets:structMap TYPE="LOGICAL" -->
         <sch:assert id="structMapLogical_03"
                     role="fatal"
                     test="count(key('mets_ids', @ID)) = 1 and matches(@ID, '^[\i-[:]][\c-[:]]*$')"
                     properties="id"
                     see="https://wiki.deutsche-digitale-bibliothek.de/display/DFD/structMap">Die logische Struktur eines Dokuments kann aus beliebig vielen Ebenen bestehen, die in der mets:structMap TYPE="LOGICAL" durch ineinander verschachtelte mets:div repräsentiert werden. Jede dieser mets:div muss in dem Attribut ID einen eindeutigen Identifier enthalten. Ist dies nicht der Fall, wird der METS-Datensatz nicht in die DDB eingespielt. Weitere Informationen zu diesem Element s. METS-Anwendungsprofil Kapitel 2.1.2.1</sch:assert>
      </sch:rule>
   </sch:pattern>
   <sch:pattern>
      <sch:rule context="key('structMap_LOGICAL_dmdids', $work_dmdid)//mets:div[@DMDID] | key('structMap_LOGICAL_dmdids', $work_dmdid)[@DMDID]">
            <!-- Notwendiger Identifier der logischen Strukturebene fehlt im mets:structLink -->
         <sch:assert id="structMapLogical_04"
                     role="fatal"
                     test="$is_anchor or key('structLink_from_ids', @ID)"
                     properties="id"
                     see="https://wiki.deutsche-digitale-bibliothek.de/display/DFD/structMap">Um die Beziehung zwischen der logischen Struktur eines Dokuments und den dazugehörigen Seiten herstellen zu können, muss jeder Identifier einer mets:div in der structMap TYPE="LOGICAL" im mets:structLink den jeweiligen Identifiern der Seiten zugeordnet werden. Ist dies nicht der Fall, wird der METS-Datensatz nicht in die DDB eingespielt. Weitere Informationen zu diesem Element s. METS-Anwendungsprofil Kapitel 2.3</sch:assert>
      </sch:rule>
      <sch:rule context="key('structMap_LOGICAL_dmdids', $work_dmdid)//mets:div | key('structMap_LOGICAL_dmdids', $work_dmdid)">
            <!-- Identifier der logischen Strukturebene fehlt im mets:structLink -->
         <sch:assert id="structMapLogical_21"
                     role="warn"
                     test="$is_anchor or key('structLink_from_ids', @ID)"
                     properties="id"
                     see="https://wiki.deutsche-digitale-bibliothek.de/display/DFD/structMap">Um die Beziehung zwischen der logischen Struktur eines Dokuments und den dazugehörigen Seiten herstellen zu können, muss jeder Identifier einer mets:div in der structMap TYPE="LOGICAL" im mets:structLink den jeweiligen Identifiern der Seiten zugeordnet werden. Fehlende Zuordnungen verhindern nicht das Einspielen der Daten in die DDB, führen dort aber zu Anzeigeproblemen im Viewer. Wir bitten Sie daher, den Sachverhalt zu prüfen und die nötigen Korrekturen bis zur nächsten Datenlieferung vorzunehmen. Weitere Informationen zu diesem Element s. METS-Anwendungsprofil Kapitel 2.3</sch:assert>
      </sch:rule>
   </sch:pattern>
   <sch:pattern>
      <sch:rule context="mets:mets/mets:structMap[@TYPE='LOGICAL']//mets:div[not(@TYPE)]">
            <!-- Das Attribut TYPE in der mets:div innerhalb von mets:structMap TYPE="LOGICAL" fehlt -->
         <sch:assert id="structMapLogical_05"
                     role="fatal"
                     test="@TYPE"
                     properties="id"
                     see="https://wiki.deutsche-digitale-bibliothek.de/display/DFD/structMap">Jede Ebene innerhalb der logischen Struktur muss durch einen Strukturtyp spezifiziert werden. Der Strukturtyp steht in der mets:div in dem Attribut TYPE. Erlaubt sind hier nur Werte aus der Liste der DFG-Viewer Strukturtypen. Fehlt das Attribut TYPE in einem der mets:div, wird der METS-Datensatz nicht in die DDB eingespielt. Weitere Informationen zu diesem Element s. METS-Anwendungsprofil Kapitel 2.1.2.1</sch:assert>
      </sch:rule>
      <sch:rule context="mets:mets/mets:structMap[@TYPE='LOGICAL']//mets:div[not( @TYPE = ( 'section', 'file', 'album', 'register', 'annotation', 'address', 'article', 'atlas', 'issue', 'bachelor_thesis', 'volume', 'contained_work', 'additional', 'report', 'official_notification', 'provenance', 'image', 'collation', 'ornament', 'letter', 'cover', 'cover_front', 'cover_back', 'diploma_thesis', 'doctoral_thesis', 'document', 'printers_mark', 'printed_archives', 'binding', 'entry', 'corrigenda', 'bookplate', 'fascicle', 'leaflet', 'research_paper', 'photograph', 'fragment', 'land_register', 'ground_plan', 'habilitation_thesis', 'manuscript', 'illustration', 'imprint', 'contents', 'initial_decoration', 'year', 'chapter', 'map', 'cartulary', 'colophon', 'engraved_titlepage', 'magister_thesis', 'folder', 'master_thesis', 'multivolume_work', 'month', 'monograph', 'musical_notation', 'periodical', 'poster', 'plan', 'privileges', 'index', 'spine', 'scheme', 'edge', 'seal', 'paste_down', 'stamp', 'study', 'table', 'day', 'proceeding', 'text', 'title_page', 'act', 'judgement', 'verse', 'note', 'preprint', 'dossier', 'lecture', 'endsheet', 'paper', 'preface', 'dedication', 'newspaper' ) )]">
            <!-- Falsche Strukturtypen in der mets:div innerhalb von mets:structMap TYPE="LOGICAL" -->
         <sch:assert id="structMapLogical_06"
                     role="error"
                     test="@TYPE = ( 'section', 'file', 'album', 'register', 'annotation', 'address', 'article', 'atlas', 'issue', 'bachelor_thesis', 'volume', 'contained_work', 'additional', 'report', 'official_notification', 'provenance', 'image', 'collation', 'ornament', 'letter', 'cover', 'cover_front', 'cover_back', 'diploma_thesis', 'doctoral_thesis', 'document', 'printers_mark', 'printed_archives', 'binding', 'entry', 'corrigenda', 'bookplate', 'fascicle', 'leaflet', 'research_paper', 'photograph', 'fragment', 'land_register', 'ground_plan', 'habilitation_thesis', 'manuscript', 'illustration', 'imprint', 'contents', 'initial_decoration', 'year', 'chapter', 'map', 'cartulary', 'colophon', 'engraved_titlepage', 'magister_thesis', 'folder', 'master_thesis', 'multivolume_work', 'month', 'monograph', 'musical_notation', 'periodical', 'poster', 'plan', 'privileges', 'index', 'spine', 'scheme', 'edge', 'seal', 'paste_down', 'stamp', 'study', 'table', 'day', 'proceeding', 'text', 'title_page', 'act', 'judgement', 'verse', 'note', 'preprint', 'dossier', 'lecture', 'endsheet', 'paper', 'preface', 'dedication', 'newspaper' )"
                     properties="id TYPE"
                     see="https://wiki.deutsche-digitale-bibliothek.de/display/DFD/structMap">Jede Ebene innerhalb der logischen Struktur muss durch einen Strukturtyp spezifiziert werden. Der Strukturtyp steht in der mets:div in dem Attribut TYPE. Erlaubt sind hier nur Werte aus der Liste der DFG-Viewer Strukturtypen (s. dort die Spalte XML). Werden in dem Attribut TYPE andere Begriffe als die in der Liste vorgesehenen verwendet, wird er bei der Bereinigung der Daten durch den Strukturtyp "section" ersetzt. Weitere Informationen zu diesem Element s. METS-Anwendungsprofil Kapitel 2.1.2.1</sch:assert>
      </sch:rule>
      <sch:rule context="mets:mets/mets:structMap[@TYPE='LOGICAL']//mets:div">
            <!-- Zeitungsstrukturen in der mets:structMap[@TYPE='LOGICAL'] -->
         <sch:report id="structMapLogical_19"
                     role="fatal"
                     test="./@TYPE = ('year', 'month', 'day')"
                     properties="id"
                     see="https://wiki.deutsche-digitale-bibliothek.de/display/DFD/structMap">Der Datensatz enthält in der mets:structMap[@TYPE='LOGICAL'] ein Strukturelement vom Typ "year", "month" oder "day", die nur zur Gliederung von Zeitungen vorgesehen sind. Datensätze mit diesen Strukturtypen werden aus dieser Lieferung entfernt. Sie können sie aber über das Deutsche Zeitungsportal an die DDB liefern. Wenn Sie eine Lieferung der entsprechender Datensätze an das Deutsche Zeitungsportal durchführen möchten, teilen Sie dies bitte der Fachstelle Bibliothek mit.</sch:report>
      </sch:rule>
   </sch:pattern>
   <sch:pattern>
      <sch:rule context="key('structMap_LOGICAL_dmdids', $work_dmdid) [ancestor::mets:mets/mets:dmdSec[@ID=$work_dmdid]/mets:mdWrap/mets:xmlData/mods:mods/mods:relatedItem[@type='host']]">
            <!-- Falsche Strukturtypen bei Teilen von Zeitschriften, Mehrbändigen Werken und Zeitungen -->
         <sch:assert id="structMapLogical_07"
                     role="warn"
                     test="@TYPE = ('volume', 'year', 'issue')"
                     properties="id type"
                     see="https://wiki.deutsche-digitale-bibliothek.de/display/DFD/structMap">Beschreibt der METS-Datensatz einen Band/Teil einer Zeitschrift, eines mehrbändigen Werkes oder einer Zeitung, muss das Attribut TYPE in der dazugehörigen mets:div in der mets:structMap TYPE="LOGICAL" den Wert "volume" oder "year" oder "issue" haben. Ist dies nicht der Fall, wird der Datensatz dennoch in die DDB eingespielt, wir bitten Sie jedoch, den Sachverhalt zu prüfen und die nötigen Korrekturen bis zur nächsten Datenlieferung vorzunehmen. Weitere Informationen zu diesem Element s. METS Strukturdatenset</sch:assert>
      </sch:rule>
   </sch:pattern>
   <sch:pattern>
      <sch:rule context="key('structMap_LOGICAL_dmdids', $work_dmdid) [ancestor::mets:mets/mets:dmdSec[@ID=$work_dmdid]/mets:mdWrap/mets:xmlData/mods:mods/mods:relatedItem[@type='host']]">
            <!-- mets:mptr fehlt bei Teilen von Zeitschriften, Mehrbändigen Werken und Zeitungen -->
         <sch:assert id="structMapLogical_08"
                     role="fatal"
                     test="./parent::mets:div/mets:mptr"
                     properties="id"
                     see="https://wiki.deutsche-digitale-bibliothek.de/display/DFD/structMap">Beschreibt der METS-Datensatz einen Band/Teil einer Zeitschrift, eines mehrbändigen Werkes oder einer Zeitung, muss in der structMap TYPE="LOGICAL" eine eigene mets:div für die Gesamtaufnahme enthalten sein, die in dem Unterelement mets:mptr auf den Datensatz der Titelaufnahme des Gesamtwerks verweist. Ist dies nicht der Fall, wird der METS-Datensatz nicht in die DDB eingespielt. Weitere Informationen zu diesem Element s. METS Strukturdatenset</sch:assert>
      </sch:rule>
   </sch:pattern>
   <sch:pattern>
      <sch:rule context="mets:mets/mets:structMap[@TYPE='LOGICAL']//mets:div[@DMDID]">
            <!-- mets:structMap type="LOGICAL" verlinkt auf nicht vorhandene mets:dmdSec -->
         <sch:assert id="structMapLogical_09"
                     role="error"
                     test="sum( for $dmdid in tokenize(@DMDID, ' ') return if (key('dmdsec_ids', $dmdid)) then 0 else 1 ) = 0"
                     properties="id"
                     see="https://wiki.deutsche-digitale-bibliothek.de/display/DFD/structMap">Ist das Attribut DMDID des Elements mets:div in der mets:structMap type="LOGICAL" vorhanden, muss es eine dazugehörige mets:dmdSec mit dem gleichen Wert im Attribut ID geben. Ist dies nicht der Fall, wird die Verknüpfung in der mets:structMap type="LOGICAL" entfernt.</sch:assert>
      </sch:rule>
   </sch:pattern>
   <sch:pattern>
      <sch:rule context="mets:mets/mets:structMap[@TYPE='LOGICAL']//mets:div[mets:mptr]">
            <!-- mets:structMap type="LOGICAL" enthält mehr als einen mets:mptr -->
         <sch:report id="structMapLogical_10"
                     role="fatal"
                     test="./descendant::mets:div[mets:mptr]"
                     properties="id"
                     see="https://wiki.deutsche-digitale-bibliothek.de/display/DFD/structMap">In der mets:structMap type="LOGICAL" dürfen Kinder eines mets:div, das ein mets:mptr Element enthält, selbst keine mets:mptr Elemente enthalten. Ist dies der Fall, wird der METS-Datensatz nicht in die DDB eingespielt.</sch:report>
      </sch:rule>
   </sch:pattern>
   <sch:pattern>
      <sch:rule context="mets:mets/mets:structMap[@TYPE='LOGICAL']//mets:div[contains(@DMDID, $work_dmdid)][@TYPE='periodical']">
            <!-- Falsche Verwendung des Strukturtyps "periodical" -->
         <sch:report id="structMapLogical_11"
                     role="fatal"
                     test="./ancestor::mets:mets/mets:structLink/mets:smLink or ./ancestor::mets:mets/mets:fileSec/mets:fileGrp[@USE='DEFAULT']"
                     properties="id"
                     see="https://wiki.deutsche-digitale-bibliothek.de/display/DFD/structMap">Der Strukturtyp "periodical" darf nur für die Gesamtaufnahme eines fortlaufenden Sammelwerks (Zeitschrift, Jahrbuch u.ä.) verwendet werden. Handelt es sich bei dem METS-Datensatz nicht um die Gesamtaufnahme, sondern um einen einzelnen Band oder ein Heft, muss der Strukturtyp "volume" bzw. "issue" verwendet werden. Ist dies nicht der Fall, wird der Datensatz nicht in die DDB eingespielt. Weitere Informationen zu diesem Element s. METS-Anwendungsprofil Kapitel 2.1.4</sch:report>
      </sch:rule>
   </sch:pattern>
   <sch:pattern>
      <sch:rule context="mets:mets/mets:structMap[@TYPE='LOGICAL']//mets:div[contains(@DMDID, $work_dmdid)][@TYPE='multivolume_work']">
            <!-- Falsche Verwendung des Strukturtyps "multivolume_work" -->
         <sch:report id="structMapLogical_16"
                     role="fatal"
                     test="./ancestor::mets:mets/mets:structLink/mets:smLink or ./ancestor::mets:mets/mets:fileSec/mets:fileGrp[@USE='DEFAULT']"
                     properties="id"
                     see="https://wiki.deutsche-digitale-bibliothek.de/display/DFD/structMap">Der Strukturtyp "multivolume_work" darf nur für die Gesamtaufnahme einer mehrteiligen Monographie verwendet werden. Handelt es sich bei dem METS-Datensatz nicht um die Gesamtaufnahme sondern um einen einzelnen Band, muss der Strukturtyp "volume" verwendet werden. Ist dies nicht der Fall, wird der Datensatz nicht in die DDB eingespielt.</sch:report>
      </sch:rule>
   </sch:pattern>
   <sch:pattern>
      <sch:rule context="mets:mets/mets:structMap[@TYPE='LOGICAL']//mets:mptr">
            <!-- Ungültiger Verweis auf externe METS-Datei -->
         <sch:assert id="structMapLogical_17"
                     role="fatal"
                     test="matches(./@xlink:href, '^(http|https)://[a-zA-Z0-9\-\.]+\.[a-zA-Z][a-zA-Z]+(:[a-zA-Z0-9]*)?/?([a-zA-Z0-9\-\._\?,/\\\+&amp;%\$#=~:])*$')"
                     properties="id"
                     see="https://wiki.deutsche-digitale-bibliothek.de/display/DFD/structMap">Die mets:mptr Elemente in der mets:structMap TYPE="LOGICAL" müssen im Attribut xlink:href eine valide URL einer externen METS-Datei enthalten. Ist dies nicht der Fall können wichtige Informationen daraus nicht geladen werden und der Datensatz wird nicht in die DDB eingespielt. Weitere Informationen zu diesem Element s. METS-Anwendungsprofil Kapitel 2.1.2.2</sch:assert>
      </sch:rule>
   </sch:pattern>
   <sch:pattern>
      <sch:rule context="mets:mets/mets:structMap[@TYPE='LOGICAL']//mets:div[@DMDID]">
            <!-- Strukturelemente mit identischer mets:dmdSec -->
         <sch:report id="structMapLogical_20"
                     role="fatal"
                     test="sum( for $dmdid in tokenize(@DMDID, ' ') return count(key('structMap_LOGICAL_dmdids', $dmdid)) ) &gt; count(tokenize(@DMDID, ' '))"
                     properties="id"
                     see="https://wiki.deutsche-digitale-bibliothek.de/display/DFD/structMap">Der Datensatz enthält in der mets:structMap[@TYPE='LOGICAL'] mindestens zwei Strukturelemente, die über das Attribut DMDID auf die gleiche mets:dmdSec verweisen. Dies führt zu Problemen bei der Zuordnung der Hierarchie und daher wird der METS-Datensatz nicht in die DDB eingespielt.</sch:report>
      </sch:rule>
   </sch:pattern>
   <sch:pattern>
      <sch:rule context="mets:mets/mets:structMap[@TYPE='LOGICAL']//mets:div[contains(@DMDID, $work_dmdid)]//mets:div[@DMDID]">
         <sch:let name="logid" value="@ID"/>
         <sch:let name="physical_div_id"
                  value="./ancestor::mets:mets/mets:structLink/mets:smLink[@xlink:from = $logid][1]/@xlink:to"/>
         <sch:let name="fileids"
                  value="key('structMap_PHYSICAL_ids', $physical_div_id)/descendant-or-self::mets:div[mets:fptr][parent::mets:div][1]/mets:fptr/@FILEID"/>
         <!-- Strukturelemente ohne mets:file in der mets:fileGrp[@USE='DEFAULT'] -->
         <sch:assert id="structMapLogical_22"
                     role="error"
                     test="key('fileGrp_DEFAULT_file_ids', $fileids) or $is_anchor"
                     properties="id"
                     see="https://wiki.deutsche-digitale-bibliothek.de/display/DFD/structMap">Jedes Strukturelement (mets:div in mets:structMap[@TYPE='LOGICAL']) muss für die Anzeige in der DDB mindestens ein mets:file Element im Element mets:fileGrp[@USE='DEFAULT'] zugewiesen sein. Ist dies nicht der Fall, wird das Strukturelement bei der Transformation des Datensatzes entfernt.</sch:assert>
      </sch:rule>
   </sch:pattern>
   <sch:pattern>
      <sch:rule context="mets:mets">
            <!-- mets:structMap TYPE="PHYSICAL" fehlt -->
         <sch:assert id="structMapPhysical_01"
                     role="fatal"
                     test="$is_anchor or mets:structMap[@TYPE='PHYSICAL']"
                     see="https://wiki.deutsche-digitale-bibliothek.de/display/DFD/structMap">mets:structMap TYPE="PHYSICAL" ist notwendig, um die Seiten des Dokuments in der richtigen Reihenfolge anzuzeigen. Fehlt diese Information, wird der Datensatz nicht in die DDB eingespielt. Weitere Informationen zu diesem Element s. METS-Anwendungsprofil Kapitel 2.2.1</sch:assert>
      </sch:rule>
      <sch:rule context="mets:mets/mets:structMap[@TYPE='PHYSICAL'][not(mets:div[@TYPE='physSequence'])]">
            <!-- Innerhalb von mets:structMap TYPE="PHYSICAL" fehlt die Beschreibung der obersten Ebene -->
         <sch:assert id="structMapPhysical_02"
                     role="fatal"
                     test="mets:div[@TYPE='physSequence']"
                     see="https://wiki.deutsche-digitale-bibliothek.de/display/DFD/structMap">mets:structMap TYPE="PHYSICAL" muss auf der obersten Ebene immer eine mets:div enthalten, die in dem Attribut TYPE den Wert physSequence enthält. Ist dies nicht der Fall, wird der Datensatz nicht in die DDB eingespielt. Weitere Informationen zu diesem Element s. METS-Anwendungsprofil Kapitel 2.2.2.1</sch:assert>
      </sch:rule>
      <sch:rule context="mets:mets/mets:structMap[@TYPE='PHYSICAL']">
            <!-- Innerhalb von mets:structMap TYPE="PHYSICAL" fehlt die Liste der Seiten -->
         <sch:assert id="structMapPhysical_03"
                     role="fatal"
                     test="mets:div[@TYPE='physSequence']/mets:div[@TYPE='page']"
                     see="https://wiki.deutsche-digitale-bibliothek.de/display/DFD/structMap">mets:structMap TYPE="PHYSICAL" muss mindestens eine mets:div enthalten, die in dem Attribut TYPE den Wert page enthält. Ist dies nicht der Fall, wird der Datensatz nicht in die DDB eingespielt. Weitere Informationen zu diesem Element s. METS-Anwendungsprofil Kapitel 2.2.2.1</sch:assert>
      </sch:rule>
   </sch:pattern>
   <sch:pattern>
      <sch:rule context="mets:mets/mets:structMap[@TYPE='PHYSICAL']//mets:div">
            <!-- Eindeutiger Identifier fehlt in mets:div in mets:structMap TYPE="PHYSICAL" -->
         <sch:assert id="structMapPhysical_04"
                     role="fatal"
                     test="count(key('mets_ids', @ID)) = 1 and matches(@ID, '^[\i-[:]][\c-[:]]*$')"
                     properties="id"
                     see="https://wiki.deutsche-digitale-bibliothek.de/display/DFD/structMap">Jede mets:div innerhalb von mets:structMap TYPE="PHYSICAL" muss in dem Attribut ID einen eindeutigen Identifier enthalten. Der Identifier darf keine ungültigen Zeichen enthalten. Ist dies nicht der Fall, wird der METS-Datensatz nicht in die DDB eingespielt. Weitere Informationen zu diesem Element s. METS-Anwendungsprofil Kapitel 2.2.2.1</sch:assert>
      </sch:rule>
   </sch:pattern>
   <sch:pattern>
      <sch:rule context="mets:mets/mets:structMap[@TYPE='PHYSICAL']//mets:div[@TYPE='page'][not(@ORDER)]">
            <!-- Attribut order fehlt in mets:div in mets:structMap TYPE="PHYSICAL" -->
         <sch:assert id="structMapPhysical_05"
                     role="warn"
                     test="@ORDER"
                     properties="id"
                     see="https://wiki.deutsche-digitale-bibliothek.de/display/DFD/structMap">Jede mets:div innerhalb von mets:structMap TYPE="PHYSICAL" die das Attribut TYPE mit dem Wert "page" enthält, muss auch ein Attribut order enthalten. Das Fehlen des Attributs order verhindert nicht das Einspielen der Daten in die DDB, wir bitten Sie jedoch, den Sachverhalt zu prüfen und die nötigen Korrekturen bis zur nächsten Datenlieferung vorzunehmen. Weitere Informationen zu diesem Element s. METS-Anwendungsprofil Kapitel 2.2.2.1</sch:assert>
      </sch:rule>
      <sch:rule context="mets:mets/mets:structMap[@TYPE='PHYSICAL']//mets:div[@TYPE='page']">
            <!-- Falscher Attributwert in mets:div in mets:structMap TYPE="PHYSICAL" -->
         <sch:assert id="structMapPhysical_06"
                     role="warn"
                     test="matches(@ORDER, '^\d+$')"
                     properties="id"
                     see="https://wiki.deutsche-digitale-bibliothek.de/display/DFD/structMap">In der structMap TYPE="PHYSICAL" muss der Wert in dem Attribut order innerhalb der mets:div mit TYPE="page" immer ein integer sein. Ist dies nicht der Fall, verhindert es nicht das Einspielen der Daten in die DDB, wir bitten Sie jedoch, den Sachverhalt zu prüfen und die nötigen Korrekturen bis zur nächsten Datenlieferung vorzunehmen, da es Probleme bei der Anzeige der Seiten im Viewer nach sich ziehen kann. Weitere Informationen zu diesem Element s. METS-Anwendungsprofil Kapitel 2.2.2.1</sch:assert>
      </sch:rule>
   </sch:pattern>
   <sch:pattern>
      <sch:rule context="mets:mets/mets:structMap[@TYPE='PHYSICAL']//mets:div[@TYPE='page']">
            <!-- Verknüpfung zur mets:fileSec fehlt -->
         <sch:assert id="structMapPhysical_07"
                     role="fatal"
                     test="mets:fptr[string-length(@FILEID) &gt; 0]"
                     properties="id"
                     see="https://wiki.deutsche-digitale-bibliothek.de/display/DFD/structMap">Jede mets:div innerhalb von mets:structMap TYPE="PHYSICAL", die das Attribut TYPE="page" enthält, muss das Unterelement mets:fptr enthalten, das in den Attributen FILEID den Identifier enthält, der auf die jeweiligen Bilder in der mets:fileSec verlinkt. Ist dies nicht der Fall, wird der METS-Datensatz nicht in die DDB eingespielt. Weitere Informationen zu diesem Element s. METS-Anwendungsprofil Kapitel 2.2.2.1</sch:assert>
      </sch:rule>
   </sch:pattern>
   <sch:pattern>
      <sch:rule context="mets:mets/mets:structMap[@TYPE='PHYSICAL'][//mets:div[@TYPE='page'][starts-with(@CONTENTIDS, 'urn:')]]//mets:div[@TYPE='page']">
            <!-- Seiten ohne URN -->
         <sch:assert id="structMapPhysical_08"
                     role="fatal"
                     test="starts-with(@CONTENTIDS, 'urn:')"
                     properties="id"
                     see="https://wiki.deutsche-digitale-bibliothek.de/display/DFD/structMap">Wenn in einem Datensatz URNs auf Seitenebene vergeben werden, muss für jede Seite eine URN vorhanden sein. Das bedeutet, wenn in der mets:structMap TYPE="PHYSICAL" mindestens ein mets:div mit dem Attribut TYPE und dem Wert "page" zusätzlich ein Attribut CONTENTIDS mit einer URN enthält, müssen alle mets:div mit dem Attribut TYPE und dem Wert "page" ebenfalls ein Attribut CONTENTIDS mit einer URN enthalten. Ist dies nicht der Fall, wird der Datensatz nicht in die DDB eingespielt.</sch:assert>
      </sch:rule>
   </sch:pattern>
   <sch:pattern>
      <sch:rule context="mets:mets">
            <!-- mets:structLink fehlt -->
         <sch:assert id="structLink_01"
                     role="fatal"
                     test="$is_anchor or mets:structLink"
                     see="https://wiki.deutsche-digitale-bibliothek.de/display/DFD/structLink">mets:structLink ist notwendig, um die Ebenen der logischen Struktur mit den dazugehörigen Seiten zu verknüpfen. Fehlt diese Information, wird der Datensatz nicht in die DDB eingespielt. Weitere Informationen zu diesem Element s. METS-Anwendungsprofil Kapitel 2.3</sch:assert>
      </sch:rule>
      <sch:rule context="mets:mets/mets:structLink[not(mets:smLink)]">
            <!-- mets:smLink fehlt -->
         <sch:assert id="structLink_02"
                     role="fatal"
                     test="mets:smLink"
                     see="https://wiki.deutsche-digitale-bibliothek.de/display/DFD/structLink">Die Verknüpfung zwischen den logischen Ebenen der mets:structMap TYPE="LOGICAL" und den dazugehörigen Seiten in der structMap TYPE="PHYSICAL" erfolgt im mets:structLink in den Unterelementen mets:smLink. Ist kein mets:smLink vorhanden, wird der Datensatz nicht in die DDB eingespielt. Weitere Informationen zu diesem Element s. METS-Anwendungsprofil Kapitel 2.3.2.1</sch:assert>
      </sch:rule>
      <sch:rule context="mets:mets/mets:structLink/mets:smLink[not(string-length(@xlink:from) &gt; 0 and string-length(@xlink:to) &gt; 0)]">
            <!-- Verknüpfung zwischen der logischen und physischen Struktur fehlt -->
         <sch:assert id="structLink_03"
                     role="fatal"
                     test="string-length(@xlink:from) &gt; 0 and string-length(@xlink:to) &gt; 0"
                     see="https://wiki.deutsche-digitale-bibliothek.de/display/DFD/structLink">Die Verknüpfung zwischen den logischen Ebenen der mets:structMap TYPE="LOGICAL" und den dazugehörigen Seiten in der structMap TYPE="PHYSICAL" erfolgt im mets:structLink in den Unterelementen mets:smLink über die Attribute xlink:from und xlink:to. Fehlt eines dieser Attribute, wird der Datensatz nicht in die DDB eingespielt.</sch:assert>
      </sch:rule>
      <sch:rule context="mets:mets/mets:structLink/mets:smLink">
            <!-- Identifier aus mets:structLink fehlt in der mets:structMap TYPE="PHYSICAL" -->
         <sch:assert id="structLink_04"
                     role="fatal"
                     test="key('structMap_PHYSICAL_ids', @xlink:to)"
                     see="https://wiki.deutsche-digitale-bibliothek.de/display/DFD/structLink">Die Verknüpfung zwischen den logischen Ebenen der mets:structMap TYPE="LOGICAL" und den dazugehörigen Seiten in der structMap TYPE="PHYSICAL" erfolgt im mets:structLink in den Unterelementen mets:smLink über die Attribute xlink:from und xlink:to. Dafür muss jeder Identifier, der in einem mets:smLink steht einem ID in der structMap TYPE="PHYSICAL" entsprechen. Ist dies nicht der Fall, wird der METS-Datensatz nicht in die DDB eingespielt. Weitere Informationen zu diesem Element s. METS-Anwendungsprofil Kapitel 2.2 und 2.3</sch:assert>
      </sch:rule>
   </sch:pattern>
   <sch:pattern>
      <sch:rule context="mets:mets">
            <!-- mets:fileSec fehlt -->
         <sch:assert id="fileSec_01"
                     role="fatal"
                     test="$is_anchor or mets:fileSec"
                     see="https://wiki.deutsche-digitale-bibliothek.de/display/DFD/fileSec">Die mets:fileSec enthält die Links zu den digitalen Bildern. Fehlt die mets:fileSec, wird der Datensatz nicht in die DDB eingespielt. Weitere Informationen zu diesem Element s. METS-Anwendungsprofil Kapitel 2.4</sch:assert>
      </sch:rule>
      <sch:rule context="mets:mets/mets:fileSec[not(mets:fileGrp[@USE='DEFAULT'])]">
            <!-- mets:fileGrp USE=DEFAULT fehlt -->
         <sch:assert id="fileSec_02"
                     role="fatal"
                     test="mets:fileGrp[@USE='DEFAULT'] or $is_anchor"
                     see="https://wiki.deutsche-digitale-bibliothek.de/display/DFD/fileSec">Die mets:fileSec enthält die Links zu den digitalen Bildern in unterschiedlichen Auflösungen. Um welche Art von Auflösung es sich dabei handelt, wird über die mets:fileGrp angegeben. Jede Auflösung eines Bildes wird daher der entsprechenden fileGrp zugeordnet. Eine mets:fileSec muss mindestens die mets:fileGrp mit dem Attribut USE="DEFAULT" enthalten. Ist dies nicht der Fall, wird der Datensatz nicht in die DDB eingespielt. Weitere Informationen zu diesem Element s. METS-Anwendungsprofil Kapitel 2.4.2.1</sch:assert>
      </sch:rule>
      <sch:rule context="mets:mets/mets:fileSec/mets:fileGrp[@USE='DEFAULT']">
            <!-- mets:file fehlt -->
         <sch:report id="fileSec_03"
                     role="fatal"
                     test="mets:file[mets:FLocat[string-length(@xlink:href) = 0]]"
                     see="https://wiki.deutsche-digitale-bibliothek.de/display/DFD/fileSec">In der mets:fileSec sind innerhalb der mets:fileGrp die einzelnen Bilder gelistet. Die mets:fileGrp use="DEFAULT" muss mindestens ein mets:file enthalten und dieses muss in dem Unterelement mets:FLocat das Attribut xlink:href enthalten, in der sich der Link zu dem digitalen Bild befindet. Fehlt mets:file mit dem Attribut xlink:href im Unterelement mets:FLocat, wird der Datensatz nicht in die DDB eingespielt. Weitere Informationen zu diesem Element s. METS-Anwendungsprofil Kapitel 2.4.2.3</sch:report>
      </sch:rule>
   </sch:pattern>
   <sch:pattern>
      <sch:rule context="mets:mets/mets:fileSec/mets:fileGrp/mets:file">
            <!-- Eindeutiger Identifier fehlt in mets:file -->
         <sch:assert id="fileSec_04"
                     role="fatal"
                     test="count(key('mets_ids', @ID)) = 1 and matches(@ID, '^[\i-[:]][\c-[:]]*$')"
                     properties="id"
                     see="https://wiki.deutsche-digitale-bibliothek.de/display/DFD/fileSec">Jedes mets:file in der mets:fileSec muss das Attribut ID mit einem eindeutigen Identifier enthalten. Der Identifier darf keine ungültigen Zeichen enthalten. Ist dies nicht der Fall, wird der METS-Datensatz nicht in die DDB eingespielt. Weitere Informationen zu diesem Element s. METS-Anwendungsprofil Kapitel 2.4.2.2</sch:assert>
      </sch:rule>
   </sch:pattern>
   <sch:pattern>
      <sch:rule context="mets:mets/mets:fileSec">
            <!-- mets:file ohne Attribut MIMETYPE -->
         <sch:report id="fileSec_08"
                     role="warn"
                     test="//mets:file[string-length(@MIMETYPE) = 0]"
                     see="https://wiki.deutsche-digitale-bibliothek.de/display/DFD/fileSec">Jedes mets:file Element im Element mets:fileSec muss das Attribut MIMETYPE besitzen. Der Datensatz enthält mindestens ein mets:file ohne das Attribut MIMETYPE. Da dies Auswirkungen auf die Anzeige in der DDB haben kann, bitten Sie den Sachverhalt zu prüfen und die nötigen Korrekturen bis zur nächsten Datenlieferung vorzunehmen. Weitere Informationen zu diesem Element s. METS-Anwendungsprofil Kapitel 2.4.2.2</sch:report>
      </sch:rule>
   </sch:pattern>
   <sch:pattern>
      <sch:rule context="mets:mets">
            <!-- mets:dmdSec fehlt -->
         <sch:assert id="dmdSec_01"
                     role="fatal"
                     test="mets:dmdSec[@ID=$work_dmdid]/mets:mdWrap/mets:xmlData/mods:mods"
                     properties="id"
                     see="https://wiki.deutsche-digitale-bibliothek.de/display/DFD/dmdSec">Die mets:dmdSec enthält die bibliographische Beschreibung des Werks. Innerhalb eines METS-Datensatzes muss es mindestens eine mets:dmdSec geben, die MODS-Daten enthält. Ist dies nicht der Fall, wird der Datensatz nicht in die DDB eingespielt. Weitere Informationen zu diesem Element s. METS-Anwendungsprofil Kapitel 2.5</sch:assert>
      </sch:rule>
      <sch:rule context="mets:dmdSec[not(@ID=$work_dmdid)]">
            <!-- Unterelemente fehlen in mets:dmdSec -->
         <sch:assert id="dmdSec_02"
                     role="error"
                     test="mets:mdWrap/mets:xmlData/mods:mods"
                     properties="id"
                     see="https://wiki.deutsche-digitale-bibliothek.de/display/DFD/dmdSec">Jede mets:dmdSec muss das Unterelement mets:mdWrap mit dem Unterelement mets:xmlData enthalten. Und mets:xmlData muss das Unterelement mods:mods enthalten. Ist dies nicht der Fall, wird die mets:dmdSec bei der Bereinigung der Daten entfernt. Weitere Informationen zu diesem Element s. METS-Anwendungsprofil Kapitel 2.5.2.1</sch:assert>
      </sch:rule>
   </sch:pattern>
   <sch:pattern>
      <sch:rule context="mets:dmdSec">
            <!-- Kein eindeutiger Identifier für mets:dmdSec -->
         <sch:assert id="dmdSec_03"
                     role="fatal"
                     test="count(key('mets_ids', @ID)) = 1 and matches(@ID, '^[\i-[:]][\c-[:]]*$')"
                     see="https://wiki.deutsche-digitale-bibliothek.de/display/DFD/dmdSec">Jede mets:dmdSec muss das Attribut ID mit einem eindeutigen Identifier enthalten. Der Identifier darf keine ungültigen Zeichen enthalten. Ist dies nicht der Fall, wird der METS-Datensatz nicht in die DDB eingespielt. Weitere Informationen zu diesem Element s. METS-Anwendungsprofil Kapitel 2.5.1</sch:assert>
      </sch:rule>
   </sch:pattern>
   <sch:pattern>
      <sch:rule context="mets:dmdSec">
            <!-- Identifier der mets:dmdSec fehlt in der structMap TYPE="LOGICAL" -->
         <sch:assert id="dmdSec_04"
                     role="error"
                     test="key('structMap_LOGICAL_dmdids', @ID)"
                     properties="id"
                     see="https://wiki.deutsche-digitale-bibliothek.de/display/DFD/dmdSec">Jede mets:dmdSec muss über ihren Identifier mit der dazugehörigen logischen Ebene verknüpft werden. Der Identifier der mets:dmdSec muss darum in der mets:div, die die logische Ebene beschreibt in dem Attribut DMDID vorkommen. Ist dies nicht der Fall, wird die mets:dmdSec bei der Bereinigung der Daten entfernt.</sch:assert>
      </sch:rule>
   </sch:pattern>
   <sch:pattern>
      <sch:rule context="mets:mets">
            <!-- mets:amdSec fehlt -->
         <sch:assert id="amdSec_01"
                     role="fatal"
                     test="mets:amdSec"
                     see="https://wiki.deutsche-digitale-bibliothek.de/display/DFD/amdSec">Die mets:amdSec enthält die administrativen Metadaten zum Digitalisat. Innerhalb eines METS-Datensatzes muss eine mets:amdSec für das primäre logische Strukturelement geben. Ist dies nicht der Fall, wird der Datensatz nicht in die DDB eingespielt. Weitere Informationen zu diesem Element s. METS-Anwendungsprofil Kapitel 2.6</sch:assert>
      </sch:rule>
      <sch:rule context="mets:amdSec">
            <!-- Kein eindeutiger Identifier für mets:amdSec -->
         <sch:assert id="amdSec_02"
                     role="warn"
                     test="count(key('mets_ids', @ID)) = 1 and matches(@ID, '^[\i-[:]][\c-[:]]*$')"
                     properties="id"
                     see="https://wiki.deutsche-digitale-bibliothek.de/display/DFD/amdSec">Jede mets:amdSec muss das Attribut ID mit einem eindeutigen Identifier enthalten. Der Identifier darf keine ungültigen Zeichen enthalten. Das Fehlen der ID verhindert nicht das Einspielen der Daten in die DDB, wir bitten Sie jedoch, den Sachverhalt zu prüfen und die nötigen Korrekturen bis zur nächsten Datenlieferung vorzunehmen. Weitere Informationen zu diesem Element s. METS-Anwendungsprofil Kapitel 2.6.1</sch:assert>
      </sch:rule>
   </sch:pattern>
   <sch:pattern>
      <sch:rule context="mets:mets[mets:amdSec[@ID=$work_amdid]][not( mets:amdSec[@ID=$work_amdid]/mets:rightsMD/mets:mdWrap/mets:xmlData/dv:rights/dv:license or mets:dmdSec[@ID=$work_dmdid]/mets:mdWrap/mets:xmlData/mods:mods/mods:accessCondition[@type='use and reproduction'] )] | mets:mets[mets:amdSec[not(@ID=$work_amdid)][1]][not( mets:amdSec[not(@ID=$work_amdid)][1]/mets:rightsMD/mets:mdWrap/mets:xmlData/dv:rights/dv:license or mets:dmdSec[@ID=$work_dmdid]/mets:mdWrap/mets:xmlData/mods:mods/mods:accessCondition[@type='use and reproduction'] )]">
            <!-- Rechteangabe fehlt -->
         <sch:assert id="amdSec_04"
                     role="error"
                     test="mets:amdSec[@ID=$work_amdid]/mets:rightsMD/mets:mdWrap/mets:xmlData/dv:rights/dv:license or mets:amdSec[not(@ID=$work_amdid)][1]/mets:rightsMD/mets:mdWrap/mets:xmlData/dv:rights/dv:license or mets:dmdSec[@ID=$work_dmdid]/mets:mdWrap/mets:xmlData/mods:mods/mods:accessCondition[@type='use and reproduction']"
                     see="https://wiki.deutsche-digitale-bibliothek.de/display/DFD/amdSec">Jeder Datensatz muss Informationen über die Rechte an den Digitalisaten enthalten, damit er in die DDB eingespielt werden kann. Der Link zu einer Lizenz bzw. einem Rightsstatement steht in der mets:rightsMD in dem Element dv:license, das ein Unterelement von dv:rights, das wiederum ein Unterelement von mets:xmlData, das wiederum ein Unterelement von mets:mdWrap ist. Ist die Verwendung von dv:license nicht möglich, muss die Lizenz bzw. das Rightsstatement in mods:accessCondition type="use and reproduction" stehen. Ist keines von beiden der Fall, wird nach Rücksprache mit dem Datengeber für alle Datensätze bei der Bereinigung der Daten eine Standard-Lizenz gesetzt. Weitere Informationen zu diesem Element s. </sch:assert>
      </sch:rule>
      <sch:rule context="mets:mets[mets:amdSec[@ID=$work_amdid] or mets:amdSec[not(@ID=$work_amdid)][1]]">
            <!-- Rechteangabe weicht von den Vorgaben ab -->
         <sch:assert id="amdSec_05"
                     role="error"
                     test="key('license_uris', mets:amdSec[@ID=$work_amdid]/mets:rightsMD/mets:mdWrap/mets:xmlData/dv:rights/dv:license[1], $license_uris) or key('license_uris', mets:amdSec[not(@ID=$work_amdid)][1]/mets:rightsMD/mets:mdWrap/mets:xmlData/dv:rights/dv:license[1], $license_uris) or key('license_uris', mets:dmdSec[@ID=$work_dmdid]/mets:mdWrap/mets:xmlData/mods:mods/mods:accessCondition[@type='use and reproduction'][string-length(@*[local-name()='href'][1]) &gt; 0][1]/@*[local-name()='href'][1], $license_uris) or key('mets_ap_dv_license_values', mets:amdSec[@ID=$work_amdid]/mets:rightsMD/mets:mdWrap/mets:xmlData/dv:rights/dv:license[1], $mets_ap_dv_license_values) or key('mets_ap_dv_license_values', mets:amdSec[not(@ID=$work_amdid)][1]/mets:rightsMD/mets:mdWrap/mets:xmlData/dv:rights/dv:license[1], $mets_ap_dv_license_values)"
                     see="https://wiki.deutsche-digitale-bibliothek.de/display/DFD/amdSec">Die von der DDB akzeptierten Rechteangaben entsprechen der von Europeana veröffentlichten Liste der rights statements (s. \url{https://pro.europeana.eu/page/available-rights-statements}). Entsprechen die Rechteangaben in den Daten nicht den in dieser Liste erlaubten URIs, werden sie nach Rücksprache mit den Datengebern bei der Bereinigung der Daten in eine der dort genannten Lizenzen bzw. Rechteangaben konvertiert.</sch:assert>
      </sch:rule>
   </sch:pattern>
   <sch:pattern>
      <sch:rule context="mets:amdSec[@ID=$work_amdid]/mets:digiprovMD | mets:amdSec[not(@ID=$work_amdid)][1]/mets:digiprovMD">
            <!-- Link zum Objekt beim Datengeber fehlt -->
         <sch:assert id="amdSec_06"
                     role="error"
                     test="mets:mdWrap/mets:xmlData/dv:links/dv:reference[matches(text()[1], '^http[s]?://.+')] or mets:mdWrap/mets:xmlData/dv:links/dv:presentation[matches(text()[1], '^http[s]?://.+')]"
                     properties="id"
                     see="https://wiki.deutsche-digitale-bibliothek.de/display/DFD/amdSec">In der mets:amdSec des primären logischen Strukturelements enthält das Unterelement mets:digiprovMD einen Link zu dem Digitalisat beim Datenpartner. Dieser Link muss in Form eines http- oder https-URI in dv:presentation oder dv:reference vorhanden sein. Beide Elemente sind Unterelemente von dv:links, das ein Unterelement von mets:xmlData ist, welches ein Unterelement von mets:mdWrap ist welches ein Unterelement von mets:digiprovMD ist. Ist weder dv:presentation noch dv:reference vorhanden bzw. enthält keines dieser Elemente einen http- bzw. https-URI, wird mets:digiprovMD bei der Transformation der Daten entfernt. Weitere Informationen zu diesem Element s. METS-Anwendungsprofil Kapitel 2.7.4</sch:assert>
      </sch:rule>
   </sch:pattern>
   <sch:pattern>
      <sch:rule context="mets:rightsMD/mets:mdWrap/mets:xmlData/dv:rights">
            <!-- Wiederholung von dv:owner -->
         <sch:report id="amdSec_07"
                     role="fatal"
                     test="dv:owner[2]"
                     properties="id"
                     see="https://wiki.deutsche-digitale-bibliothek.de/display/DFD/amdSec">Innerhalb von dv:rights darf dv:owner nicht wiederholt werden. Ist mehr als ein dv:owner in dv:rights vorhanden, schlägt die Zuordnung des METS-Datensatzes zum Datenpartner fehl und kann daher nicht in die DDB eingespielt werden. Weitere Informationen zu diesem Element s. METS-Anwendungsprofil Kapitel 2.7.2.1</sch:report>
      </sch:rule>
   </sch:pattern>
   <sch:pattern>
      <sch:rule context="mets:mets[mets:structMap[@TYPE='LOGICAL']//mets:div[contains(@DMDID, $work_dmdid)][contains(@ADMID, ' ')]]">
            <!-- Mehr als eine mets:amdSec zum primären Strukturelement zugeordnet -->
         <sch:report id="amdSec_08"
                     role="fatal"
                     test="contains($work_amdid, ' ')"
                     see="https://wiki.deutsche-digitale-bibliothek.de/display/DFD/amdSec">Sind mit dem primären Strukturelement (das primäre mets:div in der mets:structMap[@TYPE='LOGICAL']) über das Attribut "ADMID" mehrere mets:amdSec verlinkt, ist keine eindeutige Zuordnung der adminstrativen Metadaten zum METS-Datensatz möglich. Er kann daher nicht in die DDB eingespielt werden. Weitere Informationen zu diesem Element s. METS-Anwendungsprofil Kapitel 2.1.2.1 und 2.6.1</sch:report>
      </sch:rule>
      <sch:rule context="mets:mets[not(mets:amdSec[@ID=$work_amdid]) and mets:amdSec[not(key('structMap_LOGICAL_admids', @AMDID))][2]]">
            <!-- Mehrere mets:amdSec ohne Verlinkung -->
         <sch:report id="amdSec_09"
                     role="fatal"
                     test="not(mets:amdSec[@ID=$work_amdid]) and mets:amdSec[not(key('structMap_LOGICAL_admids', @AMDID))][2]"
                     see="https://wiki.deutsche-digitale-bibliothek.de/display/DFD/amdSec">Der Datensatz enthält mehrere mets:amdSec, die nicht von einem mets:div in der mets:structMap[@TYPE='LOGICAL'] über das Attribut "ADMID" referenziert werden. Darüber hinaus fehlt die Verlinkung des primären Strukturelements (primäres mets:div in der mets:structMap[@TYPE='LOGICAL']) über das Attribut "ADMID" mit einer mets:amdSec. Daher ist keine eindeutige Zuordnung der adminstrativen Metadaten zum METS-Datensatz möglich und er kann nicht in die DDB eingespielt werden. Weitere Informationen zu diesem Element s. METS-Anwendungsprofil Kapitel 2.1.2.1 und 2.6.1</sch:report>
      </sch:rule>
      <sch:rule context="mets:mets">
            <!-- Verlinkung des primären Strukturelements zur mets:amdSec fehlt -->
         <sch:assert id="amdSec_10"
                     role="error"
                     test="mets:amdSec[@ID=$work_amdid]"
                     see="https://wiki.deutsche-digitale-bibliothek.de/display/DFD/amdSec">Das primäre Strukturelement (primäres mets:div in der mets:structMap[@TYPE='LOGICAL']) muss über das Attribut "ADMID" mit genau einer mets:amdSec verlinkt sein. Ist dies nicht der Fall und der METS-Datensatz verfügt nur über genau eine mets:amdSec wird die Verlinkung bei der Transformation der Daten erzeugt. Weitere Informationen zu diesem Element s. METS-Anwendungsprofil Kapitel 2.1.2.1 und 2.6.1</sch:assert>
      </sch:rule>
   </sch:pattern>
   <sch:pattern>
      <sch:rule context="mets:mets/mets:structMap[@TYPE='LOGICAL']//mets:div[not(contains(@DMDID, $work_dmdid))][@ADMID]">
            <!-- mets:amdSec für Strukturelemente -->
         <sch:report id="amdSec_11"
                     role="info"
                     test="key('amdsec_ids', @ADMID)"
                     see="https://wiki.deutsche-digitale-bibliothek.de/display/DFD/amdSec">Die administrativen Metadaten in der mets:amdSec werden für den METS-Datensatz ausschließlich aus der mets:amdSec abgeleitet, die mit dem primären Strukturelement (primäres mets:div in der mets:structMap[@TYPE='LOGICAL']) über das Attribut "ADMID" verlinkt ist. Besitzt der Datensatz darüber hinaus weitere mets:amdSec, die mit anderen Strukturelementen verlinkt sind, werden deren administrative Metadaten von der DDB zurzeit nicht berücksichtigt.</sch:report>
      </sch:rule>
   </sch:pattern>
   <sch:pattern>
      <sch:rule context="mets:rightsMD/mets:mdWrap/mets:xmlData/dv:rights">
            <!-- dv:license ist in dv:rights mehrmals vorhanden -->
         <sch:report id="amdSec_12"
                     role="error"
                     test="dv:license[2]"
                     see="https://wiki.deutsche-digitale-bibliothek.de/display/DFD/amdSec">Das Element dv:rights darf das Element dv:license nur einmal enthalten. Enthält dv:rights mehr als ein dv:license, wird bei der Bereinigung des Datensatzes das erste Vorkommen von dv:license mit gültiger Lizenz-URI übernommen, alle anderen dv:license werden entfernt. Weitere Informationen zu diesem Element s. METS-Anwendungsprofil Kapitel 2.7.2.11</sch:report>
      </sch:rule>
   </sch:pattern>
   <sch:pattern>
      <sch:rule context="mets:mets[ ( key('license_uris', mets:amdSec[@ID=$work_amdid]/mets:rightsMD/mets:mdWrap/mets:xmlData/dv:rights/dv:license[1], $license_uris) and not(mets:amdSec[@ID=$work_amdid]/mets:rightsMD/mets:mdWrap/mets:xmlData/dv:rights/dv:license[1][contains(text(), 'creativecommons.org/publicdomain/mark/1.0/')]) ) or ( key('license_uris', mets:amdSec[not(@ID=$work_amdid)][1]/mets:rightsMD/mets:mdWrap/mets:xmlData/dv:rights/dv:license[1], $license_uris) and not(mets:amdSec[not(@ID=$work_amdid)][1]/mets:rightsMD/mets:mdWrap/mets:xmlData/dv:rights/dv:license[1][contains(text(), 'creativecommons.org/publicdomain/mark/1.0/')]) ) or ( key('license_uris', mets:dmdSec[@ID=$work_dmdid]/mets:mdWrap/mets:xmlData/mods:mods/mods:accessCondition[@type='use and reproduction'][string-length(@*[local-name()='href'][1]) &gt; 0][1]/@*[local-name()='href'][1], $license_uris) and not(mets:dmdSec[@ID=$work_dmdid]/mets:mdWrap/mets:xmlData/mods:mods/mods:accessCondition[@type='use and reproduction'][string-length(@*[local-name()='href'][1]) &gt; 0][1]/@*[local-name()='href'][1][contains(., 'creativecommons.org/publicdomain/mark/1.0/')]) ) or ( key('mets_ap_dv_license_values', mets:amdSec[@ID=$work_amdid]/mets:rightsMD/mets:mdWrap/mets:xmlData/dv:rights/dv:license[1], $mets_ap_dv_license_values) and not(mets:amdSec[@ID=$work_amdid]/mets:rightsMD/mets:mdWrap/mets:xmlData/dv:rights/dv:license[1][text()='pdm']) ) or ( key('mets_ap_dv_license_values', mets:amdSec[not(@ID=$work_amdid)][1]/mets:rightsMD/mets:mdWrap/mets:xmlData/dv:rights/dv:license[1], $mets_ap_dv_license_values) and not(mets:amdSec[not(@ID=$work_amdid)][1]/mets:rightsMD/mets:mdWrap/mets:xmlData/dv:rights/dv:license[1][text()='pdm']) ) ]/mets:dmdSec[@ID=$work_dmdid]/mets:mdWrap/mets:xmlData/mods:mods">
            <!-- Hinweis auf möglicherweise ungültige Rechteangabe -->
         <sch:report id="amdSec_13"
                     role="warn"
                     test="max( ( mods:originInfo[not(mods:edition[text()='[Electronic ed.]'])]/mods:dateIssued[matches(text()[1], '^((-\d\d\d\d+)|(\d\d\d\d))(-\d\d)?(-\d\d)?$')]/number(tokenize(text(), '-')[1]), mods:originInfo[not(mods:edition[text()='[Electronic ed.]'])]/mods:dateCreated[matches(text()[1], '^((-\d\d\d\d+)|(\d\d\d\d))(-\d\d)?(-\d\d)?$')]/number(tokenize(text(), '-')[1]) ) ) &lt; 1910"
                     properties="dmd_id">Die Lizenzen aus dem Lizenzkorb der DDB können nur für Materialien genutzt werden, an denen Urheberrechte nach § 2 UrhG oder Lichtbildrechte nach § 72 UrhG bestehen. Der Scan oder die Fotografie von typischen Bibliotheksbeständen (Bücher, Zeitschriften und andere Schriftwerke) lässt solche Rechte in Fällen, in denen eine möglichst originalgetreue Reproduktion erzeugt werden soll, nicht entstehen. Daher kommt bei Scans / Fotos gemeinfreier Vorlagen in aller Regel nur der ebenfalls im „Lizenzkorb“ enthaltene Rechtehinweis "Public Domain Mark" in Frage. Dies ist nur ein Hinweis auf die Rechtslage in Verbindung mit der Bitte um Prüfung, ob Sie – dem entsprechend – in den Rechteangaben zu Ihren Digitalisaten den richtigen Rechtehinweis vergeben haben. Die Rechteangaben bleiben jedoch – wie im Kooperationsvertrag geregelt – in der Verantwortung Ihrer Einrichtung.</sch:report>
      </sch:rule>
   </sch:pattern>
   <sch:pattern>
      <sch:rule context="mets:mets[not( mets:dmdSec[@ID=$work_dmdid]/mets:mdWrap/mets:xmlData/mods:mods/mods:accessCondition[@type='use and reproduction'][key('license_uris', replace(text(), 'deed\.[a-z][a-z]$', ''), $license_uris)] or mets:dmdSec[@ID=$work_dmdid]/mets:mdWrap/mets:xmlData/mods:mods/mods:accessCondition[@type='use and reproduction'][key('license_uris', replace(@*[local-name()='href'][1], 'deed\.[a-z][a-z]$', ''), $license_uris)] )]">
            <!-- Widersprüchliche Rechteangaben in dv:license -->
         <sch:report id="amdSec_14"
                     role="fatal"
                     test="count(distinct-values(( mets:amdSec[@ID=$work_amdid]/mets:rightsMD/mets:mdWrap/mets:xmlData/dv:rights/dv:license[key('license_uris', replace(text(), 'deed\.[a-z][a-z]$', ''), $license_uris)]/replace(replace(text(), '^https', 'http'), 'deed\.[a-z][a-z]$', ''), mets:amdSec[not(@ID=$work_amdid)][1]/mets:rightsMD/mets:mdWrap/mets:xmlData/dv:rights/dv:license[key('license_uris', replace(text(), 'deed\.[a-z][a-z]$', ''), $license_uris)]/replace(replace(text(), '^https', 'http'), 'deed\.[a-z][a-z]$', ''), key('mets_ap_dv_license_values', mets:amdSec[@ID=$work_amdid]/mets:rightsMD/mets:mdWrap/mets:xmlData/dv:rights/dv:license[key('mets_ap_dv_license_values', text(), $mets_ap_dv_license_values)]/text(), $mets_ap_dv_license_values)/@to ))) &gt; 1"
                     properties="dmd_id">Datensätze müssen eindeutige Rechteangaben zu den Digitalisaten enthalten. Der Datensatz enthält im Element dv:license widersprüchliche Rechteinformationen aus dem Lizenzkorb der DDB und wird daher nicht in die DDB eingespielt.</sch:report>
      </sch:rule>
      <sch:rule context="mets:mets[ mets:dmdSec[@ID=$work_dmdid]/mets:mdWrap/mets:xmlData/mods:mods[mods:accessCondition[@type='use and reproduction'][ key('license_uris', replace(text(), 'deed\.[a-z][a-z]$', ''), $license_uris) or key('license_uris', replace(@*[local-name()='href'][1], 'deed\.[a-z][a-z]$', ''), $license_uris) ][2]] ]">
            <!-- Widersprüchliche Rechteangaben in mods:accessCondition[@type='use and reproduction'] -->
         <sch:report id="amdSec_16"
                     role="fatal"
                     test="count(distinct-values(( mets:dmdSec[@ID=$work_dmdid]/mets:mdWrap/mets:xmlData/mods:mods/mods:accessCondition[@type='use and reproduction'][key('license_uris', replace(text(), 'deed\.[a-z][a-z]$', ''), $license_uris)]/replace(replace(text(), '^https', 'http'), 'deed\.[a-z][a-z]$', ''), mets:dmdSec[@ID=$work_dmdid]/mets:mdWrap/mets:xmlData/mods:mods/mods:accessCondition[@type='use and reproduction'][key('license_uris', replace(@*[local-name()='href'][1], 'deed\.[a-z][a-z]$', ''), $license_uris)]/replace(replace(@*[local-name()='href'][1], '^https', 'http'), 'deed\.[a-z][a-z]$', '') ))) &gt; 1"
                     properties="dmd_id">Datensätze müssen eindeutige Rechteangaben zu den Digitalisaten enthalten. Der Datensatz enthält im Element mods:accessCondition[@type='use and reproduction'] widersprüchliche Rechteinformationen aus dem Lizenzkorb der DDB und wird daher nicht in die DDB eingespielt.</sch:report>
      </sch:rule>
      <sch:rule context="mets:mets">
            <!-- Widersprüchliche Rechteangaben in dv:license -->
         <sch:report id="amdSec_17"
                     role="error"
                     test="count(distinct-values(( mets:amdSec[@ID=$work_amdid]/mets:rightsMD/mets:mdWrap/mets:xmlData/dv:rights/dv:license[key('license_uris', replace(text(), 'deed\.[a-z][a-z]$', ''), $license_uris)]/replace(replace(text(), '^https', 'http'), 'deed\.[a-z][a-z]$', ''), mets:amdSec[not(@ID=$work_amdid)][1]/mets:rightsMD/mets:mdWrap/mets:xmlData/dv:rights/dv:license[key('license_uris', replace(text(), 'deed\.[a-z][a-z]$', ''), $license_uris)]/replace(replace(text(), '^https', 'http'), 'deed\.[a-z][a-z]$', ''), mets:dmdSec[@ID=$work_dmdid]/mets:mdWrap/mets:xmlData/mods:mods/mods:accessCondition[@type='use and reproduction'][key('license_uris', replace(text(), 'deed\.[a-z][a-z]$', ''), $license_uris)]/replace(replace(text(), '^https', 'http'), 'deed\.[a-z][a-z]$', ''), mets:dmdSec[@ID=$work_dmdid]/mets:mdWrap/mets:xmlData/mods:mods/mods:accessCondition[@type='use and reproduction'][key('license_uris', replace(@*[local-name()='href'][1], 'deed\.[a-z][a-z]$', ''), $license_uris)]/replace(replace(@*[local-name()='href'][1], '^https', 'http'), 'deed\.[a-z][a-z]$', ''), key('mets_ap_dv_license_values', mets:amdSec[@ID=$work_amdid]/mets:rightsMD/mets:mdWrap/mets:xmlData/dv:rights/dv:license[key('mets_ap_dv_license_values', text(), $mets_ap_dv_license_values)]/text(), $mets_ap_dv_license_values)/@to ))) &gt; 1"
                     properties="dmd_id">Datensätze müssen eindeutige Rechteangaben zu den Digitalisaten enthalten. Der Datensatz enthält in den Elementen mods:accessCondition[@type='use and reproduction'] und dv:license widersprüchliche Rechteinformationen aus dem Lizenzkorb der DDB. Bei der Transformation der Daten übernimmt die DDB in diesem Fall die Rechteangabe aus mods:accessCondition[@type='use and reproduction']. Bitte beachten Sie darüber hinaus, dass die DDB die codierten CC-Lizenz-Werte aus dem METS-AP für dv:license als Version 4.0 und den Wert "reserved" als "Urheberrechtsschutz nicht bewertet" (Europeana Rightstatement "CNE") interpretiert.</sch:report>
      </sch:rule>
   </sch:pattern>
   <sch:pattern>
      <sch:rule context="mets:mets">
            <!-- dv:presentation fehlt -->
         <sch:assert id="amdSec_15"
                     role="warn"
                     test="mets:amdSec/mets:digiprovMD/mets:mdWrap/mets:xmlData/dv:links/dv:presentation[string-length(text()) &gt; 0]">Im Datensatz fehlt das Element dv:presentation mit dem URL zur Anzeige des Digitalisats bei Ihrer Institution. Daher fehlt in der DDB der Button "Objekt anzeigen" mit dem entsprechend Link zu Ihrer lokalen Präsentation.</sch:assert>
      </sch:rule>
   </sch:pattern>
</sch:schema>
