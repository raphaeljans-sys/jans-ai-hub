# Trainings-Lauf 37 — KB Immobilienbewertung (2026-07-18)

**Modus:** schlanker Bestaetigungs-/Delta-Lauf. Kein neuer Ingest, keine Artikelaenderung.
**Takt:** erster Lauf seit Run 36 (2026-07-17) — Soll-Takt (Nachtfenster 02:50, Rule 260713)
eingehalten, keine Trigger-Haeufung.
**Drossel-Rule 260714 beachtet:** Wochenlimit-Schonung ist aktiv (VOLLGAS beendet). Kein
Marktpuls-Web-Check (naechster amtlicher Wert erst 01.09.2026 — ein Recheck waere reiner
Token-Verbrauch), keine redundante Re-Verifikation eines bereits bestandenen Komplexes.

## Ausgangslage

Die KB ist saturiert: der Wuest-Kurs (W0–W10) und alle Ergaenzungsquellen (E1–E10) sind
eingearbeitet, alle auto-schliessbaren T-Aufgaben abgearbeitet. Run 36 hat den **letzten**
selbst schliessbaren Restposten (D6 «Luzern-Per-Ordnungsnummer») geschlossen und dabei die
einzige verbliebene Falschangabe korrigiert. **Es gibt aktuell keine vom Loop selbststaendig
schliessbare Ingest- oder Verifikations-Aufgabe mehr.** «10 Themen zu waehlen» waere hier ein
Leitplanken-Verstoss (Themen erfinden statt belegen).

## Was geprueft wurde

| # | Kandidat | Ergebnis |
|---|---|---|
| 1 | Neuer JANS-Bewertungsfall? | **Nein** — Ordner `IMMO - 01 Projekte/01 BEWERTUNG PROJEKTE/` unveraendert; juengster Fall weiterhin **Wangen 8855** (LB, Ordner-Stand 09.06.2026). Keine Datei neuer als Run 6. |
| 2 | Offener auto-schliessbarer D6-Restposten? | **Keiner.** Luzern-Per-Ordnungsnummer (Run 36) zu; Langnau + Zollikon + Luzern-A–F extern blockiert (Revisionen fruehestens 2027 rechtskraeftig). |
| 3 | Marktpuls (E7) | **Bewusst nicht geprueft** (Drossel-Rule 260714; naechster amtlicher Wert 01.09.2026). KB-Anker unveraendert: SNB 0.00 %, Referenzzins 1.25 %, Durchschnittszinssatz 1.31 % per 31.03.2026. |
| 4 | Oberrieden-Hoehenkorrektur-Flag (Rule 260624) | **Nicht mehr im Loop.** Run 36 hat den Punkt korrekt aus dem Trainings-Report herausgenommen und in `logbuch/fristen.md` als Pendenz an Raphael ueberfuehrt (Eintrag 17.07.2026). Wird hier deshalb **nicht** ein 10. Mal geflaggt — der Loop war als Meldekanal nachweislich untauglich. |

## Kein Verifier-Lauf noetig

Die Verifikations-PFLICHT-Stufe (Runs 18–22) hat alle tragenden Komplexe bereits gegengelesen
und exakt reproduziert: Healthcare-Neuwert-Kennwerte, Ertragswert-/Residualwert-Rechnungen,
DXMA-Aufwertungsgewinne + Baurecht-Fallbeispiele, Schwamendingen-Nutzermix, Neuwert-Richtwert-
und BKP-Anteil-Tabellen, Nutzungskonzeptions-Kennzahlen, Landwert-Lehrstueck. Eine erneute
Gegenlesung waere eine reine Bestaetigungs-Wiederholung — unter der Drossel-Rule nicht
gerechtfertigt.

## Geaenderte Dateien

- `outputs/2026-07-18_training-run37.md` — dieser Report (neu).
- `training/curriculum.md` — Stand Run 37 (Kopf).
- `wiki/wissensluecken.md` — B-Sektion: Run-37-Zeile (Bestaetigung, kein neuer Befund).
- `raw/_INGESTED.md` — Vermerk «kein neuer Ingest Run 37».
- `CHANGELOG.md` — Eintrag Run 37.

Keine Wiki-Artikel geaendert (nichts zu belegen/korrigieren).

## Befund / Empfehlung

Der Loop hat seit Run 32 (mit der einzigen Ausnahme Run 36) keine selbststaendig schliessbare
Aufgabe mehr. Die verbleibenden Luecken sind **allesamt extern gebunden**:

- **Bring-Schuld Raphael:** D1 (UBS-FS aktualisieren), D2 (Bodenpreis-Quelle), D5 (Margen-/
  Finanzierungspraxis), D7 (Buero/Gewerbe-Kennwerte), D9 (Szenarien-Definitionen), D10
  (2 inkonsistente Zeilen im Healthcare-Referenzblatt).
- **Extern/zeitlich blockiert:** D6-Rest (Langnau/Zollikon/Luzern-BZO — Genehmigungen
  fruehestens 2027), Marktpuls (naechster Wert 01.09.2026).
- **Neues Material:** ein neuer JANS-Bewertungsfall waere der natuerliche naechste Ingest —
  aktuell keiner vorhanden.

**Empfehlung (unveraendert, jetzt mit Nachdruck):** Der Nachttakt 02:50 (1x taeglich, Rule 260713)
ist fuer diese KB weiterhin **eher zu haeufig** — bis neues Material (JANS-Fall) oder der
Marktpuls-Stichtag 01.09.2026 eintrifft, produziert jeder Lauf nur einen Delta-Null-Bericht.
Sinnvoll waere eine **Ruecktaktung auf woechentlich** oder eine **ereignisgesteuerte Ausloesung**
(bei neuem Bewertungsfall bzw. am 01.09.2026). Entscheid Raphael — der Loop taktet sich nicht
selbst zurueck.

## Naechster Lauf

- **Trigger-basiert bevorzugt:** neuer JANS-Bewertungsfall im Bewertungsordner → sofort ingestieren.
- **01.09.2026:** erster neuer amtlicher Referenzzins-Wert (Stichtag 30.06.) → Marktpuls-Update.
- **Wiedervorlage:** Langnau (nach Revision ~2027), Zollikon (nach Teilrevision), Luzern
  (nach BZO-Genehmigung, fruehestens Mitte 2027) — je bei konkretem Standort.
- Bis dahin bleibt jeder Lauf ein ehrlicher Delta-Null-Bericht statt eines erfundenen Themensets.
