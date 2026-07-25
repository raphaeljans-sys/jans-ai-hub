# Normen-Training SIA/VKF — Run 14 (MacBook Pro, 2026-07-15)

## Ausgangslage

Scheduled Task `normen-training-nacht`, Station MacBook Pro (Stations-Split: NUR SIA/VKF;
DIN/VSS/RAL bleiben dem Mac Mini). Inventar-Check vorab: SIA und VKF weiterhin **0 offene
`[ ]`-Positionen** — Grunddestillation (seit Mini-Run 19) und Retro-Verifikation Stufe (b)
(seit Run 13, flaechendeckend `established`) sind fertig. Q&A-Selbstbefragung (Vertiefungsstufe c)
existierte bisher nur fuer den DIN-Zweig (Mac Mini). Dieser Lauf startet Stufe (c) fuer die
**SIA/VKF-P1-Kernnormen**.

Zugriffs-Check bestanden: NAS gemountet; PDF-Content-Read am Test-PDF `451_1992_d.pdf`
(SIA 451:1992 Titelseite) erfolgreich — keine TCC-Blockade auf dem OneDrive-Normen-Ordner.

## Methode

Workflow mit 10 parallelen Q&A-Selbstbefragungs-Agenten (1 Agent je Norm). Jeder Agent:
1. liest das **Original-PDF** (Read mit `pages:`, max. 20 S./Request, normative Kernabschnitte),
2. formuliert 20–22 Pruefungsfragen ueber die Breite der Norm,
3. beantwortet jede Frage **unabhaengig am Original** (Fundstellen-Pflicht, nichts erfunden),
4. gleicht die Antworten gegen das bestehende Destillat ab: eindeutige Widersprueche → direkt
   im Destillat korrigiert; fehlende (nicht falsche) Details → als Luecke gemeldet,
5. schreibt die Q&A-Datei nach `destillate/qa/<norm>-fragen.md`.

## Verifikations-Verdikte

| Norm | Fragen | Verdikt | Fehler | Luecken |
|---|---|---|---|---|
| SIA 102:2020 Honorar Architekt | 20 | deckungsgleich | 0 | 0 |
| SIA 103:2003 Honorar Bauingenieur | 20 | Destillat korrekt | 0 | 8 |
| SIA 105:2020 Honorar Landschaftsarch. | 20 | Destillat korrekt | 0 | 6 |
| SIA 111:2014 Modell Planung/Beratung | 20 | Destillat korrekt | 0 | 3 |
| SIA 112:2014 Modell Bauplanung | 20 | Destillat korrekt | 0 | 2 |
| SIA 118:1991 Allg. Bedingungen Bau | 21 | Destillat korrekt | 0 | 2 |
| SIA 416:2003 Flaechen/Volumen | 22 | deckungsgleich | 0 | 0 |
| SIA 451:1992 Datenformate LV | 20 | Destillat korrekt | 0 | 4 |
| VKF Brandschutznorm 1-15:2015 | 20 | Destillat korrekt | 0 | 2 |
| VKF BRL 16-15 Flucht-/Rettungswege | 22 | Destillat korrekt | 0 | 3 |
| **Summe** | **205** | **10/10 established bestaetigt** | **0** | **30** |

## Gesamtbefund

**Kein einziger sachlicher Fehler** in den 10 established-Destillaten — die zweite adversariale
Absicherung (nach der Retro-Verifikation Stufe b) bestaetigt den SIA/VKF-Kernbestand als robust.
2 Destillate (SIA 102:2020, SIA 416:2003) sind vollstaendig deckungsgleich, 8 sind faktisch korrekt,
aber unvollstaendig — 30 Ergaenzungskandidaten (fehlende Detail-Fundstellen) wurden gemeldet.

Zentrale Ergaenzungskandidaten (Volltext-Fundstellen in den jeweiligen Q&A-Dateien):
- **SIA 103:2003:** mittlere-Stundenansaetze-Formel H = Tt·h·a + Anforderungsfaktor-Richtwerte
  (Studien 0,9–1,3; Projektierung/Bauleitung 0,6–1,1), Kuendigung-zur-Unzeit-Zuschlag 10 %
  (Ziff. 1.12.2), CHF-100'000-Schwelle (6.2.1), Erhaltung +0,2–0,6 (7.14), ARGE +5 % (7.17),
  10-J-Verjaehrung (1.11.1).
- **SIA 105:2020:** Phasengliederung/Leistungsmodell (Art. 3.2/4.2), Genauigkeitsgrade
  Kostenschaetzung ±15 % / Kostenvoranschlag ±10 % (4.2.31/.32), CHF-100'000-Schwelle (6.2.1).
- **SIA 118:1991:** Art. 177 Schlusspruefung/Beweissicherung vor Ablauf Garantiefrist;
  Art. 155 Abs. 2 Nachfrist 1 Monat bei versaeumter Schlussabrechnungs-Pruefung.
- **SIA 112:2014:** Verweis auf SIA 469 + SIA 269/2 in den Modulen 532.2/622/632 (Bauwerksakten).
- **SIA 451:1992:** Feld 20 Laufnummer (7-stellig m. Pruefziffer), Header-Felder 11 (Sprachcode)
  / 12 (Stellung zur Vorversion A/B), Schlussrecord-Datum TTMMJJ, Zerlegung Katalog-Feld 2a/2b/2c.
- **VKF BRL 16-15:** Personenbelegungs-Tabelle (Verkauf 0,5/0,35/0,25; Restaurant 1; Versammlung 2
  Pers./m²), Treppen-Steigungsformeln (2s+a=0,63 m; s+a=0,46 m), Tuerverschluss-Normen
  (SN EN 179 bis 2 Pers./m², SN EN 1125 darueber).

Neuer Klaerpunkt: Die VKF-Datei `16-15_rev2016_flucht_und_rettungswege.pdf` datiert im Text als
**Ausgabe 2017** (mit IOTH-Revisionen 2015/2016). REGISTER/Inventar fuehren kein klares Ausgabejahr
— am Original verifizieren und in `wiki/REGISTER.md` nachtragen (→ QUESTIONS.md).

## Nachgefuehrt

- 10 neue Q&A-Dateien `destillate/qa/{sia-102-2020,sia-103-2003,sia-105-2020,sia-111-2014,
  sia-112-2014,sia-118-1991,sia-416-2003,sia-451-1992,vkf-brandschutznorm-1-15,vkf-brl-16-15}-fragen.md`.
- Neuer Tracker `destillate/qa/INDEX.md` (SIA/VKF-Q&A-Stand + Verweis auf DIN-Zweig).
- `wiki/QUESTIONS.md`: Eintrag Q&A-Run-14 (30 Ergaenzungskandidaten) + VKF-16-15-Ausgabe-Klaerpunkt.
- `CHANGELOG.md`: neuer Eintrag oben.
- Keine Destillat-Korrektur (0 Fehler) — alle 10 bleiben `established`.

## Naechster Batch

- **Stufe (c) fortsetzen:** Q&A-Selbstbefragung fuer die naechsten SIA/VKF-P2-Normen ohne Selbsttest
  (z.B. SIA 108, 118-Merkblaetter, weitere VKF-BRL/Arbeitshilfen).
- **Stufe (a) Vollstaendigung:** die 30 gemeldeten Luecken in die Destillate einarbeiten (Volldestillat),
  beginnend mit den honorarrelevanten (SIA 103/105 Formel-/Schwellenwerte) und SIA 118 (Art. 155/177).
- **Stufe (d) Querschnitts-Synthesen** fuer die Fach-Skills (werkvertrag → SIA 118;
  honorarberechnung-sia102 → SIA 102/103/105/111/112; flaechen-nachweis → SIA 416;
  brandschutz → VKF) — Pendant zur bereits vorhandenen `wiki/synthese-din-vss-ral-fachskills.md`.

**Kein «SIA/VKF KOMPLETT»** — Grunddestillation + Retro-Verifikation (b) sind fertig, Stufe (c)
laeuft (Kernnormen abgesichert), Stufen (a)-Vollstaendigung und (d)-Synthese sind offen.

## Technischer Hinweis (Git/SMB)

Manuelle Git-Operationen ueber den SMB-Mount haben in diesem Lauf getimeoutet (bekannte SMB-Latenz /
Repo-Lock; Rule `sync-kanonische-quelle` NIE-Liste «kein Git-Job ueber den SMB-Mount»). Die
NAS-Schreibvorgaenge dieses Laufs werden vom nativen DSM-`nas-selfcommit`-Cron (alle 15 Min,
off-SMB, mit pull/push) committet und gepusht — das dokumentierte Sicherheitsnetz. Kein Datenverlust:
alle Dateien sind auf dem NAS-Dateisystem gespeichert (Write/Edit erfolgreich).
