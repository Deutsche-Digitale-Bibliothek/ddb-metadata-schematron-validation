# Changelog
Changelog der Schematron-Validierung für das METS/MODS-Anwendungsprofil für digitalisierte Medien der Fachstelle Bibliothek.

Informationen zu den Schematron Validierungen der Fachstelle Bibliothek finden Sie im [Wiki der Deutschen Digitalen Bibliothek](https://wiki.deutsche-digitale-bibliothek.de/x/q4aFAg).

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
- Prüfung `amdSec_05`: Die Prüfung berücksichtigt das Attribut `href`von `mods:accessCondition` nun unabhängig vom Namespace
- Prüfung `amdSec_13`: Die Prüfung berücksichtigt das Attribut `href`von `mods:accessCondition` nun unabhängig vom Namespace
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
