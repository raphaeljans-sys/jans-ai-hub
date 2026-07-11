# Submission 2414 Thalwil (Bauherrschaft Tschopp) — Spec

- **Datum:** 11.07.2026 · **Rev. B** vom selben Tag (Kurswechsel Übergabe-Modus)
- **Status:** Schlüsselentscheide bestätigt (Raphael, 11.07.2026), Umsetzung Scope 1 läuft

## Ziel (1 Satz)
Den JANS AI Hub so auf die Submissionen des Projekts 2414 Thalwil (Umbau + Aufstockung ZFH
Bohlweg 3, 8800 Thalwil, BE 2024.227) vorbereiten, dass der Ausschreibungs-Agent je Los ein
**in sich konsistentes Submissionsdossier (Devisierungsgrundlagen)** baut, das per WeTransfer
an die externe Bauleitung Peter Weisser (dasBaumanagement.ch GmbH) übergeben wird —
sauberer Schnitt, keine Rückfragen an die Architektur.

## Abgrenzung (NICHT dazu)
- **KEIN Devis-Versand, keine Submissions-Korrespondenz, keine Auswertung durch JANS** —
  das macht die Bauleitung Weisser (Budget-Entscheid Raphael: knappes Architektur-Honorar
  deckt keine Submissions-Betreuung).
- Kein cc an Esther/Stefan bei Unternehmer-Korrespondenz (hinfällig — läuft über Bauleitung).
- Kein sofortiger Bau aller Dossiers (erst Los-Plan, dann Los für Los auf Zuruf).
- Keine Migration der bestehenden 03-BKP-Ordnerstruktur von 2414 (Bestand bleibt).
- Keine Werkverträge, kein Ausmass, keine Kostenkontrolle (alles Bauleitung).

## Annahmen (markiert, zu bestätigen)
- Bauherrschaft = Gertrud & Stefan Tschopp, Bohlweg 3, 8800 Thalwil (aus Mail-Korrespondenz;
  in erster LV-Stammzeile nochmals verifizieren).
- Besichtigungstermin(e) und Grobtermine-Beilage für 2414 existieren noch nicht → je Los
  bei Raphael abholen.
- Maler Ulbrich: innere oder äussere Malerarbeiten unklar → klären.
- Rolf Preis deckt Heizung + Lüftung + Sanitär ab → Los-Schnitt (ein Los HLKS oder
  getrennt) je Los entscheiden.

## Schlüsselentscheide (bestätigt 11.07.2026; Nr. 5 ersetzt Teile von 2+4)
1. **Los-Scope:** Zuerst kompletter Los-Plan über alle Gewerke der Tschopp-Liste
   (BKP-zugeordnet, priorisierbar), danach Los für Los.
2. **Zweitanbieter:** Vorgabe Stefan (Mail 23.06.2026): i.d.R. 2 Angebote je Gewerk,
   AUSSER Posch Holzbau und Treppenbauer Köhlmeier (nur 1). Die Regel gehört als
   Hinweis in die Anbieterliste des Dossiers; Finalisierung/Anschreiben macht die
   Bauleitung (JANS kann Shortlist via `unternehmerfindung` beisteuern).
3. **Ablage:** Bestehende 2414-Ordner bleiben; NEUE Lose nach Standard-Nomenklatur
   (`2414 <BKP> 01 Grundlagen … 03 AS versand …`) im `03 BKP/`.
4. **Autonomie:** Ein Checkpoint vor Übergabe — Agent baut je Los das komplette
   Dossier selbständig und prüft es durchs Konsistenz-Gate; Raphael prüft einmal,
   dann Übergabe.
5. **Übergabe-Modus (Rev. B):** JANS liefert NUR die Devisierungsgrundlagen; die
   Submission (Versand bis Werkvertrag) macht die externe Bauleitung Peter Weisser,
   dasBaumanagement.ch GmbH (pw@dasbaumanagement.ch). Übergabe = BKP-Ordner/ZIP via
   WeTransfer + Übergabeprotokoll. Leistungsschnitt SIA-102-orientiert, fixiert in
   `skills/ausschreibung/wissensbasis/13_uebergabe-bauleitung.md` + Projekt-Stammdatei.

## Bewertungskriterien (woran Erfolg gemessen wird)
- **Null Rückfragen der Bauleitung** zu übergebenen Dossiers — das Konsistenz-Gate
  (Baustein 13, Ziff. 4) ist bestanden: Plan↔LV widerspruchsfrei, Mengen nachvollziehbar,
  Bauseits-Abgrenzung klar, Plan-Index einheitlich.
- Bauherren-Vorgaben in der Anbieterliste abgebildet (richtige Firmen, 2-Angebote-Regel).
- Ausländische Anbieter (AT/DE) korrekt behandelt: MWST/EUR/Entsendung im Antwortformular
  und als Dossier-Hinweise (Wissensbaustein `12_auslaendische-unternehmer.md`).
- Raphael-Aufwand je Los: nur Inputs (Pläne, Mengen) + 1 Freigabe vor Übergabe.

## Plan (enge Scopes + Checkpoints)
- **Scope 1 (heute):** Projekt-Stammdatei `2414-thalwil.md` (Übergabe-Modus) +
  Unternehmerliste eingepflegt, Los-Plan Rev. B, Wissensbausteine 12 (AT/DE) und
  13 (Übergabe-Bauleitung), SKILL.md-Verweise. → Checkpoint: Raphael priorisiert
  Lose + liefert Plan-Stände; Leistungsschnitt-Mail an Bauherrschaft + Weisser.
- **Scope 2 (je Los):** Grundlagen sammeln → Dossier (LV, Antwortformular, Planliste,
  Anbieterliste, Übergabeprotokoll) → Konsistenz-Gate → Checkpoint Freigabe →
  ZIP + WeTransfer an Bauleitung + Logbuch-Eintrag.
- **Scope 3 (entfällt für JANS):** Versand/Auswertung/Vergabe = Bauleitung Weisser.

## Verifikation (zweite Instanz + externes Signal)
- Jedes Texterzeugnis vor Ausgabe durch Skill `korrektur` (+ Twin-Fidelity-Gate).
- Identifikatoren (Projektnr., Adresse, Parzelle 6289, BE 2024.227) gegen Projektordner
  verifizieren, nie raten (Rule `identifikatoren-verifizieren`).
- BKP-Codes nur aus `references/bkp-2017/` bzw. Stadt-ZH-2008-Katalog, nie erfinden.
- Anbieter-Kontaktdaten gegen Original-xlsx der Bauherrschaft (abgelegt im Projektordner).

## Faktenbasis
- Mail Stefan Tschopp «Fwd: Hoi», 23.06.2026, Anhang `UmbauBohlweg3.xlsx` (9 Unternehmer).
- Projektordner `AR - 01 Projekte/2414 THALWIL/` (BE 2024.227, Parzelle 6289).
- Goldstandard: Projekt 2620 Albertstrasse 7 (Stammdatei, Los-Struktur, dossier_build-Configs).
- Skill `ausschreibung` (Wissensbasis + dossier_build.py) + `unternehmerfindung`.
