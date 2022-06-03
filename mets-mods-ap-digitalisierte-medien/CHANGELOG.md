# Changelog
Changelog der Schematron-Validierung für das METS/MODS-Anwendungsprofil für digitalisierte Medien der Fachstelle Bibliothek.

Informationen zu den Schematron Validierungen der Fachstelle Bibliothek finden Sie im [Wiki der Deutschen Digitalen Bibliothek](https://wiki.deutsche-digitale-bibliothek.de/x/q4aFAg).


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
