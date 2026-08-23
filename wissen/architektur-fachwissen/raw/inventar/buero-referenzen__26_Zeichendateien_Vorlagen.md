---
title: "Inventar buero-referenzen — 26_Zeichendateien_Vorlagen"
korpus: buero-referenzen
sektion: /Volumes/daten/04_Buero/10_Referenzenbibliothek/26_Zeichendateien_Vorlagen
last_updated: 2026-08-23
status: established
---

# Inventar — 26_Zeichendateien_Vorlagen

## Kurzbefund

Die Sektion ist eine **CAD-Zeichnungsbibliothek**, kein Textkorpus: 1'918 Dateien in
14 Gruppen, überwiegend Symbol- und Vorlagendateien für Vectorworks/MiniCAD und AutoCAD,
dazu eine ArchiCAD-Bürovorlage. Formatverteilung: 676 DWG, 525 HTML, 387 GIF, 152 Dateien
ohne Endung (klassische Mac-MiniCAD-Dateien), 63 MCD, 48 MPC, 46 VSM, 4 PDF, 3 PSD, je
1 PLN/INDD/DXF, Rest Einzelstücke.

Jahrgang: **1994 bis 2010**, mit klarem Schwerpunkt in den Neunzigern. Nach Änderungsdatum
liegen 1'827 der 1'918 Dateien (95 %) im Fenster 1994 bis 1999; die jüngsten Stände sind
2010 (Kotenbeschriftung, Möblierung). Die Sektion ist also ein **eingefrorenes Archiv aus
der Vectorworks-Ära des Büros**, das mit dem Wechsel auf ArchiCAD nicht mehr fortgeschrieben
wurde. Der letzte Ordner-Touch stammt aus 2018 und ist reine Ablagepflege.

Wirklich gelesen wurden: die drei textführenden PDF (`pdftotext -layout`), Metadaten via
`pdfinfo`, eine HTML-Stichprobe aus der Vectorworks-Hilfe (`textutil`), sowie
Zeichenketten-Extraktion (`strings`) aus acht Binärdateien — der ArchiCAD-Bürovorlage, den
beiden Plankopf-Dateien, der Massstabssymbol-Datei, der Kotenbeschriftung, der
Möblierungsdatei und je einer DWG aus vier Fachgruppen zur Bestimmung von
Formatversion und Layernamen. PSD-, INDD- und die übrigen DWG-Dateien wurden **nicht**
geöffnet; Aussagen dazu stützen sich auf Dateikopf, Ordnerlogik und Dateinamen und sind
unten als solche gekennzeichnet.

Datenschutz: **nichts Heikles gefunden.** Keine Verträge, Bewerbungen, Personaldossiers,
Adress- oder Lohndaten. Die Bibliotheken tragen Herkunftsvermerke fremder Büros
(Kerez, «H und P», «2CS», «MB») — das ist Provenienz einer Symbolsammlung, keine
Personendaten. Die Sanitär-PDF trägt im Autorenfeld den Namen des Herkunftsbüros; der
Inhalt selbst ist reine Apparategeometrie.

## Triage

| Datei / Gruppe | Stufe | Begründung |
|---|---|---|
| `Massreferenzen/PDF/SanitaerApparate.pdf` + Quelldatei `Massreferenzen/SanitärApparate` (MiniCAD) | **P1** | Einziges Dokument der Sektion mit direkt verwertbarem Fachinhalt: bemasste Sanitärapparate in Auf- und Grundriss, mit Fabrikatbezeichnung, Beckenmass und **Montagehöhen als Koten**. Gelesen. Siehe Befunde unten. |
| `02_ArchiCAD/Master07_07_22.pln` (ArchiCAD-Bürovorlage 2007) | P2 | Trägt die Ebenen- und Listenstruktur des Büros. Inhalt über `strings` belegt, Datei selbst nicht geöffnet (ArchiCAD 11). Der Befund ist destillierbar, die Datei nicht mehr produktiv. |
| `Vorlagen Plankoepfe/` (Plankopf 1:50, Plankopf-Varianten) | P2 | Plankopf-Layoutstandard mit belegter Schriftfamilie und Klassenbenennung. Als Referenz für den heutigen JANS-Plankopf lesenswert, als Datei überholt. |
| `Symbole Vectorworks/Bibliothek Kerez/Massstabssymbole/Massstabssymbole` | P2 | Belegt eine massstabsgestaffelte Symbollogik (drei Massstabsgruppen). Methodisch wertvoll, technisch veraltet. |
| `Symbole Vectorworks/Bibliothek Kerez/Nasszellen/` (MiniCAD + PDF, öffentl. Nasszellen 1:100) | P2 | Massstäbliche Grundrisse öffentlicher Nasszellen. Das PDF ist reine Vektorgrafik ohne Textebene, deshalb nicht auslesbar — Inhalt aus Dateinamen und Ordnerlogik erschlossen, nicht verifiziert. |
| `Beschriftung/100508_Kotenbeschriftung.mcd` | P2 | Bürostandard für Höhenkoten-Beschriftung (2010, jüngster Fachstand der Sektion). Nur Formatprüfung, Inhalt nicht auslesbar. |
| `Fassadentexturen/Ansicht_50/` (PSD-Ebenensatz, INDD, PDF) | P2 | Arbeitsmethode «texturierte Fassadenansicht 1:50»: CAD-Ansicht in Photoshop-Ebenen texturiert, in InDesign gesetzt, als PDF ausgegeben. Als Darstellungsrezept relevant, das PDF selbst ist bildbasiert und ohne Text. |
| `Symbole Vectorworks/Bibliothek von H und P/` — Fachgruppen Kanalisation, Zivilschutz, Katasterplan, Spenglerarbeiten, Fenster, Sanitär, Konstruktion, Lichtschächte, Schwellen, Aufzüge, Cheminée, Haustechnik, Küche, Elektro, Massverhältnisse, Jansen (238 DWG) | P2 | Die einzige Sammlung der Sektion mit **schweizspezifischem Bauwissen** in der Systematik (Kanalisationsbögen nach Nennweite und Winkel, Zivilschutz-Bauteile, amtliche Katasterplanzeichen, Spenglerrinnen nach Grösse, Stahlprofilsysteme). Dateinamen und Layernamen gelesen, Zeichnungsinhalte nicht. |
| `Symbole Vectorworks/VectorWorks Demo Bonus/Zubehoer/Schraffuren/` (15 Sets) | P2 | Schraffurbibliothek nach Bautechnik, Metalle, Kunststoffe, Parkett, Pflasterverbände und sechs Mauerwerksverbänden. Als Nomenklatur-Referenz für Materialdarstellung brauchbar. |
| `Symbole Vectorworks/Baeume/` (59 MCD, 2006) | P3 | Vollständige Pflanzensymbolik nach Gehölzart, Ansicht und Darstellungsart. Reines Darstellungsmaterial, heute durch native Bibliotheken ersetzt. |
| `Symbole Vectorworks/Bibliothek von 2CS/` (308 DWG, 1994) | P3 | Generische Symbolsammlung italienischer Herkunft im AutoCAD-Format R9/R10 (Layer «PUNTO», «Linea piena»). Kein schweizspezifischer Gehalt, Nummernschema ohne sprechende Namen. |
| `Symbole Vectorworks/Bibliothek von H und P/` — Rest (Bäume, Fahrzeuge, Personen, Möbel, Nordpfeil, Symbole; 123 DWG) | P3 | Staffage und Darstellungssymbole. |
| `Symbole Vectorworks/VectorWorks Demo Bonus/Zubehoer/` ohne Schraffuren (224 Dateien) | P3 | Herstellerbeigabe: 2D-/3D-Symbole, Farbpaletten, Skripte. Archivwert für die Werkzeuggeschichte. |
| `Symbole Vectorworks/Bibliothek MB/` (7), `humanoids/` (2), `Vectorworks Colors/` (4), `Moebelierung/100501_Moebel_Eberle.mcd`, `Massreferenzen/treppe eibenstr.dwg|.dxf` | P3 | Einzelstücke. Die Treppendatei ist als Massreferenz gedacht, der Farbtabellen-PDF dokumentiert die 256er-MiniCAD-Palette. |
| `100220_exhibitionsspaces_section_4.psd` (39 MB, 2010) | P3 | Schnittdarstellung als Photoshop-Datei. Nicht geöffnet; als Darstellungsreferenz aufbewahrenswert, ohne Text- oder Datengehalt. |
| `Symbole Vectorworks/VectorWorks Demo Bonus/VWHilfe/` (916 Dateien: 526 HTML, 387 GIF, 2 JPG) | **X** | Deutsches Vectorworks-8-Handbuch von 1999 als HTML, inklusive VectorScript-Referenz und RenderWorks-Kapitel. Stichprobe gelesen und bestätigt: reine Software-Bedienungsanleitung einer seit über zwanzig Jahren abgelösten Version. Kein Bauwissen. |
| `Moebelierung/VW Backup/100501_Moebel_Eberle.mcd` | **X** | Byte-gleiche Sicherungskopie der Datei eine Ebene höher. |
| `.AppleDouble/`-Reste, `Icon`-Dateien, `.DS_Store` | **X** | Mac-Dateisystemreste ohne Inhalt. |

Verteilung: P1 = 2 · P2 = 266 · P3 = 733 · X = 917.

## Was hier für JANS drinsteckt

**1. Bemasste Sanitärapparate mit Montagehöhen — der einzige P1-Fund.**
`Massreferenzen/PDF/SanitaerApparate.pdf` (1 Seite, Plangrösse rund 65 x 104 cm, erstellt
01.12.2009 aus Vectorworks) zeigt zehn Apparategruppen in Grundriss und Ansicht, jeweils
mit Bezeichnung, Beckenmass, Materialangabe und Artikelnummer, dazu die vollständige
Bemassung inklusive Höhenlage. Belegt gelesen sind unter anderem: Waschbecken 48 x 35 und
54 x 45, zwei Waschbecken 51,5 x 35 und 46 x 27,5, Wandklosett und Standklosett in Keramik,
Duschwanne 80 x 80 x 15, Waschrinne 180 x 40 in Edelstahl, Schulwandbrunnen 90 x 45 in
Keramik. Die Kotenreihen nennen die Werte, die bei Nasszellen-Abklärungen tatsächlich
gebraucht werden — Beckenoberkante und Armaturenachse in der Grössenordnung 850 bis 1'050,
Klosettsitzhöhe im Bereich 400 bis 460, Vorwandtiefen um 175 bis 225, Rohanschlüsse bei
153 und 300.

Praktische Folge: Für die wiederkehrende Frage «auf welcher Höhe kommt die Armatur, wie
tief die Vorwand, welches Mass braucht die Nasszelle» existiert im Büro bereits ein
zeichnerisches Referenzblatt. Es ist **als Grössenordnung und als Aufbau-Vorlage
verwendbar, nicht als Nachweis**: die Fabrikate sind Stand 2009, die Artikelnummern
zeigen auf einen damaligen Katalog, und ein Apparat trägt selbst den Vermerk
«selbstgezeichnet». Für ein ausgehendes Erzeugnis wird die Zahl am aktuellen
Herstellerdatenblatt und an der einschlägigen Norm verifiziert; das Blatt liefert die
Erklärskizze und die Vollständigkeitsprüfung, welche Masse überhaupt zu koten sind.

**2. Die ArchiCAD-Bürovorlage belegt eine zweiachsige Ebenenordnung.**
`02_ArchiCAD/Master07_07_22.pln` (ArchiCAD 11, August 2007) enthält belegt die Ebenennamen
`01 Aussenwände`, `01 Innenwände`, `03 Lichtquellen`, `04 Decken`, `04 Bodenaufbauten`,
`05 Dachkonstruktionen`, `10 Schraffuren`, `11 Linien`, dazu `Installationen` und
`Elektrische Installationen`. Parallel dazu stehen Ebenenkombinationen mit den Namen
`01 Vorprojekt`, `02 Bauprojekt`, `03 Ausführung`. Die Vorlage ordnet also **nach Bauteil
und schaltet nach Projektphase** — dieselbe Zweiachsigkeit, die eine Planlieferliste
später braucht.

Ebenso belegt sind vorkonfigurierte Auswertungslisten: Wandliste, Deckenliste,
Stützenliste, Bauelementliste, Schraffurflächen, Zeichnungsliste und ein Index Layoutbuch,
mit Auswertefeldern für Dicke, Querschnitt, Volumen, Oberflächen, Umfang und Neigungswinkel
sowie Attributfeldern `Wall Function`, `Cost Index Code`, `Fire Rating` und `Thermal
Resistance`. Das ist der Rohstoff für Mengenermittlung: **die Verbindung Bauteil → Menge →
Kostencode war im Büro schon 2007 modellseitig angelegt**, inklusive eines Feldes für den
Brandschutzwert am Bauteil. Für die heutige Kette Modell → Grobkosten → Devis ist das kein
neuer Gedanke, sondern ein wiederaufnehmbarer.

**3. Massstabsgruppen statt Einheitssymbole.**
Die Datei `Bibliothek Kerez/Massstabssymbole` führt genau drei Symbolgruppen mit den
gelesenen Namen `Plan 1:500-1:100`, `Plan 1:50-1:20` und `Plan 1:10-1:5`. Der Detailgrad
eines Symbols wird also an die Massstabsgruppe gebunden, nicht an das einzelne Objekt. Das
ist eine übertragbare Zeichnungsregel: was in 1:50 als Apparat mit Anschlüssen erscheint,
ist in 1:200 eine Signatur. Wer heute Planlayouts oder Symbolsätze aufbaut, hat hier die
Staffelung, die sich im Büro bewährt hat.

**4. Der Plankopf-Standard lief auf Frutiger.**
Beide Dateien in `Vorlagen Plankoepfe/` (2001, Ablagepflege bis 2005) führen belegt die
Schnitte Frutiger Light, Frutiger Condensed, Frutiger Light Condensed, Frutiger Bold und
Frutiger Black Condensed, dazu eine eigene Klasse `M Layout-Plankopf` und dieselben drei
Massstabsgruppen wie oben. Die Trennung Layoutklasse vom Zeichnungsinhalt ist der Kern der
Vorlage und gilt unverändert; die Schriftwahl ist historisch und nicht mit dem heutigen
JANS-Auftritt zu verwechseln.

**5. Die «H und P»-Bibliothek ist die einzige mit schweizspezifischem Fachgehalt.**
361 DWG im AutoCAD-Format R11/R12 (Dateikopf `AC1009`, geprüft an vier Stichproben), Jahrgang
1995 bis 1997. Sprechend sind vor allem fünf Gruppen:

- **Kanalisation** (19 Dateien, Layer `KANALISATION` belegt): systematisch nach Nennweite
  und Bogenwinkel benannt, DN 100 und DN 125 in den Winkeln 0, 15, 30, 45, 67 und 24,5 Grad
  sowie als Abzweiger. Die Nomenklatur bildet ein reales Formstücksortiment ab.
- **Zivilschutz** (17): Panzertüren in zwei Anschlagrichtungen, Notausstieg, Trümmerschacht,
  Überdruckventil und Ventilationsaggregat, jeweils in Grundriss und Ansicht. Für
  Schutzraum-Nachweise im Bestand eine brauchbare Bauteil-Checkliste.
- **Katasterplan** (21): amtliche Planzeichen — Fixpunkte LFP und HFP, Grenzsteine und
  Bolzen, Höhenbolzen, Bach, Fels, bestockte Fläche, Flächenrichtung. Das ist die
  Zeichensprache des Vermessungsplans, die man beim Lesen eines Katasterauszugs braucht.
- **Spenglerarbeiten** (9): Dachrinnen in den Grössen 20, 25, 26, 33 und 40, je links und
  rechts. Die Grössenreihe ist die klassische Rinnenbezeichnung und taugt als
  Positionsraster für ein Spengler-Devis.
- **Jansen** (48: 16 Janisol, 32 Viss-TV): Profilschnitte zweier Stahlprofilsysteme.
  Janisol ist die Familie, aus der die brandschutzklassierten Stahl-Glas-Konstruktionen
  kommen, Viss die Fassaden-/Dachverglasung. Systematisch durchnummerierte Schnitte,
  Inhalt nicht geöffnet — welche Profilvariante hinter welcher Nummer steht, ist aus der
  Sektion allein nicht belegbar.

Dazu 20 Dateien unter **Massverhältnisse**: eine Datei zum Goldenen Schnitt und neunzehn
mit dem Präfix `LCM` in der Zahlenreihe 27, 43, 70, 86, 113, 140, 183, 216 und 226. Das ist
die Masskette des Modulor in Zentimetern, in zwei bis vier Darstellungsvarianten je Mass.
Als Proportionsreferenz im Entwurf sofort lesbar, ohne dass die Datei geöffnet werden muss.

**6. Was die Sektion NICHT hergibt.**
Kein Text zu Ausschreibung, Kostenplanung oder Baurecht. Keine Leistungsbeschriebe, keine
Kennwerte, keine Normzitate, keine Projektdokumentation. Fast die Hälfte des Dateibestands
(916 von 1'918) ist ein Software-Handbuch von 1999. Die Sektion ist damit für die
Wissensbasis **schmal, aber nicht wertlos**: der Ertrag liegt in einem einzigen
Referenzblatt (Sanitärmasse), in drei belegten Bürostandards (Ebenenordnung,
Massstabsgruppen, Plankopf-Klassentrennung) und in einer Fachsystematik, die zeigt, welche
Bauteilfamilien im Büro je zeichnerisch geführt wurden.

**7. Technische Einschränkung für jede Weiterverwendung.**
Die DWG liegen in den Formaten R9, R10 und R11/R12 (`AC1004`, `AC1006`, `AC1009`, an
Stichproben geprüft). Die Vectorworks-Dateien sind MiniCAD- und Vectorworks-Stände 9 bis
12.5 und teils klassische Mac-Dateien ohne Endung. Beides liegt **unterhalb dessen, was
gängige Konverter zuverlässig öffnen** — der Hub-Skill `pdf2dwg` setzt auf LibreDWG, das
bei Vorversionen von R13 nur eingeschränkt trägt. Wer Geometrie aus dieser Sektion
tatsächlich braucht, plant einen Öffnungsversuch mit Originalsoftware ein statt einer
Stapelkonversion.
