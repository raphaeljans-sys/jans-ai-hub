# Seiten-Inventur — Lignum Lignatec 17/2005 «Bauten in Holz – Brandschutz-Anforderungen»

Erstellt: 01.08.2026 (Normen-Training Run 41, MacBook Pro) · Methodik-Pflicht 6 des
`training/PROGRAMM.md` («Abdeckung messen, nicht nur Behauptungen prüfen»).
Schwesterdatei: `training/l41-seiteninventur.md` (Lignum 4.1).

**Zweck.** Diese Datei ist der Beleg dafür, WAS in der Quelle steht — unabhängig davon, was
das Destillat behauptet. Sie ist der Bestand, gegen den jede spätere Verifikationsrunde
gediffed wird, und sie macht solche Runden billig, weil die Quelle nicht erneut aufgenommen
werden muss.

## Aufnahme-Methode

- Rendering: `pdftoppm -r 300 -png` auf das Original, Präfix `/tmp/lignatec-r10/blatt`
  (normspezifisches Präfix, Methodik-Pflicht 5).
- Split der A3-Bögen (4961 × 3508 px) in Halbseiten `halb-NNL` / `halb-NNR`.
- **Seitenzahlen am Seitenrand ABGELESEN, nicht aus der Blattnummer berechnet.** Die
  Seitenzahl steht in dieser Publikation in der Kopfzeile oben rechts (Muster
  «`<Zahl>` Lignatec / Brandschutz-Anforderungen»), nicht in der Fusszeile.
- Aufnahme durch drei parallele Agenten (S. 2-9 · S. 10-17 · S. 18-24), Auffälligkeiten
  vom Hauptprozess am eigenen Rendering nachgeprüft.

## Blatt-zu-Seiten-Zuordnung (verbindlich, abgelesen)

| Blatt | linke Halbseite | rechte Halbseite |
|---|---|---|
| 01 | S. 2 | S. 3 |
| 02 | S. 4 | S. 5 |
| 03 | S. 6 | S. 7 |
| 04 | S. 8 | S. 9 |
| 05 | S. 10 | S. 11 |
| 06 | S. 12 | S. 13 |
| 07 | S. 14 | S. 15 |
| 08 | S. 16 | S. 17 |
| 09 | S. 18 | S. 19 |
| 10 | S. 20 | S. 21 |
| 11 | S. 22 | S. 23 |
| 12 | S. 24 | **Titelblatt (Druckseite 1, unpaginiert)** |

⚠ **Blatt 12 bricht die Regel «L = 2n, R = 2n+1».** Es ist der äusserste Bogen der
Klammerheftung und trägt deshalb `S. 24 | S. 1`. Wer die Regel fortschreibt, hält das
Titelblatt für einen Rückumschlag. Zwei unabhängige Aufnahmen sind darüber gestolpert;
der Hauptprozess hat `halb-12R` selbst gelesen: grosses Band «Lignum-Dokumentation
Brandschutz», Wortmarke «Lignatec», Titel «Bauten in Holz – Brandschutz-Anforderungen»,
Axonometrie auf Holzbohle, Logo «SIA Lignum» — das ist das Titelblatt. Bestätigt durch den
Bildnachweis im Impressum (S. 24): «Titelbild: Lignum».

**Damit ist die Quelle vollständig:** Druckseiten 1-24, lückenlos, keine fehlende Seite.
Die Frontmatter-Angabe des Destillats («gedruckte Seiten 2-24 plus Titelblatt») trifft zu.

## Nummerngruppen der Quelle (Bestand, nicht Behauptung)

- **Figuren:** nur **Figur 1** (S. 2).
- **Tabellen:** **Tabelle 2, 3, 4, 5**. Eine **Tabelle 1 existiert nicht** — die Nummerierung
  springt von «Figur 1» auf «Tabelle 2». Vom Hauptprozess an S. 3 und S. 4 selbst geprüft:
  S. 3 trägt Ziff. 1.1 und 1.2 als reinen Fliesstext, S. 4 beginnt mit Ziff. 1.3 und direkt
  darunter Tabelle 2. Das ist eine Eigenheit der Quelle, **kein Destillat-Befund**.
- **Abbildungen:** die acht Übersichts-Axonometrien in Kapitel 5 tragen **keine Nummern**.
  Sie sind ausschliesslich über Kapitel und Seite adressierbar.
- **Fussnoten:** Literaturverweise `[1]`-`[4]`; tabelleninterne Ziffernmarken ①-⑥;
  Nutzungsmarken `[a]` `[b]` `[c]`; Sternmarken `*` `**` `***` in Kapitel 5.

## Kapitelstruktur mit Seitenlage

| Kapitel | Titel | Seiten |
|---|---|---|
| — | Titelblatt | 1 |
| — | Inhalt · Anerkennungsvermerk TKB-VKF · Figur 1 | 2 |
| 1 | Grundlagen | 3-6 |
| 1.1 | Zweck und Inhalt der Publikation | 3 |
| 1.2 | Klassierung von Bauteilen nach EN | 3-4 |
| 1.3 | Bezeichnungen von Bauteilen und Feuerwiderstandsklassen | 4-5 |
| 1.4 | Geschosse und Nutzungen (1.4.1 Geschosse/Geschossfläche · 1.4.2 Nutzungen) | 6 |
| 1.5 | Brandschutzkonzepte (1.5.1 Standardkonzept · 1.5.2 Objektbezogenes Konzept) | 6 |
| 2 | Tragwerke und Brandabschnitte | 7-11 |
| 2.1 | Tragwerke | 7 |
| 2.2 | Brandabschnitte (2.2.1 Begriffe · 2.2.2 Allgemeine Anforderungen) | 7 |
| 2.2.3 | Anforderungen für bestimmte Nutzungen | 10 |
| 2.3 | Schutzabstände (2.3.1 Allgemeine Anforderungen) | 10-11 |
| 2.3.2 | Anforderungen für bestimmte Nutzungen | 11 |
| 3 | Flucht- und Rettungswege | 11 |
| 3.1 | Allgemeine Angaben (3.1.1 Treppenanlagen · 3.1.2 Korridore · 3.1.3 Ausbau) | 11 |
| 4 | Verwendung brennbarer Baustoffe | 14 |
| 4.1 | Allgemeine Angaben zur Verwendung brennbarer Baustoffe | 14 |
| 5 | Übersichtszeichnungen | 16-23 |
| 5.1 | Bauten mit 2 Geschossen (Geschossfläche A ≤ 600 m²) | 16-17 |
| 5.2 | Bauten mit 3 Geschossen | 18-19 |
| 5.3 | Bauten mit 4 Geschossen | 20-21 |
| 5.4 | Bauten mit 5 und 6 Geschossen | 22-23 |
| 6 | Literatur · Impressum | 24 |

**Fliesstext-Seiten (Kapitel 1-4):** S. 3, 6, 7, 10, 11, 14. Zusätzlich Fliesstext-Anteile
auf S. 4 (Einleitung zu Tabelle 2, Ziff. 1.3).
**Reine Tabellenseiten:** S. 5 (Fortsetzung Tab. 2), 8, 9, 12, 13, 15.
**Reine Zeichnungsseiten:** S. 16-23.

## Element-Inventur je Seite

### S. 1 — Titelblatt
Band «Lignum-Dokumentation Brandschutz» · Wortmarke «Lignatec» · Titel · unbeschriftete
Axonometrie eines sechsgeschossigen Holzbaus auf Holzbohle · Logo «SIA Lignum». Kein Text.

### S. 2 — Inhalt
- Inhaltsverzeichnis mit Seitenverweisen (3 · 7 · 11 · 14 · 16 · 24). **Achtung:** die
  Tabellen sind dort unter der Seite ihres KAPITELS geführt (Tab. 4 unter «Seite 11»,
  Tab. 5 unter «Seite 14»), nicht unter ihrer eigenen Seite (12/13 bzw. 15).
- Anerkennungsvermerk TKB-VKF (Randspalte, fett): geprüft auf materielle Übereinstimmung
  mit den Schweizerischen Brandschutzvorschriften VKF, Ausgabe 2003, gültig seit 1.1.2005,
  anerkannt als «Stand der Technik».
- **Figur 1**: Übersicht/Illustration der tragenden und/oder brandabschnittsbildenden
  Funktion linearer und flächiger Bauteile. Tabellarisch: Bezeichnung · Brandeinwirkung ·
  Lineare Bauteile (Stütze/Träger) · Flächige Bauteile (Wand/Decke); 3 Zeilen R · EI · REI.
- Verweise: VKF-Brandschutzvorschriften [1]; IVTH als zuständiges Organ.

### S. 3 — Ziff. 1.1, 1.2
- 1.1 Zweck und Inhalt (vollständig auf dieser Seite, zweispaltig).
- 1.2 Klassierung nach EN, Zwischentitel «Allgemeines» und «Tragende und/oder
  brandabschnittsbildende Bauteile».
- Markenliste links: R tt (Tragfähigkeit/Résistance) · E tt (Raumabschluss/Etanchéité) ·
  I tt (Temperaturanstieg/Isolation).
- Markenliste rechts: R (tragend, nicht brandabschnittsbildend, Brandeinwirkung mehrseitig) ·
  EI (nicht tragend, brandabschnittsbildend, einseitig) · REI (tragend und
  brandabschnittsbildend, einseitig); dazu die Modalsätze «Lineare Bauteile sind in der
  Regel …», «Decken sind in der Regel tragend und meistens brandabschnittsbildend».
- Verweise: VKF [1], IVTH. **Trotz Kapiteltitel «nach EN» keine konkrete EN-Nummer.**

### S. 4 — Ziff. 1.3, Tabelle 2 (Teil 1)
- Einleitungstext zu Tabelle 2 mit dem **Geltungsbereich-Satz**: die Angaben gelten nur für
  Bauteile mit tragender und/oder brandabschnittsbildender Funktion; Anforderungen an
  Oberfläche, Verkleidung und Schichtaufbau nach der VKF-Richtlinie «Verwendung brennbarer
  Baustoffe» sind zusätzlich zu beachten (Verweis Kapitel 4).
- Tabellentitel in der Randspalte (nicht über der Tabelle): «Tabelle 2: Anforderungen an den
  Aufbau, die Materialisierung und die Schichtigkeit der Bauteile.»
- Tabelle 2, Spalten Bezeichnung · Beschrieb · Zeichnung (zusammengesetzter Querschnitt);
  Zeilen 1-5: Keine Anforderung · Mindestkantenabmessung · nicht brennbar ·
  R30/EI30/REI30 (F30 bb ①) · R30(nbb)/EI30(nbb)/REI30(nbb) (F30 ①).
- Verweise: SIA/Lignum-Dokumentation 83, Kapitel 3.4 [2]; BKZ mindestens 6q.3.

### S. 5 — Tabelle 2 (Teil 2)
- Zeilen 6-10: R60/EI60/REI60 (F60 bb ①) · R60/EI30(nbb) bzw. EI60/EI30(nbb) bzw.
  REI60/EI30(nbb) · R60(nbb)/EI60(nbb)/REI60(nbb) (F60 ①) · EI30-nbb/REI30-nbb ·
  EI60-EI30(nbb)/REI60-EI30(nbb). **Tabelle 2 hat damit insgesamt 10 Datenzeilen.**
- Fussnote ①: Klassierung nach VKF; Zuordnung zur EN-Klassierung über die VKF-Zuordnungstabelle.
- **Legende (6 Kategorien):** Vollholz · Baustoff brennbar · Baustoff nicht brennbar ·
  Beton · Dämmstoff brennbar · Dämmstoff nicht brennbar.
  Messhinweis aus Run 40: Vollholz, Baustoff brennbar und Dämmstoff brennbar sind farblich
  praktisch identisch (~233-243) und trennen sich **nur über das Linienmuster** — eine reine
  Farbklassierung verwechselt sie.

### S. 6 — Ziff. 1.4, 1.5
- 1.4.1 Geschosse und Geschossfläche.
- 1.4.2 Nutzungen mit den Definitionsblöcken: Beherbergungsbetriebe (zwei Kategorien:
  ≥10 auf fremde Hilfe angewiesene Personen · ≥15 nicht auf fremde Hilfe angewiesene
  Personen) · Verkaufsgeschäfte (> 1200 m² Verkaufsfläche) · Bauten mit Räumen mit grosser
  Personenbelegung (> 100 Personen; Verkaufsgeschäfte < 1200 m² sofern > 100 Personen) ·
  Parkhäuser und Einstellräume (Grundfläche > 150 m²) · Hochhäuser (oberstes Geschoss
  > 22 m über Terrain bzw. > 25 m Traufhöhe, bzw. nach Baugesetzgebung).
- 1.5.1 Standardkonzept mit den Zwischentiteln «Bauliches Brandschutzkonzept» und
  «Sprinklerkonzept».
- 1.5.2 Objektbezogenes Konzept, zwei Fälle: alternative Massnahmen bei gleichwertiger
  Zielerreichung (Entscheid der Brandschutzbehörde) · Erweiterung/Reduktion bei
  abweichender Brandgefahr.
- Verweis: Art. 11 der Brandschutznorm [1] (zweimal genannt).

### S. 7 — Ziff. 2, 2.1, 2.2, 2.2.1, 2.2.2
- 2.1 Tragwerke: Markenliste a/b/c zu den Bemessungszielen (Standsicherheit unter
  Brandbeanspruchung · kein vorzeitiges Versagen mit Einsturzfolge · keine
  unverhältnismässigen Schäden in angrenzenden Brandabschnitten); zweite Markenliste a/b/c
  zu den für den Feuerwiderstand massgebenden Grössen (Geschosszahl · immobile und mobile
  Brandbelastung · Bauart, Lage, Ausdehnung, Nutzung).
- 2.2.1 Begriffe, vier Definitionsblöcke: Brandabschnitte · Brandabschnittsbildende
  Bauteile · Brandmauern · Brandabschnittsbildende Wände und Decken.
- 2.2.2 Allgemeine Anforderungen, Zwischentitel «Brandabschnittsbildung» mit Markenliste
  a-f (aneinandergebaute/ausgedehnte Bauten · einzelne Geschosse · Korridore und
  Treppenanlagen als Flucht-/Rettungswege · Vertikalverbindungen wie Aufzugs-, Lüftungs-,
  Installations-, Abwurfschächte · technische Räume · Räume unterschiedlicher Nutzung);
  Zwischentitel «Feuerwiderstand» mit Markenliste a-e (Art des Bauteils · Feuerwiderstand
  der Tragwerke · Geschosszahl · Brandbelastung · Bauart/Lage/Ausdehnung/Nutzung).
- Querverweise auf Tabelle 3 und Tabelle 4.

### S. 8-9 — Tabelle 3
«Tragwerke, brandabschnittsbildende Wände und Decken — Anforderungen an den Feuerwiderstand».
- Spaltengruppen: «1 und oberstes Geschoss» · «2 bis 600 m² bb ⑤ / bis 1200 m² nbb ⑤» ·
  «2 über 600 m² bb ⑤ / über 1200 m² nbb ⑤» (S. 8) · «3» · «4» · «5-6» · «7-8 ohne
  Hochhäuser» (S. 9). **Sieben Geschossgruppen**, je Unterspalten «Tragwerk» und
  «Brandabschnitt».
- 10 Nutzungskategorien, je Unterzeilen «Baulich»/«Sprinkler» — ausser Wohnbauten EFH/REFH
  (nur «Baulich»): Wohnbauten MFH/Bürobauten/Schulbauten · Industrie-/Gewerbebauten
  q ≤ 1000 MJ/m² · Industrie-/Gewerbebauten q > 1000 MJ/m² **und Bauten mit unbekannter
  Nutzung** · Beherbergungsbetriebe [a] · Beherbergungsbetriebe [b] · Bauten mit Räumen mit
  grosser Personenbelegung und Verkaufsgeschäfte [c] · Parkhäuser und Einstellräume ·
  ‹Verkaufsgeschäfte› (≤ 1200 m² und ≤ 100 P) · Landwirtschaftliche Bauten ·
  Wohnbauten EFH/REFH. **19 Datenzeilen.**
- Fussnoten [a] [b] [c] und ①-⑤ (Brandmauer bei REFH · nicht brennbare Dämmschichten bei
  brennbaren Tragwerken · Fachingenieur-/QS-Pflicht bei 5-/6-geschossigen Holzbauten [4] ·
  möglicher Verzicht auf Brandmeldeanlage · Bruttogeschossflächen-Grenzen bb/nbb).
- **Eigene Farblegende (S. 9):** Nutzungen gemäss Brandschutzrichtlinien VKF (orange) ·
  Weitere Nutzungen (gelb) · Holzbauteile (weiss) · Holzbauteile beidseitig nicht brennbar
  verkleidet (grau) · Keine Holzbauweise als Standardkonzept (blau).
- Glossar unter der Tabelle: Keine Anforderung · Mindestkantenabmessung · R30 bzw. EI30 ·
  EI30(nbb) · R60 bzw. EI60 · R60/EI30(nbb) bzw. EI60/EI30(nbb) · R60(nbb) bzw. EI60(nbb) ·
  REI90 · R90(nbb) bzw. EI90(nbb).

### S. 10 — Ziff. 2.2.3, 2.3, 2.3.1
- 2.2.3 mit den Nutzungsblöcken: Räume und Brandabschnitte mit erhöhten Anforderungen ·
  Wohnbauten · Büro-, Gewerbe- und Industriebauten · Schulbauten · Landwirtschaftliche
  Bauten · Beherbergungsbetriebe · Verkaufsgeschäfte · Bauten mit Räumen mit grosser
  Personenbelegung · Parkhäuser und Einstellräume.
- 2.3.1 Schutzabstände, Markenliste a/b/c: 10 m / 7.5 m / 5 m je nach Brennbarkeit der
  Aussenwandschicht.
- Verweise: Tabelle 3; Lignatec «Bauteile in Holz – Brandmauern REI90» [3].

### S. 11 — Ziff. 2.3.2, 3, 3.1
- 2.3.2 mit den Blöcken Einfamilienhäuser (reduzierte Schutzabstände a/b/c: 7 m / 6 m /
  4 m) · Nebenbauten · Landwirtschaftliche Bauten.
- 3.1.1 Treppenanlagen · 3.1.2 Korridore mit Markenliste a (Bauliches Brandschutzkonzept:
  bis 3 Geschosse EI30 · 4 Geschosse EI60 + EI30(nbb) · 5-6 Geschosse EI60 mit Wärmedämmung)
  und b (Sprinklerkonzept: bis 4 Geschosse EI30 · 5-6 Geschosse EI60) · 3.1.3 Ausbau.
- Verweise: Brandschutzrichtlinie [1]; Tabelle 4.

### S. 12-13 — Tabelle 4
«Fluchtwege: Treppenhaus und Korridor — Anforderungen an den Feuerwiderstand».
- Spaltengruppen: «1» · «2 bis 600 m² bb» · «2 über 600 m² bb» (S. 12) · «3» · «4» · «5-6» ·
  «7-8 ohne Hochhäuser» (S. 13). **Sieben Geschossgruppen**, je Unterspalten «Treppenhaus»
  und «Korridor».
- Dieselben 10 Nutzungskategorien wie Tabelle 3, je Baulich/Sprinkler.
- Fussnoten [a] [b] [c] und ①-⑥.
- **Eigene Farblegende (S. 13), NICHT deckungsgleich mit der von Tabelle 3 oder 5:**
  Nutzungen gemäss Brandschutzrichtlinien VKF (orange) · Weitere Nutzungen (gelb) ·
  Holzbauteile im Korridor nicht brennbar verkleidet (hellgrau) · Holzbauteile beidseitig
  nicht brennbar verkleidet (dunkelgrau) · Keine Holzbauteile als Standardkonzept (blau).
  **Die zwei Grautöne sind die grafische Kodierung der Schrägstrich-/Bindestrich-Notation**
  (Befund Run 38).
- Glossar unter der Tabelle: Keine Anforderung · EI30(nbb) · REI60/EI30(nbb) bzw.
  EI60/EI30(nbb) · REI60(nbb) bzw. EI60(nbb) · REI90(nbb) bzw. EI90(nbb) · EI30-nbb ·
  EI60-EI30(nbb).

### S. 14 — Ziff. 4, 4.1
- Markenliste a-e zu den Kriterien der zulässigen Verwendung brennbarer Baustoffe:
  Brand-/Qualmverhalten, brennendes Abtropfen/Abfallen, Wärmefreisetzung, gefährliche
  Brandgase · Art und Umfang der Verwendung · Personenbelegung · Geschosszahl · Bauart,
  Lage, Ausdehnung und Nutzung.
- Hinweis, dass Tabelle 5 ein **unverbindlicher Auszug** ist und die Brandschutzrichtlinie
  VKF «Verwendung brennbarer Baustoffe» [1] verbindlich bleibt.
- Fussnoten ①-⑥, darunter ⑥ mit dem Massnahmenkatalog für Holz-Aussenwandverkleidungen
  (öffnungslose Fassade · feuerwiderstandsfähige Aussenwand · Hintermauerung · Begrenzung
  der Holzflächen · Sprinklervollschutz · Massnahmen im Hinterlüftungsbereich · Schürzen)
  sowie ⑤ mit den Raumgrössen > 2400 m² / 1200 m².

### S. 15 — Tabelle 5
«Sichtbare Oberflächen und Dämmschichten — Anforderungen an das Brandverhalten».
- Zwei Hauptblöcke «1 bis 3» und «4 bis 8 (ohne Hochhäuser)» Geschosse, je unterteilt in
  «Sichtbare Oberfläche» (Räume allgemein · Fluchtwege Korridor/Treppenhaus) und
  «Dämmschicht/Zwischenschicht» (Flachdach · Steildach · Aussenwand · Innenwand · Decke),
  rund 13 Spalten je Block.
- Dieselben 10 Nutzungskategorien wie Tabelle 3/4.
- **Eigene Farblegende, wieder abweichend:** orange · gelb · weiss «Anwendung von Holz mit
  BKZ ≥ 4.2» · hellgrau «detaillierte Anforderungen gemäss Brandschutzrichtlinie VKF, nur
  bedingt zulässig» · blau «Keine Anwendung von Holz im Rahmen eines Standardkonzeptes».
  **«Grau» bedeutet hier etwas anderes als in Tabelle 3/4** (Befund Run 38).
- Fussnoten [a] [b] [c]; Ziffernmarken ②③④⑤ in den Zellen (Erläuterung auf S. 14).

### S. 16-23 — Kapitel 5, acht Axonometrien
**Aufbau je Geschoss-Kapitel identisch:** linke Seite = Nutzungs-Geltungsbereich +
Axonometrie mit **Tragwerk-Callouts** + gelber Kasten «Feuerwiderstand des Tragwerkes»;
rechte Seite = Axonometrie mit **Brandabschnitts-Callouts** + gelber Kasten «Feuerwiderstand
der Brandabschnitte» (mit Verweis auf Kapitel 2.2.3). Beide Seiten tragen je zwei
Legendenblöcke: «Feuerwiderstand der Bauteile (Beschrieb in Kapitel 1.3)» und «BKZ der
Verkleidung bzw. Bauteiloberfläche» (BKZ 4.2 brennbar / BKZ 6q.3 nicht brennbar).

**Damit sind es 4 Doppelseiten × 2 Zeichnungen = 8 Axonometrien.** Die Zahl ist damit
belegt, nicht geschätzt. Keine trägt eine Abbildungsnummer.

| Kapitel | Seiten | Tragwerk-Callouts (linke Seite) | Brandabschnitts-Callouts (rechte Seite) |
|---|---|---|---|
| 5.1 (2 Gesch.) | 16/17 | Tragwerk oberstes Gesch. «Keine Anforderung» · Tragwerk ohne oberstes «Mindestkantenabmessung» · tragende Aussenwand ohne oberstes «Mindestkantenabmessung» · Treppenlauf und Podest «nicht brennbar» · nicht tragende Aussenwand alle Gesch. «Keine Anforderung» | Brandabschnittsbildende Wand alle Gesch. «EI30» · Decke = Dach über Korridor/Treppenhaus «Keine Anforderung» · Treppenhauswand alle Gesch. «REI60/EI30(nbb)» · Korridorwand und -decke alle Gesch. «EI30-nbb» · Brandabschnittsbildende Decke alle Gesch. «EI30» |
| 5.2 (3 Gesch.) | 18/19 | wie 5.1, aber Tragwerk und tragende Aussenwand ohne oberstes Geschoss «R30 (baulich) / Mindestkantenabmessung (Sprinkler)» | identisch zu 5.1 |
| 5.3 (4 Gesch.) | 20/21 | Tragwerk **und** nicht tragende Aussenwand oberstes Gesch. «Keine Anforderung» · nicht tragende Aussenwand ohne oberstes «EI30 oder nicht brennbar» · Tragwerk ohne oberstes «R60 / R30» · tragende Aussenwand ohne oberstes «R60 / R30» | Brandabschnittsbildende Wand oberstes Gesch. «EI30» · Korridorwand oberstes Gesch. «EI30-nbb» · Decke = Dach «Keine Anforderung» · Treppenhauswand alle Gesch. «REI60(nbb)» · Korridorwand/-decke ohne oberstes «EI60-EI30(nbb) / EI30-nbb» · Brandabschnittsbildende Wand und Decke ohne oberstes «EI60 / EI30» |
| 5.4 (5-6 Gesch.) | 22/23 | wie 5.3, aber Tragwerk und tragende Aussenwand ohne oberstes «R60/EI30(nbb) / R60» | wie 5.3, aber Korridorwand/-decke ohne oberstes «EI60/EI30(nbb) / EI60-EI30(nbb)» und Brandabschnittsbildende Wand und Decke ohne oberstes «EI60/EI30(nbb) / EI60» |

**Geltungsbereiche der Kapitel 5.x (Nutzungslisten, Bullet-Listen):**
- 5.2, 5.3: «Nutzungen gemäss Brandschutzrichtlinien VKF» (Wohnbauten MFH · Bürobauten ·
  Schulbauten · Industrie-/Gewerbebauten q ≤ 1000 MJ/m² · Parkhäuser · Einstellräume) und
  «Weitere Nutzungen» (‹Verkaufsgeschäfte› ≤ 1200 m² und ≤ 100 P · Landwirtschaftliche Bauten).
- 5.2 zusätzlich: «Diese Anforderungen gelten auch für Bauten mit 2 Geschossen und einer
  überbauten Fläche von mehr als 600 m².»
- 5.2, 5.3, 5.4: «Beträgt die überbaute Fläche mehr als 600 m², sind mindestens zwei
  Treppenanlagen erforderlich.»
- 5.4: nur Wohnbauten MFH · Bürobauten · Schulbauten; **bei Sprinklervollschutz** gelten die
  Sprinkler-Anforderungen zusätzlich für Industrie-/Gewerbebauten q ≤ 1000 MJ/m² ·
  Parkhäuser · Einstellräume.
- S. 23, freistehender Textblock: fünf- und sechsgeschossige Bauten mit Holz-Tragwerken sind
  durch einen anerkannten Fachingenieur zu begleiten; vor Baubeginn muss ein
  Brandschutzkonzept vorliegen; das ausführende Unternehmen muss über ein
  Qualitätssicherungssystem verfügen [4].
- Sternfussnoten: `*` brennbare Bodenbeläge nach VKF-Richtlinie «Verwendung brennbarer
  Baustoffe» Tab. 6.2 bzw. SIA/Lignum-Dok. 83 Kap. 4.6 · `**` Schichtaufbauten der
  Aussenwand und Holz-Aussenwandverkleidungen nach derselben Richtlinie Tab. 4.2 ·
  `***` in Bauten mit brennbaren Tragwerken müssen die Dämmschichten in Holzbauteilen nicht
  brennbar sein.
- **Legenden sind auch innerhalb Kapitel 5 nicht deckungsgleich** (S. 23 führt sieben
  Einträge, S. 21 sechs) — Befund Run 40.

### S. 24 — Kapitel 6 Literatur + Impressum
**Literaturverzeichnis vollständig:**
- [1] Schweizerische Brandschutzvorschriften VKF, 2003, Vereinigung Kantonaler
  Feuerversicherungen, bsvonline.vkf.ch — insbesondere Brandschutznorm und die
  Brandschutzrichtlinien Baustoffe und Bauteile · Verwendung brennbarer Baustoffe ·
  Tragwerke · Schutzabstände – Brandabschnitte · Flucht- und Rettungswege.
- [2] SIA/Lignum-Dokumentation 83, 1997: Brandschutz im Holzbau, SIA/Lignum, Zürich.
- [3] Lignatec, Lignum-Dokumentation Brandschutz, 2005, Lignum, Zürich — insbesondere
  «Bauteile in Holz – Feuerwiderstandsdauer 30 und 60 Minuten» · «Bauteile in Holz –
  Brandmauern REI90» (Erscheinen Herbst 2005) · «Fassaden in Holz – Brandschutztechnische
  Konstruktionen» (Erscheinen Frühjahr 2006).
- [4] Bauen mit Holz – Qualitätssicherung und Brandschutz, 2005, Lignum, Zürich.

**Fassungs-Belege (Impressum):** Lignatec 17/2005 · erschienen Juni 2005 · ISSN 1421-0320 ·
Herausgeber Lignum, Holzwirtschaft Schweiz, Zürich (Christoph Starck, Direktor) ·
verantwortlich Roland Brunner · technische Bearbeitung Makiol + Wiederkehr, Beinwil am See ·
Druck Kalt-Zehnder-Druck AG, Zug · Auflage deutsch 10 000 Exemplare · Copyright bei Lignum,
Vervielfältigung nur mit schriftlicher Genehmigung · Haftungsausschluss · Anerkennungsvermerk
TKB-VKF (VKF-Ausgabe 2003, gültig seit 1.1.2005).

**Projekt- und Gremienkontext:** Gesamtprojekt «Brandsicherheit und Holzbau» der
schweizerischen Wald- und Holzwirtschaft, sieben Projektsegmente, rund 30 Teilprojekte,
Gesamtleitung Lignum, Laufzeit 2001-2007; diese Ausgabe stammt aus Projekt A1
«Brandschutzvorschriften» des Segments A «Grundlagen und Gesetzgebung». Fachausschuss
«Brandschutz im Holzbau, Lignum, VKF, SIA» mit zehn namentlich genannten Mitgliedern
(Vorsitz Josef Kolb). Unterstützung durch holz 21, Förderprogramm des BUWAL.

## Ertrag dieser Inventur

**Abdeckung.** Die Quelle umfasst 24 Druckseiten, davon 6 Fliesstext-Seiten (Kap. 1-4),
6 Tabellenseiten (Tab. 2-5), 8 Zeichnungsseiten (Kap. 5), 1 Inhaltsseite, 1 Literatur-/
Impressumsseite, 1 Titelblatt, 1 Seite mit gemischtem Anteil (S. 4). Alle sind aufgenommen.

**Was diese Inventur allein NICHT leistet.** Sie stellt den Bestand fest, nicht die
Richtigkeit des Destillats. Der Diff des Fliesstextes Kapitel 1-4 gegen das Destillat läuft
als eigener Schritt (Run 41, siehe Lauf-Report).

**Strukturelle Beobachtungen, die keine Destillat-Befunde sind, aber jede spätere Runde
betreffen:**
1. Blatt 12 trägt `24 | 1`, nicht `24 | 25`. Wer die Halbseiten-Regel fortschreibt, verliert
   das Titelblatt.
2. Es gibt keine Tabelle 1.
3. Die Tabellen sind im Inhaltsverzeichnis unter der Seite ihres Kapitels geführt, nicht
   unter ihrer eigenen. Wer dem Inhaltsverzeichnis folgt, sucht Tab. 5 auf S. 14 statt 15.
4. Die drei Kreuztabellen führen drei verschiedene Legenden, und auch innerhalb Kapitel 5
   weichen die Legenden voneinander ab. Jede Legende ist einzeln am Original zu messen.
5. Keine der acht Axonometrien trägt eine Nummer; sie sind nur über Kapitel und Seite
   adressierbar.
