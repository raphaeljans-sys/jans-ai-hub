# Normen-Mini-Run 14 (Mac Mini, DIN/VSS/RAL) — 13.07.2026

## Ausgangslage

Das DIN-/VSS-/RAL-Basisinventar (P1-P3) ist seit Run 5/12 vollständig `established`.
Run 13 hatte die Deepening-Stufe (b) Retro-Verifikation begonnen (din-1946-6-2009,
4-Agenten-Muster) und empfohlen, sie für weitere grosse/relevante Destillate fortzusetzen.

Dieser Lauf hat zunächst den echten Verifikations-Rückstand ermittelt: ein Abgleich
zwischen `destillate/INDEX.md` und `training/norm-inventar.md` zeigte Inkonsistenzen
(mehrere Destillate waren in einer Registerspalte als «verifiziert» geführt, in der
anderen nicht — reine Dokumentationslücke, kein inhaltliches Problem). Als Ground Truth
wurde das Frontmatter der Destillate selbst herangezogen. Daraus ergab sich eine Liste
von ca. 15 genuinen Kandidaten ohne Retro-Verifikation; sechs JANS-relevante wurden für
diesen Lauf ausgewählt (Healthcare-RLT, Brandschutz, Vertragsrecht, Sicherheit).

## Durchgeführt

### 1. Register-Hygiene: din-1946-6-2009 nachgezogen

Mini-Run 13 hatte die adversariale Retro-Verifikation (4 Prüf-Agenten, 14 Fehler
korrigiert) bereits im Destillat-Frontmatter vermerkt, aber `INDEX.md` und
`norm-inventar.md` nicht nachgeführt — beide Register wurden korrigiert
(`status: verifiziert 260713`).

### 2. Adversariale Retro-Verifikation, 6 parallele Prüf-Agenten (je 1 Agent/Destillat)

| Destillat | Seiten | Geprüfte Aussagen | Fehler/Ergänzungen | Verdikt |
|---|---|---|---|---|
| `din-1946-4-2008.md` (Healthcare-RLT) | 66 | 55 | 2 Fehler korrigiert (Anhang-E-Normativität, Fundstelle 3. Filterstufe) | beanstandet-korrigiert |
| `din-4102-1-1998.md` (Brandverhalten Baustoffe) | 28 | 58 | 6 Fehler (Anhang-B-Massangaben, Bodenbelag B1/B2, Kennzeichnung, Rauchentwicklung) + Ziff. 5.2.4 komplett fehlend, ergänzt | beanstandet-korrigiert (grösster Fund) |
| `din-18232-2-2007.md` (RWA-Bemessung) | 30 | 66 | 1 Ergänzung (Ziff. 5.4, Rauchabschnitts-Unterteilung) | bestanden, ergänzt |
| `din-1961-2010.md` (VOB Teil B) | 24 | 85 | keine Fehler | bestanden |
| `din-en-1627-2011.md` (Einbruchhemmung, Teil-Destillat) | 4 von 44 (Quelle bestätigt nur Auszug, pdfinfo) | 13 | 1 sicherheitsrelevanter Klassifizierungsfehler (RC 4) + 4 Ergänzungen (Anhang F, NA.7-Korrelationstabelle, Feuerwehr-Hinweise, NA.10) | beanstandet-korrigiert |
| `din-105-5-1984.md` (Leichtlanglochziegel) | 6 | 13 | keine Fehler | bestanden |

**Gesamtbilanz:** ca. 290 Einzelaussagen geprüft, 10 Fehler + 5 substanzielle Ergänzungen
in 4 von 6 Destillaten korrigiert. Die Fehlerquote bestätigt erneut (wie bereits Run 13),
dass die Verifikations-Pflicht (Rule `auto-verbesserungen` 260712) berechtigt ist — auch
bei kleineren, vollständig gelesenen Destillaten treten Terminologie-, Fundstellen- und
vereinzelt sicherheitsrelevante Klassifizierungsfehler auf, die ohne unabhängige
Gegenprüfung unentdeckt geblieben wären (din-en-1627 RC-4-Fehler wäre in der Praxis
sicherheitsrelevant gewesen).

### 3. Register nachgeführt

`destillate/INDEX.md` und `training/norm-inventar.md`: je 7 Zeilen aktualisiert (6 neu
verifizierte Destillate + din-1946-6 Nachzug). `wiki/QUESTIONS.md`: Eintrag zur
DIN-EN-1627-Vollversions-Lücke (nur 4/44 S. im Bestand) ergänzt.

## Nicht bearbeitet (bewusst, Budget-Grenze dieses Laufs)

Weitere Kandidaten ohne Retro-Verifikation, priorisiert für den nächsten Lauf:
`din-105-100-2012`, `din-1053-4-2011`, `din-1960-2010` (VOB Teil A, Pendant zu heute
verifiziertem Teil B), `din-1054-2010` (Baugrund/Eurocode 7, 104 S., grösster Brocken),
`vstaettvo-niedersachsen-2004` (Versammlungsstättenverordnung).

## Nächster Lauf (Empfehlung)

1. Retro-Verifikation fortsetzen: `din-1960-2010` (VOB/A, Pendant zu 1961), dann
   `din-105-100-2012`, `din-1053-4-2011`.
2. `din-1054-2010` (104 S., Baugrund) als grösseren Batch mit 2-3 Teil-Agenten angehen.
3. Danach Beginn Q&A-Selbstbefragung (Deepening-Stufe c) für die DIN-P1-Kernnormen
   gemäss `training/PROGRAMM.md`.
