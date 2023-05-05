# Changelog
Changelog der Schematron-Validierung für das METS/MODS-Anwendungsprofil für Zeitungen der Fachstelle Bibliothek.

Informationen zu den Schematron Validierungen der Fachstelle Bibliothek finden Sie im [Wiki der Deutschen Digitalen Bibliothek](https://wiki.deutsche-digitale-bibliothek.de/x/q4aFAg).

## v2023-05-05T15:51:41

### Added

- Prüfung `fileSec_09` hinzugefügt: "Nicht referenziertes mets:file"
- Fehler-Level `caution` hinzugefügt: "Datensätze, bei denen ein Verdacht auf Fehler vorliegt"

### Changed
- Prüfung `amdSec_13`: Das Fehler-Level der Prüfung ist von `warn`  auf `caution` geändert.
- Die Lizenzen [Rechte vorbehalten – Freier Zugang](http://www.deutsche-digitale-bibliothek.de/lizenzen/rv-fz/) und [Rechte vorbehalten – Zugang nach Autorisierung](http://www.deutsche-digitale-bibliothek.de/lizenzen/rv-ez/) sind aus der Liste der gültigen Lizenzen entfernt. Dies betrifft folgende Prüfungen
    - `accessCondition_01` 
    - `amdSec_05`
    - `amdSec_13`
    - `amdSec_14`
    - `amdSec_16`
    - `amdSec_17` 

### Removed
- Prüfung `relatedItem_08` entfernt: "Die Verknüpfung zur ZDB-Aufnahme der Druckausgabe ist nicht möglich"

## v2022-11-10T08:51:24

### Added
- Prüfung `all_06` hinzugefügt: "Ungültiger GND-URI im Attribut valueURI"
- Prüfung `accessCondition_02` hinzugefügt: "Falscher Namensraum für das Attribut href von mods:accessCondition"
- Prüfung `originInfo_13` hinzugefügt: "Das Erscheinungsdatum der Ausgabe in mods:dateIssued liegt in der Zukunft"
- Prüfung `originInfo_14` hinzugefügt: "Das Erscheinungsdatum enthält einen ungültigen Wert"
- Prüfung `amdSec_16` hinzugefügt: "Widersprüchliche Rechteangaben in mods:accessCondition\[@type='use and reproduction'\]"
- Prüfung `amdSec_17` hinzugefügt: "Widersprüchliche Rechteangaben"
- Prüfung `fileSec_08` hinzugefügt: "mets:file ohne Attribut MIMETYPE"

### Changed
- Prüfung `accessCondition_01`: Die Prüfung berücksichtigt das Attribut `href`von `mods:accessCondition` nun unabhängig vom Namespace
- Prüfung `originInfo_12`: Fehlermeldung präzisiert
- Prüfung `recordInfo_04`: Die DDB erlaubt weitere Zeichen im Element `mods:recordIdentifier`. Prüfung entsprechend angepasst.
- Prüfung `amdSec_05`: Die Prüfung berücksichtigt das Attribut `href`von `mods:accessCondition` nun unabhängig vom Namespace
- Prüfung `amdSec_13`: Die Prüfung berücksichtigt das Attribut `href`von `mods:accessCondition` nun unabhängig vom Namespace
- Prüfung `amdSec_14`: Die Prüfung geändert in "Widersprüchliche Rechteangaben in dv:license", sie testet nur noch dv:license

## v2022-09-02T06:42:36

### Changed
- Prüfung `structMapLogical_17`: Die Prüfung erlaubt nun auch `:` in URLs in `mets:mptr@xlink:href` ([Pull Request #7](https://github.com/Deutsche-Digitale-Bibliothek/ddb-metadata-schematron-validation/pull/7))

## v2022-06-03T07:55:55

### Changed
- Liste der gültigen [MARC Relator Codes](https://id.loc.gov/vocabulary/relators.html) aktualisiert
- Prüfung `dmdSec_01`: Text der Fehlermeldung korrigiert (https://github.com/Deutsche-Digitale-Bibliothek/ddb-metadata-schematron-validation/pull/4))

## v2022-04-07T08:19:37

### Changed
- Prüfung `dmdSec_01`: Text der Fehlermeldung korrigiert ([Pull Request #1](https://github.com/Deutsche-Digitale-Bibliothek/ddb-metadata-schematron-validation/pull/1))
- Dubletten aus den Listen der ISO 639-1 und ISO 639-2 Sprachcodes entfernt ([Pull Request #2](https://github.com/Deutsche-Digitale-Bibliothek/ddb-metadata-schematron-validation/pull/2))

## v2022-04-01T08:15:15

### Added
- Prüfung `amdSec_13` hinzugefügt: "Hinweis auf möglicherweise ungültige Rechteangabe"
- Prüfung `amdSec_14` hinzugefügt: "Widersprüchliche Rechteangaben"

### Changed
- Die Lizenz-URI `http://www.deutsche-digitale-bibliothek.de/lizenzen/rv-ez/` in die Liste der gültigen Lizenzen aufgenommen.
- Prüfung `amdSec_04`: Prüfung erweitert
- Prüfung `amdSec_05`: Prüfung erweitert

## v2022-02-24T09:26:01
Initiale GIT-Version
