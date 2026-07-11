# Submission 2414 Thalwil (Bauherrschaft Tschopp) — Spec

- **Datum:** 11.07.2026
- **Status:** Schluesselentscheide bestaetigt (Raphael, 11.07.2026), Umsetzung Scope 1 laeuft

## Ziel (1 Satz)
Den JANS AI Hub so auf die Submissionen des Projekts 2414 Thalwil (Umbau + Aufstockung ZFH
Bohlweg 3, 8800 Thalwil, BE 2024.227) vorbereiten, dass der Ausschreibungs-Agent je Los
selbstaendig das komplette Versandpaket baut und Raphael nur noch EINEN Checkpoint vor dem
Versand hat.

## Abgrenzung (NICHT dazu)
- Kein sofortiger Bau aller LV-Pakete (erst Los-Plan, dann Los fuer Los auf Zuruf).
- Keine Migration der bestehenden 03-BKP-Ordnerstruktur von 2414 (Bestand bleibt).
- Kein Versand ohne Freigabe; keine Werkvertraege (nachgelagert, Skill `werkvertrag`).

## Annahmen (markiert, zu bestaetigen)
- Bauherrschaft = Gertrud & Stefan Tschopp, Bohlweg 3, 8800 Thalwil (aus Mail-Korrespondenz;
  in erster LV-Stammzeile nochmals verifizieren).
- Besichtigungstermin(e) und Grobtermine-Beilage fuer 2414 existieren noch nicht → je Los
  bei Raphael abholen.
- Maler Ulbrich: innere oder aeussere Malerarbeiten unklar → klaeren.
- Rolf Preis deckt Heizung + Lueftung + Sanitaer ab → Los-Schnitt (ein Los HLKS oder
  getrennt) je Los entscheiden.

## Schluesselentscheide (bestaetigt 11.07.2026)
1. **Los-Scope:** Zuerst kompletter Los-Plan ueber alle Gewerke der Tschopp-Liste
   (BKP-zugeordnet, priorisierbar), danach Los fuer Los.
2. **Zweitanbieter:** Vorgabe Stefan (Mail 23.06.2026): i.d.R. 2 Angebote je Gewerk,
   AUSSER Posch Holzbau und Treppenbauer Koehlmeier (nur 1). Fehlende Zweitanbieter
   ergaenzt der Skill `unternehmerfindung` automatisch als Shortlist ZUR FREIGABE —
   niemand wird ohne Freigabe angeschrieben.
3. **Ablage:** Bestehende 2414-Ordner bleiben; NEUE Lose nach Standard-Nomenklatur
   (`2414 <BKP> 01 Grundlagen … 03 AS versand …`) im `03 BKP/`.
4. **Autonomie:** Ein Checkpoint vor Versand — Agent baut je Los das komplette Paket
   (LV, Begleitschreiben, Antwortformular, Adressblatt, Doppel-Ablage, Mail-Drafts,
   Kalender-Frist) via `tools/dossier_build.py`; Raphael prueft einmal, dann Versand.

## Bewertungskriterien (woran Erfolg gemessen wird)
- Jedes Los-Paket besteht den Vergleich mit dem Goldstandard 2620 (Struktur, Nomenklatur,
  Vollstaendigkeit: LV + Begleitschreiben + Antwortformular + Adressblatt + Beilagen).
- Bauherren-Vorgaben eingehalten: richtige Firmen, cc-Regeln (Esther/Stefan), 2-Angebote-Regel.
- Auslaendische Anbieter (AT/DE) korrekt behandelt: MWST/EUR/Entsendung im Begleitschreiben
  und Antwortformular adressiert (Wissensbaustein `12_auslaendische-unternehmer.md`).
- Raphael-Aufwand je Los: nur Inputs (Plaene, Mengen, Termine) + 1 Freigabe.

## Plan (enge Scopes + Checkpoints)
- **Scope 1 (heute):** Projekt-Stammdatei `2414-thalwil.md` + Unternehmerliste eingepflegt,
  Los-Plan als Entscheidungsgrundlage, Wissensbaustein auslaendische Unternehmer,
  SKILL.md-Verweis. → Checkpoint: Raphael priorisiert Lose + liefert Termine.
- **Scope 2 (je Los):** Grundlagen sammeln → LV-Entwurf + Paket via dossier_build.py →
  Checkpoint Freigabe → Versand (Mail-Drafts) + Kalender-Frist.
- **Scope 3 (nach Frist):** Phase 3 Auswertung (offertenpruefung, Vergleichsmatrix,
  Vergabeempfehlung).

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
