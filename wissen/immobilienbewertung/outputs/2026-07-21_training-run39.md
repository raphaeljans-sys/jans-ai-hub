# Training-Run 39 — Immobilienbewertung (2026-07-21)

Schlanker Bestaetigungs-/Delta-Lauf. **Kein neuer Ingest, keine Artikelaenderung.** Die KB
ist unveraendert saturiert; es gibt keine vom Loop selbststaendig schliessbare Aufgabe.

## Ausgangslage (Stand gelesen)

- `training/PROGRAMM.md`, `training/curriculum.md`, `raw/_INGESTED.md`,
  `wiki/wissensluecken.md` gelesen.
- Wuest-Kurs (W0–W10) vollstaendig eingearbeitet; alle Ergaenzungsquellen E1–E10 zu; alle
  auto-schliessbaren T-Aufgaben abgearbeitet; letzter selbst schliessbarer Restposten (D6
  Luzern) mit Run 36 (17.07.) geschlossen und dabei eine Falschangabe korrigiert.
- Seit Run 22 (13.07.) produziert jeder Lauf nur noch einen Delta-Null-Bericht (Runs 34–38).

## Warum keine 10 Themen dieser Lauf

Das Programm verlangt 10 Themen pro Lauf, aber die verbleibenden Luecken sind **allesamt
extern gebunden** (Bring-Schuld Raphael oder zeitlich blockiert). 10 Themen zu **erfinden**
waere ein direkter Verstoss gegen die Leitplanke «nie erfinden» (PROGRAMM.md, Abschnitt
Leitplanken; identisch begruendet in Run 34/37). Der ehrliche Lauf ist deshalb ein
Delta-/Bestaetigungscheck der drei einzigen Trigger, die echte Arbeit ausloesen koennten.

## Durchgefuehrte Checks

1. **Bewertungsordner** (`IMMO - 01 Projekte/01 BEWERTUNG PROJEKTE/`) direkt gelistet:
   **unveraendert** — 10 Ordner (Ebmatingen 3932 LB+RW, Langnau 3338 LB, Niederhasli 8155 CS,
   Wald 8636 Desktop+Volumen, Thalwil 9568 LB+MA+RW, Wangen 8855 LB) + `_Archiv`. Juengster
   Bewertungsfall weiterhin **Wangen 8855** (Stand 09.06.2026). **Kein neuer JANS-Fall.**
2. **Marktpuls (E7)** bewusst **nicht** per Web geprueft — Drossel-Rule `auto-verbesserungen`
   260714 (Wochenlimit schonen); naechster amtlicher Wert erst **01.09.2026** (Referenzzins,
   Stichtag 30.06.). KB-Anker unveraendert: SNB-Leitzins 0.00 %, Referenzzins 1.25 %,
   massgebender Durchschnittszinssatz 1.31 % per 31.03.2026.
3. **Verifier** — kein Wiederholungslauf. Alle Kernkomplexe (Healthcare-Kennwerte,
   Ertragswert-/Residualwert-Rechnungen, Nutzungskonzeptions-Kennzahlen, Neuwert-Tabellen,
   Erfolgsfaktoren) wurden in den Runs 18–22 bereits exakt reproduziert; unter der
   Token-Drosselung ist eine erneute Reproduktion nicht gerechtfertigt.

## Offene Pendenzen — beide bereits im Fristen-Register, kein Delta noetig

Anders als in Run 38 gibt es diesen Lauf **keinen** neuen Eskalations-Delta: beide an Raphael
gerichteten Punkte stehen bereits sichtbar in `logbuch/fristen.md` (Meldekanal, der gelesen
wird — der Trainings-Report ist es nachweislich nicht):

- **Ruecktaktung des Loops** — Eintrag 19.07.2026 (Run 38), Status «offen, Entscheid Raphael»;
  Optionen: woechentlich ODER ereignisgesteuert (neuer Fall / Stichtag 01.09.2026).
- **Oberrieden-Hoehenkorrektur** (Rule `auto-verbesserungen` 260624: 9.0 m traufseitig falsch,
  amtlich 8.5 m) — Eintrag 17.07.2026 (Run 36), Status «offen, Entscheid/Korrektur Raphael».

Beide **nicht erneut** im Report geflaggt (waere reine Wiederholung ohne Wirkung).

## Verbleibende Luecken (alle extern gebunden)

- **Bring-Schuld Raphael:** D1 (UBS-FS aktualisieren), D2 (strukturierte Bodenpreis-Quelle),
  D5 (Margen-/Finanzierungspraxis), D7 (Buero/Gewerbe), D9 (Szenarien-Definitionen),
  D10 (2 inkonsistente Zeilen im Healthcare-Referenzblatt).
- **Zeitlich blockiert:** Langnau/Zollikon/Luzern-BZO fruehestens 2027; naechster amtlicher
  Marktwert 01.09.2026.

## Empfehlung

Unveraendert: **Ruecktaktung** dieser KB auf woechentlich oder ereignisgesteuert, bis neues
Material vorliegt (neuer JANS-Fall im Bewertungsordner oder Stichtag 01.09.2026). Der Loop
taktet sich nicht selbst zurueck — Entscheid liegt bei Raphael (Fristen-Register 19.07.2026).

## Naechster Lauf

Delta-/Bestaetigungscheck. Produktiver Ingest erst wieder bei: neuem JANS-Bewertungsfall,
neuem Rohmaterial einer D-Luecke, oder neuem amtlichen Marktwert (01.09.2026).
