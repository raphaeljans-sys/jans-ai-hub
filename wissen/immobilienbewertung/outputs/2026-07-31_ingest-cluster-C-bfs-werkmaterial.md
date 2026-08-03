---
title: "Ingest Cluster C — BFS-Statistik und werk-material.online (Marktpreise)"
status: abgeschlossen
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

Ingest-Report Cluster C. Alle Zahlen mit Fundstelle (Datei + Tabelle/Seite) und Stichdatum/Basis.
Keine Zahl ohne Beleg; Folgerungen sind als solche markiert.

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

**KEIN WIDERSPRUCH — Archiv aelter als die Umbasierung:** Die KB fuehrt an anderer Stelle
(«neu Basis Okt-2025 = 100, April 2026 = 100.6»; [[investorenmarkt-makro]]) einen Stand, der
im hier vorliegenden Bestand nicht auftaucht. Das ist keine unbelegte Fortschreibung, sondern
eine reine Zeitluecke: Das juengste Dokument dieser Ablage datiert vom 30.10.2025 und kann
die erst im April 2026 publizierte Totalrevision naturgemaess nicht enthalten. Genau dieses
Muster bestaetigt Abschnitt 1.4 unten unabhaengig ueber die dokumentierte
Fuenfjahresrhythmus-Regel des BFS (naechste Totalrevision faellig auf Oktober 2025).
Die Umbasierung selbst ist in der KB belegt: BFS-Baupreisindex April 2026, Web
BFS/fachbau.ch vom 18.06.2026 (Run 15), erneut bestaetigt am 27.07.2026 (Run 51,
`training/curriculum.md` E7).

**Fuer JANS-Erzeugnisse gilt damit die aktuelle Basis Oktober 2025 = 100** (juengster Stand:
April 2026 = 100.6, +1.0 % YoY). Die hier dokumentierte alte Reihe (Basis Oktober 2020 = 100,
letzter Stand Okt 2025 = 116.2) bleibt als historisches Werkmaterial stehen.
Umrechnungshinweis: Der alte Wert Okt 2025 = 116.2 entspricht dem neuen Basiswert 100 —
Indexstaende duerfen nie ueber den Basiswechsel hinweg direkt verglichen oder dividiert
werden, ohne die Reihe zuvor umzubasieren.

### 1.2 Regionale Indexstaende Oktober 2024 (Basis Okt 2020 = 100)

Quelle: `Baupreisindex/241000 Grundlagen/cc-t-05.05.06.xlsx`, «Hauptergebnisse des
Baupreisindexes Oktober 2024», je ein Registerblatt pro Grossregion. Gewichte in % der
jeweiligen Regionsstruktur (nicht CH-Anteile).

**Schweiz (REG_01):** Total 115.2 (+0.1 % ggue. Apr 2024, +0.5 % ggue. Okt 2023)[^1] ·
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

[^1]: Verifiziert gegen die Rohdatei `241000 Grundlagen/cc-t-05.05.06.xlsx`, Registerblatt
«1» (Schweiz REG_01): Die Zellen E9/F9 fuehren die Veraenderungsraten +0.1 % / +0.5 % genau
so, als vom BFS selbst berechnet und publiziert. Sie stammen aus **ungerundeten**
Indexwerten und weichen daher von der Differenz der auf eine Dezimale gerundeten
Tabellenwerte in Abschnitt 1.1 ab (115.0 → 115.2 rechnerisch +0.2 %, 114.5 → 115.2
rechnerisch +0.6 %). Fuer JANS-Erzeugnisse gelten die vom BFS publizierten Raten
(+0.1 % / +0.5 %), nicht die aus der gerundeten Tabelle nachgerechneten.

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

Einzige konkrete Kennzahl dieser Ablage mit Objektbezug: **Altersheim Trotte Zuerich, 2019,
CHF 3'907 je m2 Geschossflaeche** — die Quelle dieses Werts wird im Dokument selbst nicht
genannt, daher ist er als **unbelegter Ausgangswert** zu fuehren, nicht als Kennwert. Der
zweite genannte Wert (CHF 600.- je m2, Merkfrage «2008») ist rein didaktisch (Uebungsaufgabe
ohne Objektbezug und ohne Antwort im Dokument) und daher ebenfalls kein verwendbarer
Kennwert.

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

---

## TEIL 2 — werk-material.online (CRB) / reale Referenzobjekte

### 2.0 Was diese Ablage ist

`werk-material.online` ist die Web-Applikation des **CRB** mit Kostendaten realisierter
Objekte. Die Ablage enthaelt zweierlei: (a) **werk-material-Blaetter** aus der Zeitschrift
*Werk, Bauen + Wohnen* (Verlag Werk AG / Oeuvre SA), bezogen ueber die
**ETH-Bibliothek / retro.seals.ch** (Nutzungsbedingungen: nicht-kommerziell in Lehre,
Forschung und privater Nutzung; keine Bildveroeffentlichung ohne Rechteinhaber) und
(b) **CRB Objektarten-Katalog OAK**-Blaetter (eBKP-H, © CRB 2012).

`00_Bauteile/werk-material.online_bfs.pdf` (CRB-Story «BFS-Berechnungselemente», Text
Tanja Heublein, **20.04.2021**, Seitenfuss 16.12.2023) beschreibt die Kopplung an Teil 1:
Mit dem Datenpaket «BFS Kostenkennwerte fuer Berechnungselemente» stellt CRB **in
Kooperation mit dem BFS** Richtpreise zu eBKP-H-Elementen bereit; **ab April 2021** kommen
die **NPK-Einheitspreise** dazu, in Anknuepfung an das frueher publizierte «Bauhandbuch».
Nettopreise ohne MWST, inkl. Rabatte, fuer Schweiz und die **sieben Grossregionen**,
Ausgabe April → Publikation Juni, Ausgabe Oktober → Publikation Dezember. Der CRB-Text
formuliert dieselbe Warnung wie das BFS: Die Preise sind **an eine NPK-Position gebunden,
nicht an das Bauobjekt**, in dem sie ausgefuehrt wurden; sie gelten fuer die
**ausgeschriebenen Referenzmengen**, repraesentieren einen Durchschnitt verschiedener
Objekttypen und muessen vom Anwender fallweise auf Anwendbarkeit geprueft werden.
Angebotene NPK-Kapitel u.a. 114 Arbeitsgeruste, 171 Pfaehle, 181 Garten-/Landschaftsbau,
188 Laermschutzwaende, 211 Baugruben/Erdbau, 221/222/223 Verkehrsanlagen und Belaege,
237 Kanalisationen, 241 Ortbetonbau, 314 Maurerarbeiten, 315 Vorgefertigte Betonelemente.

### 2.1 Referenzobjekte — belegte Kennwerte

Sofern nicht anders vermerkt: Erstellungskosten nach **BKP 1997 (SN 506 500), inkl. MWST**,
Grundmengen nach **SIA 416 (2003) SN 504 416**, Preisstand ueber den jeweils angegebenen
**Zuercher Baukostenindex (4/2005 = 100)**.

**A) Wohnhaus via Bertoni, Lugano TI** — `01 Wohnen/02 Mehrfamilienhaeuser ueblich/
Lugano_Wohnhaus_Via_Bertoni/...-Seite2/3.pdf`, werk-material **01.02/518**, wbw 7–8|2008.
Standort Via Bertoni 2, 6900 Lugano; Bauherrschaft Jachen Koenz und Ludovica Molo;
Architekten Koenz Molo. Grossregion **Tessin**.
- GSF 584 m2 · GGF 205 m2 · BUF 379 m2 · **GV 3'554 m3** · **GF 1'005 m2** (7 Geschosse,
  2. UG bis 4. OG) · NGF 830 m2 (82.6 %) · KF 175 m2 (17.4 %) · NF 689 m2 (68.5 %) ·
  **HNF 421 m2 (41.9 %)** · NNF 267 m2 · VF 132 m2 · FF 10 m2 · EBF 685 m2.
- BKP 1–5 Erstellungskosten total **CHF 3'349'500** (BKP 1 20'000 / **BKP 2 3'234'800 =
  96.6 %** / BKP 4 62'400 / BKP 5 32'300).
- BKP 2 im Detail: 20 Baugrube 61'500 (1.9 %) · 21 Rohbau 1 1'000'700 (30.9 %) ·
  22 Rohbau 2 265'500 (8.2 %) · 23 Elektro 121'200 (3.8 %) · 24 HLK 182'800 (5.7 %) ·
  25 Sanitaer 290'400 (9.0 %) · 26 Transport 53'800 (1.7 %) · 27 Ausbau 1 539'400 (16.7 %) ·
  28 Ausbau 2 144'500 (4.5 %) · **29 Honorare 575'000 = 17.8 %**.
- **Kennwerte: BKP 2 / m3 GV = CHF 910 · BKP 2 / m2 GF = CHF 3'218 · BKP 4 / m2 BUF =
  CHF 165.** Preisstand: Zuercher Baukostenindex (4/2005 = 100) = **101.6**.
- Bautermine: Planung Maerz 2004, Baubeginn Okt 2005, Bezug April 2006, Bauzeit 19 Monate.

**B) Haus Hirschi, Adligenswil LU** — dieselbe Aktenreihe, Seite 6/7, werk-material
**01.02/519**, wbw 7–8|2008. Kehlhofrain 12a, 6043 Adligenswil; Bauherrschaft Pia und Otto
Hirschi; Patrick Gmuer Architekten AG mit Tschuppert Architekten GmbH. Grossregion
**Zentralschweiz**.
- GSF 825 m2 · GGF 302 m2 · BUF 523 m2 · **GV 2'305 m3** · **GF 527 m2** (UG + EG) ·
  NGF 435 m2 (82.6 %) · KF 92 m2 · NF 422 m2 (80.0 %) · **HNF 363 m2 (68.8 %)** ·
  NNF 59 m2 · EBF 540 m2.
- BKP 1–5 total **CHF 2'300'000** (BKP 1 95'000 = 4.1 % / **BKP 2 1'815'000 = 78.9 %** /
  BKP 4 240'000 = 10.4 % / BKP 5 150'000 = 6.5 %).
- BKP 2: 20 Baugrube 110'000 (6.1 %) · 21 Rohbau 1 570'000 (31.4 %) · 22 Rohbau 2 360'000
  (19.8 %) · 23 Elektro 55'000 · 24 HLK 70'000 · 25 Sanitaer 70'000 · 27 Ausbau 1 150'000 ·
  28 Ausbau 2 130'000 · **29 Honorare 300'000 = 16.5 %**.
- **Kennwerte: BKP 2 / m3 GV = CHF 787 · BKP 2 / m2 GF = CHF 3'445 · BKP 4 / m2 BUF =
  CHF 459.** Preisstand: ZH-Baukostenindex (4/2005 = 100) = **106.2**.

**C) Wohnueberbauung Brunnenhof, Zuerich** (Ablage «Guggach») —
`01 Wohnen/02 Wohnbauten_enMass/Gygon_Guyer_Guggach_Sozialer_Wohnungsbau.pdf`, S. 3/4,
werk-material **01.02/532**, wbw 4|2009. Hofwiesenstrasse 140–158 / Brunnenhofstrasse 6–14,
8057 Zuerich; Bauherrschaft Stiftung Wohnungen fuer kinderreiche Familien; Architektur
Annette Gigon / Mike Guyer. Grossregion **Zuerich**.
- GSF 8'519 m2 · GGF 2'829 m2 · BUF 5'690 m2 · **GV 59'720 m3** · **GF 18'437 m2**
  (UG bis 5. OG) · NGF 15'157 m2 (82.2 %) · KF 3'280 m2 (17.8 %) · NF 12'961 m2 (70.3 %) ·
  EBF 13'904 m2.
- Raumprogramm: **72 Wohnungen**, 6 Einzelzimmer, Gemeinschaftsraum, Doppelkindergarten,
  Doppelkinderhort, Tiefgarage 75 PP.
- BKP 1–9 total **CHF 38'260'000** (BKP 0 Grundstueck/Altlasten 470'000 = 1.2 % /
  BKP 1 1'675'000 = 4.4 % / **BKP 2 32'845'000 = 85.9 %** / BKP 4 890'000 / BKP 5 2'315'000 /
  BKP 9 65'000).
- BKP 2: 20 Baugrube 1'420'000 (4.3 %) · 21 Rohbau 1 12'175'000 (37.1 %) · 22 Rohbau 2
  2'975'000 (9.1 %) · 23 Elektro 990'000 · 24 HLK 1'505'000 · 25 Sanitaer 2'370'000 ·
  26 Transport 355'000 · 27 Ausbau 1 4'350'000 (13.3 %) · 28 Ausbau 2 2'685'000 (8.2 %) ·
  **29 Honorare 4'020'000 = 12.2 %**.
- **Kennwerte: BKP 2 / m3 GV = CHF 550 · BKP 4 / m2 BUF = CHF 1'781.** Preisstand:
  ZH-Baukostenindex 4/2005 = **100.0** (Basisjahr selbst).
- **Je Wohneinheit (eigene Rechnung, als Rechnung markiert):** BKP 2 32'845'000 / 72 WE ≈
  **CHF 456'000 je Wohnung**; Erstellungskosten 38'260'000 / 72 ≈ CHF 531'000 je Wohnung.

**D) Wohnueberbauung Hardegg, Bern** — dieselbe Datei, S. 9/10, werk-material **01.02/533**.
Hardeggerstrasse 2–30 / Rappardplatz 1, 3008 Bern; Baugenossenschaft Bruennen-Eichholz;
Matti Ragaz Hitz Architekten. Grossregion **Espace Mittelland**.
- GSF 26'535 m2 · GGF 4'948 m2 · BUF 21'587 m2 · **GV 124'575 m3** · EBF 29'538 m2.
- Raumprogramm: **120 Mietwohnungen + 65 Eigentumswohnungen = 185 WE**, Doppelkindergarten,
  Kindertagesstaette, 194 Auto- und 54 Motorrad-Abstellplaetze.
- BKP 1–9 total **CHF 93'000'000** (BKP 1 5'800'000 = 6.2 % / **BKP 2 75'800'000 = 81.5 %** /
  BKP 3 200'000 / BKP 4 3'200'000 / BKP 5 7'800'000 / BKP 9 200'000).
- BKP 2: 20 Baugrube 1'700'000 · 21 Rohbau 1 19'000'000 (25.1 %) · 22 Rohbau 2 12'500'000
  (16.5 %) · 23 Elektro 3'000'000 · 24 HLK 4'000'000 · 25 Sanitaer 8'200'000 (10.8 %) ·
  26 Transport 900'000 · 27 Ausbau 1 11'000'000 (14.5 %) · 28 Ausbau 2 7'500'000 (9.9 %) ·
  **29 Honorare 8'000'000 = 10.6 %**.
- **Kennwerte: BKP 2 / m3 GV = CHF 608 · BKP 2 / m2 GF = CHF 1'882 · BKP 4 / m2 BUF =
  CHF 148.** Preisstand: ZH-Baukostenindex (4/2005 = 100), Stand **4/2007 = 106.2**.
- **Je Wohneinheit (eigene Rechnung):** BKP 2 75'800'000 / 185 WE ≈ **CHF 410'000**;
  Erstellungskosten 93'000'000 / 185 ≈ CHF 503'000.

**E) Alterswohnen Zentrum Bruetten ZH** — `01 Wohnen/08 Alterswohnungen/wbw 01.08 796
Alterswohnen Zentrum Bruetten ZH/2025-03-26 12-16-Seite1.pdf` (Scan, visuell gelesen),
werk-material **01.08/796**, wbw **9–2022**. Bruehlstrasse 4, 8311 Bruetten; Bauherrschaft
**Bruel AG Bruetten**; Architektur Roider Giovanoli Architekten GmbH, Zuerich; Tragwerk
SJB Kempter Fitze AG. Wettbewerb Aug 2017, Planung Jan 2018, Baubeginn April 2020, Bezug
Aug 2022, Bauzeit 15 Monate.
- **GV 3'281 m3** (inkl. Treppenhaus und Wintergaerten) · **GF 988 m2** (EG 300 / 1. OG 344 /
  2. OG 344; UG 0) · NGF 848 m2 (85.7 %) · KF 141 m2 (14.3 %) · NF 760 m2 (76.8 %) ·
  **HNF 572 m2 (57.8 %)** · NNF 188 m2 (19.0 %) · VF 66 m2 · FF 22 m2 · GSF 1'708 m2 ·
  GGF 346 m2 · BUF 1'362 m2 · EBF 685 m2 (69 % der GF).
- Nutzung: **6 Wohnungen (FE)**, 5 Parkplaetze, 20 Veloplaetze.
- Baurechtlich: Ausnuetzungsziffer **AZ 40 %**, Kernzone II, keine Gestaltungsbewilligung,
  kein Ausnuetzungsbonus.
- BKP 1–9 total **CHF 3'875'000** (BKP 1 172'000 = 4.4 % / **BKP 2 3'150'000 = 81.3 %** /
  BKP 3 kont. Lueftung 0 / BKP 4 340'000 = 8.8 % / BKP 5 175'000 = 4.5 % / BKP 9 38'000).
- BKP 2: 20 Baugrube 84'000 (2.7 %) · 21 Rohbau 1 975'000 (31.0 %) · 22 Rohbau 2 439'000
  (13.9 %) · 23 Elektro 161'000 (5.1 %) · 24 HLK 128'000 (4.1 %) · 25 Sanitaer 174'000
  (5.5 %) · 26 Transport 34'000 (1.1 %) · 27 Ausbau 1 303'000 (9.6 %) · 28 Ausbau 2 197'000
  (6.3 %) · **29 Honorare 655'000 = 20.8 %**.
- **Kennwerte (im Blatt selbst ausgewiesen): Gebaeudekosten / m3 = CHF 960 ·
  Gebaeudekosten / m2 GF = CHF 3'188 · Gebaeudekosten je FE (Wohneinheit) = CHF 450'000 ·
  Kosten Umgebung BKP 4 / m2 BUF = CHF 250. Preisstand: MITTE 2021. Grossregion: ZUERICH.**
  (Dieses Blatt weist Preisstand und Grossregion ausdruecklich als eigene Kennwertzeilen 5
  und 6 aus — nachahmenswerte Deklaration.)
- Energie: Erdsonden-Waermepumpe mit Free-Cooling, A/EBF 2.13, Qh 45 kWh/m2a, erneuerbarer
  Anteil 100 %, **Anteil Photovoltaik 0 %**, Fensterlueftung.

**F) Haus Etzel, Hombrechtikon ZH** — `01 Wohnen/02 Mehrfamilienhaeuser ueblich/
Hombrechtikon_Etzelweg_EFH/Haus_Etzel.pdf`, **CRB Objektarten-Katalog OAK «Kennwerte im
Wohnungsbau», OAG 1.1.1 Einfamilienhaus, © CRB 2012**, S. 15–17. Neubau EFH,
8634 Hombrechtikon, **Grossregion Zuerich**, Bauherrschaft privat; Architektur aardeplan ag,
Baar; MINERGIE-P-ECO. Planung Aug 2007, Baubeginn Aug 2009, Bezug Maerz 2010.
Struktur **eBKP-H (2012)**, nicht BKP 1997.
- **GV 980 m3** · GSF 597 m2 · GGF 110 m2 · BUF 438 m2 · **GF 319 m2** · KF 68 m2 (21 %) ·
  NGF 251 m2 (79 %) · NF 241 m2 (76 %) · **HNF 171 m2 (54 %)** · NNF 70 m2 · FF 10 m2 ·
  VF 0 m2 · AGF 18 m2. Formquotienten **FAW/GF 1.21 · FB/GF 0.47**.
- Kosten eBKP-H: A Grundstueck 480'114 · B Vorbereitung 59'134 (6.4 % B-W) · C Konstruktion
  221'530 (23.8 %) · D Technik 131'035 (14.1 %) · E Aeussere Wandbekleidung 82'638 (8.9 %) ·
  F Bedachung 24'834 (2.7 %) · G Ausbau 125'147 (13.5 %) · I Umgebung 68'756 (7.4 %) ·
  **V Planungskosten 178'278 = 19.2 %** · W Nebenkosten 37'966 (4.1 %) · Y Reserve 0 ·
  Z MWST 70'454 (8 % auf BBY 929'318) · **Total CHF 1'479'886**.
- **Zusammenfassung: C–G Bauwerkskosten 0.59 Mio. = CHF 597 / m3 GV = CHF 1'834 / m2 GF ·
  B–W Erstellungskosten 0.93 Mio. = CHF 948 / m3 = CHF 2'913 / m2 GF · A–Z Anlagekosten
  1.48 Mio. = CHF 1'510 / m3 = CHF 4'639 / m2 GF.**
- **Preisstand woertlich: «Schweizerischer Baupreisindex (10/2010 = 100.0) 04/2011 = 101.3».**
  Achtung: hier laeuft die Reihe auf der **frueheren Basis Oktober 2010 = 100** — Beleg
  dafuer, dass in Altdokumenten mehrere Basen kursieren (siehe Kap. 1.4).
- Das Blatt zeigt zusaetzlich ein **Quantilbenchmark**: Anlage-, Erstellungs- und
  Bauwerkskosten in CHF/m2 GF gegen «maximale Streuung, unteres Quartil Q1, oberes Quartil
  Q2 und Medianwert Me der **12 dokumentierten Objekte**».

**G) Geschaeftshaus Steinentorberg, Basel** — `06 Handel und Verwaltung/Geschaeftbauten/
BASEL_Geschaeftshaus_Steinentorberg.pdf` (Scan, visuell gelesen), Werk-Material **06.05/167**,
Werk Bauen+Wohnen 12/1991. Steinentorberg 8/12 und Innere Margarethenstrasse 5, 4051 Basel;
Bauherrschaft Konsortium Steinentorberg; Architekt **Diener & Diener**. Grossregion
**Nordwestschweiz**. Planung 1984, Baubeginn Nov 1987, Bezug Sept 1990, Bauzeit 34 Monate.
- Arealflaeche netto 2'838.3 m2 · ueberbaute Flaeche 2'148.6 m2 · BGF (HBG BS) 10'661.3 m2 ·
  **Ausnuetzungsziffer 2.43** · **Rauminhalt SIA 116 = 69'050 m3** · Geschossflaechen
  **GF1 total 19'412 m2** (3 UG, 1 EG, 7 OG) · Aussenwandflaeche 8'527 m2 (AW/GF1 = 0.44).
- Nutzflaechen: Bueros 1.–6. OG 7'560 m2 · Verkauf 1. UG–EG 4'905 m2 · Lager/Archiv
  2.–3. UG 878 m2 · Technik 7. OG 293 m2 · 144 Autoeinstellplaetze.
- Anlagekosten nach BKP: 1 Vorbereitung 2'228'170.40 · **2 Gebaeude 39'097'040.50** ·
  4 Umgebung 158'443.80 · 5 Baunebenkosten 6'756'775.10 · 9 Ausstattung 106'956.00 ·
  **1–9 total CHF 48'347'385.80**.
- BKP 2: 20 Baugrube 469'510.65 · 21 Rohbau 1 11'010'050.00 · 22 Rohbau 2 3'752'198.70 ·
  23 Elektro 3'611'149.55 · 24 HLK 3'216'000.00 · 25 Sanitaer 1'045'816.05 ·
  26 Transport 1'155'036.00 · 27 Ausbau 1 3'871'760.90 · 28 Ausbau 2 4'912'783.20 ·
  **29 Honorare 5'992'735.45 = 15.3 % von BKP 2 (eigene Rechnung)**.
- **Kennwerte: Gebaeudekosten / m3 SIA 116 = CHF 566.20 · Gebaeudekosten / m2 GF1 =
  CHF 2'014.05 · Kosten / m2 Umgebungsflaeche = CHF 229.70. Kostenstand: Zuercher
  Baukostenindex (1977 = 100), April 1988 = 147.7 Punkte.** Achtung: Bezugsgroesse ist hier
  **SIA 116 (Rauminhalt)**, nicht SIA 416 (GV) — nicht direkt mit den uebrigen m3-Werten
  vergleichbar.

**H) Schulhaus und Kindergarten Leutschenbach, Zuerich** — `02 Bildung und Forschung/
Schulen/Leutschenbach_Kennzahlen_Leutschenbach.pdf`, Blatt «Raster Kennzahlen»
(Kennzahlenblatt, kein wbw-Blatt).
- **GF 9'995 m2 (SIA 416) · HNF 8'259 m2 · GV 47'156 m3 (SIA 416) · RI 54'930 m3 (SIA 116)**.
- **Gebaeudekosten BKP 2 CHF 30'930'000** → **CHF 3'095 / m2 GF · CHF 3'745 / m2 HNF ·
  CHF 656 / m3 GV (SIA 416) · CHF 563 / m3 RI (SIA 116)**.
- **Anlagekosten BKP 1–9 CHF 46'540'000** → CHF 4'656 / m2 GF · CHF 5'635 / m2 HNF ·
  CHF 987 / m3 GV · CHF 847 / m3 RI.
- Das Blatt enthaelt einen **indexierten Kostenvergleich Zuercher Schulneubauten** (BKP 2):
  Im Birch 54'600'000 (CHF 455'000 je Kosteneinheit KE, 2'750 / m2 GF, 560 / m3 SIA 116) ·
  Apfelbaum 14'910'700 (423'000 je KE, 3'209 / m2 GF, 602 / m3) · Im Gut 10'950'000
  (349'840 je KE, 3'384 / m2 GF, 623 / m3) · Falletsche 18'885'000 (463'436 je KE,
  3'322 / m2 GF, 547 / m3) · **Leutschenbach 30'930'000 (348'311 je KE bei 88.8 KE,
  3'095 / m2 GF, 563 / m3)**. Der Preisstand des Vergleichs ist im Blatt nur als
  «indexiert» bezeichnet, **ohne Stichdatum** — der Vergleich ist damit nicht datierbar.

**I) Kirchgemeindehaeuser (2 Objekte)** — `09 Kultus/96_2009_Kirchengemeindehaeuser.pdf`,
wbw 3|2009.
- **Neubau «Kirchgemeindehaus Gerstacher», Ebmatingen ZH**, werk-material 09.03/530.
  Leeacherstrasse 81, 8123 Ebmatingen; Ev.-ref. Kirchgemeinde Maur; B.E.R.G. Architekten.
  GSF 1'265 m2 · GGF 328 m2 · BUF 937 m2 · **GV 2'780 m3** · **GF 721 m2**.
  **BKP 2 CHF 2'561'625 (82.4 % von 1–9 CHF 3'107'537)**; BKP 24 HLK 126'153 (4.9 %) ·
  25 Sanitaer 120'855 (4.7 %) · 26 Transport 48'377 · 27 Ausbau 1 362'516 (14.2 %) ·
  28 Ausbau 2 173'547 (6.8 %) · **29 Honorare 462'539 = 18.1 %**.
  **Kennwerte: BKP 2 / m3 GV = CHF 921 · BKP 2 / m2 GF = CHF 3'551 · BKP 4 / m2 BUF =
  CHF 154.** Preisstand ZH-Baukostenindex (4/2005 = 100), 04/2007 = **106.2**.
- **Kirchgemeindehaus Wiesendangen ZH**, werk-material 09.03/531. Kirchstrasse 6,
  8542 Wiesendangen; Ev.-ref. Kirchgemeinde Wiesendangen; BDE Architekten GmbH, Winterthur.
  GSF 1'329 m2 · **GV 2'926 m3** · **GF 951 m2**.
  **BKP 2 CHF 1'709'906 (81.3 % von 1–9 CHF 2'103'582)**; 20 Baugrube 31'308 (1.8 %) ·
  21 Rohbau 1 541'227 (31.6 %) · 22 Rohbau 2 207'952 (12.1 %) · 23 Elektro 112'761 (6.6 %) ·
  24 HLK 78'842 (4.6 %) · 25 Sanitaer 92'280 (5.4 %) · 26 Transport 49'097 (2.9 %) ·
  27 Ausbau 1 240'738 (14.1 %) · 28 Ausbau 2 112'761 (6.6 %) · **29 Honorare 243'289 =
  14.2 %**.
  **Kennwerte: BKP 2 / m3 GV = CHF 584 · BKP 2 / m2 GF = CHF 1'798 · BKP 4 / m2 BUF =
  CHF 186.** Preisstand ZH-Baukostenindex (4/2005 = 100), 04/2006.
  **Auffaellig: zwei Bauten gleicher Nutzung, gleicher Kanton, fast gleiches Volumen
  (2'780 gegen 2'926 m3) — und CHF 921 gegen CHF 584 je m3 GV, also 58 % Unterschied.**
  Das ist der beste Beleg dieser Ablage dafuer, dass Standard und Gestaltung den
  Kubikmeterpreis staerker treiben als Nutzung oder Groesse. Ein Grobkostenkennwert ohne
  Standardangabe ist wertlos.

**J) Healthcare-Objekte** — `08 Fuersorge und Gesundheit/
Spital_210522_Kostenkennwerte_Referenzprojekte.pdf` (28 Seiten, JANS-Zusammenstellung
**22.05.2021** aus werk-material-Blaettern). Vier Referenzobjekte mit Typ-Kuerzel
(S = Spital, H = Heim, B = Buero/Verwaltung), EK = Erstellungskosten, BK = Bauwerkskosten,
je CHF/m2 GF:

| Objekt | Typ | EK CHF/m2 GF | BK CHF/m2 GF | GF | Erstellungskosten | Bauwerkskosten | Geschosse |
|---|---|---|---|---|---|---|---|
| Frauenklinik Luzern | S | 3'426 | 3'064 | 17'031 m2 | 58'350'190 | 52'192'035 | 8 G |
| Tagesstaette Weidli | H | 3'644 | 2'536 | 2'983 m2 | 10'870'641 | 7'564'359 | 5 G |
| Universitaetsspital ZH | S | 3'767 | 2'271 | 2'888 m2 | 10'880'495 | 6'557'575 | 4 G |
| Office de l'Assurance | B | 2'521 | 1'728 | 5'283 m2 | 13'320'855 | 9'130'329 | 7 G |

**Achtung Preisstand:** die Zusammenstellung datiert vom 22.05.2021, die zugrunde liegenden
Objektblaetter sind darin **nicht datiert**. Die Werte sind daher als **undatierte
Sammelwerte** zu fuehren und vor Verwendung auf den Objektjahrgang zurueckzufuehren.
Auffaellig ist die Spreizung EK zu BK: beim Universitaetsspital ZH betragen die
Bauwerkskosten nur 60 % der Erstellungskosten (2'271 zu 3'767), bei der Frauenklinik Luzern
89 % (3'064 zu 3'426) — ein Hinweis auf sehr unterschiedliche Abgrenzung von
Betriebseinrichtungen und Planung. **Nie EK- und BK-Kennwerte mischen.**

### 2.2 Groessendegression und Honoraranteil — die Auswertung

Aus den oben belegten Objekten (nur BKP-1997-Objekte, alle mit BKP 2 / m3 GV SIA 416):

| Objekt | GV m3 | BKP 2 / m3 GV | BKP 2 / m2 GF | Honorar BKP 29 in % von BKP 2 |
|---|---|---|---|---|
| Alterswohnen Bruetten (2022) | 3'281 | 960 | 3'188 | 20.8 % |
| Kirchgemeindehaus Ebmatingen (2008) | 2'780 | 921 | 3'551 | 18.1 % |
| Wohnhaus via Bertoni Lugano (2006) | 3'554 | 910 | 3'218 | 17.8 % |
| Haus Hirschi Adligenswil (2007) | 2'305 | 787 | 3'445 | 16.5 % |
| Schulhaus Leutschenbach | 47'156 | 656 | 3'095 | (nicht ausgewiesen) |
| Hardegg Bern (2009) | 124'575 | 608 | 1'882 | 10.6 % |
| Kirchgemeindehaus Wiesendangen (2009) | 2'926 | 584 | 1'798 | 14.2 % |
| Brunnenhof Zuerich (2009) | 59'720 | 550 | (n.a.) | 12.2 % |
| Geschaeftshaus Steinentorberg (1990) | 69'050 (SIA 116) | 566 | 2'014 | 15.3 % |

**Antwort auf die Degressionsfrage: JA — beide Effekte sind belegt, aber nicht monokausal.**

1. **CHF / m3 GV faellt mit der Objektgroesse.** Die kleinen Objekte (2'300 bis 3'600 m3)
   liegen bei **CHF 584 bis 960 je m3**, die grossen (47'000 bis 125'000 m3) bei
   **CHF 550 bis 656 je m3**. Der Median der Kleinen liegt bei rund 910, der der Grossen
   bei rund 610 — eine Degression von rund **einem Drittel**.
2. **Der Honoraranteil BKP 29 faellt parallel.** Kleinobjekte 14.2 bis 20.8 %,
   Grossobjekte 10.6 bis 12.2 %. Das ist die erwartete SIA-Logik (degressiver Prozentsatz
   auf steigende Bausumme) und faellt hier **im selben Groessenband** wie der m3-Preis.
3. **Aber: die Streuung INNERHALB einer Groessenklasse ist groesser als die Degression
   selbst.** Die beiden Kirchgemeindehaeuser (2'780 und 2'926 m3, gleiche Nutzung, gleicher
   Kanton, ein Jahr Abstand) unterscheiden sich um 58 % im m3-Preis und um 3.9 Prozentpunkte
   im Honoraranteil. **Fuer eine Grobkostenschaetzung ist der Standard damit die staerkere
   Stellgroesse als das Volumen** — die Degression darf nie ohne Standardabgleich angewendet
   werden.
4. **Gegenprobe aus der Praxis:** Die CRB-Telefonnotiz (Kap. 2.4) nennt Planungshonorare
   zwischen **14.5 % und 19.5 %** als in werk-material dokumentierte Bandbreite — deckt sich
   mit dem hier gemessenen Band der Kleinobjekte.

### 2.3 Regionalfaktoren — sind sie gewerksabhaengig?

**JA, belegt, doppelt.** (a) Aus der BFS-Einheitspreistabelle (Kap. 1.6): Zuerich liegt beim
Erdaushub 15 % unter, beim Belagseinbau 11 % und beim Kontrollschacht 18 % ueber dem
Schweizer Mittel. (b) Aus der CRB-Telefonnotiz (Kap. 2.4): Bodenplatte **Region Genfersee
CHF 85 / m2** gegen **Region Zentralschweiz CHF 74 / m2** — 15 % Unterschied bei einem
einzigen Bauteil.

**Ein pauschaler «Regionalfaktor» ist damit fachlich nicht haltbar.** Er ist eine
Gewichtung ueber alle Gewerke; sobald ein Projekt ein untypisches Gewerkeprofil hat (viel
Tiefbau, viel Belag, viel Haustechnik), verschiebt sich der Faktor. Fuer die
Grobkostenschaetzung genuegt der Regionsdurchschnitt; sobald ein Gewerk kostenbestimmend
ist, gehoert die NPK-Zeile der Zielregion gezogen.

### 2.4 CRB-Telefonbesprechung 12.12.2023 (Wegmann) — Praxiswissen

`_Kommunikation/231212_Telbesprechung mit CRB Wegmann.docx`, Notiz «rj 12.12.2023»,
sinngemaess wiedergegeben:
- **Buecher mit Kostenkennzahlen sind nicht mehr beziehbar** — nach der Notiz vom
  **Preisueberwacher untersagt**. (Als Aussage des CRB-Mitarbeiters wiedergegeben, nicht
  unabhaengig verifiziert — Pruefpunkt.)
- **werk-material weist eBKP-H nur EINSTELLIG aus**, damit kein exakter Rueckschluss auf
  den Quadratmeterpreis moeglich ist; nur so sei die Publikation zulaessig.
- Beispiel Regionalfaktor (siehe 2.3): EFH freistehend, Kanton Zuerich, ab 2011 —
  Bodenplatte Genfersee CHF 85 / m2, Zentralschweiz CHF 74 / m2.
- **Kostenentwicklung Haus in Riehen: CHF 3'750 / m2 GF (2020) → CHF 4'000 / m2 GF (2023)**
  = +6.7 % in drei Jahren. (Gegenprobe mit dem BFS-Hochbauindex Kap. 1.1: Okt 2020 = 100
  → Okt 2023 = 114.8, also +14.8 % — der Objektwert liegt deutlich darunter. Der
  Widerspruch ist zu vermerken: Einzelobjektpreise folgen dem Index nicht eins zu eins.)
- **Planungskosten: Beispiele mit 19.5 % und mit 14.5 %** — grosse dokumentierte Bandbreite.
- **Wichtigster Vorbehalt:** «Die meisten Objekte sind nach klassischem BKP erfasst und
  nicht nach eBKP. Das heisst, der Datensatz fuer eine eBKP-Berechnung ist massiv kleiner
  als der nach klassischem BKP.» **Fuer JANS: eBKP-H-Vergleiche stuetzen sich auf eine
  duenne Stichprobe; BKP-1997-Vergleiche auf eine breite.**

### 2.5 `Herzogenbuchsee_Triplexhaus` — JANS-eigenes Grobkostenblatt, mit inneren Widerspruechen

`231216_GKB_Triplexhaus.pdf` (mit `.indd`-Quelle) ist **kein werk-material-Blatt, sondern
ein JANS-eigenes Grobkostenblatt**: «Raphael Jans Architekt ETH, Projekt: Kostenkennwerte,
Objekt: Referenzobjekt Triplexhaus». Aufbau: 1 Bruttorendite · 2 Grobkostenberechnung
Allgemeine Bemerkungen · 3 eBKP-H Beschreibung · 4 eBKP-H 1-stellig mit Volumen/Flaechen
nach SIA 416 · 5 eBKP-H 2-stellig.

**Die Grobkosten-Doktrin, die dieses Blatt vorbildlich macht** (und die als Muster in die
KB gehoert):
1. **Genauigkeit deklarieren:** «Kostengenauigkeit +/- 25 %» als eigene Zeile im Kopf.
2. **Grundlagen benennen:** welche Plaene in welchem Massstab, mit **Planstand** und
   **Dokumentstand**; Flaechenauszuege GF/GV/HNF separat ausgewiesen.
3. **Kostenstruktur benennen:** «CRB eBKP-H D/12».
4. **Preisstand deklarieren:** Index, Reihe, Region, Stand, Basis.
5. **MWST separat ausweisen** (Position Z), nicht im Kennwert versteckt.
6. **Ausschlussliste** — im Blatt vorbildlich ausfuehrlich: Grundstueckkosten
   (Grundstueckerwerb, Baurechtserwerb, Grundbuchgebuehren, Anwalts-/Gerichtskosten,
   Abfindungen, Servitute) · Erschliessung ausserhalb des Bearbeitungsperimeters (Leitungen
   und Verkehrsanlagen) · Bauherrenleistungen (Projektbegleitung, Finanzierung vor
   Baubeginn, Nachbarentschaedigungen) · Baugrundverbesserungen und Spezialtiefbau
   (Grundwasserabsenkung, Pfaehlungen, spezielle Baugrubensicherungen) · saemtliche mobilen
   Ausstattungen · kuenstlerischer Schmuck · **Teuerung** · Umzugskosten · provisorische
   Nutzungen im Bestand.
7. **Reserve** als eigene eBKP-H-Position Y ausweisen.
8. **Renditebezug herstellen:** Bruttorendite je Variante direkt neben den Gesamtkosten.

**INNERE WIDERSPRUECHE — ausdruecklich benannt. Das Blatt darf in dieser Fassung NICHT als
Vorlage verwendet werden, ohne dass folgende Punkte bereinigt sind:**

1. **Drei verschiedene Gesamtkosten.** Deckblatt: «Gesamtkosten CHF 3'350'000.00 inkl.
   MWST». Kapitel 1: «Variante 2 Grenzbau CHF 3'300'000.00 inkl. MWST». Die
   eBKP-H-Tabelle (S. 6): «Total Grobkostenschaetzung … 2'735» (TCHF). Die
   2-stellige Tabelle (S. 7): «Total … 2.404 M». **Vier Zahlen fuer dasselbe Objekt.**
2. **Zwei verschiedene Bruttorenditen fuer dieselbe Variante.** Deckblatt: «Bruttorendite
   5 %». Kapitel 1: Variante 1 Ersatzneubau 3 %, **Variante 2 Grenzbau 4 %**, Variante 3
   Hangbau 5 % — waehrend das Deckblatt die Gesamtkosten der Variante 2 nennt und die
   Rendite der Variante 3.
3. **Zwei verschiedene Genauigkeitsangaben.** Kopf und Kapitel 1: **+/- 25 %**;
   Ueberschrift der 2-stelligen Tabelle: «Grobkostenschaetzung nach eBKP-H **+/- 20 %**».
4. **Zwei verschiedene Preisstaende UND zwei verschiedene Regionen.** Kopftext:
   «Schweizer Baupreisindex Hochbau, **Region Zentralschweiz, Stand Oktober 2014: 100.5,
   Basis Oktober 2010 = 100**». Tabellenkopf S. 6: «Preisniveau und Grossregion BFS;
   **2020.10 Zuerich**». Damit ist der Preisstand des Blattes nicht bestimmbar — der
   schwerste Mangel, weil jeder Kennwert daran haengt.
5. **Zwei verschiedene MWST-Saetze.** Kopftext: «Aktueller Satz von **8 %**»;
   eBKP-H-Beschreibung Z: «Die Mehrwertsteuer von **8 %**»; beide Tabellen rechnen
   dagegen mit **7.7 %**. (Sachlich richtig waere fuer einen Planstand 2021 der Satz
   7.7 %; die 8 % im Text sind der bis 2017 gueltige Satz.)
6. **Reserve deklariert, aber nicht gebucht.** eBKP-H-Beschreibung Y: «Es ist eine Reserve
   von **5 % auf eBKP B-W** eingerechnet.» In beiden Tabellen steht bei Y «–», also
   **null**. Rechnerisch fehlen damit rund CHF 124'000 (5 % auf B–W 2'476).
7. **Zwei verschiedene Planungskostensaetze.** Tabelle S. 6: V Planungskosten **12.0 %**
   auf BBJ 2.094 Mio. = 293; Tabelle S. 7: V Planungskosten **14.0 %** auf BBJ 2.033 Mio.
   = 285.
8. **Die Summenzeilen gehen nicht auf.** Addiert man die ausgewiesenen Positionen B bis Z
   der Tabelle S. 6 (239 + 543 + 264 + 469 + 93 + 440 + 45 + 293 + 88 + 153), ergibt das
   **2'627**, nicht die ausgewiesenen **2'735** (Total) bzw. **2'818** (Zeile B–Z
   Anlagekosten). Differenz rund CHF 110'000 bis 190'000.
9. **Unmoegliches Datum, zweimal.** «Planstand **30.02.2021**» und «Dokumentstand
   **30.02.2021**» — der 30. Februar existiert nicht.
10. **Einheitenfehler.** «GV Gebaeudevolumen **2'176 m2**» (muss m3 sein).
    «W Nebenkosten … CHF/GF **1116.5**» (88'000 / 759 = 116; Dezimalfehler).
    «FF Funktionsflaeche 16 m2 = **0.01 %**» (16 / 759 = 2.1 %).
11. **Falsch beschrifteter Formquotient.** «HNF/GV Hauptnutzflaeche zu **Geschossflaeche**
    0.69» — der Wert 527 / 759 = 0.69 ist HNF/**GF**, nicht HNF/GV. Label und Text
    widersprechen sich.
12. **Zwei verschiedene Bueroadressen im selben Dokument** und beide veraltet: Deckblatt
    «Saumstrasse 21, 8003 Zuerich», Seitenfuss «Hardstrasse 81, CH-8004 Zuerich»; als
    Kontakt die **private** Adresse raphaeljans@me.com statt rj@raphaeljans.ch. Heute
    gilt Grubenstrasse 37, 8045 Zuerich (Rule `jans-absenderadresse`).
13. **Objektjahr gegen Planstand.** Das Referenzobjekt ist datiert «Triplexhaus
    Bernstrasse, Herzogenbuchsee, **2009**», die Grobkostenschaetzung traegt Planstand
    2021 — welches Jahr den Kennwerten zugrunde liegt, geht aus dem Blatt nicht hervor.
14. Tippfehler im Kopf, die auf fehlende Endkontrolle deuten: «Kostengenauikgeit»,
    «Baupreisindes», «Oktorber», «Phaehlungen», «beheitztes/unbeheitztes Vol.»,
    «Aufwendugnen», «Ausbaustandart».

**Belegte Objektdaten aus demselben Blatt (unabhaengig von den Widerspruechen brauchbar,
weil in sich konsistent):** GV 2'176 m3 · GSF 630 m2 · GGF 314 m2 · BUF 316 m2 ·
GF 759 m2 · KF 107 m2 (14.1 %) · NGF 653 m2 (86.0 %) · NF 636 m2 (83.8 %) ·
**HNF 527 m2 (69.5 %)** · NNF 109 m2 · AGF 172 m2. Formquotienten FAW/GF 1.24 · FB/GF 0.47
· **GV/GF 2.87** · HNF/GF 0.69. Kennwerte: beheiztes Volumen CHF 920 / m3, unbeheiztes
CHF 600 / m3, **Gesamt CHF 833 / m3 → Bauwerkskosten C–G CHF 1'810'000 = CHF 3'450 / m2
HNF = CHF 2'386 / m2 GF**; B–W Erstellungskosten CHF 2'476'000 = CHF 3'262 / m2 GF;
B–Z Anlagekosten CHF 3'713 / m2 GF.
Die Bezugsmengen je Position: B GSF 630 x 380 · C GF 759 x 716 · D GF 759 x 348 ·
E FAW 943 x 498 · F FB 355 x 262 · G GF 759 x 580 · I BUF 316 x 141 · W GF 759 x 113 CHF/m2.

`Herzogenbuchsee Triplexhaus Bernstrasse.docx` daneben ist ein **Fragment** (eine Zeile
Objektliste: «Triplexhaus Bernstrasse, Herzogenbuchsee. 27. Mehrfamilienhaus Hohmoos,
Zuerich … aardeplan ag … Rueegg …») und **nicht wissenstragend**.

### 2.6 Sicherheitsbefund und Ablagehygiene

- **`werk-material.online/_Login.docx` enthaelt ein Kennwort im Klartext.** Der Wert wird
  hier bewusst **nicht** wiedergegeben. **Er gehoert in den macOS-Schluesselbund, und die
  Datei ist danach zu loeschen** (Grenze der User-Level-Regel: «Passwoerter, Zertifikate und
  Tokens nie in Dateien schreiben»). Solange die Datei besteht, liegt ein
  Zugangs-Kennwort unverschluesselt auf einer geteilten SharePoint-Bibliothek.
- **`_Kommunikation/210208_werk-material.online_Bestellung.eml`** — Bestellvorgang vom
  08.02.2021, kein Fachinhalt; nicht wissenstragend (Abo-Beleg).
- **Massive Duplikate durch OneDrive-Konfliktkopien:** praktisch jede Datei existiert
  zusaetzlich als `…-MacBook Pro von Raphael.pdf`, teils vierfach verschachtelt. In
  `09 Kultus/` liegen fuenf identische Fassungen desselben PDF. **Aufraeumkandidat**;
  fuer den Ingest ohne Belang, weil inhaltsgleich.

### 2.7 Fachfremde Dateien und leere Ordner in dieser Ablage

- **`TRST07 SE04 Tragwerksmodelle 1 Scheiben_Platten 3–12.pdf`** liegen in
  `01 Wohnen/02 Wohnbauten_enMass/`, `02 Bildung und Forschung/Laborgebaude/`,
  `06 Handel und Verwaltung/Buerobauten/` und `06 …/Geschaeftbauten/`. Das ist
  **ETH-Tragwerkslehre-Vorlesungsmaterial (Scheiben und Platten)**, kein Kostenmaterial —
  **fachfremd, gehoert nicht in «IMMO - 04 Marktpreise»** und ist in eine
  Fachwissens-Ablage zu verschieben. Betroffen: mindestens 20 Dateien inkl. Konfliktkopien.
- **`02 Bildung und Forschung/Laborgebaude/`** enthaelt **ausschliesslich** eine solche
  Tragwerksdatei — der Ordner ist damit fuer Kostenkennwerte **faktisch leer**.
- **`06 Handel und Verwaltung/Buerobauten/`** enthaelt **ausschliesslich**
  Tragwerksmodell-Dateien — ebenfalls **faktisch leer**, obwohl der Ordnername einen
  Bueробauten-Bestand verspricht. Die einzige echte Bueroreferenz (Steinentorberg) liegt
  im Nachbarordner «Geschaeftbauten».
- **`ImmoMapper/`** (auf Ebene «IMMO - 04 Marktpreise») ist **vollstaendig leer**.

---

## TEIL 3 — Kleinquellen

### 3.1 Lignum, «Was kostet ein Holzbau?»

`lignum/Lignum_Was_kostet_ein_Holzbau.pdf`, **Lignum Magazin, April 2021**, 28 Seiten,
Herausgeber Lignum Holzwirtschaft Schweiz, Zuerich; **massgebliche Unterstuetzung BAFU
(Aktionsplan Holz), in Kooperation mit Wuest Partner AG**. Grundlage ist die Wuest-Studie
«Holzbaukennzahlen fuer Investoren»: **acht grosse Holzbauprojekte** (alle Hybridbauten
mit betonierten Treppenhaeusern und Untergeschossen, alle Wohnueberbauungen, alle in der
Deutschschweiz an sehr guten bis exzellenten Makrolagen, Erstellungskosten je ueber
CHF 10 Mio., meist unter zehn Jahre alt).

**Kennwerte der acht Fallbeispiele (Fall 1 bis 8, CHF):**

| Kennwert | 1 | 2 | 3 | 4 | 5 | 6 | 7 | 8 |
|---|---|---|---|---|---|---|---|---|
| BKP 1–5 / m3 GV | 894 | 795 | 834 | 1'165 | 1'583 | 1'060 | 950 | 1'127 |
| BKP 1–5 / m2 GF | 3'551 | 2'508 | 2'777 | 3'014 | 4'935 | 2'611 | 3'145 | 3'497 |
| BKP 1–5 / m2 HNF | 4'812 | 4'018 | 4'304 | 5'163 | 6'266 | 4'370 | 4'968 | 4'551 |
| BKP 2 / m3 GV | 775 | 614 | 670 | 1'041 | 1'459 | 934 | 791 | 1'037 |
| BKP 2 / m2 GF | 3'080 | 1'938 | 2'233 | 2'694 | 4'547 | 2'301 | 2'619 | 3'218 |
| BKP 2 / m2 HNF | 4'175 | 3'106 | 3'461 | 4'615 | 5'773 | 3'851 | 4'136 | 4'188 |
| BKP 214 / m3 GV | 96 | 100 | 125 | 222 | 213 | 110 | 167 | 201 |
| BKP 214 / m2 GF | 382 | 314 | 417 | 575 | 663 | 272 | 551 | 623 |
| BKP 214 / m2 HNF | 518 | 504 | 646 | 986 | 842 | 455 | 871 | 811 |

(BKP 214 = Montagebau in Holz.) Die Publikation haelt fest, dass **BKP 1–5 pro m2 HNF fuer
alle Faelle im Bereich rund CHF 4'000 bis 5'000** liegt — mit Fall 5 als Ausreisser nach
oben.

**Quantilbenchmark (Abbildungen 2 und 3), Vergleichsdatensatz Wuest Partner mit 171
Gebaeuden, davon 23 energetisch zertifiziert:**

| Quantil | BKP 1–5 / m2 HNF Massivbau energ. zert. | Massivbau | **Holzbau** | BKP 2 / m2 HNF Massivbau energ. zert. | Massivbau | **Holzbau** |
|---|---|---|---|---|---|---|
| 90 % | 8'018 | 7'202 | 5'950 | 7'310 | 6'106 | 5'172 |
| 70 % | 5'283 | 5'119 | 5'228 | 4'654 | 4'429 | 4'608 |
| 50 % | 4'206 | 4'199 | 5'007 | 3'578 | 3'594 | 4'487 |
| 30 % | 3'499 | 3'549 | 4'642 | 3'041 | 3'055 | 3'909 |
| 10 % | 3'067 | 2'967 | 4'365 | 2'656 | 2'542 | 3'658 |

**Kernaussage der Studie:** «Der Median liegt beim **70 %-Quantil** der Referenzmengen mit
Massivbauten» — die untersuchten Holzbauten sind also etwas teurer, was die Publikation mit
ihrer durchwegs sehr hohen baulichen und energetischen Qualitaet erklaert. **Auffaellig
zweitens: die Streuung der Holzbau-Kennwerte ist deutlich kleiner** als die des
Referenzdatensatzes (Holzbau 10 % bis 90 % = 4'365 bis 5'950; Massivbau 2'967 bis 7'202) —
begruendet mit dem hohen Vorfertigungsgrad und dem hohen Detaillierungsgrad der Planung.
Ein Einfluss der Konstruktionsart (Rahmen-, Skelett-, Massivholzbau) auf die Baukosten
laesst sich aus dem Sample **nicht** herleiten; laut Wuest Partner hat die **Wahl der
Gebaeudehuelle** den wesentlich groesseren Kosteneinfluss als die Primaerkonstruktion.

**Renditen (Abbildung 4), eingeschaetzt anhand der Transaktionen von Wohnliegenschaften
2019 an sehr guter bis exzellenter Makrolage:**

| Quantil | Wohnliegenschaft 2019 | Holzbau |
|---|---|---|
| 90 % | 4.12 % | 3.49 % |
| 70 % | 3.85 % | 3.33 % |
| 50 % | 3.57 % | 3.22 % |
| 30 % | 3.23 % | 3.01 % |
| 10 % | 2.73 % | 2.76 % |

Die untersuchten Holzbauten weisen im **Median eine Bruttoanfangsrendite von 3.2 %** auf,
gegen 3.6 % (50 %-Quantil) bzw. 3.2 % (30 %-Quantil) der vergleichbaren Wohnliegenschaften.
Die Auswertung beruht auf **Modellannahmen von Wuest Partner** und kann vom wirklichen Wert
abweichen. Die Erklaerung der Studie: die hohen Baulandpreise an begehrten Makrolagen
minimieren den Einfluss der Baukosten in der Renditebetrachtung.

**HNF/GF-Effizienz:** die acht Faelle liegen bei **0.62 bis 0.79, im Mittel rund 0.75**;
die Studie nennt die Spanne 0.70 bis 0.82 als mit planerischem Aufwand erreichbar.

**PREISSTAND: im Dokument NICHT angegeben.** Die Publikation datiert vom April 2021, die
Renditeeinschaetzung stuetzt sich auf Transaktionen 2019, die Bauten sind «mit einer
Ausnahme weniger als zehn Jahre alt». Ein Kostenstand-Index fehlt. **Die Kennwerte sind
daher ohne Aufindexierung nicht in ein heutiges Gutachten uebernehmbar** — als
Bezugsstichtag ist ersatzweise «rund 2019/2020» zu deklarieren und explizit als Annahme
zu markieren.

### 3.2 keeValue.ch — Umbaukosten-Modellkette

Belege: `keevalue.ch/Anmeldung.docx` (SIA-inForm-Kurs **«Digitalisierte
Umbaukostenschaetzungen», Freitag 22. September 2023, 11:00–11:50**, Zoom-Webinar, Referent
laut Bildschirmfreigabe **Daniel Hunziker**, keeValue AG), die Webinar-Screenshots
`keevalue.ch/Printscreen/Bildschirmfoto 2023-09-22 um 11.02–11.50` und `IMG_0838.jpeg`.
`Baukosten Keevalue.docx` enthaelt **nur eine URL** und ist nicht wissenstragend.

**Die Modellkette des Umbaukostenrechners (aus den Screenshots belegt):**
1. **Quantitaet** — vier parallele Spalten **Bestehendes Gebaeude Ist · Bestehendes
   Gebaeude Ziel · Aufstockung · Anbau**, je mit GF SIA 416, GV SIA 416, mittlere
   Geschosshoehe GV/GF, Anteil GV unter Terrain, BUF SIA 416, Anzahl Gebaeude, Geschosse
   ueber/unter Terrain, unterirdische Parkplaetze, Dachform, Aussenwand (Bekleidung und
   Konstruktion), Waermeerzeugung, Lueftungs-/Klimaanlagen, Transportanlagen innen/aussen.
   Beispielobjekt im Webinar: GF 897 m2 (Ist und Ziel), GV 2'520 m3, Aufstockung GF 200 m2 /
   GV 562 m3, Anbau GF 100 m2 / GV 281 m3, mittlere Geschosshoehe 2.81.
2. **Zielstandard definieren** — Skala **WK1 bis WK8** in drei Baendern «tiefe Werte
   (WK1–WK2) · mittlere Werte (WK3–WK5) · hohe Werte (WK6–WK8)», je Kriterium
   (z.B. «Grundstueck- und Bauplatzverhaeltnisse», «Vorbereitungsarbeiten») als Schieberegler.
3. **Zustandsanalyse, Massnahmen und Eingriffstiefe je BAUELEMENT** — Zeilen: Konstruktion
   (Rohbau) · Aeussere Wandbekleidungen · Einbauten zu Aussenwaende · Bedachung Flachdach ·
   Bedachung geneigtes Dach · Starkstrom · Schwachstrom · Waermeerzeugung ·
   Waermeverteilung und -abgabe · Lueftungs- und Klimaerzeugung · Luftverteilung und
   -abgabe · Sanitaerapparate · Sanitaerleitungen · Transportanlage · Einbauten zu
   Innenraeume · Einbaukueche · Oberflaechen · Umgebung. Je Zeile: Bezugsgroesse in % ·
   **Baujahr** · Zustandsanalyse (Verteilungsbalken) · **Restlebensdauer WL/TL**
   (wirtschaftlich/technisch, in Jahren) · Massnahmen · **Eingriffstiefe in %**. Die
   Massnahmenklassen sind hinterlegt, im Screenshot sichtbar: **«MK2 mittieftiefe
   Massnahmenklasse — Punktuelle Eingriffe (kleiner Ersatz, Reparaturen), Eingriffstiefe
   10–25 %»**. Beispiel: Konstruktion Baujahr 1958, Eingriffstiefe 20 %; Waermeverteilung
   15 %; Sanitaerleitungen 5 %; die uebrigen Elemente 100 % (Vollersatz).
   Zusaetzlich **Handeintrag** fuer Sonderkosten (Baugrundverbesserung, Altlasten,
   Staubsauberanlage, Bauherrenberatung), optional einer BKP-Stelle zuweisbar.
4. **Ausgabe: Baukosten gegliedert nach BKP**, mit CHF, Anteil in % und Kennwert
   CHF/m2 GF SIA 416. Belegtes Beispielergebnis aus dem Webinar: BKP 1 Vorbereitung
   115'000 (3.5 %, 96 CHF/m2 GF; darin SF Analyse 5'000 und SF Sanierung 60'000) ·
   **BKP 2 Gebaeude 2'979'400 (90.3 %, 2'489 CHF/m2 GF)** mit 20 Aushub 8'000 · 21 Rohbau 1
   669'000 (22.5 %) · 22 Rohbau 2 1'023'000 (34.3 %) · 23 Elektro 110'500 · 24 HLK 130'900 ·
   25 Sanitaer 123'000 · 27/28 Ausbau 1+2 427'000 (14.3 %) · **29 Honorare 488'000 =
   16.4 %, 408 CHF/m2 GF** · BKP 4 Umgebung 9'000 (100 CHF/m2 BUF) · BKP 5 Baunebenkosten
   145'000 · **BKP 6 Reserve 50'000 (1.5 %)** · **Umbaukosten inkl. MWST CHF 3'298'400 =
   2'756 CHF/m2 GF**. Darunter zusaetzlich **Bewirtschaftungskosten pro Jahr** getrennt
   nach «Gebaeude Ist» und «Gebaeude Ziel», je EK (Eigentuemerkosten) und NK (Nebenkosten
   Mieter) — das Werkzeug rechnet also bis in den Betrieb hinein.
5. **Lizenzmodell** (`IMG_0838.jpeg`): alle Module gleich teuer, Preis nach
   Unternehmensgroesse sowie Anzahl und Groesse der Projekte; Grundmodule
   **Neubaukostenrechner · Umbaukostenrechner · Betriebskostenrechner · Life Cycle Planer**
   oder das gesamte **LCC Package**.

**Datum der Erhebung: 22.09.2023** (Webinar). Die gezeigten Zahlen sind
**Demonstrationswerte eines Beispielobjekts**, kein Marktbenchmark — als solche zu fuehren.

### 3.3 Zuercher Index der Wohnbaupreise (ZIW), Stadt Zuerich

Quellen: `Zuerich Stadt/230630/230705_mm_Zuercher Index der Wohnbaupreise 2023.pdf`
(Medienmitteilung Statistik Stadt Zuerich, **5. Juli 2023**, Kontakt Stefanie Joerg,
+41 44 412 08 32) und `230630/PRE002T002C_ZIW-Detailresultate-jaehrlich_Hauptgruppen.pdf`
(Tabelle T_1, Quelle «Statistik Stadt Zuerich; BFS, Schweizerischer Baupreisindex»).

**Basis: April 2020 = 100.** Gegenstand ist der **Neubau eines Mehrfamilienhauses in der
Stadt Zuerich**, Total = BKP 2, 4 und 5. **Stand April 2023 = 113.9 Punkte, +5.5 % gegenueber
April 2022 (107.9).** Zum zweiten Mal in Folge ueberdurchschnittlich gestiegen.

| BKP | Bauleistung | Gewicht % | Apr 2023 | Apr 2022 | Veraenderung % | Beitrag zum Total % |
|---|---|---|---|---|---|---|
| 0 | Total (BKP 2, 4, 5) | 100.000 | 113.9 | 107.9 | 5.5 | 5.516 |
| 2 | Gebaeude | 90.553 | 115.0 | 108.8 | 5.7 | 5.199 |
| 20 | Baugrube | 1.387 | 109.1 | 104.6 | 4.3 | 0.058 |
| **21** | **Rohbau 1** | **29.452** | **122.0** | 113.6 | **7.4** | **2.291** |
| 22 | Rohbau 2 | 9.373 | 122.6 | 115.7 | 5.9 | 0.595 |
| 23 | Elektroanlagen | 3.041 | 117.2 | 104.4 | **12.3** | 0.362 |
| 24 | HLK, Gebaeudeautomation | 4.608 | 120.0 | 113.5 | 5.7 | 0.276 |
| 25 | Sanitaeranlagen | 8.557 | 109.7 | 101.8 | 7.7 | 0.625 |
| 26 | Transport-/Lageranlagen | 1.910 | 103.9 | 101.1 | 2.8 | 0.050 |
| 27 | Ausbau 1 | 9.499 | 116.1 | 109.7 | 5.9 | 0.565 |
| 28 | Ausbau 2 | 6.034 | 106.2 | 104.2 | 1.9 | 0.114 |
| **29** | **Honorare** | **16.694** | **103.5** | 101.8 | **1.7** | 0.263 |
| 4 | Umgebung | 4.109 | 108.7 | 103.9 | 4.7 | 0.184 |
| 41 | Roh-/Ausbauarbeiten | 0.361 | 113.8 | 106.1 | 7.3 | 0.026 |
| 42 | Gartenanlagen | 2.620 | 109.9 | 104.4 | 5.2 | 0.132 |
| 44 | Installationen | 0.086 | 116.5 | 103.8 | 12.2 | 0.010 |
| 49 | Honorare (Umgebung) | 1.043 | 103.5 | 101.8 | 1.7 | 0.016 |
| 5 | Baunebenkosten | 5.338 | 99.3 | 96.6 | 2.8 | 0.133 |
| 53 | Versicherungen | 0.266 | 103.7 | 103.1 | 0.6 | 0.001 |
| 54 | Finanzierung ab Baubeginn | 5.072 | 99.0 | 96.2 | 2.9 | 0.131 |

Zusatzaggregate derselben Tabelle: Rohbau (20–22) Gewicht 40.211 %, Index 121.7 ·
Innenausbau (23–28) 33.648 %, 112.6 · Uebrige Kosten (29, 4, 5) 26.141 %, 103.5 ·
**Honorare total (29 + 49) 17.738 %, Index 103.5** · **Index ohne Honorare 82.262 %,
Index 116.1 (+6.3 %)** · Index ohne Finanzierung ab Baubeginn 94.928 %, 114.7 ·
Index ohne Baunebenkosten 94.662 %, 114.7.

**Die zwei wichtigsten Befunde:**
- **Honorargewicht 16.694 % (BKP 29) bzw. 17.738 % inkl. BKP 49** — das ist mehr als
  doppelt so viel wie im BFS-EFH-Warenkorb (7.3065 %, Kap. 1.5). Der Unterschied kommt aus
  der Bauwerksart (staedtisches MFH gegen EFH) und ist beim Vergleich zweier Indexreihen
  zwingend zu beachten.
- **Die Honorare bremsen den Index:** Index ohne Honorare 116.1 gegen 113.9 mit Honoraren.
  Das ist **derselbe Befund wie in Kap. 1.5 aus BFS-Daten** — hier unabhaengig durch die
  Stadt Zuerich bestaetigt. Honorare (103.5) sind seit April 2020 um 3.5 % gestiegen, das
  Gebaeude um 15.0 %.
- Rohbau 1 ist mit Gewicht 29.452 % und +7.4 % der Haupttreiber (Beitrag 2.291 von 5.516
  Prozentpunkten, also **42 % der gesamten Teuerung**). Elektro und Installationen stiegen
  zwar am staerksten (+12.3 % / +12.2 %), machen aber zusammen nur rund 3 % der
  Gesamtkosten aus.

**Publikationsschwelle / Konvention:** «Seit diesem Jahr werden neben den 16 Hauptgruppen
auch detailliertere Resultate von **94 Subgruppen** ausgewiesen, **sofern Informationen von
genuegend Preismeldestellen vorliegen**.» Es gilt also eine Mindestzahl-Regel je Subgruppe;
fehlende Werte bedeuten Datenschutz oder zu duenne Meldebasis, nicht Wert null.

### 3.4 Honoraraufteilung je Fachrichtung — ABSCHLAEGIG beschieden

`Zuerich Stadt/240105_Fachplaner Honorare Zuercher Index der Wohnbaupreise.pdf` — Mail
Raphael Jans an Stefanie Joerg, **5. Januar 2024, 14:05**: Frage, ob es eine Tabelle gibt,
die die 16.694 % BKP 29 auf die einzelnen Fachrichtungen (Architektur, Ingenieur, HLKS,
Bauphysik, Geologe) aufteilt.

`240108_Detailierte_Honoraraufstellung.pdf` — Antwort Stefanie Joerg, Statistik Stadt
Zuerich, **8. Januar 2024, 08:58**, woertlich: «**Es gibt keine detaillierte Aufteilung der
Honorare auf die verschiedenen Fachrichtungen.**»

**Die Frage wurde also beantwortet, und zwar ABSCHLAEGIG.** Der ZIW liefert keine
Fachrichtungs-Aufteilung.

**ABER — Querverweis, den der Hauptlauf setzen sollte:** Was der ZIW nicht hat, hat das
BFS. Der BKP-Detailindex Neubau EFH (Kap. 1.5, `su-d-05.05.01-schweiz_EFH_4Stellig.pdf`)
weist genau diese Aufteilung aus: **BKP 291 Architekt 6.6185 % · 292 Bauingenieur 0.3621 % ·
293 Elektroingenieur 0.2414 % · 294 HLK-Ingenieur 0.0845 %** (Summe 7.3065 % = BKP 29).
Anteilig innerhalb der Honorargruppe: **Architekt rund 90.6 %, Bauingenieur 5.0 %,
Elektroingenieur 3.3 %, HLK-Ingenieur 1.2 %** (eigene Rechnung). Das ist die Antwort auf
die 2024 gestellte Frage — nur in der falschen Quelle gesucht. Der Warenkorb ist zwar EFH
statt staedtisches MFH, gibt aber die Groessenordnung.

Nebenbefund: beide Mails laufen ueber die **private Adresse raphaeljans@me.com** mit
Signatur «Hardstrasse 81, 8004 Zuerich» — beides heute ueberholt (rj@raphaeljans.ch,
Grubenstrasse 37, 8045 Zuerich).

### 3.5 Mietpreiserhebung Stadt Zuerich

`Zuerich Stadt/Mietpreiserhebung.docx` enthaelt nur die URL
(stadt-zuerich.ch → Statistik und Daten → Bauen und Wohnen → Miete und Eigentum →
Mietpreiserhebung). Substanz liegt in den drei Screenshots vom **04.12.2024**.

**Publikation «Neu konzipierte Mietpreiserhebung fuer die Stadt Zuerich»**, Herausgeber
Statistik Stadt Zuerich, PDF 680 kB, 4 Seiten: sie stellt **individuelle Preisbandbreiten
fuer Stadtquartiere und Stadtkreise** sowie Marktpreisindikatoren auf gesamtstaedtischer
Ebene bereit. Belegter Wert: **per April 2022 lag der mittlere Nettomietpreis (Median) von
4-Zimmer-Wohnungen in der Stadt Zuerich bei monatlich CHF 1'787, von 3-Zimmer-Wohnungen bei
CHF 1'470.**

**Abfragetool Mietpreiserhebung** (Screenshot 04.12.2024, 13:17). Auswahlachsen:
- Geografischer Raum: **Stadtkreise** oder Quartiere;
- Anzahl Zimmer: 2 / 3 / 4 / alle Zimmergroessen (2–4);
- Ebene Mietpreis: **pro Wohnung** oder **pro Quadratmeter**;
- Art der Miete: **Nettomiete** oder **Bruttomiete**;
- Erhebungsjahr: **2024** oder **2022**;
- Aufteilung **gemeinnuetzig / nicht gemeinnuetzig** (getrennte Balken).

**Ausgegebene Statistik: 10., 25., Median, 75. und 90. Perzentil, jeweils mit
95 %-Konfidenzintervall.** Belegtes Beispiel aus dem Tooltip (Kreis 3, nicht gemeinnuetzig,
3 Zimmer, Bruttomiete, 2024): 10. Perzentil **1'366** (1'299–1'500) · 25. Perzentil
**1'666** (1'595–1'723) · **Median 1'967** (1'890–2'045) · 75. Perzentil **2'456**
(2'350–2'619) · 90. Perzentil **2'977** (2'895–3'131).

**Verfuegbarkeit als Download: CSV, XLSX und OGD** (Open Government Data) — direkt im Tool
angeboten. **Das ist die maschinell nutzbare Mietpreisquelle fuer die Stadt Zuerich** und
gehoert als Connector-Kandidat in `connectors/README.md`.

Bewertungsrelevant: Die ausgewiesenen Konfidenzintervalle sind breit (beim Median rund
+/- 4 %). In einem Bewertungsgutachten ist daher nicht nur der Median, sondern das
Intervall zu nennen; die Trennung gemeinnuetzig / nicht gemeinnuetzig ist zwingend, weil
die gemeinnuetzigen Balken durchwegs deutlich tiefer liegen und den Gesamtmedian druecken.

### 3.6 comparis.ch — ANGEBOTSPREISE, keine Transaktionspreise

**Ausdruecklich festgehalten: comparis.ch liefert INSERATE, also ANGEBOTSPREISE
(Angebotsmieten bzw. Angebotskaufpreise), NICHT Transaktionspreise.** Die Funktion heisst
selbst «Was zahlt die Nachbarschaft — Preisentwicklung fuer Wohnungen und Haeuser. Miet-
und Kaufpreise **aus Inseraten der letzten 5 Jahre**», die Legende unterscheidet nur
«Aktuelles Inserat» und «Historisches Inserat». Was tatsaechlich bezahlt wurde, ist nicht
enthalten. Fuer ein Verkehrswertgutachten sind diese Werte deshalb **Indikation, nicht
Vergleichswert** — bei angespanntem Markt liegen Angebotsmieten regelmaessig ueber dem
Abschluss, bei schwachem darunter.

**Belegte Objekte:**
- `comparis.ch/Wald/Bildschirmfoto 2024-05-15 um 09.31.32.png` (Abfrage «Wald ZH 8636»,
  Filter Mieten, **15.05.2024**): **Sunnematte 4, 8636 Wald ZH** — 1. Stockwerk, Wohnung
  5.5 Zimmer, Flaeche nicht ausgewiesen: **CHF 1'609 (05.06.2019)** und **CHF 1'650
  (15.01.2020)**; 2. Stockwerk, Wohnung 5.5 Zimmer, **85 m2**: **CHF 1'521 (04.05.2020)**.
  (Der m2-Preis des dritten Inserats betraegt rechnerisch CHF 17.90 je m2 und Monat.)
  Filterachsen des Werkzeugs: Objektart, Preis von/bis, Zimmer von/bis, Wohnflaeche m2,
  Publikationsdatum; Kartengrundlage Leaflet / OpenStreetMap.
- `comparis.ch/Zuerich/Bildschirmfoto 2024-12-04 um 13.37.32.png` (**04.12.2024**):
  Marktplatz-Inserat 33682473, **Objektart Gewerbeobjekt, 1 Zimmer, 8004 Zuerich,
  Mietpreis CHF 580 pro Monat**, verfuegbar nach Vereinbarung, Anbieter ueber UrbanHome.ch,
  «Online seit 11 Stunden». Die Browser-Tabs desselben Screenshots («Mietpreiserhebung
  Stadt Zuerich», «Bundesamt fuer Statistik», «Bueromietpreis Stadt Zuerich Bund…») zeigen,
  dass dies Teil derselben Recherche wie die BFS-Anfrage vom **04.12.2024, 13:11**
  (Kap. 1.9) ist. **Zusammenhang: die Frage nach dem Bueromietzins Stadt Zuerich wurde
  parallel amtlich (BFS, ohne Antwort) und ueber Inserate (comparis, Einzelfall) verfolgt.**
- `comparis.ch/_comparis/` (sechs Screenshots vom **30.12.2023**) — in diesem Lauf nicht
  einzeln ausgewertet; gleiche Quellengattung, dieselbe Angebotspreis-Einschraenkung.

### 3.7 Nicht wissenstragende Quellen in Teil 3

- **`immoverkauf24.ch/*.eml`** — zwei Lead-Mails von Lisa Beier (immoverkauf24 GmbH
  Hamburg, Zweigniederlassung Glarus Nord, Fabrikstrasse 10, 8866 Ziegelbruecke) an
  raphaeljans@me.com, beide **02.01.2024**, Referenz A-1990206. Inhalt: Bitte um Rueckruf
  und Link auf die «kostenlose Wohnmarktanalyse». **Kein Bewertungsergebnis, keine Zahl,
  kein Verfahren — reine Akquise. Nicht wissenstragend.** Einziger brauchbarer Satz ist
  der Eigen-Vorbehalt des Anbieters: der online ermittelte Wert sei ein **Durchschnittswert**
  und koenne je nach Lage, Ausstattung und Zustand vom tatsaechlichen Marktwert abweichen.
- **`realadvisor.ch/https.docx`** — enthaelt **nur eine URL** (RealAdvisor Mietspiegel
  Gemeinde Wald ZH mit Kartenausschnitts-Parametern). Kein Inhalt. **Nicht wissenstragend.**
- **`realmatch360.com/link.docx` und `https.docx`** — beide enthalten **nur** die URL
  `https://realmatch360.com/`. **Nicht wissenstragend.**
- **`keevalue.ch/Baukosten Keevalue.docx`** — nur eine URL mit Google-Ads-Tracking-
  Parametern. **Nicht wissenstragend** (die Substanz liegt in den Screenshots, Kap. 3.2).

### 3.8 `jans.ch` — ECHO-SCHUTZ: KI-Ausgabe, kein Fachbeleg

`jans.ch/Bildschirmfoto 2026-06-15 um 09.45.49.png` zeigt **kein Marktpreis-Material,
sondern einen Claude-Code-Dialog** (sichtbar: Fortschritt «1/4», Antwortoptionen mit
Ziffern, Eingabezeile «Gib / fuer Befehle ein», Modellanzeige «Opus 4.8 / Hoch», Hinweis
«Claude Fable 5 is currently unavailable»). Inhalt ist eine **Rueckfrage an Raphael zur
Produktstrategie** einer Online-Bewertung: Option 1 «Gestuft: Online-Schnellwert +
Gutachten» (kostenloser Schaetzwert als Lead-Magnet, Upsell aufs JANS-Experten-Gutachten),
Option 2 «Experten-Gutachten (signiert, mit Besichtigung)» mit drei Verfahren und
Baurecht-/Zustandstiefe, Option 3 «Schnell-Schaetzung automatisiert (WP-Konkurrent)»,
Modellwert aus Kundenselbstauskunft, **ca. CHF 450**, ohne Besichtigung, «braucht eine
Vergleichsdaten-Quelle».

**Einordnung: Das ist eine KI-Ausgabe und darf NIE als Fachbeleg gefuehrt werden**
(Echo-Schutz, Rule `jans-dna`). Auch die genannten CHF 450 sind eine **Modellannahme des
Assistenten**, kein Marktpreis. Verwertbar ist ausschliesslich die Tatsache, dass zum
**15.06.2026** eine Produktueberlegung zu einem gestuften Bewertungsangebot lief — das
gehoert allenfalls in den Service-Katalog, nicht in die Wissensbasis.

---

## Zusammenfassung der Ziel-Zuordnung (Vorschlag an den Hauptlauf)

**Neue Wiki-Artikel (empfohlen):**
1. `wiki/baupreisindex.md` — Basis, Reihenlogik, Revisionsrhythmus (5 Jahre, Endziffer 0/5),
   Regionsebenen, Preis- gegen Kostenindex, PKI-Abgrenzung. Quellen: Kap. 1.1, 1.2, 1.4.
2. `wiki/aufindexierung.md` — die BFS-Rechenwege (Indexierung von Betraegen,
   Veraenderungsrate, Umbasierung), die Formel, die drei Fallen (falsche Basis, falsche
   Region, falsche Objektart) und die **Honorar-Regel**: BKP 29 nie mit BKP 2 indexieren.
   Quellen: Kap. 1.3, 1.4, 1.5, 3.3.
3. `wiki/raumnomenklaturen.md` — 7 Grossregionen gegen 8 Wuest-Monitoring-Regionen gegen
   106 MS-Regionen (seit 2019 durch Arbeitsmarktregionen abgeloest). Quelle: Kap. 1.8.
4. `wiki/kostenkennwerte-referenzobjekte.md` — die Objekttabelle aus Kap. 2.1/2.2 als
   wachsende Referenzsammlung, je Objekt mit Preisstand und Grossregion.
5. `wiki/grobkosten-doktrin.md` — die acht Deklarationspflichten aus Kap. 2.5, mit dem
   Triplexhaus-Blatt als **Negativ-Beispiel** fuer die Pruefliste.

**Bestehende Artikel ergaenzen:** Mietpreisquellen (Kap. 3.5 OGD-Download),
Renditebenchmarks (Kap. 3.1 Bruttoanfangsrendite-Quantile 2019).

**Nach `QUESTIONS.md`:**
- Ist die BFS-Reihe per April 2026 auf **Oktober 2025 = 100** umbasiert? Beleg beim BFS
  nachziehen (bap@bfs.admin.ch, +41 58 463 63 06) und beide Basen im Wiki fuehren.
- Bueromietzins Stadt Zuerich: die BFS-Anfrage vom 04.12.2024 blieb unbeantwortet —
  Alternativquelle suchen (Wuest Partner Bueromarkt, SVIT, Immobilienberichte).
- Beziehen sich die UBS-Fact-Sheets auf die MS-Regionen 2005 oder auf die
  Arbeitsmarktregionen ab 2019?
- Stimmt die CRB-Aussage, der Preisueberwacher habe Kostenkennzahl-Buecher untersagt?
- Preisstand der Lignum-Kennwerte und der Healthcare-Sammelwerte (Kap. 2.1 J) klaeren.

**Handlungsbedarf ausserhalb der KB:**
- **`werk-material.online/_Login.docx` enthaelt ein Klartext-Kennwort** → in den
  Schluesselbund uebertragen, Datei loeschen.
- ETH-Tragwerksmodell-PDFs aus «IMMO - 04 Marktpreise» in eine Fachwissens-Ablage
  verschieben (Kap. 2.7).
- OneDrive-Konfliktkopien («-MacBook Pro von Raphael») bereinigen.
- Das Triplexhaus-Grobkostenblatt vor jeder Wiederverwendung bereinigen (14 Punkte,
  Kap. 2.5).
