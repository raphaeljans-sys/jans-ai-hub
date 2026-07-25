# Template: Vergabeempfehlung (Phase 3 — Auswertung)

Dieses Template wird in Phase 3 des Ausschreibungs-Workflows verwendet, wenn mindestens zwei Offerten eingegangen sind und eine Vergabeempfehlung an die Bauherrschaft erstellt werden muss.

Output-Format: **DOCX + PDF** im JANS-Dokument-Layout-Standard (Cambria 11pt, A4, schwarz, schlicht, keine Farbflaechen).

Generator-Vorlage: `/Volumes/daten/jans-ai-hub/templates/dokument-layout/build-document.template.js`

## Dateinamen-Konvention

```
YYMMDD_Vergabeempfehlung_<Projekt>_<Gewerk>.docx
YYMMDD_Vergabeempfehlung_<Projekt>_<Gewerk>.pdf
```

Ablage:
```
30 JANS AI HUB OUTPUT/submission/<projekt-nr>-<projekt>-<gewerk>/auswertung/
```

## Inhaltliche Struktur (verbindlich)

### 1. Stammdaten
- Bauherr, Objekt, Projekt-Nr., Gewerk, Verfasser, Datum Bericht

### 2. Angebote im Vergleich
Pro Anbieter:
- Anbieter (Name, Rolle: Submissionsteilnehmer / Fachplaner / Direktanfrage)
- Angebots-Dokument (Dateiname / Referenz)
- Datum, Eingabefrist
- Plangrundlage (Revision)

### 3. Kritische Befunde vor dem Preisvergleich (Pruefer-Diligence)
**Pflicht-Sektion.** Listet alle Sachverhalte, die einen direkten Preisvergleich verzerren oder unmoeglich machen:
- Plan-Revisions-Inkonsistenzen zwischen Anbietern
- Rechen- oder Additionsfehler in einem Angebot
- Funktionale Unterschiede der angebotenen Geraete
- Fehlende Positionen bei einem Anbieter
- Unterschiedliche Bauseits-/Lieferumfangs-Markierungen
- Fehlende Angaben zu Lieferzeit, Zahlung, Gewaehrleistung

Format: Aufzaehlung mit fettem Prefix-Begriff + erklaerendem Satz.

### 4. Positions-Gegenueberstellung
Pro Bereich (z.B. 1.0 Spuelen, 2.0 Warme Kueche, 3.0 Herdanlage, ...):

Tabelle mit Spalten:
| Pos. | Bezeichnung / Bemerkung | Anbieter A CHF | Anbieter B CHF | Bemerkung |

Pro Bereich Zwischensumme. Bei nicht direkt vergleichbaren Positionen (z.B. unterschiedliche Plan-Stand-Geometrie) Bemerkung "Nicht direkt vergleichbar" mit Begruendung.

Sonderwerte:
- `—` fuer fehlende Position
- `bestehend` fuer uebernommen
- `bauseits` fuer ausserhalb Lieferumfang

### 5. Gesamttotale exkl. MwSt
Tabelle wie oben mit folgenden Zeilen:
- Summe der Zwischensummen (rechnerisch)
- Ausgewiesene Summe gemaess Offerte (wenn Differenz: Rechenfehler markieren)
- Projektrabatt / Skonto (falls vorhanden)
- Zwischentotal
- Lieferung / Montage / Inbetriebnahme
- **Gesamttotal exkl. MwSt**

Anschliessend: **Bereinigte Schaetzung auf gleichen Stand** — eigene Naeherung des Verfassers fuer:
- Aufschlag fuer Plan-Anpassungen bei Anbietern, die nicht auf aktuellem Plan offerierten
- Aufschlag fuer aktuell bauseits gefuehrte Positionen, die in den Auftrag aufgenommen werden muessten
- Bandbreite pro Anbieter (z.B. "rund 78'000 - 83'000 CHF brutto")

### 6. Konditionen-Vergleich
Tabelle mit Kriterien (Spalte 1) und je Anbieter eine Spalte:
- Plan-Stand offeriert
- Lieferzeit
- Zahlung
- Gewaehrleistung
- Bauseits-Leistungen
- Projektrabatt
- Marken / Geraete
- Rolle Anbieter (Submission / Fachplaner / Direktanfrage)

### 7. Risiko-Matrix
Klassifizierung rot / gelb / gruen mit fettem Prefix:
- **Rot - <Risikoname>.** Beschreibung und Begruendung warum vergabe-blockierend.
- **Gelb - <Risikoname>.** Beschreibung und Begruendung warum verhandelbar.
- **Gruen - <Punktname>.** Bestaetigung dass kein Risiko vorliegt.

Mindestens 5-7 Punkte. Mindestens 2 rote Punkte falls Vergabe nicht direkt moeglich.

### 8. Empfehlung der Vergabe
- **Erstplatzierung** (fett): Anbieter X, ggf. mit Vorbehalt.
- **Begruendung** als Aufzaehlung von mindestens 4-5 Punkten:
  - Plan-Stand / Aktualitaet
  - Funktionale Eignung
  - Konditionen (Transparenz, Marktkonformitaet)
  - Erfahrung / Schnittstellen
  - Preislogik (auf bereinigter Basis)
- **Zweitempfehlung** als Backup mit Bedingungen unter denen sie aktiviert wird.

### 9. Verhandlungspunkte
Nummerierte Liste fuer das Verhandlungsgespraech mit dem Erstplatzierten:
1. Reduktion (Bandbreite gemaess Reduktionsmatrix `offertenpruefung/SKILL.md`)
2. Zahlungsplan
3. Lieferumfang (Aufnahme/Streichung von Positionen)
4. Lieferfrist und Konventionalstrafe
5. Gewaehrleistung (SIA 118)
6. Weitere fall-spezifische Punkte

### 10. Naechste Schritte
Nummerierte Liste mit konkreten Aktionen, Verantwortlichen und Terminen:
1. Klaerungsfragen an unterlegene Anbieter
2. Detailbereinigung mit Erstplatziertem
3. Aktualisierter Quervergleich nach Klaerung
4. Vergabeempfehlung Bauherr zur Freigabe
5. Werkvertrag SIA 118 vorbereiten
6. Schnittstellen-Koordination (HLK, Sanitaer, Elektro)

## Layout-Konventionen (zwingend)

- Schrift Cambria 11 pt, Zeilenabstand 1.4
- A4, Raender 20 mm  -  Inhaltsbreite 9640 DXA (~16 cm)
- Alle Texte schwarz, keine Farbflaechen
- Tabellen ohne sichtbare Aussenrahmen; nur eine duenne schwarze Linie unter Header- und ueber Total-Zeile
- Aufzaehlungen mit Bindestrich, fette Prefix-Begriffe wo sinnvoll
- Footer: Verfasser + Mail + Datum links, Seite X von Y rechts
- **Schrift in Tabellenzellen mindestens 10 pt (size 20)** — niemals 9 pt (size 18) oder kleiner. Wenn das nicht passt: Spalten umverteilen, nicht Schrift verkleinern.

### Tabellenbreiten-Faustregel (verbindlich, sonst werden Bemerkungen unleserlich)

Inhaltsbreite 9640 DXA bei A4 hoch mit 20 mm Raender. Verteilung fuer Tabellen mit Bemerkungsspalte:

**Variante 5 Spalten (Pos | Bez | A | B | Bemerkung):**
- Pos:       700 DXA  (ca.  7%)
- Bezeichnung: 3600 DXA  (ca. 37%)  — Bez ist KOMPRIMIERT, weil die wichtige Info in der Bemerkung steht
- Anbieter A: 1100 DXA  (ca. 11%)
- Anbieter B: 1100 DXA  (ca. 11%)
- Bemerkung: 3140 DXA  (ca. 33%)  — Mindestens 25%, Ziel ~30%

**Variante 4 Spalten (Bez | A | B | Bemerkung):**
- Bezeichnung: 4700 DXA  (ca. 49%)
- Anbieter A: 1100 DXA  (ca. 11%)
- Anbieter B: 1100 DXA  (ca. 11%)
- Bemerkung: 2740 DXA  (ca. 29%)

**Verboten:** Bemerkungsspalte unter 2400 DXA / 25% der Inhaltsbreite. Dann lieber:
1. Spezifikation aus der Bezeichnung in die Bemerkung verschieben
2. Tabelle auf Querformat umstellen
3. Bemerkung in eine separate Zeile unter der Position legen

**Pruef-Schritt bei jedem neuen Tabellen-Build:** `console.log({COL_BEZ, COL_A, COL_B, COL_BEM, total: COL_BEZ+COL_A+COL_B+COL_BEM})` und manuell pruefen, dass COL_BEM mindestens 2400 DXA betraegt.

## Mindest-Umfang

Ein vollstaendiges Vergabeempfehlung-Dokument hat typischerweise **5-8 A4-Seiten**. Unter 4 Seiten ist es zu duenn, ueber 10 Seiten zu lang — dann lieber Anhaenge auslagern.

## Goldstandard-Beispiel

```
30 JANS AI HUB OUTPUT/submission/2619-kispi-gastrokueche/auswertung/
  260513_Vergabeempfehlung_KISPI_Gastrokueche.docx + .pdf
```

KISPI Therapiestation Gastrokueche — Vergleich Rametall AG vs. Gastro-Online AG mit Plan-Inkonsistenz, Additionsfehler, funktionalem Geraete-Unterschied (Infrarot vs. Induktion) und differenzierten Bauseits-Leistungen.

## Hinweise

- **Niemals eine Empfehlung ohne Risiko-Matrix.** Selbst klare Faelle haben mindestens einen gelben Punkt zur Verhandlung.
- **Reduktion immer als Bandbreite**, nicht als Punktwert. Begruendung gemaess Reduktionsmatrix anhaengen.
- **Bereinigte Schaetzung ist Pflicht**, wenn die Angebote nicht auf identischem Plan-Stand oder Lieferumfang sind. Sonst wird der reine Total-Vergleich irrefuehrend.
- **Sprache**: Schweizer Hochdeutsch, ASCII-only (ss statt sz, keine Sonderzeichen).
