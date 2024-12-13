# Changelog
Changelog der Schematron-Validierung für das DDB-METS/MODS Anwendungsprofil für digitalisierte Medien der Fachstelle Bibliothek.

Informationen zu den Schematron-Validierungen der Fachstelle Bibliothek finden Sie im [Wiki der Deutschen Digitalen Bibliothek](https://wiki.deutsche-digitale-bibliothek.de/x/q4aFAg).


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
