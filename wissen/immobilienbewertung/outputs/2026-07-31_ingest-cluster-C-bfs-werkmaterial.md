---
title: "Ingest Cluster C — BFS-Statistik und werk-material.online (Marktpreise)"
status: in_arbeit
last_updated: 2026-07-31
sources:
  - "OneDrive JANS / IMMO - 04 Marktpreise / bfs.admin.ch/"
  - "OneDrive JANS / IMMO - 04 Marktpreise / werk-material.online/"
  - "OneDrive JANS / IMMO - 04 Marktpreise / lignum, keevalue.ch, Zuerich Stadt, comparis.ch u.a."
links:
  - "[[baupreisindex]]"
  - "[[kostenkennwerte]]"
---

# Ingest Cluster C — BFS-Statistik und werk-material.online

Lauf 31.07.2026. Basispfad:
`/Users/raphaeljans/Library/CloudStorage/OneDrive-FreigegebeneBibliotheken–JANS/IMMO - 04 Marktpreise/`

STATUS: Datei wird waehrend des Laufs fortlaufend ergaenzt.

---

## TEIL 1 — bfs.admin.ch (amtliche Statistik)

### 1.1 ZENTRALE PRUEFFRAGE: Basis der BFS-Baupreisindex-Reihe

**Belegte Antwort: Die Reihe laeuft auf Basis Oktober 2020 = 100 — auch im juengsten
vorliegenden Stand (Datenstand 30.10.2025). Es gibt in diesem Bestand KEINEN Beleg fuer
eine Basis «Oktober 2025 = 100».**

Woertlicher Basisvermerk, `Baupreisindex/251000 Grundlagen/gr-d-05.05.01-cc.pdf`, Titelzeile:

> «Entwicklung des Baupreisindexes in der Schweiz / Basis Oktober 2020 = 100»
> Fusszeile: «Datenstand: 30.10.2025 · gr-d-05.05.01-cc · Quelle: BFS – Schweizerischer
> Baupreisindex · © BFS 2025»

Derselbe Vermerk «Basis Oktober 2020 = 100» steht identisch in
`240430 Grundlagen/gr-d-05.05.01-cc.pdf` (Schweiz) und `240430 Grundlagen/gr-d-05.05.04-cc.pdf`
(Hochbaupreise in den Grossregionen, © BFS 2023) sowie in allen Registerblaettern von
`241000 Grundlagen/cc-t-05.05.06.xlsx` und in `251000 Grundlagen/cc-t-05.05.02.xlsx`
(Codeblatt: `<BASE_2020> | BASE | 2020 | Basis Oktober 2020 = 100 / Base octobre 2020 = 100 /
Base ottobre 2020 = 100`).

**Aktuelle Indexstaende Schweiz, Basis Okt 2020 = 100** (Quelle: Datenreihe
`251000 Grundlagen/gr-d-05.05.01-cc.csv`, identisch zur Grafik gr-d-05.05.01-cc.pdf,
Datenstand 30.10.2025):

| Stichmonat | Baugewerbe Total | Hochbau | Tiefbau |
|---|---|---|---|
| Okt 2020 (Basis) | 100 | 100 | 100 |
| Apr 2021 | 101.4 | 101.5 | 101.1 |
| Okt 2021 | 104.1 | 104.6 | 102.4 |
| Apr 2022 | 109.2 | 109.7 | 107.5 |
| Okt 2022 | 112.7 | 113.2 | 111.1 |
| Apr 2023 | 113.9 | 114.3 | 112.4 |
| Okt 2023 | 114.5 | 114.8 | 113.6 |
| Apr 2024 | 115.0 | 115.2 | 114.3 |
| Okt 2024 | 115.2 | 115.3 | 114.7 |
| Apr 2025 | 115.8 | 115.9 | 115.5 |
| **Okt 2025** | **116.2** | **116.3** | **115.9** |

Reihenlogik: halbjaehrliche Erhebung, Stichmonate **April und Oktober**; die Reihe reicht in
dieser Datei bis Okt 2010 (Total 97.6 / Hochbau 98.6 / Tiefbau 93.8) zurueck.

**WIDERSPRUCHS-FLAG fuer den Hauptlauf:** Die KB fuehrt an anderer Stelle «neu Basis
Okt-2025 = 100, April 2026 = 100.6». Diese Aussage ist durch den hier vorliegenden Bestand
**nicht belegt** und steht im Widerspruch zum juengsten amtlichen Dokument (Datenstand
30.10.2025, Basis Okt 2020 = 100). Zwei Moeglichkeiten, die der Hauptlauf trennen muss:
(a) das BFS hat NACH dem 30.10.2025 auf Okt 2025 = 100 umbasiert — dann fehlt der Beleg in
dieser Ablage und muss vom BFS nachgezogen werden; (b) die KB-Aussage ist eine unbelegte
Fortschreibung. **Bis ein Beleg vorliegt, gilt fuer JANS-Erzeugnisse Basis Okt 2020 = 100.**
Merkhilfe zur Plausibilitaet: Ein Umbasierungswert «April 2026 = 100.6» waere mit
Okt 2025 = 100 rechnerisch konsistent (116.2 → 116.9 auf alter Basis), beweist die
Umbasierung aber nicht.

### 1.2 Regionale Indexstaende Oktober 2024 (Basis Okt 2020 = 100)

Quelle: `Baupreisindex/241000 Grundlagen/cc-t-05.05.06.xlsx`, «Hauptergebnisse des
Baupreisindexes Oktober 2024», je ein Registerblatt pro Grossregion. Gewichte in % der
jeweiligen Regionsstruktur (nicht CH-Anteile).

**Schweiz (REG_01):** Total 115.2 (+0.1 % ggue. Apr 2024, +0.5 % ggue. Okt 2023) ·
Hochbau 115.3 (Gewicht 77.67 %) · Neubau 115.9 (45.11 %) · Neubau MFH 115.7 (25.70 %) ·
Neubau MFH aus Holz 116.3 (5.17 %) · Neubau EFH 114.7 (5.38 %) · Neubau Buerogebaeude 117.9
(5.39 %) · Neubau Lagerhalle 116.0 (3.47 %) · Renovation/Umbau 114.3 (32.56 %) ·
Renovation MFH 114.1 (21.06 %) · Renovation Buerogebaeude 114.8 (11.50 %) ·
Tiefbau 114.7 (22.33 %) · Neubau Strasse 114.6 · Strassensanierung 114.8.

**Zuerich ZH (REG_05):** Total 115.3 (0.0 % / +0.7 %) · **Hochbau 116.1, Gewicht 80.06 %** ·
Neubau 116.6 (45.97 %) · Neubau MFH 116.3 (27.85 %) · Neubau MFH aus Holz 117.1 (5.70 %) ·
Neubau EFH 116.0 (2.98 %) · Neubau Buerogebaeude 117.3 (7.97 %) · Neubau Lagerhalle 117.7
(1.47 %) · Renovation/Umbau 115.4 (34.09 %) · Renovation MFH 114.7 (16.69 %) ·
Renovation Buerogebaeude 116.1 (17.40 %) · Tiefbau 112.3 (19.94 %) · Neubau Strasse 110.8 ·
Strassensanierung 112.5.

**Zentralschweiz (LU, UR, SZ, OW, NW, ZG; REG_07):** Total 114.1 (−0.3 % / −1.0 %) ·
Hochbau 114.6 (84.56 %) · Neubau 115.5 · Neubau MFH 115.6 (33.38 %) · Neubau MFH Holz 115.2 ·
Neubau EFH 114.5 · Renovation/Umbau 113.1 · Tiefbau 111.5 (15.44 %). Einzige Grossregion mit
durchgehend negativer Jahresveraenderung in diesem Stand.

Weitere Regionen desselben Stands: Genferseeregion Total 114.7 · Espace Mittelland 114.5 ·
Nordwestschweiz 117.6 (hoechster Wert) · Ostschweiz 116.1 · Tessin 112.6 (tiefster Wert).

**Bewertungsrelevante Lehre:** Die Spreizung zwischen den Grossregionen betraegt im
Oktober 2024 rund 5 Indexpunkte (Tessin 112.6 bis Nordwestschweiz 117.6). Wer eine
Aufindexierung mit dem CH-Total statt der Regionsreihe rechnet, macht bei einem 2020er
Ausgangswert einen Fehler von bis zu ~2 % — fuer Grobkosten tolerabel, fuer ein
Bewertungsgutachten zu deklarieren.

### 1.3 Aufindexierungs-METHODE — kritische Pruefung

`Baupreisindex/00 Allgemein/Aufindexierung/Aufindexierung.docx` enthaelt **KEINE
JANS-Aufindexierungsmethode**. Der Inhalt ist:

- eine Merkfrage ohne Rechenweg («Im Jahre 2008 hat ein Quadratmeter CHF 600.- gekostet.
  Wie teuer ist dieser Quadratmeter heute 2025?») — Antwort fehlt;
- zwei **Anfrage-Entwuerfe an das BFS** (Adressat «Brahm Dorian»), beide ohne dokumentierte
  Antwort. Anfrage 1: «Der Preis für 1m2 Geschossfläche des Gebäudes Altersheim Trotte Zürich
  kostete im Jahr 2019 CHF 3'907.- Wie hoch würde dieser Preis heute sein?». Anfrage 2: ob es
  eine durchschnittliche Preiserhebung der **Erstellungskosten BKP 2 pro Geschossflaeche von
  Altersheimen in der Schweiz** gibt;
- den Link zur BFS-Seite «Berechnungsweise».

Beide Entwuerfe tragen die **veraltete Absenderadresse Fluelastrasse 6, 8048 Zuerich**
(korrekt waere Grubenstrasse 37, 8045 Zuerich — Rule `jans-absenderadresse`). Kein Beleg,
dass die Mails je versandt wurden.

Einzige belegte Zahl in dieser Ablage: **Altersheim Trotte Zuerich, 2019, CHF 3'907 je m2
Geschossflaeche** — Quelle im Dokument selbst nicht genannt, daher als **unbelegter
Ausgangswert** zu fuehren, nicht als Kennwert.

**Die belegte Formel steht dagegen in den beiden Screenshots derselben Ablage**
(`Bildschirmfoto 2024-05-02 um 15.34.00.png` / `...15.34.14.png`, BFS-Seite «Berechnungsweise»,
bfs.admin.ch/bfs/de/home/statistiken/preise/erhebungen/bap/berechnung.html). Die Seite fuehrt
drei Rechenwege: **Indexierung von Betraegen · Veraenderungsrate/Teuerung · Umbasierung von
Indexreihen**. Aufgeklappt und damit belegt ist die Veraenderungsrate:

    Veraenderungsrate = (Index neu − Index alt) / Index alt × 100

BFS-Beispiel derselben Seite: Basis Dezember 1982 = 100; Maerz 1986 = 108.6 Punkte,
Mai 2000 = 146.9 Punkte → Teuerung = (146.9 − 108.6) / 108.6 × 100 = **35.3 %**.

Daraus die Aufindexierung eines Betrags (Umkehrung derselben Rechnung):
**Betrag neu = Betrag alt × (Index neu / Index alt)** — beide Indexstaende zwingend aus
**derselben Basis und derselben Reihe** (Region + Objektart), sonst ist das Ergebnis falsch.

Kontakt fuer Rueckfragen (aus dem Screenshot): BFS Sektion Preise, Espace de l'Europe 10,
CH-2010 Neuchatel, Hotline BAP +41 58 463 63 06, bap@bfs.admin.ch.

**Empfehlung an den Hauptlauf:** Aus diesem Befund gehoert ein eigener Wiki-Artikel
`aufindexierung.md` in die KB — die Methode ist heute nur als Screenshot-Beleg vorhanden,
nicht als JANS-Verfahren. Dazu die Warnung, dass ein Ausgangswert 2019 nicht mit der
Okt-2020-Basis multipliziert werden darf, ohne zuvor den Index Okt/Apr 2019 der richtigen
Reihe zu ziehen.

