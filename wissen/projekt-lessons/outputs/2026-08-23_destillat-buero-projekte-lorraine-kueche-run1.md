# Destillat-Lauf `buero-projekte` Phase 2, Run 1 — 2026-08-23

Ziel-KB: `wissen/projekt-lessons` · Korpus-Spec: `skills/wissens-destillat/specs/buero-projekte-spec.md`
Vorlauf: Triage Phase 1 (23.08.2026, `outputs/2026-08-23_triage-buero-projekte-phase1-vollstaendig.md`)

## Was gemacht wurde

Erster Phase-2-Lauf (Destillat) auf den 62 P1-Zeilen des Inventars, Schwerpunkt
`1318_Lorraine_Kueche`. Ein Subagent (Read-Tool, nur lesend im Archiv) hat 16 Quelldateien
dieses Projekts vollständig gelesen: die komplette Kostenschätzungs-Kette eines privaten
Küchenumbau-Mandats (Lorrainestrasse 4, Bern, 2015, sieben ORCA-Auswertungsstufen vom
15./16.09.2015, ein 52-seitiges Ausschreibungs-LV) sowie vier reale Gewerke-Offerten
(Heizung/Sanitär/Elektro/Schreinerarbeiten, 01.–06.10.2015).

## Ergebnis

- **Neuer Artikel:** `wiki/lorraine-kueche-maria-1318-kv-nebengewerke-abweichung.md`
  (status `emerging`). Kernfund: Hauptgewerk Schreinerarbeiten traf die LV-Schätzung
  vergleichsweise gut (+15 bis +22 %), die kleinen technischen Nebengewerke Sanitär/Elektro
  wichen um +48 bis +95 % ab, Heizung um Faktor ≈ 31,6 (dort beschrieb die LV-Position eine
  andere Leistung als tatsächlich ausgeführt — Repositionierung statt Neubeschaffung eines
  Heizkörpers).
- **Bestehender Artikel gehoben:** `wiki/nerves-2015-kv-nebengewerke-unterschaetzt.md`,
  Status `emerging` → `established` — der neue Fall ist eine unabhängige Zweitbelegung
  desselben qualitativen Musters (grosses Hauptgewerk trifft die Schätzung, kleine technische
  Nebengewerke werden massiv unterschätzt), zwei verschiedene Projekte/Bauherrschaften, beide
  2015. Der zuvor dort stehende Zuschlags-Erfahrungswert «Faktor 2–4» wurde **nicht**
  übernommen — der zweite Fall streut deutlich weiter (Faktor 1,5–2 bis Faktor ≈ 31,6) und
  stützt keinen einzelnen Kennwert, nur das qualitative Muster.
- **Inventar:** 16 Zeilen von `[t]` auf `[x]` gesetzt, mit Backlink zum neuen Artikel.
  Zähler danach: 813 Zeilen gesamt, 632 `[-]`, 163 `[t]` (davon 46 P1 aus demselben
  Cluster `1318_Lorraine_Kueche` sowie die P1-Reste aus `1603_Steinhof`/`1011_Lorrainestr_4`/
  `1115_Kostenberechnung`, plus 91 P2, 26 P3), 18 `[x]`.

## Verifikation (Stufe 3, in dieser Session)

- Jede im neuen Artikel genannte Zahl stammt direkt aus dem Subagenten-Rohbericht, der pro
  Datei Zitat/Fundstelle nennt; keine Zahl wurde interpoliert oder ergänzt.
- Die vom Subagenten selbst als unklar/nicht belegbar gekennzeichneten Punkte (Ursache der
  niedrigen Schreiner-LV-Position trotz höherer Vergleichsofferten; Grund für die
  Positionsverschiebungen) wurden unverändert als offen/nicht rekonstruierbar übernommen,
  nicht spekulativ aufgelöst.
- BKP-Codes (224/225/223/273) gegen `references/bkp-2017/BKP-2017-Liste.md` geprüft — Heizung
  224, Sanitäranlagen 225, Elektroanlagen 223, Schreinerarbeiten 273 sind gültige Codes.
- Anonymisierung: private Kontaktdaten (Telefonnummern, private E-Mail-Adressen) der
  Bauherrschaft aus dem Subagenten-Rohbericht bewusst nicht in den Wiki-Artikel übernommen
  (KB-Regel `CLAUDE.md`: Personendaten nur wo sachlich nötig).
- Preis-/Kostenangaben tragen durchgehend das Datum 2015 und sind explizit als historischer
  Beleg gekennzeichnet, kein aktueller Richtwert.

## Offen / nächster Schritt

- 46 weitere P1-Zeilen desselben Projekts `1318_Lorraine_Kueche` (Metallbau BKP 272,
  Wandbeläge BKP 282, Malerarbeiten BKP 285, Elektroschemata dreier Teilprojekte
  1321/1508/1543) sind noch nicht gelesen.
- Die übrigen P1-Zeilen aus `1603_Steinhof` (2), `1011_Lorrainestr_4` (1),
  `1115_Kostenberechnung` (1) sowie alle 91 P2- und 26 P3-Zeilen stehen ebenfalls noch aus.
- Pflicht-Zusatzauftrag `bevorzugte-systeme-jans.md` (Entscheid Raphael 31.07.2026): noch nicht
  begonnen — dafür braucht es zunächst Material aus mehreren Projekten mit wiederkehrenden
  Produktnennungen; dieser eine Lauf reicht dafür noch nicht.

Kein «KORPUS KOMPLETT» — Korpus `buero-projekte` bleibt in `KORPUS-QUEUE.md` auf `aktiv`.
