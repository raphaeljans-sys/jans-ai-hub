# CHANGELOG architektur-fachwissen

## 2026-08-24 — Wissens-Chef Run 41 (Cross-KB, Erst-Pruefung dieser KB)

Erste Cross-KB-Pruefung, einen Tag nach dem Anlegen. Drei additive Nachtraege in
`wiki/QUESTIONS.md`, kein Eingriff in `raw/`:
- **#4 (SIA-102-Phasenanteile) zur Haelfte beantwortet** — `wissen/normen/destillate/sia-102-2014.md`
  (`established`, S. 1-58 komplett gelesen 14.07.2026), Ziff. 7.7 fuehrt genau diese sieben
  Anteile. Offen bleibt nur «unveraendert gegenueber 2003» (`sia-102-2003` ist `speculative`).
  Mit drei Vorbehalten: Fassungsstand 2020 kennt die Methode nicht mehr · **nicht** auf
  `sia-102-2020.md` verweisen (belegt die Abwesenheit) · **nicht** auf
  `skills/honorarberechnung-sia102` verweisen (fuehrt eine bueroeigene Konvention mit *anderen* Zahlen).
- **#6 (Kennzahlenraster Leutschenbach) neu geschnitten** — die Schulbau-Kennwert-Achse existiert
  bereits: `wissen/wettbewerbs-dna/wiki/muster/kennwerte-schulbauten.md` (`established`,
  25 Quellen) und `wissen/entwurfs-referenzen/.../schule-volksschule-ch.json`. Beizusteuern ist
  die **Methode**, nicht der Kennwert; fuer CHF/m³ bleibt `grobkosten` fuehrend.
- **#3b neu — Phantom-BKP-Codes.** Die BGS-Honorarblatt-Tabelle (20.04.2005), in beiden
  Inventaren als «unmittelbar uebertragbar» eingeleitet, nennt «019» fuer Abbruch (im BKP 2017
  «Uebriges» unter 01 Grundstueckserwerb; Abbruch ist **112.1**) und «**071**», das es im
  BKP 2017 gar nicht gibt. Jeder Code ist vor Uebernahme sachbezogen zu mappen.

**Ausserhalb dieser KB:** die KB war in keinem Hub-Register eingetragen — nur in der
`KORPUS-QUEUE.md` des Skills `wissens-destillat`. In `CLAUDE.md` nachgetragen, Fuehrungszeile in
`wissen/koordination/QUERBEZUEGE.md` gesetzt (fuehrt Inventare; **keine** Kennwerte, BKP-Codes
oder Norm-Fundstellen). Bericht: `wissen/koordination/outputs/2026-08-24_wissens-chef-run41.md`.
## 2026-08-23
- KB angelegt (Vollgas-Lauf). Struktur raw/inventar, wiki, outputs.
- Inventar Phase 0 abgeschlossen für 16 Sektionen: 12 aus `buero-referenzen`
  (`/Volumes/daten/04_Buero/10_Referenzenbibliothek`) und 4 aus `archiv-fachwissen`
  (`/Volumes/daten/02_Architektur_Archiv`). 8'604 Dateien gesichtet, Triage P1 113 / P2 631 /
  P3 4'428 / X 3'432. Belegbasis: 16 Dateien unter `raw/inventar/`, je Sektion eine.
- `wiki/INDEX.md` neu geschrieben (war Stub): Gesamtüberblick beider Korpora, Kennzahlen je
  Korpus, 16 Sektionen nach P1-Ertrag geordnet mit je einem Satz und Verweis auf die
  Inventardatei, dazu fünf Querbefunde über die Sektionsgrenzen und die Sperren
  (BKP-Altausgaben, Norm-Ausgabenstand, Urheberrecht, Personendaten, Zugangsdaten,
  Zweckbindung DXF).
- `outputs/2026-08-23_korpus-erschliessung.md` angelegt: Methode des Laufs, Kennzahlen mit drei
  Lesarten, die zehn ertragreichsten Sektionen mit Begründung, die fünf Sektionen ohne Ertrag
  und eine begründete Reihenfolge der nächsten zehn Destillate samt Auflagen je Position.
- `wiki/QUESTIONS.md` um den Block 260823 ergänzt, 26 offene Punkte in vier Gruppen
  (Steuerung/Entscheid Raphael, Beleglücken, Rechte und Personendaten, technisch offen und
  Beschaffung). Kernpunkte: 39 der 55 Sektionen beider Korpora sind nicht inventarisiert; es
  fehlt ein belegter Indexpfad für sämtliche Kostenkennwerte; die Fundstellen zu
  Ruosch/Brandenberger, zur Konstruktionslehre Hochbau und zur Neufert-Ausgabe sind
  unvollständig.
- `skills/wissens-destillat/KORPUS-QUEUE.md` nachgeführt: Korpus 3 und 4 stehen nicht mehr auf
  «wartet», sondern auf «Inventar Phase 0 abgeschlossen 23.08.2026» mit den Kennzahlen.
- Noch **kein** Wiki-Artikel geschrieben, keine Datei auf dem NAS bewegt, kein BKP-Code
  bestimmt, keine Norm-Ausgabe auf Gültigkeit geprüft. Die Quellordner wurden ausschliesslich
  lesend angefasst.
