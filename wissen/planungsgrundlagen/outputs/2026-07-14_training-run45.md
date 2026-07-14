# Trainingslauf 45 — KB Planungsgrundlagen (2026-07-14, Token-Vollgas)

Rotation gemäss Ankündigung aus Run 44: zurück zu **Recht & Norm (PL-02)** + **Brandschutz
(PL-03)**, Backlog aus Run 42/43/44 abgearbeitet. Zwei parallele Fan-out-Agenten (Multi-Agent-
Workflow, autorisiert für die Intensivphase), TOKEN-VOLLGAS-Volumen: 12 Selbstfragen (8 + 4).

## Domäne 3 — Recht & Norm (PL-02): R44-R51

Backlog-Ordner `04_Merkblätter/Projektadmin AHB/14-Energie-und Gebaeudetechnik/` (GT_RL1-9 +
Standards-Unterordner) sowie ein Delta-Check gegen vier KBOB-Checklisten aus `18-Nachhaltiges
Bauen/18.3+18.4`. Alle acht Fragen brachten reale, belegte Zusatzinformation — kein Nicht-Fund:

- **R44** GT_RL1 Planungsgrundlagen: Projekt-/Qualitätsmanagement-System, Leistungsnachweis-
  Pflicht (Kessel > 350 kW/COP-JAZ messtechnisch), BKP-Gliederung Ausschreibungen mind.
  dreistellig.
- **R45** GT_RL2 Systemwahl (Energieträger-Hierarchie) + Delta-Check GT_RL9 Gebäudeautomation
  gegen den bereits dokumentierten GA-Standard Pflegezentren (§4): **kein Duplikat** — GT_RL9
  ist die allgemeine, nutzungsunabhängige AHB-Gebäudeautomations-Richtlinie mit eigenen Fakten
  (IMMO-Box-Energiemonitoring, Pflicht ab EBF > 1'000 m², 3-Ebenen-Bedienkonzept).
- **R46** GT_RL3/4 Heizung/Kühlung: träge Wärmeabgabesysteme in Schulzimmern unzulässig,
  Kühlungs-Bedarfsnachweis SIA 382/1:2007 zwingend.
- **R47** GT_RL5/6 Lüftung/Sanitär: Legionellenschutz Risikogruppe 2 (Spitäler/Altersheime/
  Pflegezentren) — thermische Desinfektion 75 °C bei Erneuerung zwingend (direkt
  JANS-Healthcare-relevant).
- **R48** GT_RL7/8 Elektro/Beleuchtung + EN-12464-1-Tabelle: belegte Healthcare-
  Beleuchtungsstärken (Bettenzimmer 100/300 lx, Behandlungsräume 500 lx).
- **R49** Standards_Kennzeichnungssystem_V2.2: echter Delta zu §2 (CAFM-Bezeichnungssystem) —
  eigenständige, technischere DIN-6779/61346-basierte Anlagen-/Komponentenkennzeichnung statt
  Orts-/Raumebene.
- **R50** Standards_Raummodul_Büro/Klassenzimmer: neue, für Wettbewerbe/Schulbau nutzbare
  Flächen-/Ausstattungs-Kennzahlen je Raumtyp.
- **R51** Delta-Check vier KBOB-Merkblätter gegen §6.1: drei echte Deltas (Recyclingbeton-
  Kategorien RC-W/B/M, Innenraumklima-CO₂-Grenzwert, **PCP als dritter Schadstoff-Typ** neben
  Asbest/PCB) — PCP-Fund zusätzlich als Cross-Referenz in `wiki/energie-baustoffe-schadstoffe-
  rueckbau.md` (§6, Delta zu E36) verankert statt dupliziert.

Neue §-Nummern in `wiki/recht-norm-ahb-stadt-zuerich-projektstandards.md`: §12–§17 (Frontmatter
sources/last_updated aktualisiert, Run 45).

## Domäne 4 — Brandschutz (PL-03): B36-B39

Backlog aus Run 42 (Ordner `04 Erlaeuterungen Brandschutz 2015/`, Feuerungsanlagen für feste
Brennstoffe) — vier VKF-Erläuterungen vollständig gelesen, in `wiki/brandschutz-pl03-
wegweiser.md` als §5ai–§5al eingearbeitet:

- **§5ai Cheminées** (103-15de): Sicherheitsabstand 0.1 m seitlich / 0.8 m offener Feuerraum,
  Speichercheminée-Wandaufbau 0.12 m RF1 + 60 mm Mineralwolle, Cheminéeschürze EI 60.
- **§5aj Spänefeuerungen** (104-15de): Heizraum **immer** EI 60 unabhängig von der kW-Leistung
  (keine Erleichterung), zwingend zwei unabhängige Rückbrandsicherungen, Freisilo-Abstand 10 m.
- **§5ak Schnitzelfeuerungen** (105-15de): eigenständige Kategorie mit 70-kW-Erleichterungs-
  schwelle (Aufstellraum EI 30 statt Heizraum EI 60), dreistufiges Rückbrandsicherungs-Regime.
- **§5al Pelletsfeuerungen** (106-15de): identische 70-kW-Schwelle wie Schnitzel, aber
  **fünfstufiges** (statt dreistufiges) Rückbrandsicherungs-Regime plus CO-Belüftungs- und
  Prallschutzmatten-Pflicht.

Delta Schnitzel↔Pellets: gleiche Aufstellungsschwelle/Ausräumöffnungs-Tabelle, aber Pellets
feiner gestaffelt (pneumatische Förderoptionen); Spänefeuerung bleibt strenger als beide (immer
EI 60, kein kW-Schwellenwert). JANS-Praxisrelevanz ehrlich als niedrig-mittel eingeordnet
(primär Wohn-/Landwirtschaftsbau, kaum Healthcare-Grossprojekt-Bezug) — Anwendungsfälle für
`ankaufspruefung`/`machbarkeit`/`energie-berater` benannt.

## Verifikations-Stufe

Alle zwölf Fragen wurden gegen real gelesene Original-PDFs (VKF-Erläuterungen bzw. AHB-Stadt-
ZH-Richtlinien) beantwortet, keine Ferndiagnose aus dem Gedächtnis. Delta-Checks (R45/R49/R51)
wurden explizit gegen den bestehenden Wiki-Stand geprüft, bevor neue Abschnitte angelegt wurden
— Duplikate wären als "geprüft, kein neuer Inhalt" vermerkt worden, kamen in diesem Lauf aber
nicht vor (alle zwölf Fragen lieferten echten Zusatzwert).

## Register nachgeführt

- `training/curriculum.md` — R44-R51 (Domäne 3) + B36-B39 (Domäne 4)
- `wiki/QUESTIONS.md` — Sammel-Einträge Recht/Norm + Brandschutz (C33)
- `raw/_INGESTED.md` — drei neue Zeilen (GT_RL-Bündel + Standards, KBOB-Delta-Batch,
  Feuerungsanlagen-Erläuterungen)
- `wiki/INDEX.md` — Artikel-Zeilen `recht-norm-ahb-stadt-zuerich-projektstandards` +
  `brandschutz-pl03-wegweiser` + `energie-baustoffe-schadstoffe-rueckbau` nachgeführt
- `CHANGELOG.md` — zwei neue Einträge (Recht/Norm-Agent + Brandschutz-Agent), oben eingefügt

## Nächste Schritte

- Recht/Norm-Backlog jetzt praktisch abgeschlossen: verbleibend nur noch `09/10/04-Buero-CI-
  Vorlagen` (niedrige Priorität, reine Corporate-Design-Vorlagen ohne Fachinhalt) und das
  51-seitige ECO-BKP-Kompendium (Vertiefung von §6.1, optional).
- Brandschutz-Backlog aus Run 42 damit vollständig geschlossen; nächster Brandschutz-Turnus
  ohne offenen Rest-Backlog — Kandidat wäre ein reiner BSV-2026-Web-Refresh (zuletzt Run 39
  bestätigt unverändert) statt weiterer Dokumenten-Mining.
- Kartenportale-Backlog aus Run 44 weiterhin offen: `oereb_weisung_v3.pdf` Seiten 20-73
  (Detailprozesse §5.3-§5.12, insb. Waldgrenzen/Grundwasserschutz) für den übernächsten
  Kartenportale-Turnus.
- Rotation: nächster Lauf zurück zu Kartenportale (PL-01) + Energie (PL-04, dort Web-Refresh-
  Check MuKEn-2025-ZH-Überführung).
