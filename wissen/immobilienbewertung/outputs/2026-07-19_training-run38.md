# Trainings-Lauf 38 — KB Immobilienbewertung (2026-07-19)

**Modus:** schlanker Bestaetigungs-/Delta-Lauf. Kein neuer Ingest, keine Artikelaenderung.
**Takt:** erster Lauf seit Run 37 (2026-07-18) — Soll-Takt (Nachtfenster 02:50, Rule 260713)
eingehalten, keine Trigger-Haeufung.
**Drossel-Rule 260714 beachtet:** kein Marktpuls-Web-Check (naechster amtlicher Wert erst
01.09.2026), kein Verifier-Wiederholungslauf.

## Ausgangslage

Unveraendert gegenueber Run 37: die KB ist **saturiert**. Wuest-Kurs (W0–W10) und alle
Ergaenzungsquellen (E1–E10) sind eingearbeitet, alle auto-schliessbaren T-Aufgaben
abgearbeitet; Run 36 hat den letzten selbst schliessbaren Restposten (D6 Luzern) geschlossen.
**Es gibt keine vom Loop selbststaendig schliessbare Ingest- oder Verifikations-Aufgabe mehr.**
«10 Themen zu waehlen» waere hier ein Leitplanken-Verstoss (Themen erfinden statt belegen) —
deshalb wie in den Vorlaeufen ein ehrlicher Delta-Bericht.

## Was geprueft wurde

| # | Kandidat | Ergebnis |
|---|---|---|
| 1 | Neuer JANS-Bewertungsfall? | **Nein** — `IMMO - 01 Projekte/01 BEWERTUNG PROJEKTE/` unveraendert (11 Fallordner + `_Archiv`); juengster Eintrag weiterhin **8855 Wangen 25, Bahnhofstrasse 27 LB** (Ordner-Stand 09.06.2026). Keine Datei neuer als Run 6. |
| 2 | Offener auto-schliessbarer D-Restposten? | **Keiner.** Luzern-Per-Ordnungsnummer (Run 36) zu; Langnau + Zollikon + Luzern-A–F extern blockiert (Revisionen fruehestens 2027 rechtskraeftig). |
| 3 | Marktpuls (E7) | **Bewusst nicht geprueft** (Drossel-Rule 260714). KB-Anker unveraendert: SNB 0.00 %, Referenzzins 1.25 %, Durchschnittszinssatz 1.31 % per 31.03.2026. |
| 4 | Oberrieden-Hoehenkorrektur (Rule 260624) | **Nicht erneut geflaggt** — seit Run 36 als Pendenz in `logbuch/fristen.md` gefuehrt (Eintrag 17.07.2026). |

## Delta dieses Laufs: Ruecktaktungs-Empfehlung bekommt einen Meldekanal

Der einzige substanzielle Befund ist ein **prozessualer**, und er wurde diesmal auch gehandelt
statt nur wiederholt:

Die Empfehlung «Loop ruecktakten» steht seit **Run 22 (13.07.2026)** in **sieben** Reports
(22, 23, 32, 34, 35, 37 und implizit 33) — ohne Wirkung, weil der Trainings-Report als
Meldekanal an Raphael nachweislich untauglich ist. Genau dieselbe Diagnose hatte Run 36 fuer
das Oberrieden-Flag gestellt und den Punkt daraufhin nach `logbuch/fristen.md` ueberfuehrt.

**Dieser Lauf wendet denselben Mechanismus auf die Ruecktaktung an:** neuer Eintrag
19.07.2026 in `logbuch/fristen.md` (A4-Registerpflege, Status «offen, Entscheid Raphael»)
mit Saturierungs-Nachweis, Liste der extern gebundenen Restluecken und zwei konkreten
Optionen (woechentlich ODER ereignisgesteuert). Damit erscheint der Punkt im taeglichen
Logbuch-Radar-Briefing statt in einem Report, den niemand oeffnet.

Der Loop taktet sich **nicht selbst** zurueck — eine Frequenzaenderung am Scheduled Task
ist ein Eingriff in Raphaels Automations-Setup und bleibt Entscheid Raphael.

## Kein Verifier-Lauf noetig

Die Verifikations-PFLICHT-Stufe (Runs 18–22) hat alle tragenden Komplexe gegengelesen und
exakt reproduziert (Healthcare-Neuwert-Kennwerte, Ertragswert-/Residualwert-Rechnungen,
DXMA-Aufwertungsgewinne + Baurecht-Fallbeispiele, Schwamendingen-Nutzermix, Neuwert-Richtwert-
und BKP-Anteil-Tabellen, Nutzungskonzeptions-Kennzahlen, Landwert-Lehrstueck). Eine erneute
Gegenlesung waere reine Bestaetigungs-Wiederholung — unter der Drossel-Rule nicht gerechtfertigt.

## Geaenderte Dateien

- `outputs/2026-07-19_training-run38.md` — dieser Report (neu).
- `logbuch/fristen.md` — **neuer Eintrag 19.07.2026**: Ruecktaktungs-Pendenz an Raphael (der
  eigentliche Delta dieses Laufs).
- `training/curriculum.md` — Stand Run 38 (Kopf).
- `wiki/wissensluecken.md` — B-Sektion: Run-38-Zeile.
- `raw/_INGESTED.md` — Vermerk «kein neuer Ingest Run 38».
- `CHANGELOG.md` — Eintrag Run 38.

Keine Wiki-Artikel geaendert (nichts zu belegen/korrigieren).

## Naechster Lauf

- **Trigger-basiert bevorzugt:** neuer JANS-Bewertungsfall im Bewertungsordner → sofort ingestieren.
- **01.09.2026:** erster neuer amtlicher Referenzzins-Wert (Stichtag 30.06.) → Marktpuls-Update.
- **Wiedervorlage:** Langnau (nach Revision ~2027), Zollikon (nach Teilrevision), Luzern
  (nach BZO-Genehmigung, fruehestens Mitte 2027) — je bei konkretem Standort.
- Bis zu Raphaels Entscheid ueber die Ruecktaktung bleibt jeder Lauf ein Delta-Null-Bericht.
