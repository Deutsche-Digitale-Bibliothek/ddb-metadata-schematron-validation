# Changelog
Changelog der Schematron-Validierung für das DDB-METS/MODS Anwendungsprofil für digitalisierte Medien der Fachstelle Bibliothek.

Informationen zu den Schematron-Validierungen der Fachstelle Bibliothek finden Sie im [Wiki der Deutschen Digitalen Bibliothek](https://wiki.deutsche-digitale-bibliothek.de/x/q4aFAg).

## v2026-10-15T08:13:09
Im Zuge der Neuausrichtung der DDB als (nationale) Dateninfrastruktur und der angestrebten Nutzung der Daten durch Dritte hat die DDB entschieden, das Aufteilen von Werken (z. B. Monographien) in Strukturelemente wie z. B. Kapitel oder Illustrationen einzustellen. Künftig werden Werke nur noch als Ganzes angezeigt. 

Diese Änderung führt zu zahlreichen Anpassungen, insbesondere zur Einschränkung von Prüfungen auf das primäre mets:dmdSec-Element. Die Details zu den konkreten Änderungen sind in den folgenden Abschnitten dokumentiert.

### Added
- Prüfung `all_10` hinzugefügt: "Ungültige Elemente in der obersten MODS-Ebene in einem nicht-primären mets:dmdSec-Element"
- Prüfung `titleInfo_10` hinzugefügt: "Ungültiger Wert im Attribut type von mods:titleInfo in einem nicht-primären mets:dmdSec-Element"
- Prüfung `name_18` hinzugefügt: "Ungültiger Wert im Attribut type von mods:namePart in einem nicht-primären mets:dmdSec-Element"
- Prüfung `name_19` hinzugefügt: "Unterelemente von mods:name enthalten in einem nicht-primären mets:dmdSec-Element das Attribut valueURI"
- Prüfung `subject_05` hinzugefügt: "Unvollständiges bzw. nicht unterstütztes mods:subject"
- Prüfung `subject_06` hinzugefügt: "Unklare Zuordnung einer URI in mods:subject"
- Prüfung `relatedItem_13` hinzugefügt: "Selbstreferenz in mods:relatedItem\[@type='host'\]"
- Prüfung `amdSec_19` hinzugefügt: "Ungültiger URL in dv:presentation"
- Prüfung `structMapLogical_29` hinzugefügt: "Nicht-primäre mets:dmdSec mit mehrfacher Referenzierung"
- Prüfung `structMapPhysical_09` hinzugefügt: "mets:structMap\[@TYPE='PHYSICAL'\] enthält 3. mets:div-Ebene"

### Changed
- Tippfehler und Formulierungen in mehreren Prüfungen korrigiert bzw. angepasst
- Die folgenden Prüfungen auf das primäre mets:dmdSec-Element beschränkt:
  - `all_02`
  - `all_03`
  - `all_04`
  - `all_05`
  - `all_06`
  - `titleInfo_03`
  - `titleInfo_04`
  - `titleInfo_06`
  - `titleInfo_07`
  - `titleInfo_08`
  - `titleInfo_09`
  - `name_01`
  - `name_02`
  - `name_04`
  - `name_07`
  - `name_08`
  - `name_09`
  - `name_10`
  - `name_11`
  - `name_12`
  - `name_13`
  - `name_14`
  - `name_15`
  - `name_16`
  - `name_17`
  - `originInfo_01`
  - `originInfo_02`
  - `originInfo_05`
  - `originInfo_06`
  - `originInfo_15`
  - `originInfo_16`
  - `originInfo_17`
  - `originInfo_18`
  - `language_02`
  - `physicalDescription_01`
  - `note_01`
  - `note_02`
  - `originInfo_18`
  - `relatedItem_02`
  - `relatedItem_03`
  - `relatedItem_04`
  - `relatedItem_05`
  - `relatedItem_12`
  - `identifier_01`
  - `location_01`
  - `location_04`
  - `location_05`
  - `location_06`
  - `location_07`
  - `accessCondition_02`
  - `part_01`
  - `part_02`
  - `part_03`
  - `part_04`
  - `part_05`
  - `part_12`
  - `recordInfo_02`
  - `recordInfo_03`
  - `recordInfo_05`
  - `amdSec_07`
  - `amdSec_12`
  - `amdSec_15`
  - `amdSec_18`
  - `structMapLogical_04`
  - `structMapLogical_20`
- Prüfung `name_04`: Die Prüfung vereinfacht
- Prüfung `name_05`: Die Prüfung auf mods:name mit @type beschränkt
- Prüfung `name_07`: Die Prüfung vereinfacht
- Prüfung `name_08`: Die Prüfung auf mods:name mit @type beschränkt
- Prüfung `name_11`: Das Meldungs-Level von `warn` auf `error` geändert
- Prüfung `language_01`: Meldungstext präzisiert
- Prüfung `relatedItem_02`: XPath präzisiert
- Prüfung `relatedItem_04`: Unterstütze Werte für @type beschränkt und das Meldungs-Level von `error` auf `warn` geändert
- Prüfung `relatedItem_05`: XPath präzisiert
- Prüfung `part_01`: Die Prüfung vereinfacht
- Prüfung `part_02`: Die Prüfung vereinfacht
- Prüfung `part_03`: Das Meldungs-Level von `warn` auf `error` geändert und den Meldungstext angepasst
- Prüfung `recordInfo_04`: Den Meldungstext präzisiert
- Prüfung `recordInfo_06`: Den Meldungstext präzisiert
- Prüfung `dmdSec_01`: Den XPath präzisiert und erweitert
- Prüfung `dmdSec_02`: Das Meldungs-Level von `fatal` auf `warn` geändert
- Prüfung `dmdSec_03`: Die Prüfung auf das nicht-primäre mets:dmdSec-Element beschränkt
- Prüfung `dmdSec_04`: Die Prüfung auf das nicht-primäre mets:dmdSec-Element beschränkt und das Meldungs-Level von `error` auf `warn` geändert
- Prüfung `amdSec_04`: Den Meldungstext präzisiert
- Prüfung `amdSec_05`: Den Meldungstext präzisiert
- Prüfung `amdSec_09`: XPath korrigiert (@ID anstatt @AMDID)
- Prüfung `amdSec_14`: Den Meldungstext präzisiert
- Prüfung `amdSec_16`: Den Meldungstext präzisiert
- Prüfung `amdSec_17`: Den Meldungstext präzisiert
- Prüfung `fileSec_08`: XPath präzisiert
- Prüfung `structMapLogical_04`: Die Prüfung optimiert
- Prüfung `structMapLogical_08`: Die Prüfung auf das erste Vorkommen beschränkt
- Prüfung `structMapLogical_09`: Die Prüfung auf nicht-primäre mets:div beschränkt und das Meldungs-Level von `error` auf `warn` geändert
- Prüfung `structMapLogical_21`: Die Prüfung auf nicht-primäre mets:div beschränkt
- Prüfung `structMapLogical_22`: Den Meldungs-Level von `error` auf `warn` geändert und den Meldungstext angepasst
- Prüfung `structMapPhysical_04`: Die Prüfung auf die obersten zwei Ebenen von `mets:div` eingeschränkt

### Removed
- Prüfung `titleInfo_02` entfernt: "mods:titleInfo fehlt in einem nicht-primären mets:dmdSec"
- Prüfung `titleInfo_09` entfernt: "mods:titleInfo ist unvollständig"
- Prüfung `subject_01` entfernt: "Das Attribut valueURI von mods:subject enthält keinen unterstützten URI"
- Prüfung `subject_02` entfernt: "mods:title fehlt in mods:titleInfo"
- Prüfung `subject_03` entfernt: "mods:displayForm fehlt in mods:name"
- Prüfung `subject_04` entfernt: "Unterelemente fehlen in mods:cartographic"
- Prüfung `dmdSec_02` entfernt: "mets:dmdSec ist unvollständig"

## v2026-02-06T08:12:14

### Added
- Prüfung `name_15` hinzugefügt: "mods:roleTerm\[@type='code'\]\[@authority='marcrelator'\] ist in mods:role mehrfach vorhanden"
- Prüfung `name_16` hinzugefügt: "mods:roleTerm\[@type='text'\] ist in mods:role mehrfach vorhanden"
- Prüfung `name_17` hinzugefügt: "Wert in mods:roleTerm entspricht nicht dem Wert im Attribut valueURI"
- Prüfung `recordInfo_06` hinzugefügt:  "Ungültiger Wert in mods:recordIdentifier"

### Changed
- Alle Verweise (URLs) auf das „DDBinfo für Daten“-Wiki aktualisiert (Anwendungsprofil und Beispiele)
- Prüfung `identifier_01`: Die DDB berücksichtigt nun die folgenden weiteren Typen von Identifiern und die Prüfung ist entsprechend angepasst:
  - `rism`
  - `kope`
  - `qal`
  - `hsp`
  - `gw`
- Prüfung `name_12`: Meldungstext an neue Bearbeitung angepasst
- Prüfung `titleInfo_09`: Die Prüfung durch die Verwendung von `normalize-space`verschärft 
- Prüfung `recordInfo_04`: Die Prüfung wurde präzisiert. Dabei wurden sowohl der XPath für zu testenden Elemente als auch der Regex zum Testen des Wertes angepasst.

## v2024-12-13T09:06:12

### Added
- Prüfung `name_14` hinzugefügt: "Nicht untertützter Wert in mods:roleTerm"

### Changed

- Fehlende Leerzeichen in Meldungen ergänzt ([Pull Request #15](https://github.com/Deutsche-Digitale-Bibliothek/ddb-metadata-schematron-validation/pull/15))
- Prüfung `name_13`: Die Prüfung ignoriert nun leere `mods:roleTerm`-Elemente
- Prüfung `language_02`: Die Prüfung ignoriert nun leere `mods:languageTerm`-Elemente
- Prüfung `fileSec_03`: Die Prüfung meldet nun auch leere `mets:fileGrp[@USE='DEFAULT']`
- Prüfung `structMapLogical_05`: Meldungstext ergänzt
- Prüfung `structMapLogical_06`: Die Sturkturtypen `part` und `review` als valide ergänzt
- Prüfung `structMapLogical_07`: Property `type` korrigiert zu `TYPE`

## v2024-02-29T15:50:50

### Added
- Prüfung `all_07` hinzugefügt: "Ungültiger Namensraum für METS-Elemente"
- Prüfung `all_08` hinzugefügt: "Ungültiger Namensraum für MODS-Elemente"
- Prüfung `all_09` hinzugefügt: "Ungültiger Namensraum für DFG-Viewer-Elemente (dv)"
- Prüfung `titleInfo_09` hinzugefügt: "mods:titleInfo ist unvollständig"
- Prüfung `relatedItem_12` hinzugefügt: "mods:relatedItem ist mit dem Attribut type mit dem Wert host mehrfach vorhanden"
- Prüfung `structMapLogical_23` hinzugefügt: "Primäre mets:div in mets:structMap\[@TYPE='LOGICAL'\] hat Elternelement mets:div in Ankersatz"
- Prüfung `structMapLogical_24` hinzugefügt: "Ungültiger Wert im Attribut TYPE des primären mets:div in mets:structMap\[@TYPE='LOGICAL'\] in Ankersatz"
- Prüfung `structMapLogical_25` hinzugefügt: "Ungültiger Wert im Attribut TYPE des primären mets:div in mets:structMap\[@TYPE='LOGICAL'\] im Teil eines mehrteiligen Dokuments"
- Prüfung `structMapLogical_26` hinzugefügt: "Ungültiger Wert im Attribut TYPE des primären mets:div in mets:structMap\[@TYPE='LOGICAL'\] in einteiligem Dokument"
- Prüfung `structMapLogical_27` hinzugefügt: "Ungültiger Wert im Attribut TYPE vom mets:div in mets:structMap\[@TYPE='LOGICAL'\] unselbständiger Dokumente"
- Prüfung `structMapLogical_28` hinzugefügt: "mets:mptr in mets:div innerhalb von mets:structMap\[@TYPE='LOGICAL'\] mehrfach vorhanden"
- Prüfung `structLink_05` hinzugefügt: "Ungültiger Namensraum für XLink-Attribute von mets:smLink"

### Changed
- Prüfung `name_13`: Aktuelle [Liste der MARC Relator Codes](http://id.loc.gov/vocabulary/relators) übernommen
- Prüfung `structMapLogical_06`: Aktuelle Liste der Strukturtypen des Strukturdatensets des DFG-Viewers übernommen

## v2023-05-05T15:50:49

### Added
- Meldungs-Level `caution` hinzugefügt: "Datensätze, bei denen ein Verdacht auf Fehler vorliegt"
- Prüfung `originInfo_16` hinzugefügt: "mods:displayDate ist in mods:originInfo mehrmals vorhanden"
- Prüfung `originInfo_17` hinzugefügt: "mods:originInfo muss mods:dateIssued oder mods:dateCreated enthalten"
- Prüfung `originInfo_18` hinzugefügt: "mods:originInfo ist mit Attribut eventType mit dem Wert digitization bzw. mit mods:edition mit dem Wert \[Electronic ed.\] mehrfach vorhanden"  
- Prüfung `subject_02` hinzugefügt: "mods:title fehlt in mods:titleInfo"
- Prüfung `subject_03` hinzugefügt: "mods:displayForm fehlt in mods:name"
- Prüfung `subject_04` hinzugefügt: "Unterelemente fehlen in mods:cartographic"
- Prüfung `fileSec_09` hinzugefügt: "mets:file ohne Referenzierung"
- Prüfung `amdSec_18` hinzugefügt: "dv:ownerSiteURL fehlt in dv:rights"

### Changed
- Umfangreiche Überarbeitung der Meldungstexte der Prüfungen
    - Die textlichen Hinweise auf die [METS- und MODS-Anwendungsprofile für digitalisierte Medien](https://dfg-viewer.de/metadaten) sind durch Links auf entsprechende Seiten des [DDB-METS/MODS Anwendungsprofils](https://wiki.deutsche-digitale-bibliothek.de/x/uwQiAQ) ersetzt
    - Meldungstexte sind technischer formuliert, der inhaltliche Bezug ist im [DDB-METS/MODS Anwendungsprofil](https://wiki.deutsche-digitale-bibliothek.de/x/uwQiAQ) dargestellt
    - Die Elemente `sch:assert` und `sch:report` können jetzt neben dem Meldungstext zusätzlich das Unterelement `sch:span` mit dem Attribut `type` enthalten, Details s. [Schematron-Validierungen der Fachstelle Bibliothek](https://wiki.deutsche-digitale-bibliothek.de/display/DFD/Schematron-Validierungen+der+Fachstelle+Bibliothek#SchematronValidierungenderFachstelleBibliothek-MeldungstextundHinweisaufdasAnwendungsprofil)
- Prüfung `titleInfo_02`: Die Prüfung ist nun für Anchordateien deaktiviert.
- Prüfung `titleInfo_08`: Das Meldungs-Level der Prüfung ist von `warn` auf `caution` geändert.
- Prüfung `name_03`: Das Meldungs-Level der Prüfung ist von `error` auf `caution` geändert
- Prüfung `originInfo_02`: `mods:dateCaptured` aus der Prüfung entfernt, Text der Fehlermeldung überarbeitet und Meldungs-Level von `info` auf `warn` hochgestuft.
- Prüfung `originInfo_03`: Das Meldungs-Level der Prüfung ist von `error` auf `caution` geändert und der Text entsprechend angepasst.
- Prüfung `originInfo_04`: Das Meldungs-Level der Prüfung ist von `error` auf `caution` geändert und der Text entsprechend angepasst.
- Prüfung `originInfo_05`: Das Meldungs-Level der Prüfung ist von `warn` auf `caution` geändert.
- Prüfung `subject_01`: Die Prüfung testet nun ebenfalls die Unterelemente `mods:mods:geographic`, `mods:name`und `mods:titleInfo`. Sie akzeptiert darüber hinaus zusätzlich Geonames-URIs. Die Prüfung greift nur, wenn `mods:subject` oder die genannten Unterelementen das Attribut `valueURI` besitzen.
- Prüfung `location_01`: Die Prüfung ignoriert nun `mods:location`, die ein `mods:url` enthalten. 
- Prüfung `amdSec_13`: Das Meldungs-Level der Prüfung ist von `warn`  auf `caution` geändert.
- Prüfung `amdSec_15` Die Prüfung testet nun zusätzlich, ob der Wert in `dv:presentation` ein HTTP- bzw. HTTPS-URI ist.
- Prüfung `structMapLogical_07`: Die gültigen Werte sind an das aktuelle [DDB-METS/MODS AP](https://wiki.deutsche-digitale-bibliothek.de/x/KAGuB) angepasst
- Die Lizenzen [Rechte vorbehalten – Freier Zugang](http://www.deutsche-digitale-bibliothek.de/lizenzen/rv-fz/) und [Rechte vorbehalten – Zugang nach Autorisierung](http://www.deutsche-digitale-bibliothek.de/lizenzen/rv-ez/) sind aus der Liste der gültigen Lizenzen entfernt. Dies betrifft folgende Prüfungen
    - `amdSec_05` 
    - `amdSec_13`
    - `amdSec_14`
    - `amdSec_16`
    - `amdSec_17`
- Die Selektion des primären `mets:div`-Elements korrigiert bzw. präzisiert. Dies betrifft folgende Prüfungen:
    - `amdSec_04`
    - `amdSec_05`
    - `amdSec_06`
    - `amdSec_08`
    - `amdSec_09`
    - `amdSec_10`
    - `amdSec_11`
    - `amdSec_13`
    - `amdSec_14`
    - `amdSec_17`
    - `structMapLogical_11` 
    - `structMapLogical_16`
    - `structMapLogical_22`

### Removed
- Prüfung `location_06` entfernt: "Wiederholung von mods:namePart in mods:name bei Körperschaften"

## v2022-11-10T08:51:13

### Added
- Prüfung `all_06` hinzugefügt: "Ungültiger GND-URI im Attribut valueURI"
- Prüfung `originInfo_15` hinzugefügt: "Wiederholung von Datumsangaben mit identischem Wert im Attribut point in mods:originInfo"
- Prüfung `location_06` hinzugefügt: "mods:url mit ungültigem Wert im Attribut access"
- Prüfung `location_07` hinzugefügt: "mods:physicalLocation mit unterschiedlichen Werten"
- Prüfung `accessCondition_02` hinzugefügt: "Falscher Namensraum für das Attribut href von mods:accessCondition"
- Prüfung `part_12` hinzugefügt: "Wiederholung von mods:detail\[@type='volume'\] in mods:part"
- Prüfung `amdSec_15` hinzugefügt: "dv:presentation fehlt"
- Prüfung `amdSec_16` hinzugefügt: "Widersprüchliche Rechteangaben in mods:accessCondition\[@type='use and reproduction'\]"
- Prüfung `amdSec_17` hinzugefügt: "Widersprüchliche Rechteangaben"
- Prüfung `fileSec_08` hinzugefügt: "mets:file ohne Attribut MIMETYPE"
- Prüfung `structMapLogical_22` hinzugefügt: "Strukturelemente ohne mets:file in der mets:fileGrp\[@USE='DEFAULT'\]"

### Changed
- Prüfung `relatedItem_04`: Liste der gültigen Werte für das Attribut `type` erweitert und Prüfungs-Level von `info` auf `error` gesetzt.
- Prüfung `language_01`: Europeana akzeptiert zurzeit ebenfalls keine Textressourcen mit dem ISO 639-2b Sprachcode `und` - Prüfung entsprechend angepasst
- Prüfung `location_01`: Die Prüfung testet nur noch das Vorhandensein von `mods:physicalLocation`.
- Prüfung `subject_01`: Die DDB unterstützt nun neben GND- auch Wikidata- und AAT-URIs. Prüfung entsprechend angepasst.
- Prüfung `recordInfo_04`: Die DDB erlaubt weitere Zeichen im Element `mods:recordIdentifier`. Prüfung entsprechend angepasst.
- Prüfung `amdSec_05`: Die Prüfung berücksichtigt das Attribut `href` von `mods:accessCondition` nun unabhängig vom Namespace
- Prüfung `amdSec_13`: Die Prüfung berücksichtigt das Attribut `href` von `mods:accessCondition` nun unabhängig vom Namespace
- Prüfung `amdSec_14`: Die Prüfung geändert in "Widersprüchliche Rechteangaben in dv:license", sie testet nur noch dv:license

### Removed
- Prüfung `location_02` entfernt: "mods:physicalLocation fehlt"

## v2022-06-03T07:55:42

### Changed
- Liste der gültigen [MARC Relator Codes](https://id.loc.gov/vocabulary/relators.html) aktualisiert

## v2022-04-07T08:19:29

### Changed
- Dubletten aus den Listen der ISO 639-1 und ISO 639-2 Sprachcodes entfernt ([Pull Request #2](https://github.com/Deutsche-Digitale-Bibliothek/ddb-metadata-schematron-validation/pull/2))

## v2022-04-01T08:15:02

### Added
- Prüfung `recordInfo_05` hinzugefügt: "mods:recordInfo ist in mets:dmdSec mehrmals vorhanden"
- Prüfung `amdSec_13` hinzugefügt: "Hinweis auf möglicherweise ungültige Rechteangabe"
- Prüfung `amdSec_14` hinzugefügt: "Widersprüchliche Rechteangaben"

### Changed
- Die Lizenz-URI `http://www.deutsche-digitale-bibliothek.de/lizenzen/rv-ez/` in die Liste der gültigen Lizenzen aufgenommen.
- Prüfung `note_01`: XPath genauer formuliert
- Prüfung `note_02`: XPath genauer formuliert

## v2022-02-24T09:25:40
Initiale GIT-Version
