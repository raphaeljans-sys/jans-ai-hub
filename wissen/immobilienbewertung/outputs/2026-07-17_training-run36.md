# Trainings-Lauf 36 — KB Immobilienbewertung (2026-07-17)

**Modus:** produktiver Lauf mit **materiellem Korrekturbefund** (erster seit Run 27).
**Takt:** erster Lauf seit Run 35 (2026-07-15) — Soll-Takt eingehalten, keine Trigger-Häufung.
**Drossel-Rule 260714 beachtet:** kein Marktpuls-Web-Check (nächster amtlicher Wert erst
01.09.2026 — ein Recheck wäre reiner Token-Verbrauch gegen das Wochenlimit), Verifikation auf
1 Refuter-Agent begrenzt statt 3.

## Ausgangslage

Die KB ist saturiert: Wüest-Kurs + E1–E10 sind eingearbeitet, alle auto-schliessbaren
T-Aufgaben abgearbeitet. Die Runs 32–35 waren reine Bestätigungsläufe ohne Erkenntnisgewinn.
**10 Themen zu «wählen» wäre hier ein Leitplanken-Verstoss** (Themen erfinden statt belegen).
Stattdessen der Weg über den einzigen noch selbst schliessbaren Restposten.

## Was geprüft wurde

| # | Kandidat | Ergebnis |
|---|---|---|
| 1 | Neuer JANS-Bewertungsfall? | **Nein** — Ordner unverändert, 6 Fälle, jüngster Wangen 8855 (09.06.) |
| 2 | D6-Restposten **Luzern-Per-Ordnungsnummer** (offen seit Run 25) | **Geschlossen — und dabei eine Falschangabe aufgedeckt** |
| 3 | D6-Restposten Langnau | Weiterhin blockiert (Revision, Festsetzung erst Frühjahr 2027) |
| 4 | Marktpuls (E7) | Bewusst nicht geprüft (Drossel-Rule; nächster Wert 01.09.2026) |

## Kernbefund — der Artikel beschrieb den Entwurf statt das geltende Recht

Der Abschnitt «Luzern» in [[az-gfz-kennwerte]] behauptete seit Run 25:
«BZR 2022, Art. 40/43 — Wohnzonen A–F und Wohn- und Arbeitszonen B–F nach zulässiger
**Gesamthöhe** differenziert». Der Volltextabgleich an der amtlichen Quelle (Modell D)
widerlegt das:

| Behauptung (alt) | Amtlicher Befund |
|---|---|
| «BZR 2022» | Geltend ist das **BZR vom 17. Januar 2013**, sRSL Nr. 7.1.2.1.1, **Ausgabe vom 01.09.2024** (in Kraft seit 03.06.2014, letzte Änderung 04.05.2023) |
| «Art. 40/43» regeln die Zonendichte | Art. 40 = Gebots-/Hinweiszone Rutsch und Sturz · Art. 43 = Energie. Massgebend sind **Art. 4/5/7/24/26 + Anhang 1** |
| Wohnzonen «A–F» nach Gesamthöhe | **Keine** Klassen A–F. Zonen heissen **WO** (Art. 5) und **WA** (Art. 7); **A/B = Ortsbildschutzzone** |
| Steuerung über «Gesamthöhe» | Der Begriff kommt im Reglement **null Mal** vor. Höhe = **Vollgeschosse** *oder* **Fassadenhöhe** (Art. 26: FH 21 m / Firsthöhe 27 m / max. 6 VG) |

**Ursache (nicht Halluzination):** Die A–F-Systematik existiert — aber im **Entwurf der
laufenden BZO-Revision**: «Die Wohnzonen sowie Wohn- und Arbeitszonen sind, in Abhängigkeit
von der zulässigen Gesamthöhe, differenziert in Wohnzonen A bis F und in Wohn- und
Arbeitszonen B bis F» (Entwurf Art. 40 Abs. 3, `stadtluzern.ch/_doc/4902088`). Run 25 hat
einen Revisionsentwurf gelesen und als geltendes Recht dargestellt. Das erklärt auch die
sonst rätselhafte Artikel-Nummer «40/43».

## Was neu belegt in die KB ging

**ÜZ-Bandbreiten je Zonenart** (Anhang 1, ausgezählt):

| Zonenart | Ordnungsnummern | ÜZ-Spanne | Höhe | Bauweise |
|---|---|---|---|---|
| **WO** Wohnzone | 101–192 | **0.05–0.8** (Schwerpunkt 0.15–0.3) | 1–5 VG *oder* FH 21/24 m | offen / geschlossen |
| **WA** Wohn- und Arbeitszone | 1–66 | **0.15–1.0** (Schwerpunkt 0.25–0.6) | 2–7 VG *oder* FH 21–45 m | offen / geschlossen |

Ausreisser belegt: **Nr. 54 WA ÜZ 1.0 / FH 21 m** (dichteste Zone), **Nr. 182 WO ÜZ 0.8**
(dichteste reine Wohnzone), **Nr. 50 WA ÜZ 0.6 / FH 45 m** (Hochhaus, Gestaltungsplanpflicht).
Einzelne Ordnungsnummern tragen **keine** ÜZ (101–106, 183/184, 189/190) — dort greift eine
Sonderregel (Art. 12/13/25) oder das Dichtemass ist im qualifizierten Verfahren zu bestimmen
(Nr. 106).

**Folgekorrektur:** Die ÜZ-Zeile der Kennziffer-Übersichtstabelle nannte «0.20–0.31» —
das war die Einsiedler Spanne, für Luzern zu eng. Korrigiert auf **0.05–1.0** mit
Gemeinde-Differenzierung.

### Zwei bewertungsrelevante Zusatzbefunde

1. **ÜZ-Bonus (Art. 24 Abs. 3):** Im Gestaltungsplan kann ein Bonus von **10 % auf die ÜZ**
   gewährt werden, für gemeinnützige Wohnungen zusätzlich **5 %**, **insgesamt max. 15 %**.
   Bei Ordnungsnummern mit Gestaltungsplanpflicht ist das im Residualwert als **Chance** zu
   prüfen — «kann»-Vorschrift, nicht als gesichert anzusetzen. Freiwilliger Gestaltungsplan
   ab 2'000 m² (WA) bzw. 4'000 m² (übrige Zonen).
2. **⚠ Doppelte Massgeblichkeit seit 28.04.2026:** Die 2. öffentliche Auflage der neuen BZO
   lief **28.04.–27.05.2026** (Entscheid Grosser Stadtrat Ende 2026, Genehmigung Regierungsrat
   frühestens Mitte 2027). Bis zur Genehmigung müssen Baugesuche **sowohl dem geltenden BZR
   als auch der neuen BZO entsprechen — die strengere Vorgabe gilt.** Wer für eine Luzerner
   Machbarkeits-/Residualwertrechnung nur auf das BZR 2013 abstellt, rechnet seit 28.04.2026
   unvollständig. Zusätzlich: für den Stadtteil **Littau** gilt bis zur Zusammenführung ein
   **separates BZR** (Art. 4 Abs. 2).

## Verifikation (PFLICHT-Stufe, PROGRAMM Sektion «Verifikations-Stufe»)

**Modell D (Volltextabgleich an der amtlichen Quelle)** + **1 Refuter-Agent** (auf 1 begrenzt
statt 2–3, Drossel-Rule 260714; der Kernbefund stützt sich ohnehin auf den amtlichen Volltext).

**Verdikt Refuter: teilweise widerlegt.** Beide Beanstandungen übernommen:

| Beanstandung | Übernahme |
|---|---|
| Ausgabe ist **1. September 2024**, nicht 1. August 2024 | Übernommen. Ursache: mein erster Fetch lief über den Geoshop-Spiegel (Label 01.08.2024). **Gegengeprüft:** Anhang-1-Werte beider Fassungen über alle 89 WO-Zeilen **diff-identisch** — die extrahierten Werte gelten, zitiert wird die kanonische sRSL-Fassung |
| A–F ist **keine Fremdgemeinde-Verwechslung**, sondern Luzerns **eigener** Revisionsentwurf | Übernommen und in den Artikel eingebaut — inkl. der praktisch wichtigen Folge (doppelte Massgeblichkeit), die ohne diesen Befund gefehlt hätte |

Der Refuter prüfte gegen: `stadtluzern.ch`, `dialogluzern.ch`, `srl.lu.ch`/`geoshop.lu.ch`,
das kantonale Muster-BZR (BUWD, Okt. 2024) sowie mögliche Verwechslungsgemeinden. Befund
dort: **Ebikon** (BZR 18.06.2023) steuert zwar über «Gesamthöhe» und kennt W-A/W-B — aber
nur A/B, kein A–F; keine LU-Gemeinde hat eine volle A–F-Systematik. Die A–F-Quelle ist
eindeutig die neue Luzerner BZO.

**Bewertung des Verifiers-Nutzens:** Der Refuter hat den Lauf messbar verbessert — die
Ausgabe-Korrektur und vor allem die doppelte Massgeblichkeit (der praktisch relevanteste
Befund des Laufs) stammen aus der Gegenprüfung, nicht aus dem Erstbefund.

## Geänderte Dateien

- `wiki/az-gfz-kennwerte.md` — Luzern-Abschnitt vollständig ersetzt (Korrektur + ÜZ-Tabelle +
  Bonus + doppelte Massgeblichkeit + Littau); ÜZ-Zeile der Kennziffer-Übersicht korrigiert;
  `sources` Luzern präzisiert; `last_updated` 2026-07-17. Status bleibt `emerging`.
- `wiki/wissensluecken.md` — D6-Zeile + Erledigt-Eintrag Run 36.
- `training/curriculum.md` — Stand Run 36.
- `raw/_INGESTED.md` — neuer externer Ingest (BZR sRSL + Entwurf + Auflage-Flyer).
- `CHANGELOG.md` — Eintrag Run 36.

## Offener Punkt an Raphael — **9. Meldung**, weiterhin unkorrigiert

Rule `auto-verbesserungen` **260624** nennt als Beispiel für Oberrieden W2 «9.0 m traufseitig».
**Amtlich belegt (Run 27, BZO Oberrieden Stand 26.01.2026): 8.5 m traufseitig** / 13.0 m
giebelseitig; 9.0 m ist die **Flachdach**-Fassadenhöhe. Die Altannahme in der Rule ist falsch
und wirkt auf jede Oberriedner Volumenstudie. Seit Run 27 (13.07.) neunmal protokolliert, ohne
Korrektur — die Meldung über den Trainings-Report erreicht Raphael offenkundig nicht. **Empfehlung:
diesen Punkt aus dem Loop herausnehmen und über `logbuch`/`hub-chef` als Pendenz führen**, sonst
läuft die Meldung weitere neun Runden ins Leere.

## Nächster Lauf

- **A–F-Per-Klassen-Werte** aus der Auflage-Fassung der neuen Luzerner BZO — sinnvoll erst bei
  konkretem Luzerner Standort (die Werte sind bis zur Genehmigung provisorisch).
- **Wiedervorlage:** Langnau (nach Revision, frühestens 2027), Zollikon (nach Teilrevision),
  Luzern (nach Genehmigung der neuen BZO, frühestens Mitte 2027).
- **Marktpuls:** erster neuer amtlicher Wert **01.09.2026** (Referenzzins, Stichtag 30.06.) —
  bis dahin ist jeder Web-Recheck Token-Verbrauch ohne Erkenntnisgewinn.
- **Methodische Lektion für die anderen Loops:** Ein als «offen — nur bei konkretem Standort»
  geparkter Restposten kann eine **Falschangabe verdecken**. Bei einer saturierten KB ist das
  Abarbeiten solcher Restposten der bessere Kandidat als eine weitere Bestätigungsrunde —
  Run 36 hat so nach vier Leerläufen wieder einen materiellen Befund erzeugt.
- **Takt:** Der Nachttakt 02:50 (Rule 260713) bleibt für diese KB angemessen.
