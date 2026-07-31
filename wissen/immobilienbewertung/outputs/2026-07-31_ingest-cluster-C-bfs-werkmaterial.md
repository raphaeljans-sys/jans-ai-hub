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


### 1.4 Methodische Grundlagen — `Baupreisstatistik/622-2000.pdf`

Vollzitat: BFS, «Schweizerische Baupreisstatistik Oktober 2020 = 100 — Methodische
Grundlagen», Reihe Statistik der Schweiz, Themenbereich 05 Preise, Neuchatel 2022,
BFS-Nummer 622-2000, ISBN 978-3-303-05775-9, 56 Seiten. Redaktion Marie-Claude Pointet und
Romain Lerch, BFS Sektion Preise.

**Preisindex ≠ Kostenindex (Kap. 2.1, S. 9).** Der Baupreisindex misst die **Verkaufspreise**,
die ein Bauunternehmen auf dem Markt effektiv fuer seine Bauleistungen erhaelt (vertraglich
vereinbarte Preise nach Abzug gewaehrter Rabatte). Davon streng zu unterscheiden ist ein
**Kostenindex**, namentlich der vierteljaehrliche Produktionskostenindex (PKI) des
Schweizerischen Baumeisterverbands SBV: dieser verfolgt Material, Loehne, Inventar und
Fremdleistungen und blendet Gewinn oder Verlust des Unternehmens aus. Praktische Folge fuer
JANS: fuer die Indexierung von Budgets und Kostenvoranschlaegen ist der **Preisindex (BAP)**
das richtige Instrument; der PKI misst die Teuerung im Verlauf der Bauzeit auf der Kostenseite.

**Erhebungsmethode (Kap. 2.5/2.6).** Hauptmethode ist das **Bauleistungspreisverfahren**:
Preise werden fuer klar definierte Leistungen erhoben, unabhaengig davon, fuer welche
Bauwerksart sie erbracht werden. Die Grundidee ist, dass ein Bauwerk die Summe der Leistungen
der beteiligten Arbeitsgattungen ist. Massgebend fuer die Regionszuordnung ist **nicht der
Sitz des Unternehmens, sondern der Standort des Bauwerks**. Erhoben werden **Nettopreise nach
Abzug von Rabatten**; **MWST und Skonto sind NICHT enthalten** (Skonto gilt als
Zahlungsmodalitaet, nicht als Konjunkturfaktor). Fuer Haustechnik, Aufzuege, Kuechen und
**Honorare** wird ergaenzend die **Offertenmethode** verwendet; die Honorar-Referenzobjekte
und die zu erbringende Planerleistung wurden **zusammen mit dem SIA** im Detail festgelegt
(Kap. 2.6.2 bzw. S. 13).

**Stichprobe (Kap. 2.6.8).** Rund **2'000 im Baugewerbe taetige Unternehmen** melden je
Erhebungsperiode **zwischen 25'000 und 30'000 Einzelpreise**. Teilnahme ist obligatorisch
(Bundesstatistikgesetz vom 9. Oktober 1992). Publizierte Resultate sind Durchschnittswerte
ohne Rueckschluss auf Einzelangaben.

**Warenkorb und Nomenklatur (Kap. 2.2).** Elf Bauwerksarten, je durch ein **reales,
kuerzlich fertiggestelltes Referenzobjekt** abgebildet; Gliederung und Publikation nach
**BKP der CRB**, Leistungsauswahl mehrheitlich nach **NPK Bau**, zusaetzlich NOGA-konform.
Beispiele der beschriebenen Referenzobjekte: Neubau MFH = Minergie-Haus mit 8 Wohnungen
(davon 2 Attika) aus einer Ueberbauung mit 7 Gebaeuden / 79 Wohnungen und Tiefgarage;
Neubau EFH mit Nettowohnflaeche 269 m2, Aussenbereich 101,43 m2, Gebaeudevolumen 912 m3
(mit Vordach 1'117 m3), Erdsondenwaermepumpe und Bodenheizung; Neubau Buerogebaeude
Minergie, 2'200 m2 Flaeche, Nettovolumen 5'671 m3 auf sechs Geschossen inkl. UG; Lagerhalle
67,50 x 44,50 x 5,50 m; Renovation MFH = Vollsanierung eines Hauses von 1962 auf
Minergiestandard. Neu 2020 entfaellt die Unterscheidung Minergie/Nicht-Minergie bei
MFH-Sanierungen; neu hinzugekommen ist im Tiefbau «Renovation Strasse mit Sanierung von
Werkleitungen» (Referenz: Gemeindestrasse, rund 420 m, saniert 2018/2019).

**Gewichtung (Kap. 2.4).** Grundlage sind die **Bauinvestitionen des Jahres 2018** aus der
BFS-Bau- und Wohnbaustatistik, ergaenzt durch Monetaere Unternehmensstatistik (Hochbau
Renovation), Strassenrechnung der Schweiz / ASTRA / SBB (Tiefbau) und Docu Media Schweiz
GmbH (Neubau MFH aus Holz). Das Gewichtungsschema ist **je Grossregion** verschieden — das
erklaert die abweichenden Gewichte in den Regionsblaettern (Kap. 1.2 dieses Reports).

**Berechnung (Kap. 2.7.2).** Aggregation ueber das **geometrische Mittel** (weniger anfaellig
fuer Extremwerte bei heterogenen Positionen, geeignet fuer die chronologische Verkettung von
Preisserien).

**Basiswechsel und Vergleichbarkeit ueber Revisionen (Kap. 1.4 und 3.7) — entscheidend fuer
die Pruefrage in 1.1:**

- «Nach 2010 und 2015 wurde der Baupreisindex 2020 zum dritten Mal einer grundlegenden
  Revision unterzogen. **Seit April 2021 ist die neue Berechnungsbasis Oktober 2020 = 100.**»
  Der Basiswechsel wird also erst im **April-Stand nach dem Basismonat Oktober** publiziert.
- Kap. 3.7: Das europaeische Regelwerk (EG) Nr. 1165/98 verlangt, dass die Rechenbasis
  **alle 5 Jahre** revidiert wird und **immer auf eine Jahrzahl mit Endziffer 0 oder 5**
  faellt. «In der Schweiz wird die Basisperiode im Rahmen der Totalrevision des Indexes
  angepasst. Das Intervall zwischen den Revisionen betraegt ebenfalls fuenf Jahre. Es ist
  vorgesehen, diesen Fuenfjahresrhythmus in Zukunft beizubehalten.»

**Folgerung (als Folgerung markiert, nicht als Beleg):** Nach dieser dokumentierten Regel
ist die naechste Totalrevision **Oktober 2025 = 100**, publiziert **ab April 2026**. Genau
dieses Muster wuerde die KB-Notiz «neu Basis Okt-2025 = 100, April 2026 = 100.6» erklaeren —
der April-2026-Stand waere der erste Stand auf der neuen Basis. **Der Bestand hier enthaelt
diesen Stand nicht** (juengstes Dokument: Datenstand 30.10.2025, noch Basis Okt 2020 = 100).
Der Hauptlauf sollte den April-2026-Stand (`gr-d-05.05.01-cc`) beim BFS nachziehen und dann
beide Basen im Wiki fuehren — mit dem Warnhinweis, dass Indexstaende **nie ueber einen
Basiswechsel hinweg dividiert** werden duerfen, ohne die Reihe zuvor umzubasieren (die
BFS-Seite «Berechnungsweise» fuehrt dafuer den eigenen Rechenweg «Umbasierung von
Indexreihen»).

**Rechtsgrundlage und internationaler Rahmen:** Bundesstatistikgesetz 9.10.1992 mit
Verordnungen vom 30.6.1993; bilaterales Statistikabkommen mit der EU, Verordnung (EG)
Nr. 1165/98 ueber Konjunkturstatistiken, seit 1.1.2021 in die FRIBS-Verordnung integriert.
Der Baupreisindex existiert seit 1998, wird halbjaehrlich erhoben (Stichmonate April und
Oktober) und ist Teil des Produzenten- und Importpreisindex-Systems (PPI/IPI).

### 1.5 BKP-Detailindex Neubau EFH — Honorare (BKP 29) laufen dem Gebaeude (BKP 2) NACH

Quelle: `Baupreisindex/230400 Grundlagen/Entwicklung der Baupreise Detaillierte Ergebnisse/
su-d-05.05.01-schweiz_EFH_4Stellig.pdf`, Tabelle **T3** «Baupreisindex, Neubau
Einfamilienhaus nach BKP fuer die Schweiz [Basis Oktober 2020 = 100]», Stand **April 2023**;
sowie `su-d-05.05.01-zh.pdf`, Tabelle **T47** (dieselbe Reihe nach BKP-Hauptgruppen fuer
**Zuerich**, ebenfalls April 2023).

**Ja — die Honorare unterscheiden sich deutlich vom Gebaeude. Antwort mit Zahlen:**

| BKP | Bezeichnung | Gewicht % | Index Apr 2023 CH | Index Apr 2023 ZH |
|---|---|---|---|---|
| Total | Total | 100 | 113.6 | 114.8 |
| 2 | Gebaeude | 87.109 | 114.5 | 115.9 |
| **29** | **Honorare** | **7.3065** | **106.5** | **106.1** |
| 291 | Architekt | 6.6185 | 106.5 | — |
| 292 | Bauingenieur | 0.3621 | 106.1 | — |
| 293 | Elektroingenieur | 0.2414 | 107.8 | — |
| 294 | HLK-Ingenieur | 0.0845 | 103.9 | — |
| 4 | Umgebung | 8.5924 | 109.4 | 110.6 |
| 5 | Baunebenkosten | 4.2986 | 104.9 | 101.1 |

**Der Abstand betraegt CH 8.0 Indexpunkte (114.5 gegen 106.5) und ZH 9.8 Indexpunkte
(115.9 gegen 106.1).** In Prozent der Teuerung seit Okt 2020: Gebaeude +14.5 % (CH) bzw.
+15.9 % (ZH), Honorare nur +6.5 % (CH) bzw. +6.1 % (ZH) — die Planerhonorare haben also
**weniger als die Haelfte** der Bauteuerung mitgemacht. Der Architekt (BKP 291) traegt mit
6.6185 % von 7.3065 % den weitaus groessten Teil der Honorargruppe.

**Bewertungs-/Offert-Lehre (fuer die KB):** Ein Honorar aus einem Altprojekt darf **nicht
mit dem Gebaeude- oder Totalindex aufindexiert** werden — das ueberzeichnet das Honorar um
rund 8 bis 10 Indexpunkte. Umgekehrt: wer ein Honorar prozentual an die aufindexierte
Bausumme bindet, verschafft dem Planer real mehr, als der Markt fuer Planerleistungen
hergibt. Fuer Honorare gilt die Reihe **BKP 29**, fuer Bauleistungen die Reihe **BKP 2**.

**Weitere Spreizung innerhalb des Gebaeudes (CH, Apr 2023, Basis Okt 2020 = 100):** die
Bandbreite reicht von **Baureinigung BKP 287 = 102.4** und **innere/aeussere Malerarbeiten
BKP 285.1/227.1 = 103.5** bis **Heizungs-Apparate BKP 242.0 = 130.8** und **Leitungen
BKP 242.1 = 129.6**. Weitere Marker: Fenster aus Holz-Metall BKP 221.1 = 125.6 (Gewicht
4.9684 %), Bedachungsarbeiten BKP 224 = 123.7, Schreinerarbeiten BKP 273 = 121.3,
Beton-/Stahlbetonarbeiten BKP 211.5 = 119.8 (Gewicht 11.0698 %, groesste Einzelposition),
Sanitaeranlagen BKP 25 = 112.1, Ausbau 2 BKP 28 = 106.9, Bodenbelaege aus Platten
BKP 281.6 = 105.3. **Die Teuerung ist stark gewerksabhaengig** — eine pauschale
Aufindexierung mit dem Total mittelt ueber eine Spanne von rund 28 Indexpunkten hinweg.

### 1.6 Durchschnittliche Einheitspreise — `cc-t-05.05.02`, Stand Oktober 2025

Quelle: `Baupreisindex/251000 Grundlagen/cc-t-05.05.02.xlsx`, «Schweizerischer Baupreisindex —
Durchschnittliche Einheitspreise in der Schweiz und in den Grossregionen», Stichmonat
**Oktober 2025**. (Die aeltere Fassung `230400 Grundlagen/.../cc-t-05.05.02.pdf` liegt
ebenfalls vor, ist aber durch den 2025er Stand ueberholt.)

Der amtliche Vorbehalt aus dem Tabellenkopf, sinngemaess wiedergegeben: Die Durchschnitts-
preise sind **regionale Mittelwerte teils sehr ausgedehnter Grossregionen** (Beispiel des
BFS: Espace Mittelland umfasst BE, FR, SO, NE, JU); je nach Lage kann der Einzelpreis stark
nach oben oder unten abweichen. Sie gelten **nur fuer die angegebenen Arbeiten UND Mengen** —
bei Kleinauftraegen mit Kleinmengen sind groessere Aufschlaege moeglich. Die Beschreibungen
sind Stichworte zu NPK-Positionen; der vollstaendige Wortlaut liegt beim CRB.

Belegte Einheitspreise (CHF, exkl. MWST, Netto nach Rabatt), Auswahl mit **Zuerich im
Vergleich zur Schweiz**:

| NPK-Pos. | Leistung (Stichwort) | Menge | Einheit | Schweiz | Zuerich | Zentralschweiz | Tessin |
|---|---|---|---|---|---|---|---|
| 211.111.111 | Oberboden maschinell abtragen, Schichtdicke bis 0,20 m | 100 | m3 | 7.56 | 6.46 | 5.54 | 10.20 |
| 211.211.101 | Baugrubenaushub maschinell, offen, bis 5,00 m | 1'500 | m3 | 6.61 | 5.74 | 5.77 | 8.08 |
| 211.523.104 | Primaermaterial Kies/Geroell, Kiessand I | 25 | m3 | 57.04 | 60.90 | 60.70 | 47.25 |
| 241.511.123 | Stabstaehle B500A liefern/verlegen, d 16–22 mm | 15'000 | kg | 2.01 | 2.00 | 2.43 | 2.25 |
| 241.613.112 | Beton Bodenplatten NPK A, d 0,21–0,30 m | 100 | m3 | 241.38 | 235.80 | 245.33 | 246.60 |
| 241.632.144 | Beton Waende NPK A, Hoehe 3,51–4,50 m, d 0,31–0,35 m | 150 | m3 | 269.29 | 270.00 | 292.50 | 266.77 |
| 241.661.113 | Beton Deckenplatten NPK A, d 0,31–0,40 m | 150 | m3 | 246.81 | 237.80 | 229.60 | 262.48 |
| 241.231.105 | Schalung Waende doppelhaeuptig Typ 2, Hoehe 4,51–5,00 m | 600 | m2 | 59.88 | 60.00 | 54.58 | 62.04 |
| 241.261.301 | Schalung Deckenuntersicht Typ 3-1, d 0,36–0,45 m | 300 | m2 | 75.71 | 74.00 | 80.80 | 87.17 |
| 223.442.212 | Deckschicht AC 11 N einbauen, d 40 mm | 310 | t | 205.99 | 228.38 | 206.58 | 233.42 |
| 237.611.123 | Kontrollschacht KS DN 800/600, Tiefe 1,01–1,50 m | 4 | Stk | 1'892.99 | 2'227.50 | 1'659.50 | 1'432.71 |

**Regionalfaktoren sind gewerksabhaengig — Beleg aus derselben Tabelle:** Zuerich liegt beim
**Erdaushub 15 % UNTER** dem Schweizer Mittel (6.46 gegen 7.56 CHF/m3), beim **Belagseinbau
11 % DARUEBER** (228.38 gegen 205.99 CHF/t) und beim **Kontrollschacht 18 % DARUEBER**
(2'227.50 gegen 1'892.99 CHF/Stk), waehrend Beton und Armierung praktisch auf dem Schweizer
Mittel liegen. **Ein einziger pauschaler «Regionalfaktor Zuerich» ist damit fachlich nicht
haltbar** — die Abweichung kehrt je nach Gewerk das Vorzeichen. Fuer Grobkosten reicht ein
Mittelwert, fuer eine gewerksscharfe Kostenschaetzung ist die NPK-Zeile zu ziehen.

### 1.7 «Kostenkennwerte_BE» — was BE bedeutet und ob das Produkt noch existiert

**«BE» steht fuer BERECHNUNGSELEMENTE, nicht fuer den Kanton Bern.** Beleg: der Titel des
Merkblatts `Kostenkennwerte_BE/_1528-1500.pdf`: «Durchschnittliche Kostenkennwerte fuer
Berechnungselemente — Ein Angebot des BFS fuer Planerinnen und Planer», BFS-Nummer
1528-1500, Neuchatel 2015, 6 Seiten, «Erscheint halbjaehrlich seit April 2003».

Inhalt in Kuerze:
- Ein **Element** ist eine Gruppe von Leistungen verschiedener Arbeitsgattungen, die ein
  identifizierbares Bauteil bilden (Wand, Platte, Dach). Definition ueber die
  **Elementkostengliederung (EKG)** der CRB, aggregiert aus **NPK**-Positionen; **seit
  Oktober 2012** zusaetzlich nach **eBKP-H**.
- Umfang im Stand 2015: **ueber 150 Elemente** (rund 140 Hochbau, davon ueber 50 nach EKG und
  ueber 80 nach eBKP-H; 12 Tiefbau), publiziert fuer die Schweiz und die **sieben
  Grossregionen**.
- Preisbasis: Nettopreise nach Rabatt, **ohne MWST**; Vertraege Januar–April (April-Berechnung)
  bzw. Juli–Oktober (Oktober-Berechnung); rund 2'000 Unternehmen, rund 30'000 Einzelpreise
  je Periode.
- Rechenweg: arithmetisches Mittel je NPK-Position und Grossregion, dann gewichtetes
  arithmetisches Mittel auf die Schweiz. **Wichtig: auf den Elementpreis werden pauschal
  20 % «Zuschlaege und Nebenarbeiten» aufgeschlagen**, weil nicht alle fuer das Element
  noetigen Positionen erhoben werden.
- **Verwendungs-Verbot (woertlich sinngemaess, Frage 3):** Die Kostenkennwerte bilden das
  Marktpreisniveau eines Zeitpunkts ab und duerfen **nicht fuer Vergleiche im Zeitverlauf**
  herangezogen werden; sie sind «unter keinen Umstaenden fuer Preisindexierungen bestimmt»
  und nicht mit dem Baupreisindex zu verwechseln. **Fuer JANS heisst das: Kennwerte fuer die
  Kalkulation, Index fuer die Aufindexierung — nie umgekehrt.**
- Vertrieb 2015: Jahresabonnement **CHF 500** fuer zwei Ausgaben (Ende Juni auf Basis der
  April-Erhebung, Ende Dezember auf Basis der Oktober-Erhebung), Excel, passwortgeschuetzt.

**Das Produkt existiert nicht mehr.** Beleg: `Kostenkennwerte_BE/_Kostenkennwerte.pdf`
(Ausdruck der BFS-Webseite «Kostenkennwerte fuer Berechnungselemente», Seitenfuss
**16.12.2023**): «Das BFS hat die Veroeffentlichung von durchschnittlichen Kostenkennwerten
fuer Berechnugselemente "eBKP-H" **ab dem 1. Januar 2021 eingestellt**.» Als **Nachfolger**
wird ausdruecklich **CRB «Werk-material.online»** genannt. Weiterhin verfuegbar bleiben beim
BFS die **regionalisierten durchschnittlichen Einheitspreise** fuer ueber hundert
NPK-Positionen, halbjaehrlich im **Juni und Dezember** aktualisiert (= die Tabelle
cc-t-05.05.02 aus Kapitel 1.6).

**Das ist die inhaltliche Bruecke zwischen Teil 1 und Teil 2 dieses Reports:** werk-material.
online ist nicht irgendeine Datenbank, sondern der vom BFS selbst benannte Nachfolger seines
eingestellten Kostenkennwert-Produkts.

### 1.8 Raumnomenklaturen — MS-Regionen vs. BFS-Grossregionen vs. Wuest-Monitoring-Regionen

Drei Ebenen, die regelmaessig verwechselt werden. Klare Abgrenzung mit Beleg:

**a) MS-Regionen (mobilite spatiale) — 106 Einheiten, amtlich, aber ABGELOEST.**
Quelle: `MS_mobilite_spatiale/cla-900011-msreg-de.pdf`, BFS-Steckbrief Nomenklatur,
Nomenklatur-Nr. 900011. Kernaussagen woertlich sinngemaess: 106 MS-Regionen, gebildet **1982**
im Forschungsprojekt zur raeumlichen Mobilitaet (PNR5) aus bestehenden Berggebietsregionen
und Raumplanungsgebieten; sie folgen dem Prinzip von **Kleinarbeitsmarktgebieten mit
funktionaler Orientierung auf Zentren**; einzelne MS-Regionen sind **kantonsuebergreifend**.
«Aktuelle Version: **Veroeffentlicht im Jahr 2005, auf der Basis der Volkszaehlung von 2000**».
Und entscheidend: «Die MS-Regionen werden **seit 2019 durch die Arbeitsmarktregionen und die
Arbeitsmarktgrossregionen ersetzt**.» Rechtsgrundlage BStatG 9.10.1992; zustaendig BFS,
Dienst Raumnomenklaturen, raumnomenklaturen@bfs.admin.ch.

Ergaenzend `MS_mobilite_spatiale/lma_switzerland.pdf` (BFS-Praesentation «Updating MS Regions
and Labour market areas in Switzerland», 17 Folien, englisch): Stand «Today: **106 MS Regions,
16 Labour market areas**», Basiseinheiten **LAU 2** (Gemeinden). Methode der MS-Regionen:
Pendlerstatistik der 1980er, Grenzen jedoch an administrative Grenzen (Raumplanungs- und
Berggebietsregionen) angepasst. Neuberechnung mit dem LMA-R-Algorithmus, Parameter
minSC 0.57 / tarSC 0.75 / minSZ 3'000 / tarSZ 5'000.

**b) BFS-Grossregionen — 7 Einheiten, die Ebene des Baupreisindexes.**
Quelle: `Grossregion/KM05-00205-00-c-greg-2000-df.pdf` (BFS ThemaKart, Neuenburg 2005,
Relief swisstopo Wabern, Kartennummer KM05-00205-00-c-greg-2000-df — reine Karte, kein
Fliesstext). Die Zusammensetzung ist ueber die Registerblaetter von cc-t-05.05.06.xlsx
belegt: 1 Schweiz · 2 Genferseeregion (VD, VS, GE) · 3 Espace Mittelland (BE, FR, SO, NE, JU)
· 4 Nordwestschweiz (BS, BL, AG) · 5 **Zuerich (ZH allein)** · 6 Ostschweiz (GL, SH, AR, AI,
SG, GR, TG) · 7 Zentralschweiz (LU, UR, SZ, OW, NW, ZG) · 8 Tessin (TI). Die Wahl begruendet
das BFS in 622-2000 Kap. 2.3.2 damit, dass eine baubranchen-eigene Regionalisierung zu
aufwendig waere und die Vergleichbarkeit mit anderen Wirtschaftsindikatoren zerstoeren wuerde.

**c) Wuest-Partner-Monitoring-Regionen — 8 Marktregionen, PRIVAT, nicht amtlich.**
Quelle: `MS_mobilite_spatiale/regionenkarte.pdf`, Titel «Raeumliche Gliederung in
Marktregionen»: «Die Schweiz wird fuer den Marktbericht in 106 sogenannte "MS-Regionen"
aufgeteilt, basierend auf dem "mobilite-spatiale"-Modell (vgl. Schuler/Joye, Die
Raumgliederungen der Schweiz, BFS, Bern 1994). **Die MS-Regionen werden zu 8 Marktregionen
("Monitoring-Regionen") zusammengefasst.**» Die acht: 1 Region Zuerich · 2 Ostschweiz ·
3 Innerschweiz · 4 Nordwestschweiz · 5 Bern · 6 Suedschweiz · 7 Genfersee · 8 Westschweiz.

**Merksatz fuer JANS:** *Sieben* Regionen = amtliche BFS-Grossregionen (Baupreisindex,
Einheitspreise). *Acht* Regionen = Wuest-Partner-Monitoring (Marktbericht, Mieten, Renditen).
*106* Regionen = MS-Regionen (Feinebene, seit 2019 amtlich durch Arbeitsmarktregionen
abgeloest, in der Immobilienbranche aber weiter in Gebrauch). Die Wuest-Ebene ist eine
**Aggregation der MS-Ebene**, nicht der Grossregionen — die Grenzen der acht
Monitoring-Regionen und der sieben Grossregionen sind daher **nicht deckungsgleich**
(z.B. «Bern» und «Westschweiz» getrennt gegen den einen «Espace Mittelland»).

**Praxis-Konsequenz — direkt relevant fuer die UBS-Fact-Sheets:** Die UBS-Fact-Sheets
referenzieren auf **MS-Regionen**. Ein Quantil aus einem UBS-Fact-Sheet darf deshalb nicht
kommentarlos mit einem Baupreisindexwert einer BFS-Grossregion oder einer
Wuest-Monitoring-Region kombiniert werden — die drei Ebenen haben verschiedene
Gebietsgrenzen. In jedem Bewertungsgutachten ist die verwendete Regionsebene zu deklarieren.
**Offene Frage fuer QUESTIONS.md:** ob die UBS-Fact-Sheets noch die MS-Ebene von 2005
verwenden oder bereits auf die seit 2019 geltenden Arbeitsmarktregionen umgestellt haben —
im vorliegenden Bestand nicht entscheidbar.

### 1.9 `_Kommunikation/241204 Anfrage Mietzins` — es kam KEINE BFS-Antwort

Die Ablage enthaelt **nur die ausgehende Anfrage**, keine Antwort. Beleg:
`Bueroraeume in Gewerbeobjekte - durchschnittlichen Bruttomietzins inkl. MWST in der Stadt
Zuerich.eml` — From rj@raphaeljans.ch, To info@bfs.admin.ch, **Datum Mi 04.12.2024, 13:11**,
Betreff «Bueroraeume in Gewerbeobjekte : durchschnittlichen Bruttomietzins inkl. MWST in der
Stadt Zuerich». Gefragt wurde, ob es eine Statistik zum durchschnittlichen **Bruttomietzins
fuer Bueroraeume in Gewerbeobjekten inkl. MWST pro Monat in der Stadt Zuerich** gibt. Die
`.docx` daneben ist derselbe Text als Entwurf. **Ausdruecklich festgehalten: eine Antwort des
BFS liegt in dieser Ablage nicht vor.** Die Frage nach dem Bueromietzins Stadt Zuerich ist
damit **offen** und gehoert in `QUESTIONS.md`.

Nebenbefund: auch diese versandte Mail traegt die veraltete Signaturadresse «Fluelastrasse 6
I 8048 Zuerich» (Rule `jans-absenderadresse` — heute Grubenstrasse 37, 8045 Zuerich).

### 1.10 Nicht wissenstragende bzw. bereits eingearbeitete Quellen in Teil 1

- `Pflegeheime/1552-2100.pdf` — **auftragsgemaess nicht gelesen**, bereits in die KB
  eingearbeitet. Hier nur als **Duplikat** vermerkt.
- `Baupreisstatistik/https.docx`, `_Kommunikation/_Kontakt Link/Querschnittsthemen.docx` —
  enthalten je **nur eine URL**, kein Fachinhalt. Nicht wissenstragend.
- `_Kommunikation/_Kontakt Link/_BFS_Links.docx` — Linksammlung mit einem nutzbaren
  Merkposten: neue Domain **bfs.admin.ch** (alt statistik.admin.ch); allgemeiner
  BFS-Auskunftsdienst info@bfs.admin.ch, +41 58 463 60 11, Mo–Fr 10.00–11.30 und
  14.00–16.00 Uhr. Fach-Hotline Baupreise: **+41 58 463 63 06, bap@bfs.admin.ch**.
- `Baupreisindex/00 Allgemein/Webseite/*` (10 Screenshots 2023–2025 plus
  `Baupreisindex Bundesamt für Statistik.pdf`) — Portalabzuege ohne eigenstaendige Zahlen
  ueber das oben Belegte hinaus.
- Diverse Doppelablagen: `240430 Grundlagen/gr-d-05.05.04-cc.pdf` und `gr-d-05.05.04-cc_1.pdf`
  sind derselbe Stand; `230400 Grundlagen/Aktuelle Resultate pro Grossregion/` enthaelt die
  acht Regions-Ausdrucke von cc-t-05.05.06 im Stand 2023, ueberholt durch den 2024er
  xlsx-Stand (Kap. 1.2).
- `Baupreisindex/230400 Grundlagen/Materialpreisindizes KBOB/su-d-05.04-kbob-01.xlsx` —
  KBOB-Materialpreisindizes, in diesem Lauf nicht ausgewertet; Kandidat fuer einen
  Folgelauf (Materialteuerung als eigene Reihe neben dem Preisindex).
